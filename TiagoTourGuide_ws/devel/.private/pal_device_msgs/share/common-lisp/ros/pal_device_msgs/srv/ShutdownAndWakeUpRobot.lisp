; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-srv)


;//! \htmlinclude ShutdownAndWakeUpRobot-request.msg.html

(cl:defclass <ShutdownAndWakeUpRobot-request> (roslisp-msg-protocol:ros-message)
  ((shutdown_duration
    :reader shutdown_duration
    :initarg :shutdown_duration
    :type cl:real
    :initform 0))
)

(cl:defclass ShutdownAndWakeUpRobot-request (<ShutdownAndWakeUpRobot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShutdownAndWakeUpRobot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShutdownAndWakeUpRobot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-srv:<ShutdownAndWakeUpRobot-request> is deprecated: use pal_device_msgs-srv:ShutdownAndWakeUpRobot-request instead.")))

(cl:ensure-generic-function 'shutdown_duration-val :lambda-list '(m))
(cl:defmethod shutdown_duration-val ((m <ShutdownAndWakeUpRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-srv:shutdown_duration-val is deprecated.  Use pal_device_msgs-srv:shutdown_duration instead.")
  (shutdown_duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShutdownAndWakeUpRobot-request>) ostream)
  "Serializes a message object of type '<ShutdownAndWakeUpRobot-request>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'shutdown_duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'shutdown_duration) (cl:floor (cl:slot-value msg 'shutdown_duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShutdownAndWakeUpRobot-request>) istream)
  "Deserializes a message object of type '<ShutdownAndWakeUpRobot-request>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shutdown_duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShutdownAndWakeUpRobot-request>)))
  "Returns string type for a service object of type '<ShutdownAndWakeUpRobot-request>"
  "pal_device_msgs/ShutdownAndWakeUpRobotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShutdownAndWakeUpRobot-request)))
  "Returns string type for a service object of type 'ShutdownAndWakeUpRobot-request"
  "pal_device_msgs/ShutdownAndWakeUpRobotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShutdownAndWakeUpRobot-request>)))
  "Returns md5sum for a message object of type '<ShutdownAndWakeUpRobot-request>"
  "1f8f568ec4dc499fbd0dce4b139875f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShutdownAndWakeUpRobot-request)))
  "Returns md5sum for a message object of type 'ShutdownAndWakeUpRobot-request"
  "1f8f568ec4dc499fbd0dce4b139875f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShutdownAndWakeUpRobot-request>)))
  "Returns full string definition for message of type '<ShutdownAndWakeUpRobot-request>"
  (cl:format cl:nil "duration shutdown_duration~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShutdownAndWakeUpRobot-request)))
  "Returns full string definition for message of type 'ShutdownAndWakeUpRobot-request"
  (cl:format cl:nil "duration shutdown_duration~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShutdownAndWakeUpRobot-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShutdownAndWakeUpRobot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ShutdownAndWakeUpRobot-request
    (cl:cons ':shutdown_duration (shutdown_duration msg))
))
;//! \htmlinclude ShutdownAndWakeUpRobot-response.msg.html

(cl:defclass <ShutdownAndWakeUpRobot-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ShutdownAndWakeUpRobot-response (<ShutdownAndWakeUpRobot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShutdownAndWakeUpRobot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShutdownAndWakeUpRobot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-srv:<ShutdownAndWakeUpRobot-response> is deprecated: use pal_device_msgs-srv:ShutdownAndWakeUpRobot-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShutdownAndWakeUpRobot-response>) ostream)
  "Serializes a message object of type '<ShutdownAndWakeUpRobot-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShutdownAndWakeUpRobot-response>) istream)
  "Deserializes a message object of type '<ShutdownAndWakeUpRobot-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShutdownAndWakeUpRobot-response>)))
  "Returns string type for a service object of type '<ShutdownAndWakeUpRobot-response>"
  "pal_device_msgs/ShutdownAndWakeUpRobotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShutdownAndWakeUpRobot-response)))
  "Returns string type for a service object of type 'ShutdownAndWakeUpRobot-response"
  "pal_device_msgs/ShutdownAndWakeUpRobotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShutdownAndWakeUpRobot-response>)))
  "Returns md5sum for a message object of type '<ShutdownAndWakeUpRobot-response>"
  "1f8f568ec4dc499fbd0dce4b139875f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShutdownAndWakeUpRobot-response)))
  "Returns md5sum for a message object of type 'ShutdownAndWakeUpRobot-response"
  "1f8f568ec4dc499fbd0dce4b139875f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShutdownAndWakeUpRobot-response>)))
  "Returns full string definition for message of type '<ShutdownAndWakeUpRobot-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShutdownAndWakeUpRobot-response)))
  "Returns full string definition for message of type 'ShutdownAndWakeUpRobot-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShutdownAndWakeUpRobot-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShutdownAndWakeUpRobot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ShutdownAndWakeUpRobot-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ShutdownAndWakeUpRobot)))
  'ShutdownAndWakeUpRobot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ShutdownAndWakeUpRobot)))
  'ShutdownAndWakeUpRobot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShutdownAndWakeUpRobot)))
  "Returns string type for a service object of type '<ShutdownAndWakeUpRobot>"
  "pal_device_msgs/ShutdownAndWakeUpRobot")