; Auto-generated. Do not edit!


(cl:in-package pal_vision_msgs-msg)


;//! \htmlinclude HeadPanTilt.msg.html

(cl:defclass <HeadPanTilt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pan
    :reader pan
    :initarg :pan
    :type cl:float
    :initform 0.0)
   (tilt
    :reader tilt
    :initarg :tilt
    :type cl:float
    :initform 0.0))
)

(cl:defclass HeadPanTilt (<HeadPanTilt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeadPanTilt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeadPanTilt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-msg:<HeadPanTilt> is deprecated: use pal_vision_msgs-msg:HeadPanTilt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HeadPanTilt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:header-val is deprecated.  Use pal_vision_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pan-val :lambda-list '(m))
(cl:defmethod pan-val ((m <HeadPanTilt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:pan-val is deprecated.  Use pal_vision_msgs-msg:pan instead.")
  (pan m))

(cl:ensure-generic-function 'tilt-val :lambda-list '(m))
(cl:defmethod tilt-val ((m <HeadPanTilt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:tilt-val is deprecated.  Use pal_vision_msgs-msg:tilt instead.")
  (tilt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeadPanTilt>) ostream)
  "Serializes a message object of type '<HeadPanTilt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tilt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeadPanTilt>) istream)
  "Deserializes a message object of type '<HeadPanTilt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pan) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tilt) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeadPanTilt>)))
  "Returns string type for a message object of type '<HeadPanTilt>"
  "pal_vision_msgs/HeadPanTilt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeadPanTilt)))
  "Returns string type for a message object of type 'HeadPanTilt"
  "pal_vision_msgs/HeadPanTilt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeadPanTilt>)))
  "Returns md5sum for a message object of type '<HeadPanTilt>"
  "3a7f57c9f96db29da139b70516999666")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeadPanTilt)))
  "Returns md5sum for a message object of type 'HeadPanTilt"
  "3a7f57c9f96db29da139b70516999666")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeadPanTilt>)))
  "Returns full string definition for message of type '<HeadPanTilt>"
  (cl:format cl:nil "## Contains the angular position of the Pan and Tilt of the robot head~%~%Header header~%~%float32 pan~%float32 tilt~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeadPanTilt)))
  "Returns full string definition for message of type 'HeadPanTilt"
  (cl:format cl:nil "## Contains the angular position of the Pan and Tilt of the robot head~%~%Header header~%~%float32 pan~%float32 tilt~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeadPanTilt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeadPanTilt>))
  "Converts a ROS message object to a list"
  (cl:list 'HeadPanTilt
    (cl:cons ':header (header msg))
    (cl:cons ':pan (pan msg))
    (cl:cons ':tilt (tilt msg))
))
