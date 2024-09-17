; Auto-generated. Do not edit!


(cl:in-package pal_vision_msgs-srv)


;//! \htmlinclude FollowMeStop-request.msg.html

(cl:defclass <FollowMeStop-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FollowMeStop-request (<FollowMeStop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowMeStop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowMeStop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-srv:<FollowMeStop-request> is deprecated: use pal_vision_msgs-srv:FollowMeStop-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowMeStop-request>) ostream)
  "Serializes a message object of type '<FollowMeStop-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowMeStop-request>) istream)
  "Deserializes a message object of type '<FollowMeStop-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowMeStop-request>)))
  "Returns string type for a service object of type '<FollowMeStop-request>"
  "pal_vision_msgs/FollowMeStopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowMeStop-request)))
  "Returns string type for a service object of type 'FollowMeStop-request"
  "pal_vision_msgs/FollowMeStopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowMeStop-request>)))
  "Returns md5sum for a message object of type '<FollowMeStop-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowMeStop-request)))
  "Returns md5sum for a message object of type 'FollowMeStop-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowMeStop-request>)))
  "Returns full string definition for message of type '<FollowMeStop-request>"
  (cl:format cl:nil "##~%## ROS service to stop followMeServer. The service is named /followMeServer/stop~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowMeStop-request)))
  "Returns full string definition for message of type 'FollowMeStop-request"
  (cl:format cl:nil "##~%## ROS service to stop followMeServer. The service is named /followMeServer/stop~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowMeStop-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowMeStop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowMeStop-request
))
;//! \htmlinclude FollowMeStop-response.msg.html

(cl:defclass <FollowMeStop-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FollowMeStop-response (<FollowMeStop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowMeStop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowMeStop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-srv:<FollowMeStop-response> is deprecated: use pal_vision_msgs-srv:FollowMeStop-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowMeStop-response>) ostream)
  "Serializes a message object of type '<FollowMeStop-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowMeStop-response>) istream)
  "Deserializes a message object of type '<FollowMeStop-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowMeStop-response>)))
  "Returns string type for a service object of type '<FollowMeStop-response>"
  "pal_vision_msgs/FollowMeStopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowMeStop-response)))
  "Returns string type for a service object of type 'FollowMeStop-response"
  "pal_vision_msgs/FollowMeStopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowMeStop-response>)))
  "Returns md5sum for a message object of type '<FollowMeStop-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowMeStop-response)))
  "Returns md5sum for a message object of type 'FollowMeStop-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowMeStop-response>)))
  "Returns full string definition for message of type '<FollowMeStop-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowMeStop-response)))
  "Returns full string definition for message of type 'FollowMeStop-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowMeStop-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowMeStop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowMeStop-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FollowMeStop)))
  'FollowMeStop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FollowMeStop)))
  'FollowMeStop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowMeStop)))
  "Returns string type for a service object of type '<FollowMeStop>"
  "pal_vision_msgs/FollowMeStop")