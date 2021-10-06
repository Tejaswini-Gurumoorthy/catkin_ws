
from __future__ import print_function

from beginner_tutorials.srv import AreaRect,AreaRectResponse
import rospy

def handle_area_of_rect(req):
    print("area of rectangle of length %s and breadth %s is %s "%(req.a, req.b, (req.a * req.b)))
    return AreaRectResponse(req.a * req.b)

def area_of_rect_server():
    rospy.init_node('area_rect_server')
    s = rospy.Service('area_of_rect', AreaRect, handle_area_of_rect)
    print("Area of rectangle will be")
    rospy.spin()

if __name__ == "__main__":
    area_of_rect_server()