; Auto-generated. Do not edit!


(cl:in-package pal_control_msgs-msg)


;//! \htmlinclude ActuatorCurrentLimit.msg.html

(cl:defclass <ActuatorCurrentLimit> (roslisp-msg-protocol:ros-message)
  ((actuator_names
    :reader actuator_names
    :initarg :actuator_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (current_limits
    :reader current_limits
    :initarg :current_limits
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ActuatorCurrentLimit (<ActuatorCurrentLimit>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActuatorCurrentLimit>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActuatorCurrentLimit)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_control_msgs-msg:<ActuatorCurrentLimit> is deprecated: use pal_control_msgs-msg:ActuatorCurrentLimit instead.")))

(cl:ensure-generic-function 'actuator_names-val :lambda-list '(m))
(cl:defmethod actuator_names-val ((m <ActuatorCurrentLimit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_control_msgs-msg:actuator_names-val is deprecated.  Use pal_control_msgs-msg:actuator_names instead.")
  (actuator_names m))

(cl:ensure-generic-function 'current_limits-val :lambda-list '(m))
(cl:defmethod current_limits-val ((m <ActuatorCurrentLimit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_control_msgs-msg:current_limits-val is deprecated.  Use pal_control_msgs-msg:current_limits instead.")
  (current_limits m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActuatorCurrentLimit>) ostream)
  "Serializes a message object of type '<ActuatorCurrentLimit>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actuator_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'actuator_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'current_limits))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'current_limits))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActuatorCurrentLimit>) istream)
  "Deserializes a message object of type '<ActuatorCurrentLimit>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actuator_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actuator_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'current_limits) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'current_limits)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActuatorCurrentLimit>)))
  "Returns string type for a message object of type '<ActuatorCurrentLimit>"
  "pal_control_msgs/ActuatorCurrentLimit")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActuatorCurrentLimit)))
  "Returns string type for a message object of type 'ActuatorCurrentLimit"
  "pal_control_msgs/ActuatorCurrentLimit")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActuatorCurrentLimit>)))
  "Returns md5sum for a message object of type '<ActuatorCurrentLimit>"
  "974a1b5c83bb8df5691c27dbd5b363bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActuatorCurrentLimit)))
  "Returns md5sum for a message object of type 'ActuatorCurrentLimit"
  "974a1b5c83bb8df5691c27dbd5b363bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActuatorCurrentLimit>)))
  "Returns full string definition for message of type '<ActuatorCurrentLimit>"
  (cl:format cl:nil "# Names of the actuators whose current limit is being set~%string[] actuator_names~%~%# Actuator current limits. Values belong to the [0, 1] interval, are~%# non-dimensional and represent the fraction of an actuator's maximum allowed~%# current, e.g., 0.5 would set an actuator's current limit to half its~%# maximum value.~%float64[] current_limits~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActuatorCurrentLimit)))
  "Returns full string definition for message of type 'ActuatorCurrentLimit"
  (cl:format cl:nil "# Names of the actuators whose current limit is being set~%string[] actuator_names~%~%# Actuator current limits. Values belong to the [0, 1] interval, are~%# non-dimensional and represent the fraction of an actuator's maximum allowed~%# current, e.g., 0.5 would set an actuator's current limit to half its~%# maximum value.~%float64[] current_limits~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActuatorCurrentLimit>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actuator_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'current_limits) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActuatorCurrentLimit>))
  "Converts a ROS message object to a list"
  (cl:list 'ActuatorCurrentLimit
    (cl:cons ':actuator_names (actuator_names msg))
    (cl:cons ':current_limits (current_limits msg))
))
