#!/usr/bin/env python

# RBE 500 - Foundations of Robotics
# Written by: 

# configuration_to_operational_sub.py
# ROS subscriber node that converts configuration space values (joint angles and displacements) to the pose of the end-effector.

import rospy # ROS python library
import math # math library
import numpy as np # numpy library for arrays and matrices

from scara_velocity_kinematics.srv import joint_to_ee_velocity
from scara_velocity_kinematics.srv import ee_to_joint_velocity

debug = True

d1 = 3.5 # <---- UPDATE
l1 = 2 # <---- UPDATE
l2 = 1 # <---- UPDATE

def forward_callback(data):

	th1 = data.th1
	th2 = data.th2
	d3 = data.d3

	J = np.matrix([[-(l2*math.sin(th1)*math.cos(th2)+l2*math.cos(th1)*math.sin(th2)+l1*math.sin(th1)),-(l2*math.sin(th1)*math.cos(th2)+l2*math.cos(th1)*math.sin(th2)),0],[l2*math.cos(th1)*math.cos(th2)-l2*math.sin(th1)*math.sin(th2)+l1*math.cos(th1), l2*math.cos(th1)*math.cos(th2)-l2*math.sin(th1)*math.sin(th2), 0], [0,0,1],[0,0,0],[0,0,0],[1,1,0]])
	q_dot = np.matrix([[data.th1_dot], [data.th2_dot], [data.d3_dot]])

	ee_vel = J.dot(q_dot)

	return [ee_vel[0], ee_vel[1], ee_vel[2], ee_vel[3], ee_vel[4], ee_vel[5]]

def inverse_callback(data):

	th1 = data.th1
	th2 = data.th2
	d3 = data.d3

	Jp_inv = np.matrix([[math.cos(th1+th2)/(l1*math.sin(th2)), math.sin(th1+th2)/(l1*math.sin(th2)), 0], [-(l2*math.cos(th1+th2)+l1*math.cos(th1))/(l1*l2*math.sin(th2)), -(l2*math.sin(th1+th2)+l1*math.sin(th1))/(l1*l2*math.sin(th2)), 0], [0,0,1]])	
	v = np.matrix([[data.x], [data.y], [data.z]])

	q_dot = Jp_inv.dot(v)
	
	return [q_dot[0], q_dot[1], q_dot[2]]

def server(): # function that loops continuously waiting for incoming messages
    rospy.init_node('velocity_kinematics_server') # initialize node

    forward_service = rospy.Service('/scara/ForwardJacobianCalculation', joint_to_ee_velocity, forward_callback)
    inverse_service = rospy.Service('/scara/InverseJacobianCalculation', ee_to_joint_velocity, inverse_callback)

    rospy.spin() # keep node running

if __name__ == '__main__': # run only if entry point to program (i.e. running from command line)
	server() # invoke server loop