; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-srv)


;//! \htmlinclude recognizerService-request.msg.html

(cl:defclass <recognizerService-request> (roslisp-msg-protocol:ros-message)
  ((asrupdate
    :reader asrupdate
    :initarg :asrupdate
    :type pal_interaction_msgs-msg:asrupdate
    :initform (cl:make-instance 'pal_interaction_msgs-msg:asrupdate)))
)

(cl:defclass recognizerService-request (<recognizerService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <recognizerService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'recognizerService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-srv:<recognizerService-request> is deprecated: use pal_interaction_msgs-srv:recognizerService-request instead.")))

(cl:ensure-generic-function 'asrupdate-val :lambda-list '(m))
(cl:defmethod asrupdate-val ((m <recognizerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-srv:asrupdate-val is deprecated.  Use pal_interaction_msgs-srv:asrupdate instead.")
  (asrupdate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <recognizerService-request>) ostream)
  "Serializes a message object of type '<recognizerService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'asrupdate) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <recognizerService-request>) istream)
  "Deserializes a message object of type '<recognizerService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'asrupdate) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<recognizerService-request>)))
  "Returns string type for a service object of type '<recognizerService-request>"
  "pal_interaction_msgs/recognizerServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'recognizerService-request)))
  "Returns string type for a service object of type 'recognizerService-request"
  "pal_interaction_msgs/recognizerServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<recognizerService-request>)))
  "Returns md5sum for a message object of type '<recognizerService-request>"
  "cfe4314795c9fe304282fdbecf5be6ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'recognizerService-request)))
  "Returns md5sum for a message object of type 'recognizerService-request"
  "cfe4314795c9fe304282fdbecf5be6ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<recognizerService-request>)))
  "Returns full string definition for message of type '<recognizerService-request>"
  (cl:format cl:nil "pal_interaction_msgs/asrupdate asrupdate~%~%================================================================================~%MSG: pal_interaction_msgs/asrupdate~%# V.1.0 of the ASR ROS API for the servie.~%# just has the language and grammar to enable, the acoustic models to be used,~%# and whether we want to activate or deactivate the recognizer.~%string language~%string enable_grammar~%string disable_grammar~%string acousticenv~%bool active~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'recognizerService-request)))
  "Returns full string definition for message of type 'recognizerService-request"
  (cl:format cl:nil "pal_interaction_msgs/asrupdate asrupdate~%~%================================================================================~%MSG: pal_interaction_msgs/asrupdate~%# V.1.0 of the ASR ROS API for the servie.~%# just has the language and grammar to enable, the acoustic models to be used,~%# and whether we want to activate or deactivate the recognizer.~%string language~%string enable_grammar~%string disable_grammar~%string acousticenv~%bool active~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <recognizerService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'asrupdate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <recognizerService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'recognizerService-request
    (cl:cons ':asrupdate (asrupdate msg))
))
;//! \htmlinclude recognizerService-response.msg.html

(cl:defclass <recognizerService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass recognizerService-response (<recognizerService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <recognizerService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'recognizerService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-srv:<recognizerService-response> is deprecated: use pal_interaction_msgs-srv:recognizerService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <recognizerService-response>) ostream)
  "Serializes a message object of type '<recognizerService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <recognizerService-response>) istream)
  "Deserializes a message object of type '<recognizerService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<recognizerService-response>)))
  "Returns string type for a service object of type '<recognizerService-response>"
  "pal_interaction_msgs/recognizerServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'recognizerService-response)))
  "Returns string type for a service object of type 'recognizerService-response"
  "pal_interaction_msgs/recognizerServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<recognizerService-response>)))
  "Returns md5sum for a message object of type '<recognizerService-response>"
  "cfe4314795c9fe304282fdbecf5be6ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'recognizerService-response)))
  "Returns md5sum for a message object of type 'recognizerService-response"
  "cfe4314795c9fe304282fdbecf5be6ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<recognizerService-response>)))
  "Returns full string definition for message of type '<recognizerService-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'recognizerService-response)))
  "Returns full string definition for message of type 'recognizerService-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <recognizerService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <recognizerService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'recognizerService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'recognizerService)))
  'recognizerService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'recognizerService)))
  'recognizerService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'recognizerService)))
  "Returns string type for a service object of type '<recognizerService>"
  "pal_interaction_msgs/recognizerService")