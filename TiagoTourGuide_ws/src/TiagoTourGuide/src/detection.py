#!/usr/bin/env python3

import rospy
from tf import transformations as t

import numpy as np

import hri
from hri_msgs.msg import IdsList

class BodyOrientationListener:

    def __init__(self,
                base_frame = "camera_link",
                threshold=30):
        """ Constructor, defines some of the class
            objects that will be used later in the code """

        # HRIListener objects help managing
        # some ROS4RI related aspects.
        # Refer to the official API documentation
        # for a better understanding
        self.hri_listener = hri.HRIListener()

        # the name of the frame representing the robot
        self.base_frame = base_frame

        # half of the amplitude of the attention cone
        self.threshold = threshold

        # the frequency for the run function execution
        self.rate = rospy.Rate(1)


    def run(self):
        """ The run function implement the main
            functionality of the BodyOrientationListener
            object, that is understanding which bodies
            are oriented toward the robot. Here, the
            base_frame specified during the object
            initialisation represent the robot. """

        # a loop based on the status of the node itself.
        # It loops until the node does not receive
        # a shutdown signal (as a change in the shutdown flag)
        while not rospy.is_shutdown():

            # an iterable object representing the bodies
            # detected through the body detection pipeline
            bodies = self.hri_listener.bodies.items()

            # the list of the ids representing
            # the bodies oriented toward the robot
            bodies_facing_robot = []

            # this loop iterates over every single body
            # detected by the body detection pipeline
            for body in bodies:
                # the body frame to base frame
                # (that is, the robot frame) transformation is required.
                # Since the pyhri API provides the base frame to
                # body frame transformation, we have to invert it

                # a PoseStamped object representing the base frame
                # to body frame transformation
                transform = body[1].transform(self.base_frame)

                # the translational and rotational components
                # of the base frame to body frame transformation,
                # expressed as a 3D vector and a quaternion
                trans = transform.transform.translation
                rot = transform.transform.rotation

                # the homogenous transformation matrix representing
                # the base frame to body frame transformation
                # (translation only)
                translation_matrix = t.translation_matrix((trans.x,
                                                            trans.y,
                                                            trans.z))

                # the homogenous transformation matrix representing
                # the base frame to body frame transformation
                # (rotation only)
                quaternion_matrix = t.quaternion_matrix((rot.x,
                                                          rot.y,
                                                          rot.z,
                                                          rot.w))

                # the homogenous transformation matrix representing
                # the base frame to body frame transformation
                transform = t.concatenate_matrices(translation_matrix,
                                                    quaternion_matrix)

                # the inverse of the transform matrix,
                # that is, the homogenous transformation matrix
                # for the body frame to base frame transformation
                inv_transform = t.inverse_matrix(transform)

                # b2r = body to robot

                # the x and y component of the body frame
                # to base frame translation transformation
                b2r_translation_x = inv_transform[0, 3]
                b2r_translation_y = inv_transform[1, 3]

                # the norm of the projection on the xy plane
                # of the body frame to base frame translation
                b2r_xy_norm = np.linalg.norm([b2r_translation_x,
                                               b2r_translation_y],
                                               ord = 2)

                # this if statement checks whether the base frame
                # lies inside the body frame-based cone of attention
                # with 2*threshold amplitude or not. When it does,
                # the body id is appended to the list of the bodies
                # oriented toward the robot
                if np.arccos(b2r_translation_x/b2r_xy_norm) < \
                   (self.threshold/180*np.pi) and b2r_translation_x > 0:
                        bodies_facing_robot.append(body[0])

            # instruction printing the list of bodies oriented
            # toward the robot
            print("Bodies facing the robot: ", bodies_facing_robot)

            # sleep instruction. In this case, the node will sleep
            # for 1 second, considering that the rate is 1
            self.rate.sleep()


if __name__=="__main__":

    # When running a ROS node, it's required to invoke
    # the init_node function. Here, it's possible to
    # specify the name of the node
    rospy.init_node("body_orientation_listener")

    # bol is a BodyOrientationListener object
    bol = BodyOrientationListener(threshold=20)

    # this instruction starts the bodies orientation processing
    bol.run()