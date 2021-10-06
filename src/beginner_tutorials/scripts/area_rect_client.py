#!/usr/bin/env python

from __future__ import print_function
from beginner_tutorials.srv import AreaRect

import sys
import rospy
from beginner_tutorials.srv import *

def area_of_rect_client(x, y):
    rospy.wait_for_service('area_of_rect')
    try:
        add_two_ints = rospy.ServiceProxy('area_of_rect', AreaRect)
        resp1 = area_of_rect (x, y)
        return resp1.area
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def usage():
    return "%s [x y]"%sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 3:
        x = int(sys.argv[1])
        y = int(sys.argv[2])
    else:
        print(usage())
        sys.exit(1)
    print("Requesting")
    print("Area of the rectangle is %s "%( area_of_rect_client(x, y)))