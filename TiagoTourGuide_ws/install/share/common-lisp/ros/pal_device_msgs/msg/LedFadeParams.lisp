; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-msg)


;//! \htmlinclude LedFadeParams.msg.html

(cl:defclass <LedFadeParams> (roslisp-msg-protocol:ros-message)
  ((first_color
    :reader first_color
    :initarg :first_color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (second_color
    :reader second_color
    :initarg :second_color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (transition_duration
    :reader transition_duration
    :initarg :transition_duration
    :type cl:real
    :initform 0)
   (reverse_fade
    :reader reverse_fade
    :initarg :reverse_fade
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LedFadeParams (<LedFadeParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedFadeParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedFadeParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-msg:<LedFadeParams> is deprecated: use pal_device_msgs-msg:LedFadeParams instead.")))

(cl:ensure-generic-function 'first_color-val :lambda-list '(m))
(cl:defmethod first_color-val ((m <LedFadeParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:first_color-val is deprecated.  Use pal_device_msgs-msg:first_color instead.")
  (first_color m))

(cl:ensure-generic-function 'second_color-val :lambda-list '(m))
(cl:defmethod second_color-val ((m <LedFadeParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:second_color-val is deprecated.  Use pal_device_msgs-msg:second_color instead.")
  (second_color m))

(cl:ensure-generic-function 'transition_duration-val :lambda-list '(m))
(cl:defmethod transition_duration-val ((m <LedFadeParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:transition_duration-val is deprecated.  Use pal_device_msgs-msg:transition_duration instead.")
  (transition_duration m))

(cl:ensure-generic-function 'reverse_fade-val :lambda-list '(m))
(cl:defmethod reverse_fade-val ((m <LedFadeParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:reverse_fade-val is deprecated.  Use pal_device_msgs-msg:reverse_fade instead.")
  (reverse_fade m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedFadeParams>) ostream)
  "Serializes a message object of type '<LedFadeParams>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'first_color) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'second_color) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'transition_duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'transition_duration) (cl:floor (cl:slot-value msg 'transition_duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reverse_fade) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedFadeParams>) istream)
  "Deserializes a message object of type '<LedFadeParams>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'first_color) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'second_color) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'transition_duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:slot-value msg 'reverse_fade) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedFadeParams>)))
  "Returns string type for a message object of type '<LedFadeParams>"
  "pal_device_msgs/LedFadeParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedFadeParams)))
  "Returns string type for a message object of type 'LedFadeParams"
  "pal_device_msgs/LedFadeParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedFadeParams>)))
  "Returns md5sum for a message object of type '<LedFadeParams>"
  "21c3c0f93882d55f24f14be673a6ceb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedFadeParams)))
  "Returns md5sum for a message object of type 'LedFadeParams"
  "21c3c0f93882d55f24f14be673a6ceb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedFadeParams>)))
  "Returns full string definition for message of type '<LedFadeParams>"
  (cl:format cl:nil "# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%#Duration of the transition from one color to the other~%duration transition_duration~%~%#Perform a fade when going from secondColor to firstColor~%bool reverse_fade~%~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedFadeParams)))
  "Returns full string definition for message of type 'LedFadeParams"
  (cl:format cl:nil "# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%#Duration of the transition from one color to the other~%duration transition_duration~%~%#Perform a fade when going from secondColor to firstColor~%bool reverse_fade~%~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedFadeParams>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'first_color))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'second_color))
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedFadeParams>))
  "Converts a ROS message object to a list"
  (cl:list 'LedFadeParams
    (cl:cons ':first_color (first_color msg))
    (cl:cons ':second_color (second_color msg))
    (cl:cons ':transition_duration (transition_duration msg))
    (cl:cons ':reverse_fade (reverse_fade msg))
))
