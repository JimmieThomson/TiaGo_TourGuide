#!/usr/bin/env python

import rospy
import cv2
import numpy as np
from sensor_msgs.msg import PointCloud2, LaserScan
from cv_bridge import CvBridge, CvBridgeError

class DepthToLaserScan2:
    def __init__(self):
        self.bridge = CvBridge()
        self.depth_sub = rospy.Subscriber('/xtion/depth/points', PointCloud2, self.depth_callback)
        self.laser_pub = rospy.Publisher('/scan', LaserScan, queue_size=10)

        self.angle_min = -3.14  # -90 degrees
        self.angle_max = 3.14   # 90 degrees
        self.angle_increment = 0.005  # This is an example value, you may need to adjust
        self.range_min = 0.05    # Minimum range value
        self.range_max = 25.00   # Maximum range value

    def depth_callback(self, data):
        
        # Convert depth data to a 1D laser scan
        laser_scan = LaserScan()
        laser_scan.header = self.header
        laser_scan.angle_min = self.angle_min
        laser_scan.angle_max = self.angle_max
        laser_scan.angle_increment = self.angle_increment
        laser_scan.time_increment = 0.0
        laser_scan.scan_time = 0.1
        laser_scan.range_min = self.range_min
        laser_scan.range_max = self.range_max

        # Convert the depth image to laser scan ranges
        height, width = depth_array.shape
        center_index = height // 2 # Assuming the sensor is mounted horizontally

        ranges = []
        for i in range(width):
            depth_value = depth_array[center_index, i] / 1000
            # if self.range_min < depth_value < self.range_max:
            ranges.append(depth_value)
            # else:
            #     ranges.append(float('inf'))

        laser_scan.ranges = ranges

        self.laser_pub.publish(laser_scan)

if __name__ == '__main__':
    rospy.init_node('depth_to_laserscan_2')
    depth_to_laser_scan = DepthToLaserScan2()
    rospy.spin()