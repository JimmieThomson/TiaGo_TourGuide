; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-srv)


;//! \htmlinclude GetPOI-request.msg.html

(cl:defclass <GetPOI-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPOI-request (<GetPOI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPOI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPOI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<GetPOI-request> is deprecated: use pal_navigation_msgs-srv:GetPOI-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPOI-request>) ostream)
  "Serializes a message object of type '<GetPOI-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPOI-request>) istream)
  "Deserializes a message object of type '<GetPOI-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPOI-request>)))
  "Returns string type for a service object of type '<GetPOI-request>"
  "pal_navigation_msgs/GetPOIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPOI-request)))
  "Returns string type for a service object of type 'GetPOI-request"
  "pal_navigation_msgs/GetPOIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPOI-request>)))
  "Returns md5sum for a message object of type '<GetPOI-request>"
  "f0a8811f1068c7b1269d9e58c608681f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPOI-request)))
  "Returns md5sum for a message object of type 'GetPOI-request"
  "f0a8811f1068c7b1269d9e58c608681f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPOI-request>)))
  "Returns full string definition for message of type '<GetPOI-request>"
  (cl:format cl:nil "# Request POI (Point of Interest) ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPOI-request)))
  "Returns full string definition for message of type 'GetPOI-request"
  (cl:format cl:nil "# Request POI (Point of Interest) ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPOI-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPOI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPOI-request
))
;//! \htmlinclude GetPOI-response.msg.html

(cl:defclass <GetPOI-response> (roslisp-msg-protocol:ros-message)
  ((poi
    :reader poi
    :initarg :poi
    :type pal_navigation_msgs-msg:POI
    :initform (cl:make-instance 'pal_navigation_msgs-msg:POI)))
)

(cl:defclass GetPOI-response (<GetPOI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPOI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPOI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<GetPOI-response> is deprecated: use pal_navigation_msgs-srv:GetPOI-response instead.")))

(cl:ensure-generic-function 'poi-val :lambda-list '(m))
(cl:defmethod poi-val ((m <GetPOI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:poi-val is deprecated.  Use pal_navigation_msgs-srv:poi instead.")
  (poi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPOI-response>) ostream)
  "Serializes a message object of type '<GetPOI-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'poi) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPOI-response>) istream)
  "Deserializes a message object of type '<GetPOI-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'poi) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPOI-response>)))
  "Returns string type for a service object of type '<GetPOI-response>"
  "pal_navigation_msgs/GetPOIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPOI-response)))
  "Returns string type for a service object of type 'GetPOI-response"
  "pal_navigation_msgs/GetPOIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPOI-response>)))
  "Returns md5sum for a message object of type '<GetPOI-response>"
  "f0a8811f1068c7b1269d9e58c608681f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPOI-response)))
  "Returns md5sum for a message object of type 'GetPOI-response"
  "f0a8811f1068c7b1269d9e58c608681f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPOI-response>)))
  "Returns full string definition for message of type '<GetPOI-response>"
  (cl:format cl:nil "~%#Returns the poi in the field points of the cloud~%#Points are in coordinates (x,y,theta)~%pal_navigation_msgs/POI   poi~%~%~%~%================================================================================~%MSG: pal_navigation_msgs/POI~%# Poi (Point of interest)~%~%sensor_msgs/PointCloud points~%~%std_msgs/String[]      ids~%~%std_msgs/String        map_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud~%# This message holds a collection of 3d points, plus optional additional~%# information about each point.~%~%# Time of sensor data acquisition, coordinate frame ID.~%Header header~%~%# Array of 3d points. Each Point32 should be interpreted as a 3d point~%# in the frame given in the header.~%geometry_msgs/Point32[] points~%~%# Each channel should have the same number of elements as points array,~%# and the data in each channel should correspond 1:1 with each point.~%# Channel names in common practice are listed in ChannelFloat32.msg.~%ChannelFloat32[] channels~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: sensor_msgs/ChannelFloat32~%# This message is used by the PointCloud message to hold optional data~%# associated with each point in the cloud. The length of the values~%# array should be the same as the length of the points array in the~%# PointCloud, and each value should be associated with the corresponding~%# point.~%~%# Channel names in existing practice include:~%#   \"u\", \"v\" - row and column (respectively) in the left stereo image.~%#              This is opposite to usual conventions but remains for~%#              historical reasons. The newer PointCloud2 message has no~%#              such problem.~%#   \"rgb\" - For point clouds produced by color stereo cameras. uint8~%#           (R,G,B) values packed into the least significant 24 bits,~%#           in order.~%#   \"intensity\" - laser or pixel intensity.~%#   \"distance\"~%~%# The channel name should give semantics of the channel (e.g.~%# \"intensity\" instead of \"value\").~%string name~%~%# The values array should be 1-1 with the elements of the associated~%# PointCloud.~%float32[] values~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPOI-response)))
  "Returns full string definition for message of type 'GetPOI-response"
  (cl:format cl:nil "~%#Returns the poi in the field points of the cloud~%#Points are in coordinates (x,y,theta)~%pal_navigation_msgs/POI   poi~%~%~%~%================================================================================~%MSG: pal_navigation_msgs/POI~%# Poi (Point of interest)~%~%sensor_msgs/PointCloud points~%~%std_msgs/String[]      ids~%~%std_msgs/String        map_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud~%# This message holds a collection of 3d points, plus optional additional~%# information about each point.~%~%# Time of sensor data acquisition, coordinate frame ID.~%Header header~%~%# Array of 3d points. Each Point32 should be interpreted as a 3d point~%# in the frame given in the header.~%geometry_msgs/Point32[] points~%~%# Each channel should have the same number of elements as points array,~%# and the data in each channel should correspond 1:1 with each point.~%# Channel names in common practice are listed in ChannelFloat32.msg.~%ChannelFloat32[] channels~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: sensor_msgs/ChannelFloat32~%# This message is used by the PointCloud message to hold optional data~%# associated with each point in the cloud. The length of the values~%# array should be the same as the length of the points array in the~%# PointCloud, and each value should be associated with the corresponding~%# point.~%~%# Channel names in existing practice include:~%#   \"u\", \"v\" - row and column (respectively) in the left stereo image.~%#              This is opposite to usual conventions but remains for~%#              historical reasons. The newer PointCloud2 message has no~%#              such problem.~%#   \"rgb\" - For point clouds produced by color stereo cameras. uint8~%#           (R,G,B) values packed into the least significant 24 bits,~%#           in order.~%#   \"intensity\" - laser or pixel intensity.~%#   \"distance\"~%~%# The channel name should give semantics of the channel (e.g.~%# \"intensity\" instead of \"value\").~%string name~%~%# The values array should be 1-1 with the elements of the associated~%# PointCloud.~%float32[] values~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPOI-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'poi))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPOI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPOI-response
    (cl:cons ':poi (poi msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPOI)))
  'GetPOI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPOI)))
  'GetPOI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPOI)))
  "Returns string type for a service object of type '<GetPOI>"
  "pal_navigation_msgs/GetPOI")