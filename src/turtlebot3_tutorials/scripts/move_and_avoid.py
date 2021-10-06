#! /usr/bin/env python

from re import T
import rospy
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist

disToObstacle = 1

def callback(msg):
    rospy.loginfo(rospy.get_caller_id() + ' Distance to obstacle is - %s',msg.ranges[300])

    if msg.ranges[300] > disToObstacle:
        print("in")
        move.linear.x = 0.5
        move.angular.z = 0

    if msg.ranges[300] <= disToObstacle:
        print("out")
        move.linear.x = 0
        move.angular.z = 0.5

    pub.publish(move)

rospy.init_node('sub_node')
sub= rospy.Subscriber('/scan',LaserScan,callback)
pub= rospy.Publisher('/cmd_vel',Twist,queue_size=2)
r= rospy.Rate(2)
move = Twist()

rospy.spin()