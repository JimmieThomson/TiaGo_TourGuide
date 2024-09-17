#!/usr/bin/env python
import rospy
import cv2
from cv_bridge import CvBridge
from sensor_msgs.msg import Image

class XtionImageDisplay:
    def __init__(self):
        rospy.init_node('xtion_image_display', anonymous=True)
        self.bridge = CvBridge()
        self.image_sub = rospy.Subscriber('/xtion/rgb/image_raw', Image, self.image_callback)
        self.image_pub = rospy.Publisher('/xtion_image_display/output', Image, queue_size=10)

    def image_callback(self, data):
        try:
            cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
        except Exception as e:
            rospy.logerr("Error converting image: %s", str(e))
            return

        cv2.imshow('Xtion Image Display', cv_image)
        cv2.waitKey(1)

        try:
            self.image_pub.publish(self.bridge.cv2_to_imgmsg(cv_image, "bgr8"))
        except Exception as e:
            rospy.logerr("Error publishing image: %s", str(e))

    def run(self):
        rospy.spin()

if __name__ == '__main__':
    try:
        xtion_image_display = XtionImageDisplay()
        xtion_image_display.run()
    except rospy.ROSInterruptException:
        pass