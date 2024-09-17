; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-srv)


;//! \htmlinclude CancelEffect-request.msg.html

(cl:defclass <CancelEffect-request> (roslisp-msg-protocol:ros-message)
  ((effectId
    :reader effectId
    :initarg :effectId
    :type cl:integer
    :initform 0))
)

(cl:defclass CancelEffect-request (<CancelEffect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CancelEffect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CancelEffect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-srv:<CancelEffect-request> is deprecated: use pal_device_msgs-srv:CancelEffect-request instead.")))

(cl:ensure-generic-function 'effectId-val :lambda-list '(m))
(cl:defmethod effectId-val ((m <CancelEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:effectId-val is deprecated.  Use pal_device_msgs-srv:effectId instead.")
  (effectId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CancelEffect-request>) ostream)
  "Serializes a message object of type '<CancelEffect-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'effectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'effectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'effectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'effectId)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CancelEffect-request>) istream)
  "Deserializes a message object of type '<CancelEffect-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'effectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'effectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'effectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'effectId)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CancelEffect-request>)))
  "Returns string type for a service object of type '<CancelEffect-request>"
  "pal_device_msgs/CancelEffectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CancelEffect-request)))
  "Returns string type for a service object of type 'CancelEffect-request"
  "pal_device_msgs/CancelEffectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CancelEffect-request>)))
  "Returns md5sum for a message object of type '<CancelEffect-request>"
  "f6602e24c29b84632fa113b15b20645d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CancelEffect-request)))
  "Returns md5sum for a message object of type 'CancelEffect-request"
  "f6602e24c29b84632fa113b15b20645d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CancelEffect-request>)))
  "Returns full string definition for message of type '<CancelEffect-request>"
  (cl:format cl:nil "#Id of the effect, used to cancel an effect~%uint32 effectId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CancelEffect-request)))
  "Returns full string definition for message of type 'CancelEffect-request"
  (cl:format cl:nil "#Id of the effect, used to cancel an effect~%uint32 effectId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CancelEffect-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CancelEffect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CancelEffect-request
    (cl:cons ':effectId (effectId msg))
))
;//! \htmlinclude CancelEffect-response.msg.html

(cl:defclass <CancelEffect-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CancelEffect-response (<CancelEffect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CancelEffect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CancelEffect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-srv:<CancelEffect-response> is deprecated: use pal_device_msgs-srv:CancelEffect-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CancelEffect-response>) ostream)
  "Serializes a message object of type '<CancelEffect-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CancelEffect-response>) istream)
  "Deserializes a message object of type '<CancelEffect-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CancelEffect-response>)))
  "Returns string type for a service object of type '<CancelEffect-response>"
  "pal_device_msgs/CancelEffectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CancelEffect-response)))
  "Returns string type for a service object of type 'CancelEffect-response"
  "pal_device_msgs/CancelEffectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CancelEffect-response>)))
  "Returns md5sum for a message object of type '<CancelEffect-response>"
  "f6602e24c29b84632fa113b15b20645d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CancelEffect-response)))
  "Returns md5sum for a message object of type 'CancelEffect-response"
  "f6602e24c29b84632fa113b15b20645d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CancelEffect-response>)))
  "Returns full string definition for message of type '<CancelEffect-response>"
  (cl:format cl:nil "# True if effect was canceled, false if effectId doesn't exist or has already been canceled~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CancelEffect-response)))
  "Returns full string definition for message of type 'CancelEffect-response"
  (cl:format cl:nil "# True if effect was canceled, false if effectId doesn't exist or has already been canceled~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CancelEffect-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CancelEffect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CancelEffect-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CancelEffect)))
  'CancelEffect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CancelEffect)))
  'CancelEffect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CancelEffect)))
  "Returns string type for a service object of type '<CancelEffect>"
  "pal_device_msgs/CancelEffect")