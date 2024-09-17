; Auto-generated. Do not edit!


(cl:in-package pal_behaviour_msgs-srv)


;//! \htmlinclude BehaviourEvent-request.msg.html

(cl:defclass <BehaviourEvent-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (arguments
    :reader arguments
    :initarg :arguments
    :type (cl:vector pal_behaviour_msgs-msg:BehaviourArgument)
   :initform (cl:make-array 0 :element-type 'pal_behaviour_msgs-msg:BehaviourArgument :initial-element (cl:make-instance 'pal_behaviour_msgs-msg:BehaviourArgument))))
)

(cl:defclass BehaviourEvent-request (<BehaviourEvent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BehaviourEvent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BehaviourEvent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_behaviour_msgs-srv:<BehaviourEvent-request> is deprecated: use pal_behaviour_msgs-srv:BehaviourEvent-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <BehaviourEvent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_behaviour_msgs-srv:name-val is deprecated.  Use pal_behaviour_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'arguments-val :lambda-list '(m))
(cl:defmethod arguments-val ((m <BehaviourEvent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_behaviour_msgs-srv:arguments-val is deprecated.  Use pal_behaviour_msgs-srv:arguments instead.")
  (arguments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BehaviourEvent-request>) ostream)
  "Serializes a message object of type '<BehaviourEvent-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arguments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'arguments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BehaviourEvent-request>) istream)
  "Deserializes a message object of type '<BehaviourEvent-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arguments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arguments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_behaviour_msgs-msg:BehaviourArgument))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BehaviourEvent-request>)))
  "Returns string type for a service object of type '<BehaviourEvent-request>"
  "pal_behaviour_msgs/BehaviourEventRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviourEvent-request)))
  "Returns string type for a service object of type 'BehaviourEvent-request"
  "pal_behaviour_msgs/BehaviourEventRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BehaviourEvent-request>)))
  "Returns md5sum for a message object of type '<BehaviourEvent-request>"
  "557fe6cccaf8d1e8ba1469eb6ce305c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BehaviourEvent-request)))
  "Returns md5sum for a message object of type 'BehaviourEvent-request"
  "557fe6cccaf8d1e8ba1469eb6ce305c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BehaviourEvent-request>)))
  "Returns full string definition for message of type '<BehaviourEvent-request>"
  (cl:format cl:nil "## SMC event~%~%#Header header~%~%string                                  name~%pal_behaviour_msgs/BehaviourArgument[]  arguments~%~%================================================================================~%MSG: pal_behaviour_msgs/BehaviourArgument~%## SMC event~%~%#Header header~%~%string           key~%string           value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BehaviourEvent-request)))
  "Returns full string definition for message of type 'BehaviourEvent-request"
  (cl:format cl:nil "## SMC event~%~%#Header header~%~%string                                  name~%pal_behaviour_msgs/BehaviourArgument[]  arguments~%~%================================================================================~%MSG: pal_behaviour_msgs/BehaviourArgument~%## SMC event~%~%#Header header~%~%string           key~%string           value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BehaviourEvent-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arguments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BehaviourEvent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BehaviourEvent-request
    (cl:cons ':name (name msg))
    (cl:cons ':arguments (arguments msg))
))
;//! \htmlinclude BehaviourEvent-response.msg.html

(cl:defclass <BehaviourEvent-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass BehaviourEvent-response (<BehaviourEvent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BehaviourEvent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BehaviourEvent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_behaviour_msgs-srv:<BehaviourEvent-response> is deprecated: use pal_behaviour_msgs-srv:BehaviourEvent-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <BehaviourEvent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_behaviour_msgs-srv:response-val is deprecated.  Use pal_behaviour_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BehaviourEvent-response>) ostream)
  "Serializes a message object of type '<BehaviourEvent-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BehaviourEvent-response>) istream)
  "Deserializes a message object of type '<BehaviourEvent-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BehaviourEvent-response>)))
  "Returns string type for a service object of type '<BehaviourEvent-response>"
  "pal_behaviour_msgs/BehaviourEventResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviourEvent-response)))
  "Returns string type for a service object of type 'BehaviourEvent-response"
  "pal_behaviour_msgs/BehaviourEventResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BehaviourEvent-response>)))
  "Returns md5sum for a message object of type '<BehaviourEvent-response>"
  "557fe6cccaf8d1e8ba1469eb6ce305c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BehaviourEvent-response)))
  "Returns md5sum for a message object of type 'BehaviourEvent-response"
  "557fe6cccaf8d1e8ba1469eb6ce305c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BehaviourEvent-response>)))
  "Returns full string definition for message of type '<BehaviourEvent-response>"
  (cl:format cl:nil "string                                  response~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BehaviourEvent-response)))
  "Returns full string definition for message of type 'BehaviourEvent-response"
  (cl:format cl:nil "string                                  response~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BehaviourEvent-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BehaviourEvent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BehaviourEvent-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BehaviourEvent)))
  'BehaviourEvent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BehaviourEvent)))
  'BehaviourEvent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviourEvent)))
  "Returns string type for a service object of type '<BehaviourEvent>"
  "pal_behaviour_msgs/BehaviourEvent")