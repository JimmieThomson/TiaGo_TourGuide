; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-srv)


;//! \htmlinclude Acknowledgment-request.msg.html

(cl:defclass <Acknowledgment-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type cl:string
    :initform ""))
)

(cl:defclass Acknowledgment-request (<Acknowledgment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Acknowledgment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Acknowledgment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<Acknowledgment-request> is deprecated: use pal_navigation_msgs-srv:Acknowledgment-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <Acknowledgment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:input-val is deprecated.  Use pal_navigation_msgs-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Acknowledgment-request>) ostream)
  "Serializes a message object of type '<Acknowledgment-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'input))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Acknowledgment-request>) istream)
  "Deserializes a message object of type '<Acknowledgment-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'input) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Acknowledgment-request>)))
  "Returns string type for a service object of type '<Acknowledgment-request>"
  "pal_navigation_msgs/AcknowledgmentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Acknowledgment-request)))
  "Returns string type for a service object of type 'Acknowledgment-request"
  "pal_navigation_msgs/AcknowledgmentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Acknowledgment-request>)))
  "Returns md5sum for a message object of type '<Acknowledgment-request>"
  "9bb3bf3b2fc32ac9789d69215f5851f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Acknowledgment-request)))
  "Returns md5sum for a message object of type 'Acknowledgment-request"
  "9bb3bf3b2fc32ac9789d69215f5851f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Acknowledgment-request>)))
  "Returns full string definition for message of type '<Acknowledgment-request>"
  (cl:format cl:nil "## Acknowledgment service~%~%string input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Acknowledgment-request)))
  "Returns full string definition for message of type 'Acknowledgment-request"
  (cl:format cl:nil "## Acknowledgment service~%~%string input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Acknowledgment-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Acknowledgment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Acknowledgment-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude Acknowledgment-response.msg.html

(cl:defclass <Acknowledgment-response> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type cl:boolean
    :initform cl:nil)
   (error
    :reader error
    :initarg :error
    :type cl:string
    :initform ""))
)

(cl:defclass Acknowledgment-response (<Acknowledgment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Acknowledgment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Acknowledgment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<Acknowledgment-response> is deprecated: use pal_navigation_msgs-srv:Acknowledgment-response instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <Acknowledgment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:output-val is deprecated.  Use pal_navigation_msgs-srv:output instead.")
  (output m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <Acknowledgment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:error-val is deprecated.  Use pal_navigation_msgs-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Acknowledgment-response>) ostream)
  "Serializes a message object of type '<Acknowledgment-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'output) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Acknowledgment-response>) istream)
  "Deserializes a message object of type '<Acknowledgment-response>"
    (cl:setf (cl:slot-value msg 'output) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Acknowledgment-response>)))
  "Returns string type for a service object of type '<Acknowledgment-response>"
  "pal_navigation_msgs/AcknowledgmentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Acknowledgment-response)))
  "Returns string type for a service object of type 'Acknowledgment-response"
  "pal_navigation_msgs/AcknowledgmentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Acknowledgment-response>)))
  "Returns md5sum for a message object of type '<Acknowledgment-response>"
  "9bb3bf3b2fc32ac9789d69215f5851f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Acknowledgment-response)))
  "Returns md5sum for a message object of type 'Acknowledgment-response"
  "9bb3bf3b2fc32ac9789d69215f5851f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Acknowledgment-response>)))
  "Returns full string definition for message of type '<Acknowledgment-response>"
  (cl:format cl:nil "bool output~%string error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Acknowledgment-response)))
  "Returns full string definition for message of type 'Acknowledgment-response"
  (cl:format cl:nil "bool output~%string error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Acknowledgment-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Acknowledgment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Acknowledgment-response
    (cl:cons ':output (output msg))
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Acknowledgment)))
  'Acknowledgment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Acknowledgment)))
  'Acknowledgment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Acknowledgment)))
  "Returns string type for a service object of type '<Acknowledgment>"
  "pal_navigation_msgs/Acknowledgment")