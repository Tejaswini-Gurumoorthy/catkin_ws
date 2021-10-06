#!/usr/bin/env python3
import rospy
from std_msgs.msg import Int16

def talker():
    rospy.init_node("NameAge_Pub",anonymous=True)
    pub = rospy.Publisher("NameAge_topic", Int16 ,queue_size=10)
    r=rospy.Rate(10)

    while not rospy.is_shutdown:
        msg=5
        rospy.loginfo("Data is being published")
        pub.publish(msg)
        r.sleep()

if __name__=='__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass



