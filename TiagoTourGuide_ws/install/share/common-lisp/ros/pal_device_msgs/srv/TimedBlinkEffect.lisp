; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-srv)


;//! \htmlinclude TimedBlinkEffect-request.msg.html

(cl:defclass <TimedBlinkEffect-request> (roslisp-msg-protocol:ros-message)
  ((leds
    :reader leds
    :initarg :leds
    :type pal_device_msgs-msg:LedGroup
    :initform (cl:make-instance 'pal_device_msgs-msg:LedGroup))
   (firstColor
    :reader firstColor
    :initarg :firstColor
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (secondColor
    :reader secondColor
    :initarg :secondColor
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (firstColorDuration
    :reader firstColorDuration
    :initarg :firstColorDuration
    :type cl:real
    :initform 0)
   (secondColorDuration
    :reader secondColorDuration
    :initarg :secondColorDuration
    :type cl:real
    :initform 0)
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

(cl:defclass TimedBlinkEffect-request (<TimedBlinkEffect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimedBlinkEffect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimedBlinkEffect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-srv:<TimedBlinkEffect-request> is deprecated: use pal_device_msgs-srv:TimedBlinkEffect-request instead.")))

(cl:ensure-generic-function 'leds-val :lambda-list '(m))
(cl:defmethod leds-val ((m <TimedBlinkEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:leds-val is deprecated.  Use pal_device_msgs-srv:leds instead.")
  (leds m))

(cl:ensure-generic-function 'firstColor-val :lambda-list '(m))
(cl:defmethod firstColor-val ((m <TimedBlinkEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:firstColor-val is deprecated.  Use pal_device_msgs-srv:firstColor instead.")
  (firstColor m))

(cl:ensure-generic-function 'secondColor-val :lambda-list '(m))
(cl:defmethod secondColor-val ((m <TimedBlinkEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:secondColor-val is deprecated.  Use pal_device_msgs-srv:secondColor instead.")
  (secondColor m))

(cl:ensure-generic-function 'firstColorDuration-val :lambda-list '(m))
(cl:defmethod firstColorDuration-val ((m <TimedBlinkEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:firstColorDuration-val is deprecated.  Use pal_device_msgs-srv:firstColorDuration instead.")
  (firstColorDuration m))

(cl:ensure-generic-function 'secondColorDuration-val :lambda-list '(m))
(cl:defmethod secondColorDuration-val ((m <TimedBlinkEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:secondColorDuration-val is deprecated.  Use pal_device_msgs-srv:secondColorDuration instead.")
  (secondColorDuration m))

(cl:ensure-generic-function 'effectDuration-val :lambda-list '(m))
(cl:defmethod effectDuration-val ((m <TimedBlinkEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:effectDuration-val is deprecated.  Use pal_device_msgs-srv:effectDuration instead.")
  (effectDuration m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <TimedBlinkEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:priority-val is deprecated.  Use pal_device_msgs-srv:priority instead.")
  (priority m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimedBlinkEffect-request>) ostream)
  "Serializes a message object of type '<TimedBlinkEffect-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'leds) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'firstColor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'secondColor) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'firstColorDuration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'firstColorDuration) (cl:floor (cl:slot-value msg 'firstColorDuration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'secondColorDuration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'secondColorDuration) (cl:floor (cl:slot-value msg 'secondColorDuration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimedBlinkEffect-request>) istream)
  "Deserializes a message object of type '<TimedBlinkEffect-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'leds) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'firstColor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'secondColor) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'firstColorDuration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'secondColorDuration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimedBlinkEffect-request>)))
  "Returns string type for a service object of type '<TimedBlinkEffect-request>"
  "pal_device_msgs/TimedBlinkEffectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimedBlinkEffect-request)))
  "Returns string type for a service object of type 'TimedBlinkEffect-request"
  "pal_device_msgs/TimedBlinkEffectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimedBlinkEffect-request>)))
  "Returns md5sum for a message object of type '<TimedBlinkEffect-request>"
  "79f0d7fa42ad812456d328f694635ba8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimedBlinkEffect-request)))
  "Returns md5sum for a message object of type 'TimedBlinkEffect-request"
  "79f0d7fa42ad812456d328f694635ba8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimedBlinkEffect-request>)))
  "Returns full string definition for message of type '<TimedBlinkEffect-request>"
  (cl:format cl:nil "# Sets led blink effect. Displays firstColor during firstColorDuration time, and then secondColor during secondColorDuration time~%~%LedGroup leds~%~%# RGBA of color, transparency is not available in leds, so alpha will be ignored~%std_msgs/ColorRGBA firstColor~%std_msgs/ColorRGBA secondColor~%~%duration firstColorDuration~%duration secondColorDuration~%~%~%#Duration of the effect, when the time is over the previous effect will be restored. 0 will make it display forever~%duration effectDuration~%~%#priority of the effect, 0 is no priority, 255 is max priority~%uint8 priority~%~%~%================================================================================~%MSG: pal_device_msgs/LedGroup~%byte LEFT_EAR = 1~%byte RIGHT_EAR = 2~%~%#OR-mask of the selected leds~%uint32 ledMask~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimedBlinkEffect-request)))
  "Returns full string definition for message of type 'TimedBlinkEffect-request"
  (cl:format cl:nil "# Sets led blink effect. Displays firstColor during firstColorDuration time, and then secondColor during secondColorDuration time~%~%LedGroup leds~%~%# RGBA of color, transparency is not available in leds, so alpha will be ignored~%std_msgs/ColorRGBA firstColor~%std_msgs/ColorRGBA secondColor~%~%duration firstColorDuration~%duration secondColorDuration~%~%~%#Duration of the effect, when the time is over the previous effect will be restored. 0 will make it display forever~%duration effectDuration~%~%#priority of the effect, 0 is no priority, 255 is max priority~%uint8 priority~%~%~%================================================================================~%MSG: pal_device_msgs/LedGroup~%byte LEFT_EAR = 1~%byte RIGHT_EAR = 2~%~%#OR-mask of the selected leds~%uint32 ledMask~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimedBlinkEffect-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'leds))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'firstColor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'secondColor))
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimedBlinkEffect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TimedBlinkEffect-request
    (cl:cons ':leds (leds msg))
    (cl:cons ':firstColor (firstColor msg))
    (cl:cons ':secondColor (secondColor msg))
    (cl:cons ':firstColorDuration (firstColorDuration msg))
    (cl:cons ':secondColorDuration (secondColorDuration msg))
    (cl:cons ':effectDuration (effectDuration msg))
    (cl:cons ':priority (priority msg))
))
;//! \htmlinclude TimedBlinkEffect-response.msg.html

(cl:defclass <TimedBlinkEffect-response> (roslisp-msg-protocol:ros-message)
  ((effectId
    :reader effectId
    :initarg :effectId
    :type cl:integer
    :initform 0))
)

(cl:defclass TimedBlinkEffect-response (<TimedBlinkEffect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimedBlinkEffect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimedBlinkEffect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-srv:<TimedBlinkEffect-response> is deprecated: use pal_device_msgs-srv:TimedBlinkEffect-response instead.")))

(cl:ensure-generic-function 'effectId-val :lambda-list '(m))
(cl:defmethod effectId-val ((m <TimedBlinkEffect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:effectId-val is deprecated.  Use pal_device_msgs-srv:effectId instead.")
  (effectId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimedBlinkEffect-response>) ostream)
  "Serializes a message object of type '<TimedBlinkEffect-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'effectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'effectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'effectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'effectId)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimedBlinkEffect-response>) istream)
  "Deserializes a message object of type '<TimedBlinkEffect-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'effectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'effectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'effectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'effectId)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimedBlinkEffect-response>)))
  "Returns string type for a service object of type '<TimedBlinkEffect-response>"
  "pal_device_msgs/TimedBlinkEffectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimedBlinkEffect-response)))
  "Returns string type for a service object of type 'TimedBlinkEffect-response"
  "pal_device_msgs/TimedBlinkEffectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimedBlinkEffect-response>)))
  "Returns md5sum for a message object of type '<TimedBlinkEffect-response>"
  "79f0d7fa42ad812456d328f694635ba8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimedBlinkEffect-response)))
  "Returns md5sum for a message object of type 'TimedBlinkEffect-response"
  "79f0d7fa42ad812456d328f694635ba8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimedBlinkEffect-response>)))
  "Returns full string definition for message of type '<TimedBlinkEffect-response>"
  (cl:format cl:nil "#Id of the effect, used to cancel an effect~%uint32 effectId~%# True if leds specified exist. False if no leds were found~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimedBlinkEffect-response)))
  "Returns full string definition for message of type 'TimedBlinkEffect-response"
  (cl:format cl:nil "#Id of the effect, used to cancel an effect~%uint32 effectId~%# True if leds specified exist. False if no leds were found~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimedBlinkEffect-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimedBlinkEffect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TimedBlinkEffect-response
    (cl:cons ':effectId (effectId msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TimedBlinkEffect)))
  'TimedBlinkEffect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TimedBlinkEffect)))
  'TimedBlinkEffect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimedBlinkEffect)))
  "Returns string type for a service object of type '<TimedBlinkEffect>"
  "pal_device_msgs/TimedBlinkEffect")