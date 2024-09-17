;; Auto-generated. Do not edit!


(when (boundp 'pal_motion_model_msgs::GetMotionMap)
  (if (not (find-package "PAL_MOTION_MODEL_MSGS"))
    (make-package "PAL_MOTION_MODEL_MSGS"))
  (shadow 'GetMotionMap (find-package "PAL_MOTION_MODEL_MSGS")))
(unless (find-package "PAL_MOTION_MODEL_MSGS::GETMOTIONMAP")
  (make-package "PAL_MOTION_MODEL_MSGS::GETMOTIONMAP"))
(unless (find-package "PAL_MOTION_MODEL_MSGS::GETMOTIONMAPREQUEST")
  (make-package "PAL_MOTION_MODEL_MSGS::GETMOTIONMAPREQUEST"))
(unless (find-package "PAL_MOTION_MODEL_MSGS::GETMOTIONMAPRESPONSE")
  (make-package "PAL_MOTION_MODEL_MSGS::GETMOTIONMAPRESPONSE"))

(in-package "ROS")





(defclass pal_motion_model_msgs::GetMotionMapRequest
  :super ros::object
  :slots ())

(defmethod pal_motion_model_msgs::GetMotionMapRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pal_motion_model_msgs::GetMotionMapResponse
  :super ros::object
  :slots (_map ))

(defmethod pal_motion_model_msgs::GetMotionMapResponse
  (:init
   (&key
    ((:map __map) (instance pal_motion_model_msgs::MotionModelMap :init))
    )
   (send-super :init)
   (setq _map __map)
   self)
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:serialization-length
   ()
   (+
    ;; pal_motion_model_msgs/MotionModelMap _map
    (send _map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pal_motion_model_msgs/MotionModelMap _map
       (send _map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pal_motion_model_msgs/MotionModelMap _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;;
   self)
  )

(defclass pal_motion_model_msgs::GetMotionMap
  :super ros::object
  :slots ())

(setf (get pal_motion_model_msgs::GetMotionMap :md5sum-) "ff508f86b1d484eed7ca1c596036d1bf")
(setf (get pal_motion_model_msgs::GetMotionMap :datatype-) "pal_motion_model_msgs/GetMotionMap")
(setf (get pal_motion_model_msgs::GetMotionMap :request) pal_motion_model_msgs::GetMotionMapRequest)
(setf (get pal_motion_model_msgs::GetMotionMap :response) pal_motion_model_msgs::GetMotionMapResponse)

(defmethod pal_motion_model_msgs::GetMotionMapRequest
  (:response () (instance pal_motion_model_msgs::GetMotionMapResponse :init)))

(setf (get pal_motion_model_msgs::GetMotionMapRequest :md5sum-) "ff508f86b1d484eed7ca1c596036d1bf")
(setf (get pal_motion_model_msgs::GetMotionMapRequest :datatype-) "pal_motion_model_msgs/GetMotionMapRequest")
(setf (get pal_motion_model_msgs::GetMotionMapRequest :definition-)
      "# Get the motion map 
---
pal_motion_model_msgs/MotionModelMap map


================================================================================
MSG: pal_motion_model_msgs/MotionModelMap
#This represents a 2-D motion model map, in which each cell has the probabilistic motion models for the robot.

Header header 

#MetaData for the map
nav_msgs/MapMetaData info

# The map data, in row-major order, starting with (0,0). A list of  models is stored for every cell. 
MotionModelList[] data


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
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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
MSG: pal_motion_model_msgs/MotionModelList
#list of motion models learnt in a specific place

MotionModel[] models




================================================================================
MSG: pal_motion_model_msgs/MotionModel
## Contains the 2D motion model of a robot at a specific location

#Heading direction is represented through a gaussian pdf.
float32  heading_mean
float32  heading_std_dev

#For statistics we store a pdf over the robot speeds
float32  linear_speed_mean
float32  linear_speed_std_dev
float32  angular_speed_mean
float32  angular_speed_std_dev

")

(setf (get pal_motion_model_msgs::GetMotionMapResponse :md5sum-) "ff508f86b1d484eed7ca1c596036d1bf")
(setf (get pal_motion_model_msgs::GetMotionMapResponse :datatype-) "pal_motion_model_msgs/GetMotionMapResponse")
(setf (get pal_motion_model_msgs::GetMotionMapResponse :definition-)
      "# Get the motion map 
---
pal_motion_model_msgs/MotionModelMap map


================================================================================
MSG: pal_motion_model_msgs/MotionModelMap
#This represents a 2-D motion model map, in which each cell has the probabilistic motion models for the robot.

Header header 

#MetaData for the map
nav_msgs/MapMetaData info

# The map data, in row-major order, starting with (0,0). A list of  models is stored for every cell. 
MotionModelList[] data


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
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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
MSG: pal_motion_model_msgs/MotionModelList
#list of motion models learnt in a specific place

MotionModel[] models




================================================================================
MSG: pal_motion_model_msgs/MotionModel
## Contains the 2D motion model of a robot at a specific location

#Heading direction is represented through a gaussian pdf.
float32  heading_mean
float32  heading_std_dev

#For statistics we store a pdf over the robot speeds
float32  linear_speed_mean
float32  linear_speed_std_dev
float32  angular_speed_mean
float32  angular_speed_std_dev

")



(provide :pal_motion_model_msgs/GetMotionMap "ff508f86b1d484eed7ca1c596036d1bf")


