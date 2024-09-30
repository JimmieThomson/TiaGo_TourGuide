;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::Detections2d)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'Detections2d (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::DETECTIONS2D")
  (make-package "PAL_DETECTION_MSGS::DETECTIONS2D"))

(in-package "ROS")
;;//! \htmlinclude Detections2d.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_detection_msgs::Detections2d
  :super ros::object
  :slots (_header _detections _camera_pose ))

(defmethod pal_detection_msgs::Detections2d
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:detections __detections) ())
    ((:camera_pose __camera_pose) (instance geometry_msgs::TransformStamped :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _detections __detections)
   (setq _camera_pose __camera_pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:detections
   (&rest __detections)
   (if (keywordp (car __detections))
       (send* _detections __detections)
     (progn
       (if __detections (setq _detections (car __detections)))
       _detections)))
  (:camera_pose
   (&rest __camera_pose)
   (if (keywordp (car __camera_pose))
       (send* _camera_pose __camera_pose)
     (progn
       (if __camera_pose (setq _camera_pose (car __camera_pose)))
       _camera_pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pal_detection_msgs/Detection2d[] _detections
    (apply #'+ (send-all _detections :serialization-length)) 4
    ;; geometry_msgs/TransformStamped _camera_pose
    (send _camera_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pal_detection_msgs/Detection2d[] _detections
     (write-long (length _detections) s)
     (dolist (elem _detections)
       (send elem :serialize s)
       )
     ;; geometry_msgs/TransformStamped _camera_pose
       (send _camera_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pal_detection_msgs/Detection2d[] _detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detections (let (r) (dotimes (i n) (push (instance pal_detection_msgs::Detection2d :init) r)) r))
     (dolist (elem- _detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/TransformStamped _camera_pose
     (send _camera_pose :deserialize buf ptr-) (incf ptr- (send _camera_pose :serialization-length))
   ;;
   self)
  )

(setf (get pal_detection_msgs::Detections2d :md5sum-) "508e4e5ac7930673178d3ead64ba3f4b")
(setf (get pal_detection_msgs::Detections2d :datatype-) "pal_detection_msgs/Detections2d")
(setf (get pal_detection_msgs::Detections2d :definition-)
      "Header header

pal_detection_msgs/Detection2d[]  detections

# Optional transformation between the camera frame and a certain parent frame
geometry_msgs/TransformStamped camera_pose



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
MSG: pal_detection_msgs/Detection2d
## Rectangle defined by a point, its width and height
# corresponds to the openCV struct : CvRect

# coordinates of the top left corner of the box
int64 x
int64 y

# width of the box
int64 width

# height of the box
int64 height


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



(provide :pal_detection_msgs/Detections2d "508e4e5ac7930673178d3ead64ba3f4b")


