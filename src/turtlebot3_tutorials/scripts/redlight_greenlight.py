#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist

rospy.init_node('red_light_green_light')
rospy.loginfo('Sending velocity commands')
pub= rospy.Publisher('/cmd_vel',Twist,queue_size=1)

red_light = Twist()
green_light = Twist()
green_light.linear.x= 0.5

driving_forward =  True
light_change_time= rospy.Time.now()
r= rospy.Rate(10)

while not rospy.is_shutdown():
   if light_change_time > rospy.Time.now():
        driving_forward = not driving_forward
        light_change_time = rospy.Time.now + rospy.Duration(3)
        if driving_forward:
            pub.publish(green_light)
        else:
            pub.publish(red_light)
r.sleep()