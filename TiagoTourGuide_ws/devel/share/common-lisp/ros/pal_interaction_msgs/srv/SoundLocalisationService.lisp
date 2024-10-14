; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-srv)


;//! \htmlinclude SoundLocalisationService-request.msg.html

(cl:defclass <SoundLocalisationService-request> (roslisp-msg-protocol:ros-message)
  ((enabling
    :reader enabling
    :initarg :enabling
    :type pal_interaction_msgs-msg:EnablingSoundLocalisation
    :initform (cl:make-instance 'pal_interaction_msgs-msg:EnablingSoundLocalisation)))
)

(cl:defclass SoundLocalisationService-request (<SoundLocalisationService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundLocalisationService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundLocalisationService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-srv:<SoundLocalisationService-request> is deprecated: use pal_interaction_msgs-srv:SoundLocalisationService-request instead.")))

(cl:ensure-generic-function 'enabling-val :lambda-list '(m))
(cl:defmethod enabling-val ((m <SoundLocalisationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-srv:enabling-val is deprecated.  Use pal_interaction_msgs-srv:enabling instead.")
  (enabling m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundLocalisationService-request>) ostream)
  "Serializes a message object of type '<SoundLocalisationService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'enabling) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundLocalisationService-request>) istream)
  "Deserializes a message object of type '<SoundLocalisationService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'enabling) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundLocalisationService-request>)))
  "Returns string type for a service object of type '<SoundLocalisationService-request>"
  "pal_interaction_msgs/SoundLocalisationServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundLocalisationService-request)))
  "Returns string type for a service object of type 'SoundLocalisationService-request"
  "pal_interaction_msgs/SoundLocalisationServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundLocalisationService-request>)))
  "Returns md5sum for a message object of type '<SoundLocalisationService-request>"
  "cc68fffb4060073f9a9cee5375c725ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundLocalisationService-request)))
  "Returns md5sum for a message object of type 'SoundLocalisationService-request"
  "cc68fffb4060073f9a9cee5375c725ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundLocalisationService-request>)))
  "Returns full string definition for message of type '<SoundLocalisationService-request>"
  (cl:format cl:nil "pal_interaction_msgs/EnablingSoundLocalisation enabling~%~%================================================================================~%MSG: pal_interaction_msgs/EnablingSoundLocalisation~%bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundLocalisationService-request)))
  "Returns full string definition for message of type 'SoundLocalisationService-request"
  (cl:format cl:nil "pal_interaction_msgs/EnablingSoundLocalisation enabling~%~%================================================================================~%MSG: pal_interaction_msgs/EnablingSoundLocalisation~%bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundLocalisationService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'enabling))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundLocalisationService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundLocalisationService-request
    (cl:cons ':enabling (enabling msg))
))
;//! \htmlinclude SoundLocalisationService-response.msg.html

(cl:defclass <SoundLocalisationService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SoundLocalisationService-response (<SoundLocalisationService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundLocalisationService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundLocalisationService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-srv:<SoundLocalisationService-response> is deprecated: use pal_interaction_msgs-srv:SoundLocalisationService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundLocalisationService-response>) ostream)
  "Serializes a message object of type '<SoundLocalisationService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundLocalisationService-response>) istream)
  "Deserializes a message object of type '<SoundLocalisationService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundLocalisationService-response>)))
  "Returns string type for a service object of type '<SoundLocalisationService-response>"
  "pal_interaction_msgs/SoundLocalisationServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundLocalisationService-response)))
  "Returns string type for a service object of type 'SoundLocalisationService-response"
  "pal_interaction_msgs/SoundLocalisationServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundLocalisationService-response>)))
  "Returns md5sum for a message object of type '<SoundLocalisationService-response>"
  "cc68fffb4060073f9a9cee5375c725ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundLocalisationService-response)))
  "Returns md5sum for a message object of type 'SoundLocalisationService-response"
  "cc68fffb4060073f9a9cee5375c725ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundLocalisationService-response>)))
  "Returns full string definition for message of type '<SoundLocalisationService-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundLocalisationService-response)))
  "Returns full string definition for message of type 'SoundLocalisationService-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundLocalisationService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundLocalisationService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundLocalisationService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SoundLocalisationService)))
  'SoundLocalisationService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SoundLocalisationService)))
  'SoundLocalisationService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundLocalisationService)))
  "Returns string type for a service object of type '<SoundLocalisationService>"
  "pal_interaction_msgs/SoundLocalisationService")