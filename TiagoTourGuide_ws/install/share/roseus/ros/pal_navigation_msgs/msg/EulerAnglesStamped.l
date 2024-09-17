;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::EulerAnglesStamped)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'EulerAnglesStamped (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::EULERANGLESSTAMPED")
  (make-package "PAL_NAVIGATION_MSGS::EULERANGLESSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude EulerAnglesStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_navigation_msgs::EulerAnglesStamped
  :super ros::object
  :slots (_header _angles ))

(defmethod pal_navigation_msgs::EulerAnglesStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:angles __angles) (instance pal_navigation_msgs::EulerAngles :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _angles __angles)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:angles
   (&rest __angles)
   (if (keywordp (car __angles))
       (send* _angles __angles)
     (progn
       (if __angles (setq _angles (car __angles)))
       _angles)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pal_navigation_msgs/EulerAngles _angles
    (send _angles :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pal_navigation_msgs/EulerAngles _angles
       (send _angles :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pal_navigation_msgs/EulerAngles _angles
     (send _angles :deserialize buf ptr-) (incf ptr- (send _angles :serialization-length))
   ;;
   self)
  )

(setf (get pal_navigation_msgs::EulerAnglesStamped :md5sum-) "08ed1513cf62c3aa9d3f21c206745853")
(setf (get pal_navigation_msgs::EulerAnglesStamped :datatype-) "pal_navigation_msgs/EulerAnglesStamped")
(setf (get pal_navigation_msgs::EulerAnglesStamped :definition-)
      "Header header
EulerAngles angles
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
MSG: pal_navigation_msgs/EulerAngles
string sequence # as per transformations.py, e.g. 'rzyx' for standard yaw-pitch-roll
bool angles_in_degrees # true if ai, aj, ak are in degrees, otherwise they are in radians
# rotations about 1st, 2nd, 3rd axis:
float64 ai
float64 aj
float64 ak
")



(provide :pal_navigation_msgs/EulerAnglesStamped "08ed1513cf62c3aa9d3f21c206745853")


