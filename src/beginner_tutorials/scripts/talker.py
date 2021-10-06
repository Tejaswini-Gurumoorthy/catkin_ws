#!/usr/bin/env python
import rospy
from beginner_tutorials.msg import Person

def talker():
    pub=rospy.Publisher('chatter', Person,queue_size=10)
    rospy.init_node('talker',anonymous=True)
    rate= rospy.Rate(10)

    while not rospy.is_shutdown():
        msg =Person()
        msg.age= 15
        msg.name= 'ABC'
        rospy.loginfo(msg)
        pub.publish(msg)
        rate.sleep()


if __name__=='__main__':
        try:
            talker()
        except rospy.ROSInterruptException:
            pass