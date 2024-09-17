; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-msg)


;//! \htmlinclude LedFixedColorParams.msg.html

(cl:defclass <LedFixedColorParams> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA)))
)

(cl:defclass LedFixedColorParams (<LedFixedColorParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedFixedColorParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedFixedColorParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-msg:<LedFixedColorParams> is deprecated: use pal_device_msgs-msg:LedFixedColorParams instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <LedFixedColorParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:color-val is deprecated.  Use pal_device_msgs-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedFixedColorParams>) ostream)
  "Serializes a message object of type '<LedFixedColorParams>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedFixedColorParams>) istream)
  "Deserializes a message object of type '<LedFixedColorParams>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedFixedColorParams>)))
  "Returns string type for a message object of type '<LedFixedColorParams>"
  "pal_device_msgs/LedFixedColorParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedFixedColorParams)))
  "Returns string type for a message object of type 'LedFixedColorParams"
  "pal_device_msgs/LedFixedColorParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedFixedColorParams>)))
  "Returns md5sum for a message object of type '<LedFixedColorParams>"
  "3e04b62b1b39cd97e873789f0bb130e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedFixedColorParams)))
  "Returns md5sum for a message object of type 'LedFixedColorParams"
  "3e04b62b1b39cd97e873789f0bb130e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedFixedColorParams>)))
  "Returns full string definition for message of type '<LedFixedColorParams>"
  (cl:format cl:nil "# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedFixedColorParams)))
  "Returns full string definition for message of type 'LedFixedColorParams"
  (cl:format cl:nil "# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedFixedColorParams>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedFixedColorParams>))
  "Converts a ROS message object to a list"
  (cl:list 'LedFixedColorParams
    (cl:cons ':color (color msg))
))
