;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::Waypoint)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'Waypoint (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::WAYPOINT")
  (make-package "PAL_NAVIGATION_MSGS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*NOTHING*" (find-package "PAL_NAVIGATION_MSGS::WAYPOINT"))
(shadow '*NOTHING* (find-package "PAL_NAVIGATION_MSGS::WAYPOINT"))
(defconstant pal_navigation_msgs::Waypoint::*NOTHING* 0)
(intern "*WAIT*" (find-package "PAL_NAVIGATION_MSGS::WAYPOINT"))
(shadow '*WAIT* (find-package "PAL_NAVIGATION_MSGS::WAYPOINT"))
(defconstant pal_navigation_msgs::Waypoint::*WAIT* 1)
(intern "*ROTATE*" (find-package "PAL_NAVIGATION_MSGS::WAYPOINT"))
(shadow '*ROTATE* (find-package "PAL_NAVIGATION_MSGS::WAYPOINT"))
(defconstant pal_navigation_msgs::Waypoint::*ROTATE* 2)
(intern "*DOCK*" (find-package "PAL_NAVIGATION_MSGS::WAYPOINT"))
(shadow '*DOCK* (find-package "PAL_NAVIGATION_MSGS::WAYPOINT"))
(defconstant pal_navigation_msgs::Waypoint::*DOCK* 3)
(intern "*UNDOCK*" (find-package "PAL_NAVIGATION_MSGS::WAYPOINT"))
(shadow '*UNDOCK* (find-package "PAL_NAVIGATION_MSGS::WAYPOINT"))
(defconstant pal_navigation_msgs::Waypoint::*UNDOCK* 4)

(defun pal_navigation_msgs::Waypoint-to-symbol (const)
  (cond
        ((= const 0) 'pal_navigation_msgs::Waypoint::*NOTHING*)
        ((= const 1) 'pal_navigation_msgs::Waypoint::*WAIT*)
        ((= const 2) 'pal_navigation_msgs::Waypoint::*ROTATE*)
        ((= const 3) 'pal_navigation_msgs::Waypoint::*DOCK*)
        ((= const 4) 'pal_navigation_msgs::Waypoint::*UNDOCK*)
        (t nil)))

(defclass pal_navigation_msgs::Waypoint
  :super ros::object
  :slots (_actions _pose ))

(defmethod pal_navigation_msgs::Waypoint
  (:init
   (&key
    ((:actions __actions) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _actions __actions)
   (setq _pose __pose)
   self)
  (:actions
   (&optional __actions)
   (if __actions (setq _actions __actions)) _actions)
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
    ;; uint32[] _actions
    (* 4    (length _actions)) 4
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _actions
     (write-long (length _actions) s)
     (dotimes (i (length _actions))
       (write-long (elt _actions i) s)
       )
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _actions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actions (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _actions i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get pal_navigation_msgs::Waypoint :md5sum-) "d5a8fb3adda9ea0f94f6fbc1dd90ed69")
(setf (get pal_navigation_msgs::Waypoint :datatype-) "pal_navigation_msgs/Waypoint")
(setf (get pal_navigation_msgs::Waypoint :definition-)
      "# Error codes
# Note: The expected priority order of the errors should match the message order
uint32 NOTHING=0
uint32 WAIT=1
uint32 ROTATE=2
uint32 DOCK=3
uint32 UNDOCK=4

uint32[] actions
geometry_msgs/PoseStamped pose
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



(provide :pal_navigation_msgs/Waypoint "d5a8fb3adda9ea0f94f6fbc1dd90ed69")


