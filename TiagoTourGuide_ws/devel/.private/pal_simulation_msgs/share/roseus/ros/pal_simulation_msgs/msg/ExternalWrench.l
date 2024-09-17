;; Auto-generated. Do not edit!


(when (boundp 'pal_simulation_msgs::ExternalWrench)
  (if (not (find-package "PAL_SIMULATION_MSGS"))
    (make-package "PAL_SIMULATION_MSGS"))
  (shadow 'ExternalWrench (find-package "PAL_SIMULATION_MSGS")))
(unless (find-package "PAL_SIMULATION_MSGS::EXTERNALWRENCH")
  (make-package "PAL_SIMULATION_MSGS::EXTERNALWRENCH"))

(in-package "ROS")
;;//! \htmlinclude ExternalWrench.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_simulation_msgs::ExternalWrench
  :super ros::object
  :slots (_header _link_name _wrench _application_point _duration ))

(defmethod pal_simulation_msgs::ExternalWrench
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:link_name __link_name) "")
    ((:wrench __wrench) (instance geometry_msgs::Wrench :init))
    ((:application_point __application_point) (instance geometry_msgs::Point :init))
    ((:duration __duration) (instance ros::time :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _link_name (string __link_name))
   (setq _wrench __wrench)
   (setq _application_point __application_point)
   (setq _duration __duration)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:link_name
   (&optional __link_name)
   (if __link_name (setq _link_name __link_name)) _link_name)
  (:wrench
   (&rest __wrench)
   (if (keywordp (car __wrench))
       (send* _wrench __wrench)
     (progn
       (if __wrench (setq _wrench (car __wrench)))
       _wrench)))
  (:application_point
   (&rest __application_point)
   (if (keywordp (car __application_point))
       (send* _application_point __application_point)
     (progn
       (if __application_point (setq _application_point (car __application_point)))
       _application_point)))
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _link_name
    4 (length _link_name)
    ;; geometry_msgs/Wrench _wrench
    (send _wrench :serialization-length)
    ;; geometry_msgs/Point _application_point
    (send _application_point :serialization-length)
    ;; duration _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _link_name
       (write-long (length _link_name) s) (princ _link_name s)
     ;; geometry_msgs/Wrench _wrench
       (send _wrench :serialize s)
     ;; geometry_msgs/Point _application_point
       (send _application_point :serialize s)
     ;; duration _duration
       (write-long (send _duration :sec) s) (write-long (send _duration :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _link_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Wrench _wrench
     (send _wrench :deserialize buf ptr-) (incf ptr- (send _wrench :serialization-length))
   ;; geometry_msgs/Point _application_point
     (send _application_point :deserialize buf ptr-) (incf ptr- (send _application_point :serialization-length))
   ;; duration _duration
     (send _duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_simulation_msgs::ExternalWrench :md5sum-) "336010778c1866e3bca3bc8a7913851f")
(setf (get pal_simulation_msgs::ExternalWrench :datatype-) "pal_simulation_msgs/ExternalWrench")
(setf (get pal_simulation_msgs::ExternalWrench :definition-)
      "Header                  header

string                  link_name
geometry_msgs/Wrench    wrench
geometry_msgs/Point     application_point
duration                duration

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
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :pal_simulation_msgs/ExternalWrench "336010778c1866e3bca3bc8a7913851f")


