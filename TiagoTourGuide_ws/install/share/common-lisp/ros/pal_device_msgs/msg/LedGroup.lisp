; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-msg)


;//! \htmlinclude LedGroup.msg.html

(cl:defclass <LedGroup> (roslisp-msg-protocol:ros-message)
  ((ledMask
    :reader ledMask
    :initarg :ledMask
    :type cl:integer
    :initform 0))
)

(cl:defclass LedGroup (<LedGroup>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedGroup>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedGroup)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-msg:<LedGroup> is deprecated: use pal_device_msgs-msg:LedGroup instead.")))

(cl:ensure-generic-function 'ledMask-val :lambda-list '(m))
(cl:defmethod ledMask-val ((m <LedGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:ledMask-val is deprecated.  Use pal_device_msgs-msg:ledMask instead.")
  (ledMask m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LedGroup>)))
    "Constants for message type '<LedGroup>"
  '((:LEFT_EAR . 1)
    (:RIGHT_EAR . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LedGroup)))
    "Constants for message type 'LedGroup"
  '((:LEFT_EAR . 1)
    (:RIGHT_EAR . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedGroup>) ostream)
  "Serializes a message object of type '<LedGroup>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ledMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ledMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ledMask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ledMask)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedGroup>) istream)
  "Deserializes a message object of type '<LedGroup>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ledMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ledMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ledMask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ledMask)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedGroup>)))
  "Returns string type for a message object of type '<LedGroup>"
  "pal_device_msgs/LedGroup")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedGroup)))
  "Returns string type for a message object of type 'LedGroup"
  "pal_device_msgs/LedGroup")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedGroup>)))
  "Returns md5sum for a message object of type '<LedGroup>"
  "a87b0156a2b27c0d0853663fb5884fe4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedGroup)))
  "Returns md5sum for a message object of type 'LedGroup"
  "a87b0156a2b27c0d0853663fb5884fe4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedGroup>)))
  "Returns full string definition for message of type '<LedGroup>"
  (cl:format cl:nil "byte LEFT_EAR = 1~%byte RIGHT_EAR = 2~%~%#OR-mask of the selected leds~%uint32 ledMask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedGroup)))
  "Returns full string definition for message of type 'LedGroup"
  (cl:format cl:nil "byte LEFT_EAR = 1~%byte RIGHT_EAR = 2~%~%#OR-mask of the selected leds~%uint32 ledMask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedGroup>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedGroup>))
  "Converts a ROS message object to a list"
  (cl:list 'LedGroup
    (cl:cons ':ledMask (ledMask msg))
))
