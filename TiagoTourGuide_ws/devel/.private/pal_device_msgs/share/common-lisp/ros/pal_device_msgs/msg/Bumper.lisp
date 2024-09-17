; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-msg)


;//! \htmlinclude Bumper.msg.html

(cl:defclass <Bumper> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (is_pressed
    :reader is_pressed
    :initarg :is_pressed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Bumper (<Bumper>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bumper>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bumper)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-msg:<Bumper> is deprecated: use pal_device_msgs-msg:Bumper instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Bumper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:header-val is deprecated.  Use pal_device_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_pressed-val :lambda-list '(m))
(cl:defmethod is_pressed-val ((m <Bumper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:is_pressed-val is deprecated.  Use pal_device_msgs-msg:is_pressed instead.")
  (is_pressed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bumper>) ostream)
  "Serializes a message object of type '<Bumper>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_pressed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bumper>) istream)
  "Deserializes a message object of type '<Bumper>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_pressed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bumper>)))
  "Returns string type for a message object of type '<Bumper>"
  "pal_device_msgs/Bumper")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bumper)))
  "Returns string type for a message object of type 'Bumper"
  "pal_device_msgs/Bumper")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bumper>)))
  "Returns md5sum for a message object of type '<Bumper>"
  "7feed261fab09e5d0ce6318f9f9ed4b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bumper)))
  "Returns md5sum for a message object of type 'Bumper"
  "7feed261fab09e5d0ce6318f9f9ed4b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bumper>)))
  "Returns full string definition for message of type '<Bumper>"
  (cl:format cl:nil "#ROS header~%Header header~%~%#Whether the bumper is being pressed~%bool is_pressed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bumper)))
  "Returns full string definition for message of type 'Bumper"
  (cl:format cl:nil "#ROS header~%Header header~%~%#Whether the bumper is being pressed~%bool is_pressed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bumper>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bumper>))
  "Converts a ROS message object to a list"
  (cl:list 'Bumper
    (cl:cons ':header (header msg))
    (cl:cons ':is_pressed (is_pressed msg))
))
