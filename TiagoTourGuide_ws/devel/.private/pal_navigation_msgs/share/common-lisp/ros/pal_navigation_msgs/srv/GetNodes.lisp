; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-srv)


;//! \htmlinclude GetNodes-request.msg.html

(cl:defclass <GetNodes-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetNodes-request (<GetNodes-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNodes-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNodes-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<GetNodes-request> is deprecated: use pal_navigation_msgs-srv:GetNodes-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNodes-request>) ostream)
  "Serializes a message object of type '<GetNodes-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNodes-request>) istream)
  "Deserializes a message object of type '<GetNodes-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNodes-request>)))
  "Returns string type for a service object of type '<GetNodes-request>"
  "pal_navigation_msgs/GetNodesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNodes-request)))
  "Returns string type for a service object of type 'GetNodes-request"
  "pal_navigation_msgs/GetNodesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNodes-request>)))
  "Returns md5sum for a message object of type '<GetNodes-request>"
  "b6466ea7c9ababd4e7ce8d08d651a271")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNodes-request)))
  "Returns md5sum for a message object of type 'GetNodes-request"
  "b6466ea7c9ababd4e7ce8d08d651a271")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNodes-request>)))
  "Returns full string definition for message of type '<GetNodes-request>"
  (cl:format cl:nil "# Request number of submaps when datas are loaded ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNodes-request)))
  "Returns full string definition for message of type 'GetNodes-request"
  (cl:format cl:nil "# Request number of submaps when datas are loaded ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNodes-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNodes-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNodes-request
))
;//! \htmlinclude GetNodes-response.msg.html

(cl:defclass <GetNodes-response> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:fixnum
    :initform 0)
   (totPOI
    :reader totPOI
    :initarg :totPOI
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetNodes-response (<GetNodes-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNodes-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNodes-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<GetNodes-response> is deprecated: use pal_navigation_msgs-srv:GetNodes-response instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <GetNodes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:node-val is deprecated.  Use pal_navigation_msgs-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'totPOI-val :lambda-list '(m))
(cl:defmethod totPOI-val ((m <GetNodes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:totPOI-val is deprecated.  Use pal_navigation_msgs-srv:totPOI instead.")
  (totPOI m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNodes-response>) ostream)
  "Serializes a message object of type '<GetNodes-response>"
  (cl:let* ((signed (cl:slot-value msg 'node)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'totPOI)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNodes-response>) istream)
  "Deserializes a message object of type '<GetNodes-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'totPOI) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNodes-response>)))
  "Returns string type for a service object of type '<GetNodes-response>"
  "pal_navigation_msgs/GetNodesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNodes-response)))
  "Returns string type for a service object of type 'GetNodes-response"
  "pal_navigation_msgs/GetNodesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNodes-response>)))
  "Returns md5sum for a message object of type '<GetNodes-response>"
  "b6466ea7c9ababd4e7ce8d08d651a271")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNodes-response)))
  "Returns md5sum for a message object of type 'GetNodes-response"
  "b6466ea7c9ababd4e7ce8d08d651a271")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNodes-response>)))
  "Returns full string definition for message of type '<GetNodes-response>"
  (cl:format cl:nil "int8 node~%int8 totPOI~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNodes-response)))
  "Returns full string definition for message of type 'GetNodes-response"
  (cl:format cl:nil "int8 node~%int8 totPOI~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNodes-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNodes-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNodes-response
    (cl:cons ':node (node msg))
    (cl:cons ':totPOI (totPOI msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNodes)))
  'GetNodes-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNodes)))
  'GetNodes-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNodes)))
  "Returns string type for a service object of type '<GetNodes>"
  "pal_navigation_msgs/GetNodes")