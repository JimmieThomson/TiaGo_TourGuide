#!/usr/bin/env python

import rospy
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
import math

def generate_circle_points(num_points, total_duration):
    points = []
    for i in range(num_points):
        x = 0
        y = -0.3
        point = JointTrajectoryPoint()
        point.positions = [x, y]
        point.time_from_start = rospy.Duration.from_sec((i + 1) * (total_duration / num_points))
        points.append(point)
    return points

def main():
    rospy.init_node('head_controller')
    pub = rospy.Publisher('/head_controller/command', JointTrajectory, queue_size=10)

    num_points = 50  # Number of points to define the circle
    total_duration = 10  # Total duration to complete one circle

    trajectory = JointTrajectory()
    trajectory.joint_names = ['head_1_joint', 'head_2_joint']
    trajectory.points = generate_circle_points( num_points, total_duration)
    rate = rospy.Rate(3)  # Publish at 10 Hz
    while not rospy.is_shutdown():
        trajectory.header.stamp = rospy.Time.now()
        pub.publish(trajectory)
        rate.sleep()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass