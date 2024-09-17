;; Auto-generated. Do not edit!


(when (boundp 'pal_control_msgs::OperationalSpaceGoal)
  (if (not (find-package "PAL_CONTROL_MSGS"))
    (make-package "PAL_CONTROL_MSGS"))
  (shadow 'OperationalSpaceGoal (find-package "PAL_CONTROL_MSGS")))
(unless (find-package "PAL_CONTROL_MSGS::OPERATIONALSPACEGOAL")
  (make-package "PAL_CONTROL_MSGS::OPERATIONALSPACEGOAL"))

(in-package "ROS")
;;//! \htmlinclude OperationalSpaceGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_control_msgs::OperationalSpaceGoal
  :super ros::object
  :slots (_header _has_vel _has_accel _duration _pose _velocity _acceleration ))

(defmethod pal_control_msgs::OperationalSpaceGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:has_vel __has_vel) nil)
    ((:has_accel __has_accel) nil)
    ((:duration __duration) (instance ros::time :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Accel :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _has_vel __has_vel)
   (setq _has_accel __has_accel)
   (setq _duration __duration)
   (setq _pose __pose)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:has_vel
   (&optional (__has_vel :null))
   (if (not (eq __has_vel :null)) (setq _has_vel __has_vel)) _has_vel)
  (:has_accel
   (&optional (__has_accel :null))
   (if (not (eq __has_accel :null)) (setq _has_accel __has_accel)) _has_accel)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _has_vel
    1
    ;; bool _has_accel
    1
    ;; duration _duration
    8
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Accel _acceleration
    (send _acceleration :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _has_vel
       (if _has_vel (write-byte -1 s) (write-byte 0 s))
     ;; bool _has_accel
       (if _has_accel (write-byte -1 s) (write-byte 0 s))
     ;; duration _duration
       (write-long (send _duration :sec) s) (write-long (send _duration :nsec) s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Accel _acceleration
       (send _acceleration :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _has_vel
     (setq _has_vel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _has_accel
     (setq _has_accel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; duration _duration
     (send _duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Accel _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;;
   self)
  )

(setf (get pal_control_msgs::OperationalSpaceGoal :md5sum-) "dbef5fe05c284da25538ca028ae2d461")
(setf (get pal_control_msgs::OperationalSpaceGoal :datatype-) "pal_control_msgs/OperationalSpaceGoal")
(setf (get pal_control_msgs::OperationalSpaceGoal :definition-)
      "Header              header

bool                has_vel
bool                has_accel
duration            duration
geometry_msgs/Pose  pose
geometry_msgs/Twist velocity
geometry_msgs/Accel acceleration

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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :pal_control_msgs/OperationalSpaceGoal "dbef5fe05c284da25538ca028ae2d461")


