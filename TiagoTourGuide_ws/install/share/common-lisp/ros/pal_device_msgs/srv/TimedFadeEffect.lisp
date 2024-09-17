; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-srv)


;//! \htmlinclude TimedFadeEffect-request.msg.html

(cl:defclass <TimedFadeEffect-request> (roslisp-msg-protocol:ros-message)
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
   (colorChangeDuration
    :reader colorChangeDuration
    :initarg :colorChangeDuration
    :type cl:real
    :initform 0)
   (reverseFade
    :reader reverseFade
    :initarg :reverseFade
    :type cl:boolean
    :initform cl:nil)
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

(cl:defclass TimedFadeEffect-request (<TimedFadeEffect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimedFadeEffect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimedFadeEffect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-srv:<TimedFadeEffect-request> is deprecated: use pal_device_msgs-srv:TimedFadeEffect-request instead.")))

(cl:ensure-generic-function 'leds-val :lambda-list '(m))
(cl:defmethod leds-val ((m <TimedFadeEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:leds-val is deprecated.  Use pal_device_msgs-srv:leds instead.")
  (leds m))

(cl:ensure-generic-function 'firstColor-val :lambda-list '(m))
(cl:defmethod firstColor-val ((m <TimedFadeEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:firstColor-val is deprecated.  Use pal_device_msgs-srv:firstColor instead.")
  (firstColor m))

(cl:ensure-generic-function 'secondColor-val :lambda-list '(m))
(cl:defmethod secondColor-val ((m <TimedFadeEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:secondColor-val is deprecated.  Use pal_device_msgs-srv:secondColor instead.")
  (secondColor m))

(cl:ensure-generic-function 'colorChangeDuration-val :lambda-list '(m))
(cl:defmethod colorChangeDuration-val ((m <TimedFadeEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:colorChangeDuration-val is deprecated.  Use pal_device_msgs-srv:colorChangeDuration instead.")
  (colorChangeDuration m))

(cl:ensure-generic-function 'reverseFade-val :lambda-list '(m))
(cl:defmethod reverseFade-val ((m <TimedFadeEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:reverseFade-val is deprecated.  Use pal_device_msgs-srv:reverseFade instead.")
  (reverseFade m))

(cl:ensure-generic-function 'effectDuration-val :lambda-list '(m))
(cl:defmethod effectDuration-val ((m <TimedFadeEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:effectDuration-val is deprecated.  Use pal_device_msgs-srv:effectDuration instead.")
  (effectDuration m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <TimedFadeEffect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:priority-val is deprecated.  Use pal_device_msgs-srv:priority instead.")
  (priority m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimedFadeEffect-request>) ostream)
  "Serializes a message object of type '<TimedFadeEffect-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'leds) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'firstColor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'secondColor) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'colorChangeDuration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'colorChangeDuration) (cl:floor (cl:slot-value msg 'colorChangeDuration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reverseFade) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimedFadeEffect-request>) istream)
  "Deserializes a message object of type '<TimedFadeEffect-request>"
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
      (cl:setf (cl:slot-value msg 'colorChangeDuration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:slot-value msg 'reverseFade) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimedFadeEffect-request>)))
  "Returns string type for a service object of type '<TimedFadeEffect-request>"
  "pal_device_msgs/TimedFadeEffectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimedFadeEffect-request)))
  "Returns string type for a service object of type 'TimedFadeEffect-request"
  "pal_device_msgs/TimedFadeEffectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimedFadeEffect-request>)))
  "Returns md5sum for a message object of type '<TimedFadeEffect-request>"
  "1603cab1f4c5a65749eacb96def5fe41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimedFadeEffect-request)))
  "Returns md5sum for a message object of type 'TimedFadeEffect-request"
  "1603cab1f4c5a65749eacb96def5fe41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimedFadeEffect-request>)))
  "Returns full string definition for message of type '<TimedFadeEffect-request>"
  (cl:format cl:nil "# Sets led fade effect. Displays firstColor during firstColorDuration time, and then secondColor during secondColorDuration time with a fade between them~%~%LedGroup leds~%~%# RGBA of color, transparency is not available in leds, so alpha will be ignored~%std_msgs/ColorRGBA firstColor~%std_msgs/ColorRGBA secondColor~%~%#Duration of the transition from one color to the other~%duration colorChangeDuration~%~%#Perform a fade when going from secondColor to firstColor~%bool reverseFade~%~%#Duration of the effect, when the time is over the previous effect will be restored. 0 will make it display forever~%duration effectDuration~%~%#priority of the effect, 0 is no priority, 255 is max priority~%uint8 priority~%~%~%================================================================================~%MSG: pal_device_msgs/LedGroup~%byte LEFT_EAR = 1~%byte RIGHT_EAR = 2~%~%#OR-mask of the selected leds~%uint32 ledMask~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimedFadeEffect-request)))
  "Returns full string definition for message of type 'TimedFadeEffect-request"
  (cl:format cl:nil "# Sets led fade effect. Displays firstColor during firstColorDuration time, and then secondColor during secondColorDuration time with a fade between them~%~%LedGroup leds~%~%# RGBA of color, transparency is not available in leds, so alpha will be ignored~%std_msgs/ColorRGBA firstColor~%std_msgs/ColorRGBA secondColor~%~%#Duration of the transition from one color to the other~%duration colorChangeDuration~%~%#Perform a fade when going from secondColor to firstColor~%bool reverseFade~%~%#Duration of the effect, when the time is over the previous effect will be restored. 0 will make it display forever~%duration effectDuration~%~%#priority of the effect, 0 is no priority, 255 is max priority~%uint8 priority~%~%~%================================================================================~%MSG: pal_device_msgs/LedGroup~%byte LEFT_EAR = 1~%byte RIGHT_EAR = 2~%~%#OR-mask of the selected leds~%uint32 ledMask~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimedFadeEffect-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'leds))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'firstColor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'secondColor))
     8
     1
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimedFadeEffect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TimedFadeEffect-request
    (cl:cons ':leds (leds msg))
    (cl:cons ':firstColor (firstColor msg))
    (cl:cons ':secondColor (secondColor msg))
    (cl:cons ':colorChangeDuration (colorChangeDuration msg))
    (cl:cons ':reverseFade (reverseFade msg))
    (cl:cons ':effectDuration (effectDuration msg))
    (cl:cons ':priority (priority msg))
))
;//! \htmlinclude TimedFadeEffect-response.msg.html

(cl:defclass <TimedFadeEffect-response> (roslisp-msg-protocol:ros-message)
  ((effectId
    :reader effectId
    :initarg :effectId
    :type cl:integer
    :initform 0))
)

(cl:defclass TimedFadeEffect-response (<TimedFadeEffect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimedFadeEffect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimedFadeEffect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-srv:<TimedFadeEffect-response> is deprecated: use pal_device_msgs-srv:TimedFadeEffect-response instead.")))

(cl:ensure-generic-function 'effectId-val :lambda-list '(m))
(cl:defmethod effectId-val ((m <TimedFadeEffect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:effectId-val is deprecated.  Use pal_device_msgs-srv:effectId instead.")
  (effectId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimedFadeEffect-response>) ostream)
  "Serializes a message object of type '<TimedFadeEffect-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'effectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'effectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'effectId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'effectId)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimedFadeEffect-response>) istream)
  "Deserializes a message object of type '<TimedFadeEffect-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'effectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'effectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'effectId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'effectId)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimedFadeEffect-response>)))
  "Returns string type for a service object of type '<TimedFadeEffect-response>"
  "pal_device_msgs/TimedFadeEffectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimedFadeEffect-response)))
  "Returns string type for a service object of type 'TimedFadeEffect-response"
  "pal_device_msgs/TimedFadeEffectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimedFadeEffect-response>)))
  "Returns md5sum for a message object of type '<TimedFadeEffect-response>"
  "1603cab1f4c5a65749eacb96def5fe41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimedFadeEffect-response)))
  "Returns md5sum for a message object of type 'TimedFadeEffect-response"
  "1603cab1f4c5a65749eacb96def5fe41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimedFadeEffect-response>)))
  "Returns full string definition for message of type '<TimedFadeEffect-response>"
  (cl:format cl:nil "#Id of the effect, used to cancel an effect~%uint32 effectId~%~%# True if no errors~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimedFadeEffect-response)))
  "Returns full string definition for message of type 'TimedFadeEffect-response"
  (cl:format cl:nil "#Id of the effect, used to cancel an effect~%uint32 effectId~%~%# True if no errors~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimedFadeEffect-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimedFadeEffect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TimedFadeEffect-response
    (cl:cons ':effectId (effectId msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TimedFadeEffect)))
  'TimedFadeEffect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TimedFadeEffect)))
  'TimedFadeEffect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimedFadeEffect)))
  "Returns string type for a service object of type '<TimedFadeEffect>"
  "pal_device_msgs/TimedFadeEffect")