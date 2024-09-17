; Auto-generated. Do not edit!


(cl:in-package pal_common_msgs-msg)


;//! \htmlinclude JointCurrent.msg.html

(cl:defclass <JointCurrent> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type cl:string
    :initform "")
   (current_limit
    :reader current_limit
    :initarg :current_limit
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointCurrent (<JointCurrent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointCurrent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointCurrent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_common_msgs-msg:<JointCurrent> is deprecated: use pal_common_msgs-msg:JointCurrent instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <JointCurrent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_common_msgs-msg:joints-val is deprecated.  Use pal_common_msgs-msg:joints instead.")
  (joints m))

(cl:ensure-generic-function 'current_limit-val :lambda-list '(m))
(cl:defmethod current_limit-val ((m <JointCurrent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_common_msgs-msg:current_limit-val is deprecated.  Use pal_common_msgs-msg:current_limit instead.")
  (current_limit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointCurrent>) ostream)
  "Serializes a message object of type '<JointCurrent>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joints))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointCurrent>) istream)
  "Deserializes a message object of type '<JointCurrent>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joints) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joints) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_limit) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointCurrent>)))
  "Returns string type for a message object of type '<JointCurrent>"
  "pal_common_msgs/JointCurrent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointCurrent)))
  "Returns string type for a message object of type 'JointCurrent"
  "pal_common_msgs/JointCurrent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointCurrent>)))
  "Returns md5sum for a message object of type '<JointCurrent>"
  "aa38356f1b4f7b710d0060415affb648")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointCurrent)))
  "Returns md5sum for a message object of type 'JointCurrent"
  "aa38356f1b4f7b710d0060415affb648")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointCurrent>)))
  "Returns full string definition for message of type '<JointCurrent>"
  (cl:format cl:nil "# Joints or group name of joints to activate or deactivate~%string joints~%~%# From 0.0 to 1.0 max current to aply to the joint~%float32 current_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointCurrent)))
  "Returns full string definition for message of type 'JointCurrent"
  (cl:format cl:nil "# Joints or group name of joints to activate or deactivate~%string joints~%~%# From 0.0 to 1.0 max current to aply to the joint~%float32 current_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointCurrent>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joints))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointCurrent>))
  "Converts a ROS message object to a list"
  (cl:list 'JointCurrent
    (cl:cons ':joints (joints msg))
    (cl:cons ':current_limit (current_limit msg))
))
