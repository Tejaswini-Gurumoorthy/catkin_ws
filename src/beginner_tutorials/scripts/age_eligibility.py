#!/usr/bin/env python
import rospy
from beginner_tutorials.msg import Eli

def callback(msg):
    print(msg.eli)
rospy.init_node('eligibility_sub')
sub= rospy.Subscriber('chatter2',Eli,callback)
rospy.spin()