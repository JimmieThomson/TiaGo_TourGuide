;; Auto-generated. Do not edit!


(when (boundp 'pal_vision_msgs::Gesture)
  (if (not (find-package "PAL_VISION_MSGS"))
    (make-package "PAL_VISION_MSGS"))
  (shadow 'Gesture (find-package "PAL_VISION_MSGS")))
(unless (find-package "PAL_VISION_MSGS::GESTURE")
  (make-package "PAL_VISION_MSGS::GESTURE"))

(in-package "ROS")
;;//! \htmlinclude Gesture.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_vision_msgs::Gesture
  :super ros::object
  :slots (_header _gestureId _position3D ))

(defmethod pal_vision_msgs::Gesture
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gestureId __gestureId) "")
    ((:position3D __position3D) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _gestureId (string __gestureId))
   (setq _position3D __position3D)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gestureId
   (&optional __gestureId)
   (if __gestureId (setq _gestureId __gestureId)) _gestureId)
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
    ;; string _gestureId
    4 (length _gestureId)
    ;; geometry_msgs/Point _position3D
    (send _position3D :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _gestureId
       (write-long (length _gestureId) s) (princ _gestureId s)
     ;; geometry_msgs/Point _position3D
       (send _position3D :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _gestureId
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gestureId (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _position3D
     (send _position3D :deserialize buf ptr-) (incf ptr- (send _position3D :serialization-length))
   ;;
   self)
  )

(setf (get pal_vision_msgs::Gesture :md5sum-) "1bc7e8240ed437c7df9ff2c69342d63a")
(setf (get pal_vision_msgs::Gesture :datatype-) "pal_vision_msgs/Gesture")
(setf (get pal_vision_msgs::Gesture :definition-)
      "## Contains data relative to recognized gestures

Header header

# Gesture identifier
string gestureId

# Position of the hand when the gesture was recognized in the camera frame in m
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



(provide :pal_vision_msgs/Gesture "1bc7e8240ed437c7df9ff2c69342d63a")


