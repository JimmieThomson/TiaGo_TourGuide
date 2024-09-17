; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-srv)


;//! \htmlinclude SetSubMapFloor-request.msg.html

(cl:defclass <SetSubMapFloor-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (floor
    :reader floor
    :initarg :floor
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetSubMapFloor-request (<SetSubMapFloor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSubMapFloor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSubMapFloor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<SetSubMapFloor-request> is deprecated: use pal_navigation_msgs-srv:SetSubMapFloor-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <SetSubMapFloor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:index-val is deprecated.  Use pal_navigation_msgs-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <SetSubMapFloor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:floor-val is deprecated.  Use pal_navigation_msgs-srv:floor instead.")
  (floor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSubMapFloor-request>) ostream)
  "Serializes a message object of type '<SetSubMapFloor-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSubMapFloor-request>) istream)
  "Deserializes a message object of type '<SetSubMapFloor-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'floor) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSubMapFloor-request>)))
  "Returns string type for a service object of type '<SetSubMapFloor-request>"
  "pal_navigation_msgs/SetSubMapFloorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSubMapFloor-request)))
  "Returns string type for a service object of type 'SetSubMapFloor-request"
  "pal_navigation_msgs/SetSubMapFloorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSubMapFloor-request>)))
  "Returns md5sum for a message object of type '<SetSubMapFloor-request>"
  "7bc38a6f54d12ca287533bb3a693ed06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSubMapFloor-request)))
  "Returns md5sum for a message object of type 'SetSubMapFloor-request"
  "7bc38a6f54d12ca287533bb3a693ed06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSubMapFloor-request>)))
  "Returns full string definition for message of type '<SetSubMapFloor-request>"
  (cl:format cl:nil "# Send Floor of SubMap at index i~%int8 index~%int8 floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSubMapFloor-request)))
  "Returns full string definition for message of type 'SetSubMapFloor-request"
  (cl:format cl:nil "# Send Floor of SubMap at index i~%int8 index~%int8 floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSubMapFloor-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSubMapFloor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSubMapFloor-request
    (cl:cons ':index (index msg))
    (cl:cons ':floor (floor msg))
))
;//! \htmlinclude SetSubMapFloor-response.msg.html

(cl:defclass <SetSubMapFloor-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetSubMapFloor-response (<SetSubMapFloor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSubMapFloor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSubMapFloor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<SetSubMapFloor-response> is deprecated: use pal_navigation_msgs-srv:SetSubMapFloor-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSubMapFloor-response>) ostream)
  "Serializes a message object of type '<SetSubMapFloor-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSubMapFloor-response>) istream)
  "Deserializes a message object of type '<SetSubMapFloor-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSubMapFloor-response>)))
  "Returns string type for a service object of type '<SetSubMapFloor-response>"
  "pal_navigation_msgs/SetSubMapFloorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSubMapFloor-response)))
  "Returns string type for a service object of type 'SetSubMapFloor-response"
  "pal_navigation_msgs/SetSubMapFloorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSubMapFloor-response>)))
  "Returns md5sum for a message object of type '<SetSubMapFloor-response>"
  "7bc38a6f54d12ca287533bb3a693ed06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSubMapFloor-response)))
  "Returns md5sum for a message object of type 'SetSubMapFloor-response"
  "7bc38a6f54d12ca287533bb3a693ed06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSubMapFloor-response>)))
  "Returns full string definition for message of type '<SetSubMapFloor-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSubMapFloor-response)))
  "Returns full string definition for message of type 'SetSubMapFloor-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSubMapFloor-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSubMapFloor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSubMapFloor-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetSubMapFloor)))
  'SetSubMapFloor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetSubMapFloor)))
  'SetSubMapFloor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSubMapFloor)))
  "Returns string type for a service object of type '<SetSubMapFloor>"
  "pal_navigation_msgs/SetSubMapFloor")