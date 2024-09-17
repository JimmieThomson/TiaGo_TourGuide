; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-srv)


;//! \htmlinclude DisableEmergency-request.msg.html

(cl:defclass <DisableEmergency-request> (roslisp-msg-protocol:ros-message)
  ((second
    :reader second
    :initarg :second
    :type cl:float
    :initform 0.0)
   (useLEDs
    :reader useLEDs
    :initarg :useLEDs
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DisableEmergency-request (<DisableEmergency-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DisableEmergency-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DisableEmergency-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<DisableEmergency-request> is deprecated: use pal_navigation_msgs-srv:DisableEmergency-request instead.")))

(cl:ensure-generic-function 'second-val :lambda-list '(m))
(cl:defmethod second-val ((m <DisableEmergency-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:second-val is deprecated.  Use pal_navigation_msgs-srv:second instead.")
  (second m))

(cl:ensure-generic-function 'useLEDs-val :lambda-list '(m))
(cl:defmethod useLEDs-val ((m <DisableEmergency-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:useLEDs-val is deprecated.  Use pal_navigation_msgs-srv:useLEDs instead.")
  (useLEDs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DisableEmergency-request>) ostream)
  "Serializes a message object of type '<DisableEmergency-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'second))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'useLEDs) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DisableEmergency-request>) istream)
  "Deserializes a message object of type '<DisableEmergency-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'second) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'useLEDs) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DisableEmergency-request>)))
  "Returns string type for a service object of type '<DisableEmergency-request>"
  "pal_navigation_msgs/DisableEmergencyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DisableEmergency-request)))
  "Returns string type for a service object of type 'DisableEmergency-request"
  "pal_navigation_msgs/DisableEmergencyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DisableEmergency-request>)))
  "Returns md5sum for a message object of type '<DisableEmergency-request>"
  "c70010f49615fec47be4f92cf8bc5f87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DisableEmergency-request)))
  "Returns md5sum for a message object of type 'DisableEmergency-request"
  "c70010f49615fec47be4f92cf8bc5f87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DisableEmergency-request>)))
  "Returns full string definition for message of type '<DisableEmergency-request>"
  (cl:format cl:nil "# Disable emergency ~%float64 second~%bool useLEDs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DisableEmergency-request)))
  "Returns full string definition for message of type 'DisableEmergency-request"
  (cl:format cl:nil "# Disable emergency ~%float64 second~%bool useLEDs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DisableEmergency-request>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DisableEmergency-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DisableEmergency-request
    (cl:cons ':second (second msg))
    (cl:cons ':useLEDs (useLEDs msg))
))
;//! \htmlinclude DisableEmergency-response.msg.html

(cl:defclass <DisableEmergency-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DisableEmergency-response (<DisableEmergency-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DisableEmergency-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DisableEmergency-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<DisableEmergency-response> is deprecated: use pal_navigation_msgs-srv:DisableEmergency-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DisableEmergency-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:success-val is deprecated.  Use pal_navigation_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DisableEmergency-response>) ostream)
  "Serializes a message object of type '<DisableEmergency-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DisableEmergency-response>) istream)
  "Deserializes a message object of type '<DisableEmergency-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DisableEmergency-response>)))
  "Returns string type for a service object of type '<DisableEmergency-response>"
  "pal_navigation_msgs/DisableEmergencyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DisableEmergency-response)))
  "Returns string type for a service object of type 'DisableEmergency-response"
  "pal_navigation_msgs/DisableEmergencyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DisableEmergency-response>)))
  "Returns md5sum for a message object of type '<DisableEmergency-response>"
  "c70010f49615fec47be4f92cf8bc5f87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DisableEmergency-response)))
  "Returns md5sum for a message object of type 'DisableEmergency-response"
  "c70010f49615fec47be4f92cf8bc5f87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DisableEmergency-response>)))
  "Returns full string definition for message of type '<DisableEmergency-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DisableEmergency-response)))
  "Returns full string definition for message of type 'DisableEmergency-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DisableEmergency-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DisableEmergency-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DisableEmergency-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DisableEmergency)))
  'DisableEmergency-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DisableEmergency)))
  'DisableEmergency-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DisableEmergency)))
  "Returns string type for a service object of type '<DisableEmergency>"
  "pal_navigation_msgs/DisableEmergency")