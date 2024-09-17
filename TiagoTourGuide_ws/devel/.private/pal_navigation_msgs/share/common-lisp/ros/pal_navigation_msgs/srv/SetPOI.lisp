; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-srv)


;//! \htmlinclude SetPOI-request.msg.html

(cl:defclass <SetPOI-request> (roslisp-msg-protocol:ros-message)
  ((poi
    :reader poi
    :initarg :poi
    :type pal_navigation_msgs-msg:POI
    :initform (cl:make-instance 'pal_navigation_msgs-msg:POI)))
)

(cl:defclass SetPOI-request (<SetPOI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPOI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPOI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<SetPOI-request> is deprecated: use pal_navigation_msgs-srv:SetPOI-request instead.")))

(cl:ensure-generic-function 'poi-val :lambda-list '(m))
(cl:defmethod poi-val ((m <SetPOI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:poi-val is deprecated.  Use pal_navigation_msgs-srv:poi instead.")
  (poi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPOI-request>) ostream)
  "Serializes a message object of type '<SetPOI-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'poi) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPOI-request>) istream)
  "Deserializes a message object of type '<SetPOI-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'poi) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPOI-request>)))
  "Returns string type for a service object of type '<SetPOI-request>"
  "pal_navigation_msgs/SetPOIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPOI-request)))
  "Returns string type for a service object of type 'SetPOI-request"
  "pal_navigation_msgs/SetPOIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPOI-request>)))
  "Returns md5sum for a message object of type '<SetPOI-request>"
  "f0a8811f1068c7b1269d9e58c608681f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPOI-request)))
  "Returns md5sum for a message object of type 'SetPOI-request"
  "f0a8811f1068c7b1269d9e58c608681f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPOI-request>)))
  "Returns full string definition for message of type '<SetPOI-request>"
  (cl:format cl:nil "# Send POI (Point of Interest) ~%pal_navigation_msgs/POI   poi~%~%~%================================================================================~%MSG: pal_navigation_msgs/POI~%# Poi (Point of interest)~%~%sensor_msgs/PointCloud points~%~%std_msgs/String[]      ids~%~%std_msgs/String        map_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud~%# This message holds a collection of 3d points, plus optional additional~%# information about each point.~%~%# Time of sensor data acquisition, coordinate frame ID.~%Header header~%~%# Array of 3d points. Each Point32 should be interpreted as a 3d point~%# in the frame given in the header.~%geometry_msgs/Point32[] points~%~%# Each channel should have the same number of elements as points array,~%# and the data in each channel should correspond 1:1 with each point.~%# Channel names in common practice are listed in ChannelFloat32.msg.~%ChannelFloat32[] channels~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: sensor_msgs/ChannelFloat32~%# This message is used by the PointCloud message to hold optional data~%# associated with each point in the cloud. The length of the values~%# array should be the same as the length of the points array in the~%# PointCloud, and each value should be associated with the corresponding~%# point.~%~%# Channel names in existing practice include:~%#   \"u\", \"v\" - row and column (respectively) in the left stereo image.~%#              This is opposite to usual conventions but remains for~%#              historical reasons. The newer PointCloud2 message has no~%#              such problem.~%#   \"rgb\" - For point clouds produced by color stereo cameras. uint8~%#           (R,G,B) values packed into the least significant 24 bits,~%#           in order.~%#   \"intensity\" - laser or pixel intensity.~%#   \"distance\"~%~%# The channel name should give semantics of the channel (e.g.~%# \"intensity\" instead of \"value\").~%string name~%~%# The values array should be 1-1 with the elements of the associated~%# PointCloud.~%float32[] values~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPOI-request)))
  "Returns full string definition for message of type 'SetPOI-request"
  (cl:format cl:nil "# Send POI (Point of Interest) ~%pal_navigation_msgs/POI   poi~%~%~%================================================================================~%MSG: pal_navigation_msgs/POI~%# Poi (Point of interest)~%~%sensor_msgs/PointCloud points~%~%std_msgs/String[]      ids~%~%std_msgs/String        map_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud~%# This message holds a collection of 3d points, plus optional additional~%# information about each point.~%~%# Time of sensor data acquisition, coordinate frame ID.~%Header header~%~%# Array of 3d points. Each Point32 should be interpreted as a 3d point~%# in the frame given in the header.~%geometry_msgs/Point32[] points~%~%# Each channel should have the same number of elements as points array,~%# and the data in each channel should correspond 1:1 with each point.~%# Channel names in common practice are listed in ChannelFloat32.msg.~%ChannelFloat32[] channels~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: sensor_msgs/ChannelFloat32~%# This message is used by the PointCloud message to hold optional data~%# associated with each point in the cloud. The length of the values~%# array should be the same as the length of the points array in the~%# PointCloud, and each value should be associated with the corresponding~%# point.~%~%# Channel names in existing practice include:~%#   \"u\", \"v\" - row and column (respectively) in the left stereo image.~%#              This is opposite to usual conventions but remains for~%#              historical reasons. The newer PointCloud2 message has no~%#              such problem.~%#   \"rgb\" - For point clouds produced by color stereo cameras. uint8~%#           (R,G,B) values packed into the least significant 24 bits,~%#           in order.~%#   \"intensity\" - laser or pixel intensity.~%#   \"distance\"~%~%# The channel name should give semantics of the channel (e.g.~%# \"intensity\" instead of \"value\").~%string name~%~%# The values array should be 1-1 with the elements of the associated~%# PointCloud.~%float32[] values~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPOI-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'poi))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPOI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPOI-request
    (cl:cons ':poi (poi msg))
))
;//! \htmlinclude SetPOI-response.msg.html

(cl:defclass <SetPOI-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetPOI-response (<SetPOI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPOI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPOI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<SetPOI-response> is deprecated: use pal_navigation_msgs-srv:SetPOI-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPOI-response>) ostream)
  "Serializes a message object of type '<SetPOI-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPOI-response>) istream)
  "Deserializes a message object of type '<SetPOI-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPOI-response>)))
  "Returns string type for a service object of type '<SetPOI-response>"
  "pal_navigation_msgs/SetPOIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPOI-response)))
  "Returns string type for a service object of type 'SetPOI-response"
  "pal_navigation_msgs/SetPOIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPOI-response>)))
  "Returns md5sum for a message object of type '<SetPOI-response>"
  "f0a8811f1068c7b1269d9e58c608681f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPOI-response)))
  "Returns md5sum for a message object of type 'SetPOI-response"
  "f0a8811f1068c7b1269d9e58c608681f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPOI-response>)))
  "Returns full string definition for message of type '<SetPOI-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPOI-response)))
  "Returns full string definition for message of type 'SetPOI-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPOI-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPOI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPOI-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPOI)))
  'SetPOI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPOI)))
  'SetPOI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPOI)))
  "Returns string type for a service object of type '<SetPOI>"
  "pal_navigation_msgs/SetPOI")