;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::Bumper)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'Bumper (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::BUMPER")
  (make-package "PAL_DEVICE_MSGS::BUMPER"))

(in-package "ROS")
;;//! \htmlinclude Bumper.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_device_msgs::Bumper
  :super ros::object
  :slots (_header _is_pressed ))

(defmethod pal_device_msgs::Bumper
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:is_pressed __is_pressed) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _is_pressed __is_pressed)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:is_pressed
   (&optional (__is_pressed :null))
   (if (not (eq __is_pressed :null)) (setq _is_pressed __is_pressed)) _is_pressed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _is_pressed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _is_pressed
       (if _is_pressed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _is_pressed
     (setq _is_pressed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pal_device_msgs::Bumper :md5sum-) "7feed261fab09e5d0ce6318f9f9ed4b9")
(setf (get pal_device_msgs::Bumper :datatype-) "pal_device_msgs/Bumper")
(setf (get pal_device_msgs::Bumper :definition-)
      "#ROS header
Header header

#Whether the bumper is being pressed
bool is_pressed

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



(provide :pal_device_msgs/Bumper "7feed261fab09e5d0ce6318f9f9ed4b9")


