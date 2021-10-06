#!/usr/bin/env python
import rospy
from beginner_tutorials.msg import Person,Eli

rospy.init_node('talker_listener',anonymous=True)

def callback(msg):
    rospy.loginfo("Receiving and publishing data")
    data = Eli()
    data.name= msg.name
    if msg.age >=18:
        data.eli= "ELIGIBLE"
    else:
        data.eli= "NOT ELIGIBLE"

    pub.publish(data)

sub=rospy.Subscriber('chatter',Person,callback)
pub=rospy.Publisher('chatter2',Eli, queue_size=10)

rospy.spin()

