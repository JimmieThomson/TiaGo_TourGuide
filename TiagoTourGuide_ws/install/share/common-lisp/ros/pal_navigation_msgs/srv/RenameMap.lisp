; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-srv)


;//! \htmlinclude RenameMap-request.msg.html

(cl:defclass <RenameMap-request> (roslisp-msg-protocol:ros-message)
  ((current_map_name
    :reader current_map_name
    :initarg :current_map_name
    :type cl:string
    :initform "")
   (new_map_name
    :reader new_map_name
    :initarg :new_map_name
    :type cl:string
    :initform ""))
)

(cl:defclass RenameMap-request (<RenameMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RenameMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RenameMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<RenameMap-request> is deprecated: use pal_navigation_msgs-srv:RenameMap-request instead.")))

(cl:ensure-generic-function 'current_map_name-val :lambda-list '(m))
(cl:defmethod current_map_name-val ((m <RenameMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:current_map_name-val is deprecated.  Use pal_navigation_msgs-srv:current_map_name instead.")
  (current_map_name m))

(cl:ensure-generic-function 'new_map_name-val :lambda-list '(m))
(cl:defmethod new_map_name-val ((m <RenameMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:new_map_name-val is deprecated.  Use pal_navigation_msgs-srv:new_map_name instead.")
  (new_map_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RenameMap-request>) ostream)
  "Serializes a message object of type '<RenameMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_map_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'new_map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'new_map_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RenameMap-request>) istream)
  "Deserializes a message object of type '<RenameMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'new_map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'new_map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RenameMap-request>)))
  "Returns string type for a service object of type '<RenameMap-request>"
  "pal_navigation_msgs/RenameMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RenameMap-request)))
  "Returns string type for a service object of type 'RenameMap-request"
  "pal_navigation_msgs/RenameMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RenameMap-request>)))
  "Returns md5sum for a message object of type '<RenameMap-request>"
  "31cf40e688b10ff9fb9ee4663b8a4012")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RenameMap-request)))
  "Returns md5sum for a message object of type 'RenameMap-request"
  "31cf40e688b10ff9fb9ee4663b8a4012")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RenameMap-request>)))
  "Returns full string definition for message of type '<RenameMap-request>"
  (cl:format cl:nil "## Service to change the name of an existing map~%~%string current_map_name~%string new_map_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RenameMap-request)))
  "Returns full string definition for message of type 'RenameMap-request"
  (cl:format cl:nil "## Service to change the name of an existing map~%~%string current_map_name~%string new_map_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RenameMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'current_map_name))
     4 (cl:length (cl:slot-value msg 'new_map_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RenameMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RenameMap-request
    (cl:cons ':current_map_name (current_map_name msg))
    (cl:cons ':new_map_name (new_map_name msg))
))
;//! \htmlinclude RenameMap-response.msg.html

(cl:defclass <RenameMap-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass RenameMap-response (<RenameMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RenameMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RenameMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<RenameMap-response> is deprecated: use pal_navigation_msgs-srv:RenameMap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RenameMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:success-val is deprecated.  Use pal_navigation_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RenameMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:message-val is deprecated.  Use pal_navigation_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RenameMap-response>) ostream)
  "Serializes a message object of type '<RenameMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RenameMap-response>) istream)
  "Deserializes a message object of type '<RenameMap-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RenameMap-response>)))
  "Returns string type for a service object of type '<RenameMap-response>"
  "pal_navigation_msgs/RenameMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RenameMap-response)))
  "Returns string type for a service object of type 'RenameMap-response"
  "pal_navigation_msgs/RenameMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RenameMap-response>)))
  "Returns md5sum for a message object of type '<RenameMap-response>"
  "31cf40e688b10ff9fb9ee4663b8a4012")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RenameMap-response)))
  "Returns md5sum for a message object of type 'RenameMap-response"
  "31cf40e688b10ff9fb9ee4663b8a4012")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RenameMap-response>)))
  "Returns full string definition for message of type '<RenameMap-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RenameMap-response)))
  "Returns full string definition for message of type 'RenameMap-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RenameMap-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RenameMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RenameMap-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RenameMap)))
  'RenameMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RenameMap)))
  'RenameMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RenameMap)))
  "Returns string type for a service object of type '<RenameMap>"
  "pal_navigation_msgs/RenameMap")