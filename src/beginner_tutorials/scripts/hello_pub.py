#!/usr/bin/env python
from re import I, T
from beginner_tutorials.msg import hello
import rospy
from rospy.core import loginfo

def talker():
    rospy.init_node('hello_pubnode',anonymous=True)
    pub= rospy.Publisher('listen',hello,queue_size= 100)
    r=rospy.Rate(10)

    while not rospy.is_shutdown():
        hello_str= hello()
        hello_str= "Hello World"
        pub.publish(hello_str)
        rospy.loginfo("Publising %s" %hello_str)
        r.sleep()

if __name__=='__main__':
    talker()
