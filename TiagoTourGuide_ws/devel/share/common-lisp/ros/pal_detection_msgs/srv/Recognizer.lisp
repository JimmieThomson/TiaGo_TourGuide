; Auto-generated. Do not edit!


(cl:in-package pal_detection_msgs-srv)


;//! \htmlinclude Recognizer-request.msg.html

(cl:defclass <Recognizer-request> (roslisp-msg-protocol:ros-message)
  ((enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil)
   (minConfidence
    :reader minConfidence
    :initarg :minConfidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass Recognizer-request (<Recognizer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Recognizer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Recognizer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-srv:<Recognizer-request> is deprecated: use pal_detection_msgs-srv:Recognizer-request instead.")))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <Recognizer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:enabled-val is deprecated.  Use pal_detection_msgs-srv:enabled instead.")
  (enabled m))

(cl:ensure-generic-function 'minConfidence-val :lambda-list '(m))
(cl:defmethod minConfidence-val ((m <Recognizer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:minConfidence-val is deprecated.  Use pal_detection_msgs-srv:minConfidence instead.")
  (minConfidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Recognizer-request>) ostream)
  "Serializes a message object of type '<Recognizer-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'minConfidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Recognizer-request>) istream)
  "Deserializes a message object of type '<Recognizer-request>"
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minConfidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Recognizer-request>)))
  "Returns string type for a service object of type '<Recognizer-request>"
  "pal_detection_msgs/RecognizerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognizer-request)))
  "Returns string type for a service object of type 'Recognizer-request"
  "pal_detection_msgs/RecognizerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Recognizer-request>)))
  "Returns md5sum for a message object of type '<Recognizer-request>"
  "1988e71091b2db6d28fdeea96cff5fb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Recognizer-request)))
  "Returns md5sum for a message object of type 'Recognizer-request"
  "1988e71091b2db6d28fdeea96cff5fb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Recognizer-request>)))
  "Returns full string definition for message of type '<Recognizer-request>"
  (cl:format cl:nil "bool enabled~%float32 minConfidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Recognizer-request)))
  "Returns full string definition for message of type 'Recognizer-request"
  (cl:format cl:nil "bool enabled~%float32 minConfidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Recognizer-request>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Recognizer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Recognizer-request
    (cl:cons ':enabled (enabled msg))
    (cl:cons ':minConfidence (minConfidence msg))
))
;//! \htmlinclude Recognizer-response.msg.html

(cl:defclass <Recognizer-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Recognizer-response (<Recognizer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Recognizer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Recognizer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-srv:<Recognizer-response> is deprecated: use pal_detection_msgs-srv:Recognizer-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Recognizer-response>) ostream)
  "Serializes a message object of type '<Recognizer-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Recognizer-response>) istream)
  "Deserializes a message object of type '<Recognizer-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Recognizer-response>)))
  "Returns string type for a service object of type '<Recognizer-response>"
  "pal_detection_msgs/RecognizerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognizer-response)))
  "Returns string type for a service object of type 'Recognizer-response"
  "pal_detection_msgs/RecognizerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Recognizer-response>)))
  "Returns md5sum for a message object of type '<Recognizer-response>"
  "1988e71091b2db6d28fdeea96cff5fb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Recognizer-response)))
  "Returns md5sum for a message object of type 'Recognizer-response"
  "1988e71091b2db6d28fdeea96cff5fb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Recognizer-response>)))
  "Returns full string definition for message of type '<Recognizer-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Recognizer-response)))
  "Returns full string definition for message of type 'Recognizer-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Recognizer-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Recognizer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Recognizer-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Recognizer)))
  'Recognizer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Recognizer)))
  'Recognizer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognizer)))
  "Returns string type for a service object of type '<Recognizer>"
  "pal_detection_msgs/Recognizer")