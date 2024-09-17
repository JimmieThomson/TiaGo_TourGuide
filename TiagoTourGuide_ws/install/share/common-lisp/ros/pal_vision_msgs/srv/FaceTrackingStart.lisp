; Auto-generated. Do not edit!


(cl:in-package pal_vision_msgs-srv)


;//! \htmlinclude FaceTrackingStart-request.msg.html

(cl:defclass <FaceTrackingStart-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FaceTrackingStart-request (<FaceTrackingStart-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceTrackingStart-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceTrackingStart-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-srv:<FaceTrackingStart-request> is deprecated: use pal_vision_msgs-srv:FaceTrackingStart-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceTrackingStart-request>) ostream)
  "Serializes a message object of type '<FaceTrackingStart-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceTrackingStart-request>) istream)
  "Deserializes a message object of type '<FaceTrackingStart-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceTrackingStart-request>)))
  "Returns string type for a service object of type '<FaceTrackingStart-request>"
  "pal_vision_msgs/FaceTrackingStartRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceTrackingStart-request)))
  "Returns string type for a service object of type 'FaceTrackingStart-request"
  "pal_vision_msgs/FaceTrackingStartRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceTrackingStart-request>)))
  "Returns md5sum for a message object of type '<FaceTrackingStart-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceTrackingStart-request)))
  "Returns md5sum for a message object of type 'FaceTrackingStart-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceTrackingStart-request>)))
  "Returns full string definition for message of type '<FaceTrackingStart-request>"
  (cl:format cl:nil "##~%## ROS service to enable head tracking in personServer. The service is named /personServer/faceTracking/start~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceTrackingStart-request)))
  "Returns full string definition for message of type 'FaceTrackingStart-request"
  (cl:format cl:nil "##~%## ROS service to enable head tracking in personServer. The service is named /personServer/faceTracking/start~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceTrackingStart-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceTrackingStart-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceTrackingStart-request
))
;//! \htmlinclude FaceTrackingStart-response.msg.html

(cl:defclass <FaceTrackingStart-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FaceTrackingStart-response (<FaceTrackingStart-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceTrackingStart-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceTrackingStart-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-srv:<FaceTrackingStart-response> is deprecated: use pal_vision_msgs-srv:FaceTrackingStart-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceTrackingStart-response>) ostream)
  "Serializes a message object of type '<FaceTrackingStart-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceTrackingStart-response>) istream)
  "Deserializes a message object of type '<FaceTrackingStart-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceTrackingStart-response>)))
  "Returns string type for a service object of type '<FaceTrackingStart-response>"
  "pal_vision_msgs/FaceTrackingStartResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceTrackingStart-response)))
  "Returns string type for a service object of type 'FaceTrackingStart-response"
  "pal_vision_msgs/FaceTrackingStartResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceTrackingStart-response>)))
  "Returns md5sum for a message object of type '<FaceTrackingStart-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceTrackingStart-response)))
  "Returns md5sum for a message object of type 'FaceTrackingStart-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceTrackingStart-response>)))
  "Returns full string definition for message of type '<FaceTrackingStart-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceTrackingStart-response)))
  "Returns full string definition for message of type 'FaceTrackingStart-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceTrackingStart-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceTrackingStart-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceTrackingStart-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FaceTrackingStart)))
  'FaceTrackingStart-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FaceTrackingStart)))
  'FaceTrackingStart-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceTrackingStart)))
  "Returns string type for a service object of type '<FaceTrackingStart>"
  "pal_vision_msgs/FaceTrackingStart")