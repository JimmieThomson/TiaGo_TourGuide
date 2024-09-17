; Auto-generated. Do not edit!


(cl:in-package pal_vision_msgs-srv)


;//! \htmlinclude FaceTrackingStop-request.msg.html

(cl:defclass <FaceTrackingStop-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FaceTrackingStop-request (<FaceTrackingStop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceTrackingStop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceTrackingStop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-srv:<FaceTrackingStop-request> is deprecated: use pal_vision_msgs-srv:FaceTrackingStop-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceTrackingStop-request>) ostream)
  "Serializes a message object of type '<FaceTrackingStop-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceTrackingStop-request>) istream)
  "Deserializes a message object of type '<FaceTrackingStop-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceTrackingStop-request>)))
  "Returns string type for a service object of type '<FaceTrackingStop-request>"
  "pal_vision_msgs/FaceTrackingStopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceTrackingStop-request)))
  "Returns string type for a service object of type 'FaceTrackingStop-request"
  "pal_vision_msgs/FaceTrackingStopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceTrackingStop-request>)))
  "Returns md5sum for a message object of type '<FaceTrackingStop-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceTrackingStop-request)))
  "Returns md5sum for a message object of type 'FaceTrackingStop-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceTrackingStop-request>)))
  "Returns full string definition for message of type '<FaceTrackingStop-request>"
  (cl:format cl:nil "##~%## ROS service to disable head tracking in personServer. The service is named /personServer/faceTracking/stop~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceTrackingStop-request)))
  "Returns full string definition for message of type 'FaceTrackingStop-request"
  (cl:format cl:nil "##~%## ROS service to disable head tracking in personServer. The service is named /personServer/faceTracking/stop~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceTrackingStop-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceTrackingStop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceTrackingStop-request
))
;//! \htmlinclude FaceTrackingStop-response.msg.html

(cl:defclass <FaceTrackingStop-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FaceTrackingStop-response (<FaceTrackingStop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceTrackingStop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceTrackingStop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-srv:<FaceTrackingStop-response> is deprecated: use pal_vision_msgs-srv:FaceTrackingStop-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceTrackingStop-response>) ostream)
  "Serializes a message object of type '<FaceTrackingStop-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceTrackingStop-response>) istream)
  "Deserializes a message object of type '<FaceTrackingStop-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceTrackingStop-response>)))
  "Returns string type for a service object of type '<FaceTrackingStop-response>"
  "pal_vision_msgs/FaceTrackingStopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceTrackingStop-response)))
  "Returns string type for a service object of type 'FaceTrackingStop-response"
  "pal_vision_msgs/FaceTrackingStopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceTrackingStop-response>)))
  "Returns md5sum for a message object of type '<FaceTrackingStop-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceTrackingStop-response)))
  "Returns md5sum for a message object of type 'FaceTrackingStop-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceTrackingStop-response>)))
  "Returns full string definition for message of type '<FaceTrackingStop-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceTrackingStop-response)))
  "Returns full string definition for message of type 'FaceTrackingStop-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceTrackingStop-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceTrackingStop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceTrackingStop-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FaceTrackingStop)))
  'FaceTrackingStop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FaceTrackingStop)))
  'FaceTrackingStop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceTrackingStop)))
  "Returns string type for a service object of type '<FaceTrackingStop>"
  "pal_vision_msgs/FaceTrackingStop")