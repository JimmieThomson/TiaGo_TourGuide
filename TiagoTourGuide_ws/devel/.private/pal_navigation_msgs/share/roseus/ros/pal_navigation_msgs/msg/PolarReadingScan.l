;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::PolarReadingScan)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'PolarReadingScan (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::POLARREADINGSCAN")
  (make-package "PAL_NAVIGATION_MSGS::POLARREADINGSCAN"))

(in-package "ROS")
;;//! \htmlinclude PolarReadingScan.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_navigation_msgs::PolarReadingScan
  :super ros::object
  :slots (_header _readings ))

(defmethod pal_navigation_msgs::PolarReadingScan
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:readings __readings) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _readings __readings)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:readings
   (&rest __readings)
   (if (keywordp (car __readings))
       (send* _readings __readings)
     (progn
       (if __readings (setq _readings (car __readings)))
       _readings)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pal_navigation_msgs/PolarReading[] _readings
    (apply #'+ (send-all _readings :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pal_navigation_msgs/PolarReading[] _readings
     (write-long (length _readings) s)
     (dolist (elem _readings)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pal_navigation_msgs/PolarReading[] _readings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _readings (let (r) (dotimes (i n) (push (instance pal_navigation_msgs::PolarReading :init) r)) r))
     (dolist (elem- _readings)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pal_navigation_msgs::PolarReadingScan :md5sum-) "31bf8adf3389c9066eb83f63abcbe26f")
(setf (get pal_navigation_msgs::PolarReadingScan :datatype-) "pal_navigation_msgs/PolarReadingScan")
(setf (get pal_navigation_msgs::PolarReadingScan :definition-)
      "# Time of sensor data acquisition, coordinate frame ID.
Header header

# Polar reading scan: vector of PolarReading(angle, distance)
pal_navigation_msgs/PolarReading[] readings 


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
MSG: pal_navigation_msgs/PolarReading
# Polar reading: a distance to a given angle
float32 angle # inradians

float32 distance # in meters


")



(provide :pal_navigation_msgs/PolarReadingScan "31bf8adf3389c9066eb83f63abcbe26f")


