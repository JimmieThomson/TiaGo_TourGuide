; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-srv)


;//! \htmlinclude ChangeMap-request.msg.html

(cl:defclass <ChangeMap-request> (roslisp-msg-protocol:ros-message)
  ((map
    :reader map
    :initarg :map
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid)))
)

(cl:defclass ChangeMap-request (<ChangeMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<ChangeMap-request> is deprecated: use pal_navigation_msgs-srv:ChangeMap-request instead.")))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <ChangeMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:map-val is deprecated.  Use pal_navigation_msgs-srv:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeMap-request>) ostream)
  "Serializes a message object of type '<ChangeMap-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeMap-request>) istream)
  "Deserializes a message object of type '<ChangeMap-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeMap-request>)))
  "Returns string type for a service object of type '<ChangeMap-request>"
  "pal_navigation_msgs/ChangeMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeMap-request)))
  "Returns string type for a service object of type 'ChangeMap-request"
  "pal_navigation_msgs/ChangeMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeMap-request>)))
  "Returns md5sum for a message object of type '<ChangeMap-request>"
  "d94d07fe99163246282ff874dec03f26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeMap-request)))
  "Returns md5sum for a message object of type 'ChangeMap-request"
  "d94d07fe99163246282ff874dec03f26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeMap-request>)))
  "Returns full string definition for message of type '<ChangeMap-request>"
  (cl:format cl:nil "# Interface for changing the current map~%# Request~%nav_msgs/OccupancyGrid map~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeMap-request)))
  "Returns full string definition for message of type 'ChangeMap-request"
  (cl:format cl:nil "# Interface for changing the current map~%# Request~%nav_msgs/OccupancyGrid map~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeMap-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeMap-request
    (cl:cons ':map (map msg))
))
;//! \htmlinclude ChangeMap-response.msg.html

(cl:defclass <ChangeMap-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeMap-response (<ChangeMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<ChangeMap-response> is deprecated: use pal_navigation_msgs-srv:ChangeMap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ChangeMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:success-val is deprecated.  Use pal_navigation_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeMap-response>) ostream)
  "Serializes a message object of type '<ChangeMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeMap-response>) istream)
  "Deserializes a message object of type '<ChangeMap-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeMap-response>)))
  "Returns string type for a service object of type '<ChangeMap-response>"
  "pal_navigation_msgs/ChangeMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeMap-response)))
  "Returns string type for a service object of type 'ChangeMap-response"
  "pal_navigation_msgs/ChangeMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeMap-response>)))
  "Returns md5sum for a message object of type '<ChangeMap-response>"
  "d94d07fe99163246282ff874dec03f26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeMap-response)))
  "Returns md5sum for a message object of type 'ChangeMap-response"
  "d94d07fe99163246282ff874dec03f26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeMap-response>)))
  "Returns full string definition for message of type '<ChangeMap-response>"
  (cl:format cl:nil "# Response~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeMap-response)))
  "Returns full string definition for message of type 'ChangeMap-response"
  (cl:format cl:nil "# Response~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeMap-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeMap-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeMap)))
  'ChangeMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeMap)))
  'ChangeMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeMap)))
  "Returns string type for a service object of type '<ChangeMap>"
  "pal_navigation_msgs/ChangeMap")