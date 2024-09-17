; Auto-generated. Do not edit!


(cl:in-package pal_motion_model_msgs-srv)


;//! \htmlinclude GetMotionMap-request.msg.html

(cl:defclass <GetMotionMap-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetMotionMap-request (<GetMotionMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMotionMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMotionMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_motion_model_msgs-srv:<GetMotionMap-request> is deprecated: use pal_motion_model_msgs-srv:GetMotionMap-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMotionMap-request>) ostream)
  "Serializes a message object of type '<GetMotionMap-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMotionMap-request>) istream)
  "Deserializes a message object of type '<GetMotionMap-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMotionMap-request>)))
  "Returns string type for a service object of type '<GetMotionMap-request>"
  "pal_motion_model_msgs/GetMotionMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMotionMap-request)))
  "Returns string type for a service object of type 'GetMotionMap-request"
  "pal_motion_model_msgs/GetMotionMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMotionMap-request>)))
  "Returns md5sum for a message object of type '<GetMotionMap-request>"
  "ff508f86b1d484eed7ca1c596036d1bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMotionMap-request)))
  "Returns md5sum for a message object of type 'GetMotionMap-request"
  "ff508f86b1d484eed7ca1c596036d1bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMotionMap-request>)))
  "Returns full string definition for message of type '<GetMotionMap-request>"
  (cl:format cl:nil "# Get the motion map ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMotionMap-request)))
  "Returns full string definition for message of type 'GetMotionMap-request"
  (cl:format cl:nil "# Get the motion map ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMotionMap-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMotionMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMotionMap-request
))
;//! \htmlinclude GetMotionMap-response.msg.html

(cl:defclass <GetMotionMap-response> (roslisp-msg-protocol:ros-message)
  ((map
    :reader map
    :initarg :map
    :type pal_motion_model_msgs-msg:MotionModelMap
    :initform (cl:make-instance 'pal_motion_model_msgs-msg:MotionModelMap)))
)

(cl:defclass GetMotionMap-response (<GetMotionMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMotionMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMotionMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_motion_model_msgs-srv:<GetMotionMap-response> is deprecated: use pal_motion_model_msgs-srv:GetMotionMap-response instead.")))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <GetMotionMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_motion_model_msgs-srv:map-val is deprecated.  Use pal_motion_model_msgs-srv:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMotionMap-response>) ostream)
  "Serializes a message object of type '<GetMotionMap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMotionMap-response>) istream)
  "Deserializes a message object of type '<GetMotionMap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMotionMap-response>)))
  "Returns string type for a service object of type '<GetMotionMap-response>"
  "pal_motion_model_msgs/GetMotionMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMotionMap-response)))
  "Returns string type for a service object of type 'GetMotionMap-response"
  "pal_motion_model_msgs/GetMotionMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMotionMap-response>)))
  "Returns md5sum for a message object of type '<GetMotionMap-response>"
  "ff508f86b1d484eed7ca1c596036d1bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMotionMap-response)))
  "Returns md5sum for a message object of type 'GetMotionMap-response"
  "ff508f86b1d484eed7ca1c596036d1bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMotionMap-response>)))
  "Returns full string definition for message of type '<GetMotionMap-response>"
  (cl:format cl:nil "pal_motion_model_msgs/MotionModelMap map~%~%~%================================================================================~%MSG: pal_motion_model_msgs/MotionModelMap~%#This represents a 2-D motion model map, in which each cell has the probabilistic motion models for the robot.~%~%Header header ~%~%#MetaData for the map~%nav_msgs/MapMetaData info~%~%# The map data, in row-major order, starting with (0,0). A list of  models is stored for every cell. ~%MotionModelList[] data~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: pal_motion_model_msgs/MotionModelList~%#list of motion models learnt in a specific place~%~%MotionModel[] models~%~%~%~%~%================================================================================~%MSG: pal_motion_model_msgs/MotionModel~%## Contains the 2D motion model of a robot at a specific location~%~%#Heading direction is represented through a gaussian pdf.~%float32  heading_mean~%float32  heading_std_dev~%~%#For statistics we store a pdf over the robot speeds~%float32  linear_speed_mean~%float32  linear_speed_std_dev~%float32  angular_speed_mean~%float32  angular_speed_std_dev~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMotionMap-response)))
  "Returns full string definition for message of type 'GetMotionMap-response"
  (cl:format cl:nil "pal_motion_model_msgs/MotionModelMap map~%~%~%================================================================================~%MSG: pal_motion_model_msgs/MotionModelMap~%#This represents a 2-D motion model map, in which each cell has the probabilistic motion models for the robot.~%~%Header header ~%~%#MetaData for the map~%nav_msgs/MapMetaData info~%~%# The map data, in row-major order, starting with (0,0). A list of  models is stored for every cell. ~%MotionModelList[] data~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: pal_motion_model_msgs/MotionModelList~%#list of motion models learnt in a specific place~%~%MotionModel[] models~%~%~%~%~%================================================================================~%MSG: pal_motion_model_msgs/MotionModel~%## Contains the 2D motion model of a robot at a specific location~%~%#Heading direction is represented through a gaussian pdf.~%float32  heading_mean~%float32  heading_std_dev~%~%#For statistics we store a pdf over the robot speeds~%float32  linear_speed_mean~%float32  linear_speed_std_dev~%float32  angular_speed_mean~%float32  angular_speed_std_dev~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMotionMap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMotionMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMotionMap-response
    (cl:cons ':map (map msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMotionMap)))
  'GetMotionMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMotionMap)))
  'GetMotionMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMotionMap)))
  "Returns string type for a service object of type '<GetMotionMap>"
  "pal_motion_model_msgs/GetMotionMap")