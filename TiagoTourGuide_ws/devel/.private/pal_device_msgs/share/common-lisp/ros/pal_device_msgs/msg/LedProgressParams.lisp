; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-msg)


;//! \htmlinclude LedProgressParams.msg.html

(cl:defclass <LedProgressParams> (roslisp-msg-protocol:ros-message)
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
   (percentage
    :reader percentage
    :initarg :percentage
    :type cl:float
    :initform 0.0)
   (led_offset
    :reader led_offset
    :initarg :led_offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass LedProgressParams (<LedProgressParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedProgressParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedProgressParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-msg:<LedProgressParams> is deprecated: use pal_device_msgs-msg:LedProgressParams instead.")))

(cl:ensure-generic-function 'first_color-val :lambda-list '(m))
(cl:defmethod first_color-val ((m <LedProgressParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:first_color-val is deprecated.  Use pal_device_msgs-msg:first_color instead.")
  (first_color m))

(cl:ensure-generic-function 'second_color-val :lambda-list '(m))
(cl:defmethod second_color-val ((m <LedProgressParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:second_color-val is deprecated.  Use pal_device_msgs-msg:second_color instead.")
  (second_color m))

(cl:ensure-generic-function 'percentage-val :lambda-list '(m))
(cl:defmethod percentage-val ((m <LedProgressParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:percentage-val is deprecated.  Use pal_device_msgs-msg:percentage instead.")
  (percentage m))

(cl:ensure-generic-function 'led_offset-val :lambda-list '(m))
(cl:defmethod led_offset-val ((m <LedProgressParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:led_offset-val is deprecated.  Use pal_device_msgs-msg:led_offset instead.")
  (led_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedProgressParams>) ostream)
  "Serializes a message object of type '<LedProgressParams>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'first_color) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'second_color) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'led_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedProgressParams>) istream)
  "Deserializes a message object of type '<LedProgressParams>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'first_color) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'second_color) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percentage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'led_offset) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedProgressParams>)))
  "Returns string type for a message object of type '<LedProgressParams>"
  "pal_device_msgs/LedProgressParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedProgressParams)))
  "Returns string type for a message object of type 'LedProgressParams"
  "pal_device_msgs/LedProgressParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedProgressParams>)))
  "Returns md5sum for a message object of type '<LedProgressParams>"
  "941e895db6a3875d51a22a0a591d753a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedProgressParams)))
  "Returns md5sum for a message object of type 'LedProgressParams"
  "941e895db6a3875d51a22a0a591d753a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedProgressParams>)))
  "Returns full string definition for message of type '<LedProgressParams>"
  (cl:format cl:nil "# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%#Percentage of pixels painted with the first color~%float32 percentage~%#Offset to begin painting the first color~%float32 led_offset ~%~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedProgressParams)))
  "Returns full string definition for message of type 'LedProgressParams"
  (cl:format cl:nil "# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%#Percentage of pixels painted with the first color~%float32 percentage~%#Offset to begin painting the first color~%float32 led_offset ~%~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedProgressParams>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'first_color))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'second_color))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedProgressParams>))
  "Converts a ROS message object to a list"
  (cl:list 'LedProgressParams
    (cl:cons ':first_color (first_color msg))
    (cl:cons ':second_color (second_color msg))
    (cl:cons ':percentage (percentage msg))
    (cl:cons ':led_offset (led_offset msg))
))
