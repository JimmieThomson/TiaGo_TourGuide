; Auto-generated. Do not edit!


(cl:in-package pal_multirobot_msgs-msg)


;//! \htmlinclude WifiServiceDetection.msg.html

(cl:defclass <WifiServiceDetection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (signal
    :reader signal
    :initarg :signal
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WifiServiceDetection (<WifiServiceDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WifiServiceDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WifiServiceDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_multirobot_msgs-msg:<WifiServiceDetection> is deprecated: use pal_multirobot_msgs-msg:WifiServiceDetection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WifiServiceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_multirobot_msgs-msg:header-val is deprecated.  Use pal_multirobot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <WifiServiceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_multirobot_msgs-msg:id-val is deprecated.  Use pal_multirobot_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'signal-val :lambda-list '(m))
(cl:defmethod signal-val ((m <WifiServiceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_multirobot_msgs-msg:signal-val is deprecated.  Use pal_multirobot_msgs-msg:signal instead.")
  (signal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WifiServiceDetection>) ostream)
  "Serializes a message object of type '<WifiServiceDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let* ((signed (cl:slot-value msg 'signal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WifiServiceDetection>) istream)
  "Deserializes a message object of type '<WifiServiceDetection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WifiServiceDetection>)))
  "Returns string type for a message object of type '<WifiServiceDetection>"
  "pal_multirobot_msgs/WifiServiceDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WifiServiceDetection)))
  "Returns string type for a message object of type 'WifiServiceDetection"
  "pal_multirobot_msgs/WifiServiceDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WifiServiceDetection>)))
  "Returns md5sum for a message object of type '<WifiServiceDetection>"
  "a2e54cd74d6654020f51ebb6558225d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WifiServiceDetection)))
  "Returns md5sum for a message object of type 'WifiServiceDetection"
  "a2e54cd74d6654020f51ebb6558225d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WifiServiceDetection>)))
  "Returns full string definition for message of type '<WifiServiceDetection>"
  (cl:format cl:nil "## Contains data relative to the signal level of the service wireless detected from other robots~%~%Header header~%~%# Signal Level of the Id robot detected~%string id~%int16  signal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WifiServiceDetection)))
  "Returns full string definition for message of type 'WifiServiceDetection"
  (cl:format cl:nil "## Contains data relative to the signal level of the service wireless detected from other robots~%~%Header header~%~%# Signal Level of the Id robot detected~%string id~%int16  signal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WifiServiceDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'id))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WifiServiceDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'WifiServiceDetection
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':signal (signal msg))
))
