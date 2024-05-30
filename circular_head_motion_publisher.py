#!/usr/bin/env python

import rospy
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
import math

def generate_circle_points(radius, num_points, total_duration):
    points = []
    for i in range(num_points):
        angle = 2 * math.pi * (i / float(num_points))
        x = radius * math.cos(angle)
        y = radius * math.sin(angle)
        point = JointTrajectoryPoint()
        point.positions = [x, y]
        point.time_from_start = rospy.Duration.from_sec((i + 1) * (total_duration / num_points))
        points.append(point)
    return points

def main():
    rospy.init_node('head_circle_publisher')
    pub = rospy.Publisher('/head_controller/command', JointTrajectory, queue_size=10)

    radius = 0.3  # Adjust the radius as needed
    num_points = 50  # Number of points to define the circle
    total_duration = 10  # Total duration to complete one circle

    trajectory = JointTrajectory()
    trajectory.joint_names = ['head_1_joint', 'head_2_joint']
    trajectory.points = generate_circle_points(radius, num_points, total_duration)

    rate = rospy.Rate(10)  # Publish at 10 Hz
    while not rospy.is_shutdown():
        trajectory.header.stamp = rospy.Time.now()
        pub.publish(trajectory)
        rate.sleep()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass