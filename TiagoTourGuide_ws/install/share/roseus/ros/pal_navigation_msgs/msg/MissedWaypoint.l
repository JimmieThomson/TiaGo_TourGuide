;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::MissedWaypoint)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'MissedWaypoint (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::MISSEDWAYPOINT")
  (make-package "PAL_NAVIGATION_MSGS::MISSEDWAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude MissedWaypoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pal_navigation_msgs::MissedWaypoint
  :super ros::object
  :slots (_index _goal _error_code ))

(defmethod pal_navigation_msgs::MissedWaypoint
  (:init
   (&key
    ((:index __index) 0)
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _goal __goal)
   (setq _error_code (round __error_code))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; uint32 _index
    4
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ;; uint16 _error_code
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _index
       (write-long _index s)
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;; uint16 _error_code
       (write-word _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; uint16 _error_code
     (setq _error_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get pal_navigation_msgs::MissedWaypoint :md5sum-) "5325ae5bf003fb21e767626ca38c53f4")
(setf (get pal_navigation_msgs::MissedWaypoint :datatype-) "pal_navigation_msgs/MissedWaypoint")
(setf (get pal_navigation_msgs::MissedWaypoint :definition-)
      "uint32 index
geometry_msgs/PoseStamped goal
uint16 error_code
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

")



(provide :pal_navigation_msgs/MissedWaypoint "5325ae5bf003fb21e767626ca38c53f4")


