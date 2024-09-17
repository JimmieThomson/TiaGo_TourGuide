; Auto-generated. Do not edit!


(cl:in-package pal_detection_msgs-srv)


;//! \htmlinclude SetDatabase-request.msg.html

(cl:defclass <SetDatabase-request> (roslisp-msg-protocol:ros-message)
  ((databaseName
    :reader databaseName
    :initarg :databaseName
    :type cl:string
    :initform "")
   (purgeAll
    :reader purgeAll
    :initarg :purgeAll
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetDatabase-request (<SetDatabase-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDatabase-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDatabase-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-srv:<SetDatabase-request> is deprecated: use pal_detection_msgs-srv:SetDatabase-request instead.")))

(cl:ensure-generic-function 'databaseName-val :lambda-list '(m))
(cl:defmethod databaseName-val ((m <SetDatabase-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:databaseName-val is deprecated.  Use pal_detection_msgs-srv:databaseName instead.")
  (databaseName m))

(cl:ensure-generic-function 'purgeAll-val :lambda-list '(m))
(cl:defmethod purgeAll-val ((m <SetDatabase-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:purgeAll-val is deprecated.  Use pal_detection_msgs-srv:purgeAll instead.")
  (purgeAll m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDatabase-request>) ostream)
  "Serializes a message object of type '<SetDatabase-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'databaseName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'databaseName))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'purgeAll) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDatabase-request>) istream)
  "Deserializes a message object of type '<SetDatabase-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'databaseName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'databaseName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'purgeAll) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDatabase-request>)))
  "Returns string type for a service object of type '<SetDatabase-request>"
  "pal_detection_msgs/SetDatabaseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDatabase-request)))
  "Returns string type for a service object of type 'SetDatabase-request"
  "pal_detection_msgs/SetDatabaseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDatabase-request>)))
  "Returns md5sum for a message object of type '<SetDatabase-request>"
  "1cf0b9bc147e7ba402d13d5645c217d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDatabase-request)))
  "Returns md5sum for a message object of type 'SetDatabase-request"
  "1cf0b9bc147e7ba402d13d5645c217d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDatabase-request>)))
  "Returns full string definition for message of type '<SetDatabase-request>"
  (cl:format cl:nil "string databaseName~%bool purgeAll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDatabase-request)))
  "Returns full string definition for message of type 'SetDatabase-request"
  (cl:format cl:nil "string databaseName~%bool purgeAll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDatabase-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'databaseName))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDatabase-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDatabase-request
    (cl:cons ':databaseName (databaseName msg))
    (cl:cons ':purgeAll (purgeAll msg))
))
;//! \htmlinclude SetDatabase-response.msg.html

(cl:defclass <SetDatabase-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetDatabase-response (<SetDatabase-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDatabase-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDatabase-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-srv:<SetDatabase-response> is deprecated: use pal_detection_msgs-srv:SetDatabase-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDatabase-response>) ostream)
  "Serializes a message object of type '<SetDatabase-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDatabase-response>) istream)
  "Deserializes a message object of type '<SetDatabase-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDatabase-response>)))
  "Returns string type for a service object of type '<SetDatabase-response>"
  "pal_detection_msgs/SetDatabaseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDatabase-response)))
  "Returns string type for a service object of type 'SetDatabase-response"
  "pal_detection_msgs/SetDatabaseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDatabase-response>)))
  "Returns md5sum for a message object of type '<SetDatabase-response>"
  "1cf0b9bc147e7ba402d13d5645c217d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDatabase-response)))
  "Returns md5sum for a message object of type 'SetDatabase-response"
  "1cf0b9bc147e7ba402d13d5645c217d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDatabase-response>)))
  "Returns full string definition for message of type '<SetDatabase-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDatabase-response)))
  "Returns full string definition for message of type 'SetDatabase-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDatabase-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDatabase-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDatabase-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDatabase)))
  'SetDatabase-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDatabase)))
  'SetDatabase-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDatabase)))
  "Returns string type for a service object of type '<SetDatabase>"
  "pal_detection_msgs/SetDatabase")