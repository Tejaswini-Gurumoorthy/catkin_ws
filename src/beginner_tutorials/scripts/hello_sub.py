#!/usr/bin/env python
from os import name
from beginner_tutorials.msg import hello
import rospy

def callback(info):
    rospy.loginfo("I heard %s"%info)

def listener():
    rospy.init_node("hello_subnode",anonymous=True)
    sub = rospy.Subscriber('listen',hello,callback)
    rospy.spin()

if __name__=='__main__':
    listener()
