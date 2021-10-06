#!/usr/bin/env python
from typing import Callable
import rospy
from beginner_tutorials.msg import Eli

def callback(data):
    rospy.loginfo("Name :%s Eligibility Status: %s" %(data.name,data.eli))

rospy.init_node('listener',anonymous=True)
sub=rospy.Subscriber('chatter2',Eli,callback)

rospy.spin()
