; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-msg)


;//! \htmlinclude LedRainbowParams.msg.html

(cl:defclass <LedRainbowParams> (roslisp-msg-protocol:ros-message)
  ((transition_duration
    :reader transition_duration
    :initarg :transition_duration
    :type cl:real
    :initform 0))
)

(cl:defclass LedRainbowParams (<LedRainbowParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedRainbowParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedRainbowParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-msg:<LedRainbowParams> is deprecated: use pal_device_msgs-msg:LedRainbowParams instead.")))

(cl:ensure-generic-function 'transition_duration-val :lambda-list '(m))
(cl:defmethod transition_duration-val ((m <LedRainbowParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:transition_duration-val is deprecated.  Use pal_device_msgs-msg:transition_duration instead.")
  (transition_duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedRainbowParams>) ostream)
  "Serializes a message object of type '<LedRainbowParams>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedRainbowParams>) istream)
  "Deserializes a message object of type '<LedRainbowParams>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedRainbowParams>)))
  "Returns string type for a message object of type '<LedRainbowParams>"
  "pal_device_msgs/LedRainbowParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedRainbowParams)))
  "Returns string type for a message object of type 'LedRainbowParams"
  "pal_device_msgs/LedRainbowParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedRainbowParams>)))
  "Returns md5sum for a message object of type '<LedRainbowParams>"
  "f44f9582c55f88a544d929daa76e5ae7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedRainbowParams)))
  "Returns md5sum for a message object of type 'LedRainbowParams"
  "f44f9582c55f88a544d929daa76e5ae7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedRainbowParams>)))
  "Returns full string definition for message of type '<LedRainbowParams>"
  (cl:format cl:nil "# Time to perform rainbow~%duration transition_duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedRainbowParams)))
  "Returns full string definition for message of type 'LedRainbowParams"
  (cl:format cl:nil "# Time to perform rainbow~%duration transition_duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedRainbowParams>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedRainbowParams>))
  "Converts a ROS message object to a list"
  (cl:list 'LedRainbowParams
    (cl:cons ':transition_duration (transition_duration msg))
))
