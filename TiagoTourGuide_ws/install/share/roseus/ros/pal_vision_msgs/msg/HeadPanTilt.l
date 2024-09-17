;; Auto-generated. Do not edit!


(when (boundp 'pal_vision_msgs::HeadPanTilt)
  (if (not (find-package "PAL_VISION_MSGS"))
    (make-package "PAL_VISION_MSGS"))
  (shadow 'HeadPanTilt (find-package "PAL_VISION_MSGS")))
(unless (find-package "PAL_VISION_MSGS::HEADPANTILT")
  (make-package "PAL_VISION_MSGS::HEADPANTILT"))

(in-package "ROS")
;;//! \htmlinclude HeadPanTilt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_vision_msgs::HeadPanTilt
  :super ros::object
  :slots (_header _pan _tilt ))

(defmethod pal_vision_msgs::HeadPanTilt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pan __pan) 0.0)
    ((:tilt __tilt) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pan (float __pan))
   (setq _tilt (float __tilt))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pan
   (&optional __pan)
   (if __pan (setq _pan __pan)) _pan)
  (:tilt
   (&optional __tilt)
   (if __tilt (setq _tilt __tilt)) _tilt)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _pan
    4
    ;; float32 _tilt
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _pan
       (sys::poke _pan (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tilt
       (sys::poke _tilt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _pan
     (setq _pan (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tilt
     (setq _tilt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_vision_msgs::HeadPanTilt :md5sum-) "3a7f57c9f96db29da139b70516999666")
(setf (get pal_vision_msgs::HeadPanTilt :datatype-) "pal_vision_msgs/HeadPanTilt")
(setf (get pal_vision_msgs::HeadPanTilt :definition-)
      "## Contains the angular position of the Pan and Tilt of the robot head

Header header

float32 pan
float32 tilt


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

")



(provide :pal_vision_msgs/HeadPanTilt "3a7f57c9f96db29da139b70516999666")


