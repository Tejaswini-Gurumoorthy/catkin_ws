#! /usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from rospy.timer import Rate

rospy.init_node('topic_publisher')
rospy.loginfo('Turtlebot is moveing !')
pub = rospy.Publisher('/cmd_vel',Twist,queue_size=1)
r= rospy.Rate(2)

move= Twist()
move.linear.x = 0.5
#move.angular.z = 0.5

while not rospy.is_shutdown():
    pub.publish(move)
    r.sleep()