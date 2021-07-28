#!/usr/bin/env python

# RBE 500 - Foundations of Robotics

# velocity_controller.py
# ROS node that reads the desired position of a prismatic joint from a service and calculates the necessary joint force to apply to the joint using a PD controller.

import rospy # ROS python library
import math # math library
import numpy as np # numpy library for arrays and matrices

from tf.transformations import euler_from_quaternion

from gazebo_msgs.srv import ApplyJointEffort
from gazebo_msgs.srv import GetJointProperties
from scara_velocity_controller.srv import VelocityControlReference

from scara_velocity_kinematics.srv import ee_to_joint_velocity
from scara_velocity_kinematics.srv import joint_to_ee_velocity

debug = True
print_to_file = True

file1 = open("velocity_control_plot.txt","w")

joint_pos_cur = np.zeros(3)
joint_pos_old = np.zeros(3)
q_dot_cur = np.zeros(3)
q_dot_old = np.zeros(3)
q_dot_des = np.zeros(3)
q_dot_err = np.zeros(3)

E_old = np.array([0.0, 0.0, 0.0])

x_dot_des = 0.0
y_dot_des = 5.0
z_dot_des = 0.0

kp = np.array([10.0, 10.0, 20.0])
kd = np.array([5.0, 5.0, 10.0])

rate = 200.0

def rot_to_euler(R): # converts a 3x3 rotation matrix to ZYZ Euler angles
	phi = math.atan2(R[1,2],R[0,2])
	sphi = math.sin(phi)
	cphi = math.cos(phi)
	theta = math.atan2(cphi*R[0,2] + sphi*R[1,2], R[2,2])
	psi = math.atan2(-sphi*R[0,0] + cphi*R[1,0], -sphi*R[0,1] + cphi*R[1,1])

	eangles = np.array([phi, theta, psi])
	
	return eangles

def velocity_control(joint, vel_cur, vel_des, kp, kd, err_old):
	
	err = vel_des - vel_cur
	d_err = (err - err_old)/(1/rate)

	f = -(kp*err + kd*d_err)

	if debug == True:
		print("\nerr = %f,  d_err = %f" % (err, d_err))
		print("vel_des = %f, vel_cur = %f" % (vel_des, vel_cur))
		print("Sending joint force f = [%f]" % (f)) # printing calculated values to terminal

	je_service = rospy.ServiceProxy('/gazebo/apply_joint_effort', ApplyJointEffort)
	zero_time = rospy.Time()
	tick = rospy.Duration(0, int((1/rate)*10**9))
	je_service(joint, f, zero_time, tick)

	return err

def request_joint_status(joint):
	global joint_pos_cur
	global joint_pos_old

	joint_stauts = rospy.ServiceProxy('/gazebo/get_joint_properties', GetJointProperties)
	resp = joint_stauts(joint)

	if joint == 'joint1':
		joint_pos_cur[0] = -resp.position[0]

	if joint == 'joint3':
		joint_pos_cur[1] = -resp.position[0]

	if joint == 'joint5':
		joint_pos_cur[2] = -resp.position[0]

	if debug == True:
		print("Received %s position: [%f]" % (joint,resp.position[0])) # printing received data to terminal

	return resp

def service_handle(data):
	global x_dot_des
	global y_dot_des
	global z_dot_des

	x_dot_des = data.x_dot
	y_dot_des = data.y_dot
	z_dot_des = data.z_dot

	if debug == True:
		print("\nReceived reference velocity [x_dot,y_dot,z_dot] = [%f,%f,%f]" % (x_dot_des,y_dot_des,z_dot_des)) # printing converted values to terminal

	return success

def server(): # function that loops continuously waiting for incoming messages
	global joint_pos_cur
	global joint_pos_old
	global q_dot_cur
	global q_dot_old
	global q_dot_des
	global q_dot_err
	global E_old

	rospy.init_node('pd_control_svr') # initialize node
	ref_service = rospy.Service('/scara/VelocityControlReference', VelocityControlReference, service_handle)

	r = rospy.Rate(rate)
	while not rospy.is_shutdown():

		request_joint_status('joint1')
		request_joint_status('joint3')
		request_joint_status('joint5')
		
		# calculate current q_dot
		q_dot_cur = (joint_pos_cur - joint_pos_old)/(1.0/rate)

		th1 = joint_pos_cur[0]
		th2 = joint_pos_cur[1]
		d3 = joint_pos_cur[2]

		jac_inv_service = rospy.ServiceProxy('scara/InverseJacobianCalculation', ee_to_joint_velocity)
		jac_inv_resp = jac_inv_service(th1,th2,d3,x_dot_des,y_dot_des,z_dot_des)

		q_dot_des[0] = jac_inv_resp.th1_dot
		q_dot_des[1] = jac_inv_resp.th2_dot
		q_dot_des[2] = jac_inv_resp.d3_dot

		# invoke controller and set return = q_dot_err for next control loop
		q_dot_err[0] = velocity_control('joint1', -q_dot_cur[0], q_dot_des[0], kp[0], kd[0], q_dot_err[0])
		q_dot_err[1] = velocity_control('joint3', q_dot_cur[1], q_dot_des[1], kp[1], kd[1], q_dot_err[1])
		q_dot_err[2] = velocity_control('joint5', q_dot_cur[2], q_dot_des[2], kp[2], kd[2], q_dot_err[2])

		joint_pos_old[0] = joint_pos_cur[0]
		joint_pos_old[1] = joint_pos_cur[1]
		joint_pos_old[2] = joint_pos_cur[2]

		jac_forward_service = rospy.ServiceProxy('scara/ForwardJacobianCalculation', joint_to_ee_velocity)
		jac_forward_resp = jac_forward_service(th1,th2,d3,q_dot_cur[0],q_dot_cur[1],q_dot_cur[2])

		vx = jac_forward_resp.x
		vy = jac_forward_resp.y
		vz = jac_forward_resp.z

		if print_to_file == True:
			file1.write("%f,%f,%f,%f,%f,%f,%f\n" % (x_dot_des,y_dot_des,z_dot_des,vx,vy,vz,1.0/rate)) 

		r.sleep()

if __name__ == '__main__': # run only if entry point to program (i.e. running from command line)
	server() # invoke server loop