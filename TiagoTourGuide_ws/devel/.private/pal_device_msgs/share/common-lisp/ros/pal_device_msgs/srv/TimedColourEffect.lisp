; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-srv)


;//! \htmlinclude TimedColourEffect-request.msg.html

(cl:defclass <TimedColourEffect-request> (roslisp-msg-protocol:ros-message)
  ((leds
    :reader leds
    :initarg :leds
    :type pal_device_msgs-msg:LedGroup
    :initform (cl:make-instance 'pal_device_msgs-msg:LedGroup))
   (color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (effectDuration
    :reader effectDuration
    :initarg :effectDuration
    :type cl:real
    :initform 0)
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TimedColourEffect-request (<TimedColourEffect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimedColourEffect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimedColourEffect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-srv:<TimedColourEffect-request> is deprecated: use pal_device_msgs-srv:TimedColourEffect-request instead.")))

(cl:ensure-generic-function 'leds-val :lambda-list '(m))
(cl:defmethod leds-val ((m <TimedColourEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:leds-val is deprecated.  Use pal_device_msgs-srv:leds instead.")
  (leds m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <TimedColourEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:color-val is deprecated.  Use pal_device_msgs-srv:color instead.")
  (color m))

(cl:ensure-generic-function 'effectDuration-val :lambda-list '(m))
(cl:defmethod effectDuration-val ((m <TimedColourEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:effectDuration-val is deprecated.  Use pal_device_msgs-srv:effectDuration instead.")
  (effectDuration m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <TimedColourEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:priority-val is deprecated.  Use pal_device_msgs-srv:priority instead.")
  (priority m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimedColourEffect-request>) ostream)
  "Serializes a message object of type '<TimedColourEffect-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'leds) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'effectDuration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'effectDuration) (cl:floor (cl:slot-value msg 'effectDuration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimedColourEffect-request>) istream)
  "Deserializes a message object of type '<TimedColourEffect-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'leds) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'effectDuration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimedColourEffect-request>)))
  "Returns string type for a service object of type '<TimedColourEffect-request>"
  "pal_device_msgs/TimedColourEffectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimedColourEffect-request)))
  "Returns string type for a service object of type 'TimedColourEffect-request"
  "pal_device_msgs/TimedColourEffectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimedColourEffect-request>)))
  "Returns md5sum for a message object of type '<TimedColourEffect-request>"
  "446dd7c0390146877c87058289d0f887")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimedColourEffect-request)))
  "Returns md5sum for a message object of type 'TimedColourEffect-request"
  "446dd7c0390146877c87058289d0f887")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimedColourEffect-request>)))
  "Returns full string definition for message of type '<TimedColourEffect-request>"
  (cl:format cl:nil "# Sets led color~%~%LedGroup leds~%~%# RGBA of color, transparency is not available in leds, so alpha will be ignored~%std_msgs/ColorRGBA color~%~%#Duration of the effect, when the time is over the previous effect will be restored. 0 will make it display forever~%duration effectDuration~%~%#priority of the effect, 0 is no priority, 255 is max priority~%uint8 priority~%~%~%================================================================================~%MSG: pal_device_msgs/LedGroup~%byte LEFT_EAR = 1~%byte RIGHT_EAR = 2~%~%#OR-mask of the selected leds~%uint32 ledMask~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimedColourEffect-request)))
  "Returns full string definition for message of type 'TimedColourEffect-request"
  (cl:format cl:nil "# Sets led color~%~%LedGroup leds~%~%# RGBA of color, transparency is not available in leds, so alpha will be ignored~%std_msgs/ColorRGBA color~%~%#Duration of the effect, when the time is over the previous effect will be restored. 0 will make it display forever~%duration effectDuration~%~%#priority of the effect, 0 is no priority, 255 is max priority~%uint8 priority~%~%~%================================================================================~%MSG: pal_device_msgs/LedGroup~%byte LEFT_EAR = 1~%byte RIGHT_EAR = 2~%~%#OR-mask of the selected leds~%uint32 ledMask~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimedColourEffect-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'leds))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimedColourEffect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TimedColourEffect-request
    (cl:cons ':leds (leds msg))
    (cl:cons ':color (color msg))
    (cl:cons ':effectDuration (effectDuration msg))
    (cl:cons ':priority (priority msg))
))
;//! \htmlinclude TimedColourEffect-response.msg.html

(cl:defclass <TimedColourEffect-response> (roslisp-msg-protocol:ros-message)
  ((effectId
    :reader effectId
    :initarg :effectId
    :type cl:integer
    :initform 0))
)

(cl:defclass TimedColourEffect-response (<TimedColourEffect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimedColourEffect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimedColourEffect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-srv:<TimedColourEffect-response> is deprecated: use pal_device_msgs-srv:TimedColourEffect-response instead.")))

(cl:ensure-generic-function 'effectId-val :lambda-list '(m))
(cl:defmethod effectId-val ((m <TimedColourEffect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:effectId-val is deprecated.  Use pal_device_msgs-srv:effectId instead.")
  (effectId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimedColourEffect-response>) ostream)
  "Serializes a message object of type '<TimedColourEffect-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'effectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'effectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'effectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'effectId)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimedColourEffect-response>) istream)
  "Deserializes a message object of type '<TimedColourEffect-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'effectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'effectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'effectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'effectId)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimedColourEffect-response>)))
  "Returns string type for a service object of type '<TimedColourEffect-response>"
  "pal_device_msgs/TimedColourEffectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimedColourEffect-response)))
  "Returns string type for a service object of type 'TimedColourEffect-response"
  "pal_device_msgs/TimedColourEffectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimedColourEffect-response>)))
  "Returns md5sum for a message object of type '<TimedColourEffect-response>"
  "446dd7c0390146877c87058289d0f887")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimedColourEffect-response)))
  "Returns md5sum for a message object of type 'TimedColourEffect-response"
  "446dd7c0390146877c87058289d0f887")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimedColourEffect-response>)))
  "Returns full string definition for message of type '<TimedColourEffect-response>"
  (cl:format cl:nil "#Id of the effect, used to cancel an effect~%uint32 effectId~%# True if no errors~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimedColourEffect-response)))
  "Returns full string definition for message of type 'TimedColourEffect-response"
  (cl:format cl:nil "#Id of the effect, used to cancel an effect~%uint32 effectId~%# True if no errors~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimedColourEffect-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimedColourEffect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TimedColourEffect-response
    (cl:cons ':effectId (effectId msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TimedColourEffect)))
  'TimedColourEffect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TimedColourEffect)))
  'TimedColourEffect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimedColourEffect)))
  "Returns string type for a service object of type '<TimedColourEffect>"
  "pal_device_msgs/TimedColourEffect")