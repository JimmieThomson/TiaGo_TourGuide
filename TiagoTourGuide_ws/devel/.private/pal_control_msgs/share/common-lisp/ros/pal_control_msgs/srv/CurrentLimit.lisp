; Auto-generated. Do not edit!


(cl:in-package pal_control_msgs-srv)


;//! \htmlinclude CurrentLimit-request.msg.html

(cl:defclass <CurrentLimit-request> (roslisp-msg-protocol:ros-message)
  ((actuator_name
    :reader actuator_name
    :initarg :actuator_name
    :type cl:string
    :initform "")
   (current_limit
    :reader current_limit
    :initarg :current_limit
    :type cl:float
    :initform 0.0))
)

(cl:defclass CurrentLimit-request (<CurrentLimit-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentLimit-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentLimit-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_control_msgs-srv:<CurrentLimit-request> is deprecated: use pal_control_msgs-srv:CurrentLimit-request instead.")))

(cl:ensure-generic-function 'actuator_name-val :lambda-list '(m))
(cl:defmethod actuator_name-val ((m <CurrentLimit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_control_msgs-srv:actuator_name-val is deprecated.  Use pal_control_msgs-srv:actuator_name instead.")
  (actuator_name m))

(cl:ensure-generic-function 'current_limit-val :lambda-list '(m))
(cl:defmethod current_limit-val ((m <CurrentLimit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_control_msgs-srv:current_limit-val is deprecated.  Use pal_control_msgs-srv:current_limit instead.")
  (current_limit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentLimit-request>) ostream)
  "Serializes a message object of type '<CurrentLimit-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'actuator_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'actuator_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentLimit-request>) istream)
  "Deserializes a message object of type '<CurrentLimit-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actuator_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'actuator_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_limit) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentLimit-request>)))
  "Returns string type for a service object of type '<CurrentLimit-request>"
  "pal_control_msgs/CurrentLimitRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentLimit-request)))
  "Returns string type for a service object of type 'CurrentLimit-request"
  "pal_control_msgs/CurrentLimitRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentLimit-request>)))
  "Returns md5sum for a message object of type '<CurrentLimit-request>"
  "8a87b11fb09397e3869b9fb3a4ea940b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentLimit-request)))
  "Returns md5sum for a message object of type 'CurrentLimit-request"
  "8a87b11fb09397e3869b9fb3a4ea940b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentLimit-request>)))
  "Returns full string definition for message of type '<CurrentLimit-request>"
  (cl:format cl:nil "#This service requests to change the current limit of a motor ~%# to a new value. ~%# Admissible values are between 0 (zero current)  and 1 (nominal current).~%~%string    actuator_name~%float64   current_limit~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentLimit-request)))
  "Returns full string definition for message of type 'CurrentLimit-request"
  (cl:format cl:nil "#This service requests to change the current limit of a motor ~%# to a new value. ~%# Admissible values are between 0 (zero current)  and 1 (nominal current).~%~%string    actuator_name~%float64   current_limit~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentLimit-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'actuator_name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentLimit-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentLimit-request
    (cl:cons ':actuator_name (actuator_name msg))
    (cl:cons ':current_limit (current_limit msg))
))
;//! \htmlinclude CurrentLimit-response.msg.html

(cl:defclass <CurrentLimit-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass CurrentLimit-response (<CurrentLimit-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentLimit-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentLimit-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_control_msgs-srv:<CurrentLimit-response> is deprecated: use pal_control_msgs-srv:CurrentLimit-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CurrentLimit-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_control_msgs-srv:status-val is deprecated.  Use pal_control_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentLimit-response>) ostream)
  "Serializes a message object of type '<CurrentLimit-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentLimit-response>) istream)
  "Deserializes a message object of type '<CurrentLimit-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentLimit-response>)))
  "Returns string type for a service object of type '<CurrentLimit-response>"
  "pal_control_msgs/CurrentLimitResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentLimit-response)))
  "Returns string type for a service object of type 'CurrentLimit-response"
  "pal_control_msgs/CurrentLimitResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentLimit-response>)))
  "Returns md5sum for a message object of type '<CurrentLimit-response>"
  "8a87b11fb09397e3869b9fb3a4ea940b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentLimit-response)))
  "Returns md5sum for a message object of type 'CurrentLimit-response"
  "8a87b11fb09397e3869b9fb3a4ea940b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentLimit-response>)))
  "Returns full string definition for message of type '<CurrentLimit-response>"
  (cl:format cl:nil "~%string   status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentLimit-response)))
  "Returns full string definition for message of type 'CurrentLimit-response"
  (cl:format cl:nil "~%string   status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentLimit-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentLimit-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentLimit-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CurrentLimit)))
  'CurrentLimit-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CurrentLimit)))
  'CurrentLimit-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentLimit)))
  "Returns string type for a service object of type '<CurrentLimit>"
  "pal_control_msgs/CurrentLimit")