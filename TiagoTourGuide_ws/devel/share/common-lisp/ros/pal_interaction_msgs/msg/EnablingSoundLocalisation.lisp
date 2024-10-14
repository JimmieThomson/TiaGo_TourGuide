; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude EnablingSoundLocalisation.msg.html

(cl:defclass <EnablingSoundLocalisation> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EnablingSoundLocalisation (<EnablingSoundLocalisation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnablingSoundLocalisation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnablingSoundLocalisation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<EnablingSoundLocalisation> is deprecated: use pal_interaction_msgs-msg:EnablingSoundLocalisation instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <EnablingSoundLocalisation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:enable-val is deprecated.  Use pal_interaction_msgs-msg:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnablingSoundLocalisation>) ostream)
  "Serializes a message object of type '<EnablingSoundLocalisation>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnablingSoundLocalisation>) istream)
  "Deserializes a message object of type '<EnablingSoundLocalisation>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnablingSoundLocalisation>)))
  "Returns string type for a message object of type '<EnablingSoundLocalisation>"
  "pal_interaction_msgs/EnablingSoundLocalisation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnablingSoundLocalisation)))
  "Returns string type for a message object of type 'EnablingSoundLocalisation"
  "pal_interaction_msgs/EnablingSoundLocalisation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnablingSoundLocalisation>)))
  "Returns md5sum for a message object of type '<EnablingSoundLocalisation>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnablingSoundLocalisation)))
  "Returns md5sum for a message object of type 'EnablingSoundLocalisation"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnablingSoundLocalisation>)))
  "Returns full string definition for message of type '<EnablingSoundLocalisation>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnablingSoundLocalisation)))
  "Returns full string definition for message of type 'EnablingSoundLocalisation"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnablingSoundLocalisation>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnablingSoundLocalisation>))
  "Converts a ROS message object to a list"
  (cl:list 'EnablingSoundLocalisation
    (cl:cons ':enable (enable msg))
))
