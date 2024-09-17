; Auto-generated. Do not edit!


(cl:in-package pal_motion_model_msgs-msg)


;//! \htmlinclude MotionModelMap.msg.html

(cl:defclass <MotionModelMap> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (info
    :reader info
    :initarg :info
    :type nav_msgs-msg:MapMetaData
    :initform (cl:make-instance 'nav_msgs-msg:MapMetaData))
   (data
    :reader data
    :initarg :data
    :type (cl:vector pal_motion_model_msgs-msg:MotionModelList)
   :initform (cl:make-array 0 :element-type 'pal_motion_model_msgs-msg:MotionModelList :initial-element (cl:make-instance 'pal_motion_model_msgs-msg:MotionModelList))))
)

(cl:defclass MotionModelMap (<MotionModelMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionModelMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionModelMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_motion_model_msgs-msg:<MotionModelMap> is deprecated: use pal_motion_model_msgs-msg:MotionModelMap instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MotionModelMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_motion_model_msgs-msg:header-val is deprecated.  Use pal_motion_model_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <MotionModelMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_motion_model_msgs-msg:info-val is deprecated.  Use pal_motion_model_msgs-msg:info instead.")
  (info m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <MotionModelMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_motion_model_msgs-msg:data-val is deprecated.  Use pal_motion_model_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionModelMap>) ostream)
  "Serializes a message object of type '<MotionModelMap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionModelMap>) istream)
  "Deserializes a message object of type '<MotionModelMap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_motion_model_msgs-msg:MotionModelList))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionModelMap>)))
  "Returns string type for a message object of type '<MotionModelMap>"
  "pal_motion_model_msgs/MotionModelMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionModelMap)))
  "Returns string type for a message object of type 'MotionModelMap"
  "pal_motion_model_msgs/MotionModelMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionModelMap>)))
  "Returns md5sum for a message object of type '<MotionModelMap>"
  "b6bcccd2088596e98ba83bc65b2b504e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionModelMap)))
  "Returns md5sum for a message object of type 'MotionModelMap"
  "b6bcccd2088596e98ba83bc65b2b504e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionModelMap>)))
  "Returns full string definition for message of type '<MotionModelMap>"
  (cl:format cl:nil "#This represents a 2-D motion model map, in which each cell has the probabilistic motion models for the robot.~%~%Header header ~%~%#MetaData for the map~%nav_msgs/MapMetaData info~%~%# The map data, in row-major order, starting with (0,0). A list of  models is stored for every cell. ~%MotionModelList[] data~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: pal_motion_model_msgs/MotionModelList~%#list of motion models learnt in a specific place~%~%MotionModel[] models~%~%~%~%~%================================================================================~%MSG: pal_motion_model_msgs/MotionModel~%## Contains the 2D motion model of a robot at a specific location~%~%#Heading direction is represented through a gaussian pdf.~%float32  heading_mean~%float32  heading_std_dev~%~%#For statistics we store a pdf over the robot speeds~%float32  linear_speed_mean~%float32  linear_speed_std_dev~%float32  angular_speed_mean~%float32  angular_speed_std_dev~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionModelMap)))
  "Returns full string definition for message of type 'MotionModelMap"
  (cl:format cl:nil "#This represents a 2-D motion model map, in which each cell has the probabilistic motion models for the robot.~%~%Header header ~%~%#MetaData for the map~%nav_msgs/MapMetaData info~%~%# The map data, in row-major order, starting with (0,0). A list of  models is stored for every cell. ~%MotionModelList[] data~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: pal_motion_model_msgs/MotionModelList~%#list of motion models learnt in a specific place~%~%MotionModel[] models~%~%~%~%~%================================================================================~%MSG: pal_motion_model_msgs/MotionModel~%## Contains the 2D motion model of a robot at a specific location~%~%#Heading direction is represented through a gaussian pdf.~%float32  heading_mean~%float32  heading_std_dev~%~%#For statistics we store a pdf over the robot speeds~%float32  linear_speed_mean~%float32  linear_speed_std_dev~%float32  angular_speed_mean~%float32  angular_speed_std_dev~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionModelMap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionModelMap>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionModelMap
    (cl:cons ':header (header msg))
    (cl:cons ':info (info msg))
    (cl:cons ':data (data msg))
))
