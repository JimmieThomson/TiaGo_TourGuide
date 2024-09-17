; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude PolarReading.msg.html

(cl:defclass <PolarReading> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass PolarReading (<PolarReading>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PolarReading>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PolarReading)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<PolarReading> is deprecated: use pal_navigation_msgs-msg:PolarReading instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <PolarReading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:angle-val is deprecated.  Use pal_navigation_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <PolarReading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:distance-val is deprecated.  Use pal_navigation_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PolarReading>) ostream)
  "Serializes a message object of type '<PolarReading>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PolarReading>) istream)
  "Deserializes a message object of type '<PolarReading>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PolarReading>)))
  "Returns string type for a message object of type '<PolarReading>"
  "pal_navigation_msgs/PolarReading")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PolarReading)))
  "Returns string type for a message object of type 'PolarReading"
  "pal_navigation_msgs/PolarReading")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PolarReading>)))
  "Returns md5sum for a message object of type '<PolarReading>"
  "817840b8f4d2300f89b98e0187dc919a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PolarReading)))
  "Returns md5sum for a message object of type 'PolarReading"
  "817840b8f4d2300f89b98e0187dc919a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PolarReading>)))
  "Returns full string definition for message of type '<PolarReading>"
  (cl:format cl:nil "# Polar reading: a distance to a given angle~%float32 angle # inradians~%~%float32 distance # in meters~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PolarReading)))
  "Returns full string definition for message of type 'PolarReading"
  (cl:format cl:nil "# Polar reading: a distance to a given angle~%float32 angle # inradians~%~%float32 distance # in meters~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PolarReading>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PolarReading>))
  "Converts a ROS message object to a list"
  (cl:list 'PolarReading
    (cl:cons ':angle (angle msg))
    (cl:cons ':distance (distance msg))
))
