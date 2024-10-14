; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude VoiceActivity.msg.html

(cl:defclass <VoiceActivity> (roslisp-msg-protocol:ros-message)
  ((isSpeech
    :reader isSpeech
    :initarg :isSpeech
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VoiceActivity (<VoiceActivity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VoiceActivity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VoiceActivity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<VoiceActivity> is deprecated: use pal_interaction_msgs-msg:VoiceActivity instead.")))

(cl:ensure-generic-function 'isSpeech-val :lambda-list '(m))
(cl:defmethod isSpeech-val ((m <VoiceActivity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:isSpeech-val is deprecated.  Use pal_interaction_msgs-msg:isSpeech instead.")
  (isSpeech m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VoiceActivity>) ostream)
  "Serializes a message object of type '<VoiceActivity>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSpeech) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VoiceActivity>) istream)
  "Deserializes a message object of type '<VoiceActivity>"
    (cl:setf (cl:slot-value msg 'isSpeech) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VoiceActivity>)))
  "Returns string type for a message object of type '<VoiceActivity>"
  "pal_interaction_msgs/VoiceActivity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VoiceActivity)))
  "Returns string type for a message object of type 'VoiceActivity"
  "pal_interaction_msgs/VoiceActivity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VoiceActivity>)))
  "Returns md5sum for a message object of type '<VoiceActivity>"
  "6ec045a05170c3f88f25da9af745836f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VoiceActivity)))
  "Returns md5sum for a message object of type 'VoiceActivity"
  "6ec045a05170c3f88f25da9af745836f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VoiceActivity>)))
  "Returns full string definition for message of type '<VoiceActivity>"
  (cl:format cl:nil "bool isSpeech~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VoiceActivity)))
  "Returns full string definition for message of type 'VoiceActivity"
  (cl:format cl:nil "bool isSpeech~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VoiceActivity>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VoiceActivity>))
  "Converts a ROS message object to a list"
  (cl:list 'VoiceActivity
    (cl:cons ':isSpeech (isSpeech msg))
))
