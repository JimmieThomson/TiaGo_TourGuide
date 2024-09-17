; Auto-generated. Do not edit!


(cl:in-package pal_vision_msgs-srv)


;//! \htmlinclude FollowMeStart-request.msg.html

(cl:defclass <FollowMeStart-request> (roslisp-msg-protocol:ros-message)
  ((maxSecondsTargetLost
    :reader maxSecondsTargetLost
    :initarg :maxSecondsTargetLost
    :type cl:float
    :initform 0.0))
)

(cl:defclass FollowMeStart-request (<FollowMeStart-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowMeStart-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowMeStart-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-srv:<FollowMeStart-request> is deprecated: use pal_vision_msgs-srv:FollowMeStart-request instead.")))

(cl:ensure-generic-function 'maxSecondsTargetLost-val :lambda-list '(m))
(cl:defmethod maxSecondsTargetLost-val ((m <FollowMeStart-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-srv:maxSecondsTargetLost-val is deprecated.  Use pal_vision_msgs-srv:maxSecondsTargetLost instead.")
  (maxSecondsTargetLost m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowMeStart-request>) ostream)
  "Serializes a message object of type '<FollowMeStart-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxSecondsTargetLost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowMeStart-request>) istream)
  "Deserializes a message object of type '<FollowMeStart-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxSecondsTargetLost) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowMeStart-request>)))
  "Returns string type for a service object of type '<FollowMeStart-request>"
  "pal_vision_msgs/FollowMeStartRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowMeStart-request)))
  "Returns string type for a service object of type 'FollowMeStart-request"
  "pal_vision_msgs/FollowMeStartRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowMeStart-request>)))
  "Returns md5sum for a message object of type '<FollowMeStart-request>"
  "87d3dd79b1c6acbd29fa88c4d5b58715")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowMeStart-request)))
  "Returns md5sum for a message object of type 'FollowMeStart-request"
  "87d3dd79b1c6acbd29fa88c4d5b58715")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowMeStart-request>)))
  "Returns full string definition for message of type '<FollowMeStart-request>"
  (cl:format cl:nil "##~%## ROS service to start followMeServer functionality. The service is named /followMeServer/start~%~%float32 maxSecondsTargetLost ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowMeStart-request)))
  "Returns full string definition for message of type 'FollowMeStart-request"
  (cl:format cl:nil "##~%## ROS service to start followMeServer functionality. The service is named /followMeServer/start~%~%float32 maxSecondsTargetLost ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowMeStart-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowMeStart-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowMeStart-request
    (cl:cons ':maxSecondsTargetLost (maxSecondsTargetLost msg))
))
;//! \htmlinclude FollowMeStart-response.msg.html

(cl:defclass <FollowMeStart-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FollowMeStart-response (<FollowMeStart-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowMeStart-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowMeStart-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-srv:<FollowMeStart-response> is deprecated: use pal_vision_msgs-srv:FollowMeStart-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowMeStart-response>) ostream)
  "Serializes a message object of type '<FollowMeStart-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowMeStart-response>) istream)
  "Deserializes a message object of type '<FollowMeStart-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowMeStart-response>)))
  "Returns string type for a service object of type '<FollowMeStart-response>"
  "pal_vision_msgs/FollowMeStartResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowMeStart-response)))
  "Returns string type for a service object of type 'FollowMeStart-response"
  "pal_vision_msgs/FollowMeStartResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowMeStart-response>)))
  "Returns md5sum for a message object of type '<FollowMeStart-response>"
  "87d3dd79b1c6acbd29fa88c4d5b58715")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowMeStart-response)))
  "Returns md5sum for a message object of type 'FollowMeStart-response"
  "87d3dd79b1c6acbd29fa88c4d5b58715")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowMeStart-response>)))
  "Returns full string definition for message of type '<FollowMeStart-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowMeStart-response)))
  "Returns full string definition for message of type 'FollowMeStart-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowMeStart-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowMeStart-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowMeStart-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FollowMeStart)))
  'FollowMeStart-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FollowMeStart)))
  'FollowMeStart-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowMeStart)))
  "Returns string type for a service object of type '<FollowMeStart>"
  "pal_vision_msgs/FollowMeStart")