; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-msg)


;//! \htmlinclude BatteryState.msg.html

(cl:defclass <BatteryState> (roslisp-msg-protocol:ros-message)
  ((chargeState
    :reader chargeState
    :initarg :chargeState
    :type cl:fixnum
    :initform 0)
   (batteryPercentage
    :reader batteryPercentage
    :initarg :batteryPercentage
    :type cl:float
    :initform 0.0))
)

(cl:defclass BatteryState (<BatteryState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-msg:<BatteryState> is deprecated: use pal_device_msgs-msg:BatteryState instead.")))

(cl:ensure-generic-function 'chargeState-val :lambda-list '(m))
(cl:defmethod chargeState-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:chargeState-val is deprecated.  Use pal_device_msgs-msg:chargeState instead.")
  (chargeState m))

(cl:ensure-generic-function 'batteryPercentage-val :lambda-list '(m))
(cl:defmethod batteryPercentage-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:batteryPercentage-val is deprecated.  Use pal_device_msgs-msg:batteryPercentage instead.")
  (batteryPercentage m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BatteryState>)))
    "Constants for message type '<BatteryState>"
  '((:FULL . 5)
    (:HIGH . 4)
    (:MEDIUM . 3)
    (:LOW . 2)
    (:CRITICAL_LOW . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BatteryState)))
    "Constants for message type 'BatteryState"
  '((:FULL . 5)
    (:HIGH . 4)
    (:MEDIUM . 3)
    (:LOW . 2)
    (:CRITICAL_LOW . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryState>) ostream)
  "Serializes a message object of type '<BatteryState>"
  (cl:let* ((signed (cl:slot-value msg 'chargeState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'batteryPercentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryState>) istream)
  "Deserializes a message object of type '<BatteryState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chargeState) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'batteryPercentage) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryState>)))
  "Returns string type for a message object of type '<BatteryState>"
  "pal_device_msgs/BatteryState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryState)))
  "Returns string type for a message object of type 'BatteryState"
  "pal_device_msgs/BatteryState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryState>)))
  "Returns md5sum for a message object of type '<BatteryState>"
  "ffbf73d789e375a8bace732de9096d5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryState)))
  "Returns md5sum for a message object of type 'BatteryState"
  "ffbf73d789e375a8bace732de9096d5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryState>)))
  "Returns full string definition for message of type '<BatteryState>"
  (cl:format cl:nil "byte FULL = 5~%byte HIGH = 4~%byte MEDIUM = 3~%byte LOW = 2~%byte CRITICAL_LOW = 1~%~%#In the future we can use http://www.ros.org/doc/api/pr2_msgs/html/msg/PowerState.html~%~%int8 chargeState~%float32 batteryPercentage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryState)))
  "Returns full string definition for message of type 'BatteryState"
  (cl:format cl:nil "byte FULL = 5~%byte HIGH = 4~%byte MEDIUM = 3~%byte LOW = 2~%byte CRITICAL_LOW = 1~%~%#In the future we can use http://www.ros.org/doc/api/pr2_msgs/html/msg/PowerState.html~%~%int8 chargeState~%float32 batteryPercentage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryState>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryState>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryState
    (cl:cons ':chargeState (chargeState msg))
    (cl:cons ':batteryPercentage (batteryPercentage msg))
))
