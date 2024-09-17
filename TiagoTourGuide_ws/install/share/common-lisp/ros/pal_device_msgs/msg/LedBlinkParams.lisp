; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-msg)


;//! \htmlinclude LedBlinkParams.msg.html

(cl:defclass <LedBlinkParams> (roslisp-msg-protocol:ros-message)
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
   (first_color_duration
    :reader first_color_duration
    :initarg :first_color_duration
    :type cl:real
    :initform 0)
   (second_color_duration
    :reader second_color_duration
    :initarg :second_color_duration
    :type cl:real
    :initform 0))
)

(cl:defclass LedBlinkParams (<LedBlinkParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedBlinkParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedBlinkParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-msg:<LedBlinkParams> is deprecated: use pal_device_msgs-msg:LedBlinkParams instead.")))

(cl:ensure-generic-function 'first_color-val :lambda-list '(m))
(cl:defmethod first_color-val ((m <LedBlinkParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:first_color-val is deprecated.  Use pal_device_msgs-msg:first_color instead.")
  (first_color m))

(cl:ensure-generic-function 'second_color-val :lambda-list '(m))
(cl:defmethod second_color-val ((m <LedBlinkParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:second_color-val is deprecated.  Use pal_device_msgs-msg:second_color instead.")
  (second_color m))

(cl:ensure-generic-function 'first_color_duration-val :lambda-list '(m))
(cl:defmethod first_color_duration-val ((m <LedBlinkParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:first_color_duration-val is deprecated.  Use pal_device_msgs-msg:first_color_duration instead.")
  (first_color_duration m))

(cl:ensure-generic-function 'second_color_duration-val :lambda-list '(m))
(cl:defmethod second_color_duration-val ((m <LedBlinkParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:second_color_duration-val is deprecated.  Use pal_device_msgs-msg:second_color_duration instead.")
  (second_color_duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedBlinkParams>) ostream)
  "Serializes a message object of type '<LedBlinkParams>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'first_color) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'second_color) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'first_color_duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'first_color_duration) (cl:floor (cl:slot-value msg 'first_color_duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'second_color_duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'second_color_duration) (cl:floor (cl:slot-value msg 'second_color_duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedBlinkParams>) istream)
  "Deserializes a message object of type '<LedBlinkParams>"
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
      (cl:setf (cl:slot-value msg 'first_color_duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'second_color_duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedBlinkParams>)))
  "Returns string type for a message object of type '<LedBlinkParams>"
  "pal_device_msgs/LedBlinkParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedBlinkParams)))
  "Returns string type for a message object of type 'LedBlinkParams"
  "pal_device_msgs/LedBlinkParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedBlinkParams>)))
  "Returns md5sum for a message object of type '<LedBlinkParams>"
  "0b26c0fa483854105ff61f62de102ca5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedBlinkParams)))
  "Returns md5sum for a message object of type 'LedBlinkParams"
  "0b26c0fa483854105ff61f62de102ca5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedBlinkParams>)))
  "Returns full string definition for message of type '<LedBlinkParams>"
  (cl:format cl:nil "# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%duration first_color_duration~%duration second_color_duration~%~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedBlinkParams)))
  "Returns full string definition for message of type 'LedBlinkParams"
  (cl:format cl:nil "# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%duration first_color_duration~%duration second_color_duration~%~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedBlinkParams>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'first_color))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'second_color))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedBlinkParams>))
  "Converts a ROS message object to a list"
  (cl:list 'LedBlinkParams
    (cl:cons ':first_color (first_color msg))
    (cl:cons ':second_color (second_color msg))
    (cl:cons ':first_color_duration (first_color_duration msg))
    (cl:cons ':second_color_duration (second_color_duration msg))
))
