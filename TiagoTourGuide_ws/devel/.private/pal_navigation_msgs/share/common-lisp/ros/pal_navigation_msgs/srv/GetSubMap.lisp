; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-srv)


;//! \htmlinclude GetSubMap-request.msg.html

(cl:defclass <GetSubMap-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetSubMap-request (<GetSubMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSubMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSubMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<GetSubMap-request> is deprecated: use pal_navigation_msgs-srv:GetSubMap-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <GetSubMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:index-val is deprecated.  Use pal_navigation_msgs-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSubMap-request>) ostream)
  "Serializes a message object of type '<GetSubMap-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSubMap-request>) istream)
  "Deserializes a message object of type '<GetSubMap-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSubMap-request>)))
  "Returns string type for a service object of type '<GetSubMap-request>"
  "pal_navigation_msgs/GetSubMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSubMap-request)))
  "Returns string type for a service object of type 'GetSubMap-request"
  "pal_navigation_msgs/GetSubMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSubMap-request>)))
  "Returns md5sum for a message object of type '<GetSubMap-request>"
  "c4ecff52046eaecf0190e650b1958286")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSubMap-request)))
  "Returns md5sum for a message object of type 'GetSubMap-request"
  "c4ecff52046eaecf0190e650b1958286")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSubMap-request>)))
  "Returns full string definition for message of type '<GetSubMap-request>"
  (cl:format cl:nil "# Request SubMap using index ~%int8 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSubMap-request)))
  "Returns full string definition for message of type 'GetSubMap-request"
  (cl:format cl:nil "# Request SubMap using index ~%int8 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSubMap-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSubMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSubMap-request
    (cl:cons ':index (index msg))
))
;//! \htmlinclude GetSubMap-response.msg.html

(cl:defclass <GetSubMap-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetSubMap-response (<GetSubMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSubMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSubMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<GetSubMap-response> is deprecated: use pal_navigation_msgs-srv:GetSubMap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSubMap-response>) ostream)
  "Serializes a message object of type '<GetSubMap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSubMap-response>) istream)
  "Deserializes a message object of type '<GetSubMap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSubMap-response>)))
  "Returns string type for a service object of type '<GetSubMap-response>"
  "pal_navigation_msgs/GetSubMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSubMap-response)))
  "Returns string type for a service object of type 'GetSubMap-response"
  "pal_navigation_msgs/GetSubMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSubMap-response>)))
  "Returns md5sum for a message object of type '<GetSubMap-response>"
  "c4ecff52046eaecf0190e650b1958286")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSubMap-response)))
  "Returns md5sum for a message object of type 'GetSubMap-response"
  "c4ecff52046eaecf0190e650b1958286")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSubMap-response>)))
  "Returns full string definition for message of type '<GetSubMap-response>"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSubMap-response)))
  "Returns full string definition for message of type 'GetSubMap-response"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSubMap-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSubMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSubMap-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSubMap)))
  'GetSubMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSubMap)))
  'GetSubMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSubMap)))
  "Returns string type for a service object of type '<GetSubMap>"
  "pal_navigation_msgs/GetSubMap")