;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::LegDetections)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'LegDetections (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::LEGDETECTIONS")
  (make-package "PAL_DETECTION_MSGS::LEGDETECTIONS"))

(in-package "ROS")
;;//! \htmlinclude LegDetections.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_detection_msgs::LegDetections
  :super ros::object
  :slots (_header _position3D _laser_pose ))

(defmethod pal_detection_msgs::LegDetections
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position3D __position3D) ())
    ((:laser_pose __laser_pose) (instance geometry_msgs::TransformStamped :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _position3D __position3D)
   (setq _laser_pose __laser_pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:position3D
   (&rest __position3D)
   (if (keywordp (car __position3D))
       (send* _position3D __position3D)
     (progn
       (if __position3D (setq _position3D (car __position3D)))
       _position3D)))
  (:laser_pose
   (&rest __laser_pose)
   (if (keywordp (car __laser_pose))
       (send* _laser_pose __laser_pose)
     (progn
       (if __laser_pose (setq _laser_pose (car __laser_pose)))
       _laser_pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point[] _position3D
    (apply #'+ (send-all _position3D :serialization-length)) 4
    ;; geometry_msgs/TransformStamped _laser_pose
    (send _laser_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point[] _position3D
     (write-long (length _position3D) s)
     (dolist (elem _position3D)
       (send elem :serialize s)
       )
     ;; geometry_msgs/TransformStamped _laser_pose
       (send _laser_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point[] _position3D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position3D (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _position3D)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/TransformStamped _laser_pose
     (send _laser_pose :deserialize buf ptr-) (incf ptr- (send _laser_pose :serialization-length))
   ;;
   self)
  )

(setf (get pal_detection_msgs::LegDetections :md5sum-) "052a7b604b63598ea38a2198b4b59909")
(setf (get pal_detection_msgs::LegDetections :datatype-) "pal_detection_msgs/LegDetections")
(setf (get pal_detection_msgs::LegDetections :definition-)
      "## Contains data relative to the detection of the legs of persons in a laser scan

Header header

geometry_msgs/Point[]  position3D    # 3D position of the persons' legs in a given frame

# Optional transformation between the laser frame and a certain parent frame
geometry_msgs/TransformStamped laser_pose


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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

")



(provide :pal_detection_msgs/LegDetections "052a7b604b63598ea38a2198b4b59909")


