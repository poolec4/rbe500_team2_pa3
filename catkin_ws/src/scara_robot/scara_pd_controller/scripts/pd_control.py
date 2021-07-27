#!/usr/bin/env python

# RBE 500 - Foundations of Robotics

# pd_controller.py
# ROS node that reads the desired position of a prismatic joint from a service and calculates the necessary joint force to apply to the joint using a PD controller.

import rospy # ROS python library
import math # math library
import numpy as np # numpy library for arrays and matrices

from tf.transformations import euler_from_quaternion

from gazebo_msgs.srv import ApplyJointEffort
from gazebo_msgs.srv import GetJointProperties
from scara_pd_controller.srv import JointControlReference

debug = True
print_to_file = True

file1 = open("pd_control_plot.txt","w")

th1_des = 0.0
th2_des = 0.0
d3_des = 0.0

E_old = np.array([0.0, 0.0, 0.0])

kp = np.array([500.0, 100.0, 1100.0])
kd = np.array([550.0, 50.0, 35.0])

rate = 200.0

def rot_to_euler(R): # converts a 3x3 rotation matrix to ZYZ Euler angles
	phi = math.atan2(R[1,2],R[0,2])
	sphi = math.sin(phi)
	cphi = math.cos(phi)
	theta = math.atan2(cphi*R[0,2] + sphi*R[1,2], R[2,2])
	psi = math.atan2(-sphi*R[0,0] + cphi*R[1,0], -sphi*R[0,1] + cphi*R[1,1])

	eangles = np.array([phi, theta, psi])
	
	return eangles

def pd_control(joint, pos_cur, pos_des, kp, kd, err_old):
	
	err = pos_des - pos_cur
	d_err = (err - err_old)/(1/rate)
	f = -(kp*err + kd*d_err)

	if debug == True:
		print("err = %f,  d_err = %f" % (err, d_err))
		print("pos_des = %f, pos_cur = %f" % (pos_des, pos_cur))
		print("Sending joint force f = [%f]" % (f)) # printing calculated values to terminal

	je_service = rospy.ServiceProxy('/gazebo/apply_joint_effort', ApplyJointEffort)
	zero_time = rospy.Time()
	tick = rospy.Duration(0, int((1/rate)*10**9))
	je_service(joint, f, zero_time, tick)

	if print_to_file == True:
		file1.write("%s,%f,%f,%f,%f\n" % (joint,pos_cur, pos_des,f,1/rate)) 

	return err

def request_joint_status(joint):

	joint_stauts = rospy.ServiceProxy('/gazebo/get_joint_properties', GetJointProperties)
	resp = joint_stauts(joint)

	joint_pos = resp.position[0]
	
	if debug == True:
		print("\n\nReceived %s position: [%f] (meters)" % (joint,joint_pos)) # printing received data to terminal

	if joint == 'joint1':
		E_old[0] = pd_control('joint1', -joint_pos, th1_des, kp[0], kd[0], E_old[0])

	if joint == 'joint3':
		E_old[1] = pd_control('joint3', -joint_pos, th2_des, kp[1], kd[1], E_old[1])

	if joint == 'joint5':
		E_old[2] = pd_control('joint5', -joint_pos, d3_des, kp[2], kd[2], E_old[2])

	return resp

def service_handle(data):
	global th1_des
	global th2_des
	global d3_des

	th1_des = data.th1_des
	th2_des = data.th2_des
	d3_des = data.d3_des

	if debug == True:
		print("\nReceived reference positions [th1,th2,d3] = [%f,%f,%f]" % (th1_des,th2_des,d3_des)) # printing converted values to terminal

	if d3_des >= 0 or d3_des <=1:
		success = True
	else:
		success = False

	return success

def server(): # function that loops continuously waiting for incoming messages
    rospy.init_node('pd_control_svr') # initialize node
    
    ref_service = rospy.Service('/scara/JointControlReference', JointControlReference, service_handle)

    r = rospy.Rate(rate)
    while not rospy.is_shutdown():
    	request_joint_status('joint1')
    	request_joint_status('joint3')
    	request_joint_status('joint5')
    	r.sleep()

if __name__ == '__main__': # run only if entry point to program (i.e. running from command line)
	server() # invoke server loop