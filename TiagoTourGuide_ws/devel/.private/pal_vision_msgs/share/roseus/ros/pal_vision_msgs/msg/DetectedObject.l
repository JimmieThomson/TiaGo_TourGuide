;; Auto-generated. Do not edit!


(when (boundp 'pal_vision_msgs::DetectedObject)
  (if (not (find-package "PAL_VISION_MSGS"))
    (make-package "PAL_VISION_MSGS"))
  (shadow 'DetectedObject (find-package "PAL_VISION_MSGS")))
(unless (find-package "PAL_VISION_MSGS::DETECTEDOBJECT")
  (make-package "PAL_VISION_MSGS::DETECTEDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude DetectedObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_vision_msgs::DetectedObject
  :super ros::object
  :slots (_header _position3D ))

(defmethod pal_vision_msgs::DetectedObject
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position3D __position3D) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _position3D __position3D)
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _position3D
    (send _position3D :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _position3D
       (send _position3D :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _position3D
     (send _position3D :deserialize buf ptr-) (incf ptr- (send _position3D :serialization-length))
   ;;
   self)
  )

(setf (get pal_vision_msgs::DetectedObject :md5sum-) "817c989208cff6eff51aae475bf50d0f")
(setf (get pal_vision_msgs::DetectedObject :datatype-) "pal_vision_msgs/DetectedObject")
(setf (get pal_vision_msgs::DetectedObject :definition-)
      "## Contains data relative to the detection of a close object

Header header

# 3D position of the object, expressed in the world frame
geometry_msgs/Point  position3D


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

")



(provide :pal_vision_msgs/DetectedObject "817c989208cff6eff51aae475bf50d0f")


