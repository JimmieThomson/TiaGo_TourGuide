; Auto-generated. Do not edit!


(cl:in-package pal_vision_msgs-msg)


;//! \htmlinclude DetectedObject.msg.html

(cl:defclass <DetectedObject> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position3D
    :reader position3D
    :initarg :position3D
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass DetectedObject (<DetectedObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-msg:<DetectedObject> is deprecated: use pal_vision_msgs-msg:DetectedObject instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:header-val is deprecated.  Use pal_vision_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position3D-val :lambda-list '(m))
(cl:defmethod position3D-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:position3D-val is deprecated.  Use pal_vision_msgs-msg:position3D instead.")
  (position3D m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedObject>) ostream)
  "Serializes a message object of type '<DetectedObject>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position3D) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedObject>) istream)
  "Deserializes a message object of type '<DetectedObject>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position3D) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedObject>)))
  "Returns string type for a message object of type '<DetectedObject>"
  "pal_vision_msgs/DetectedObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedObject)))
  "Returns string type for a message object of type 'DetectedObject"
  "pal_vision_msgs/DetectedObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedObject>)))
  "Returns md5sum for a message object of type '<DetectedObject>"
  "817c989208cff6eff51aae475bf50d0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedObject)))
  "Returns md5sum for a message object of type 'DetectedObject"
  "817c989208cff6eff51aae475bf50d0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedObject>)))
  "Returns full string definition for message of type '<DetectedObject>"
  (cl:format cl:nil "## Contains data relative to the detection of a close object~%~%Header header~%~%# 3D position of the object, expressed in the world frame~%geometry_msgs/Point  position3D~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedObject)))
  "Returns full string definition for message of type 'DetectedObject"
  (cl:format cl:nil "## Contains data relative to the detection of a close object~%~%Header header~%~%# 3D position of the object, expressed in the world frame~%geometry_msgs/Point  position3D~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedObject>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position3D))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedObject>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedObject
    (cl:cons ':header (header msg))
    (cl:cons ':position3D (position3D msg))
))
