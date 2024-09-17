; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-msg)


;//! \htmlinclude LedFlowParams.msg.html

(cl:defclass <LedFlowParams> (roslisp-msg-protocol:ros-message)
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
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass LedFlowParams (<LedFlowParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedFlowParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedFlowParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-msg:<LedFlowParams> is deprecated: use pal_device_msgs-msg:LedFlowParams instead.")))

(cl:ensure-generic-function 'first_color-val :lambda-list '(m))
(cl:defmethod first_color-val ((m <LedFlowParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:first_color-val is deprecated.  Use pal_device_msgs-msg:first_color instead.")
  (first_color m))

(cl:ensure-generic-function 'second_color-val :lambda-list '(m))
(cl:defmethod second_color-val ((m <LedFlowParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:second_color-val is deprecated.  Use pal_device_msgs-msg:second_color instead.")
  (second_color m))

(cl:ensure-generic-function 'percentage-val :lambda-list '(m))
(cl:defmethod percentage-val ((m <LedFlowParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:percentage-val is deprecated.  Use pal_device_msgs-msg:percentage instead.")
  (percentage m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <LedFlowParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:velocity-val is deprecated.  Use pal_device_msgs-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedFlowParams>) ostream)
  "Serializes a message object of type '<LedFlowParams>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'first_color) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'second_color) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedFlowParams>) istream)
  "Deserializes a message object of type '<LedFlowParams>"
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
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedFlowParams>)))
  "Returns string type for a message object of type '<LedFlowParams>"
  "pal_device_msgs/LedFlowParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedFlowParams)))
  "Returns string type for a message object of type 'LedFlowParams"
  "pal_device_msgs/LedFlowParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedFlowParams>)))
  "Returns md5sum for a message object of type '<LedFlowParams>"
  "21979ceeb94ec6f60e9114651282150e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedFlowParams)))
  "Returns md5sum for a message object of type 'LedFlowParams"
  "21979ceeb94ec6f60e9114651282150e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedFlowParams>)))
  "Returns full string definition for message of type '<LedFlowParams>"
  (cl:format cl:nil "# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%# Percentage of pixels painted with the first color~%float32 percentage~%# Flow velocity~%float32 velocity~%~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedFlowParams)))
  "Returns full string definition for message of type 'LedFlowParams"
  (cl:format cl:nil "# RGBA of color, alpha will be used as intensity if supported by the led~%std_msgs/ColorRGBA first_color~%std_msgs/ColorRGBA second_color~%~%# Percentage of pixels painted with the first color~%float32 percentage~%# Flow velocity~%float32 velocity~%~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedFlowParams>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'first_color))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'second_color))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedFlowParams>))
  "Converts a ROS message object to a list"
  (cl:list 'LedFlowParams
    (cl:cons ':first_color (first_color msg))
    (cl:cons ':second_color (second_color msg))
    (cl:cons ':percentage (percentage msg))
    (cl:cons ':velocity (velocity msg))
))
