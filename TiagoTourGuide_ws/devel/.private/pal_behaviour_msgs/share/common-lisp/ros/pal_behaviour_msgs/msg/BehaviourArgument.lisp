; Auto-generated. Do not edit!


(cl:in-package pal_behaviour_msgs-msg)


;//! \htmlinclude BehaviourArgument.msg.html

(cl:defclass <BehaviourArgument> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:string
    :initform ""))
)

(cl:defclass BehaviourArgument (<BehaviourArgument>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BehaviourArgument>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BehaviourArgument)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_behaviour_msgs-msg:<BehaviourArgument> is deprecated: use pal_behaviour_msgs-msg:BehaviourArgument instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <BehaviourArgument>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_behaviour_msgs-msg:key-val is deprecated.  Use pal_behaviour_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <BehaviourArgument>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_behaviour_msgs-msg:value-val is deprecated.  Use pal_behaviour_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BehaviourArgument>) ostream)
  "Serializes a message object of type '<BehaviourArgument>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BehaviourArgument>) istream)
  "Deserializes a message object of type '<BehaviourArgument>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BehaviourArgument>)))
  "Returns string type for a message object of type '<BehaviourArgument>"
  "pal_behaviour_msgs/BehaviourArgument")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviourArgument)))
  "Returns string type for a message object of type 'BehaviourArgument"
  "pal_behaviour_msgs/BehaviourArgument")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BehaviourArgument>)))
  "Returns md5sum for a message object of type '<BehaviourArgument>"
  "cf57fdc6617a881a88c16e768132149c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BehaviourArgument)))
  "Returns md5sum for a message object of type 'BehaviourArgument"
  "cf57fdc6617a881a88c16e768132149c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BehaviourArgument>)))
  "Returns full string definition for message of type '<BehaviourArgument>"
  (cl:format cl:nil "## SMC event~%~%#Header header~%~%string           key~%string           value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BehaviourArgument)))
  "Returns full string definition for message of type 'BehaviourArgument"
  (cl:format cl:nil "## SMC event~%~%#Header header~%~%string           key~%string           value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BehaviourArgument>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'key))
     4 (cl:length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BehaviourArgument>))
  "Converts a ROS message object to a list"
  (cl:list 'BehaviourArgument
    (cl:cons ':key (key msg))
    (cl:cons ':value (value msg))
))
