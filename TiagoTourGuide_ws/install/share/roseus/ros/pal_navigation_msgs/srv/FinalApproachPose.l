;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::FinalApproachPose)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'FinalApproachPose (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::FINALAPPROACHPOSE")
  (make-package "PAL_NAVIGATION_MSGS::FINALAPPROACHPOSE"))
(unless (find-package "PAL_NAVIGATION_MSGS::FINALAPPROACHPOSEREQUEST")
  (make-package "PAL_NAVIGATION_MSGS::FINALAPPROACHPOSEREQUEST"))
(unless (find-package "PAL_NAVIGATION_MSGS::FINALAPPROACHPOSERESPONSE")
  (make-package "PAL_NAVIGATION_MSGS::FINALAPPROACHPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_navigation_msgs::FinalApproachPoseRequest
  :super ros::object
  :slots (_pose ))

(defmethod pal_navigation_msgs::FinalApproachPoseRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass pal_navigation_msgs::FinalApproachPoseResponse
  :super ros::object
  :slots (_done ))

(defmethod pal_navigation_msgs::FinalApproachPoseResponse
  (:init
   (&key
    ((:done __done) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _done __done)
   self)
  (:done
   (&rest __done)
   (if (keywordp (car __done))
       (send* _done __done)
     (progn
       (if __done (setq _done (car __done)))
       _done)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _done
    (send _done :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _done
       (send _done :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _done
     (send _done :deserialize buf ptr-) (incf ptr- (send _done :serialization-length))
   ;;
   self)
  )

(defclass pal_navigation_msgs::FinalApproachPose
  :super ros::object
  :slots ())

(setf (get pal_navigation_msgs::FinalApproachPose :md5sum-) "798f73d56e5c8c9c501d7329ddd80106")
(setf (get pal_navigation_msgs::FinalApproachPose :datatype-) "pal_navigation_msgs/FinalApproachPose")
(setf (get pal_navigation_msgs::FinalApproachPose :request) pal_navigation_msgs::FinalApproachPoseRequest)
(setf (get pal_navigation_msgs::FinalApproachPose :response) pal_navigation_msgs::FinalApproachPoseResponse)

(defmethod pal_navigation_msgs::FinalApproachPoseRequest
  (:response () (instance pal_navigation_msgs::FinalApproachPoseResponse :init)))

(setf (get pal_navigation_msgs::FinalApproachPoseRequest :md5sum-) "798f73d56e5c8c9c501d7329ddd80106")
(setf (get pal_navigation_msgs::FinalApproachPoseRequest :datatype-) "pal_navigation_msgs/FinalApproachPoseRequest")
(setf (get pal_navigation_msgs::FinalApproachPoseRequest :definition-)
      "# pose: desired robot pose (referenced to base_link)
# Note: maximun distance allowed with this service call is 1 meter. Use only for final approach
geometry_msgs/Pose pose


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
#Returns true if final pose was achieved 
std_msgs/Bool done



================================================================================
MSG: std_msgs/Bool
")

(setf (get pal_navigation_msgs::FinalApproachPoseResponse :md5sum-) "798f73d56e5c8c9c501d7329ddd80106")
(setf (get pal_navigation_msgs::FinalApproachPoseResponse :datatype-) "pal_navigation_msgs/FinalApproachPoseResponse")
(setf (get pal_navigation_msgs::FinalApproachPoseResponse :definition-)
      "# pose: desired robot pose (referenced to base_link)
# Note: maximun distance allowed with this service call is 1 meter. Use only for final approach
geometry_msgs/Pose pose


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
#Returns true if final pose was achieved 
std_msgs/Bool done



================================================================================
MSG: std_msgs/Bool
")



(provide :pal_navigation_msgs/FinalApproachPose "798f73d56e5c8c9c501d7329ddd80106")


