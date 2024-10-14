; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude ASRLanguage.msg.html

(cl:defclass <ASRLanguage> (roslisp-msg-protocol:ros-message)
  ((language
    :reader language
    :initarg :language
    :type cl:string
    :initform ""))
)

(cl:defclass ASRLanguage (<ASRLanguage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ASRLanguage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ASRLanguage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<ASRLanguage> is deprecated: use pal_interaction_msgs-msg:ASRLanguage instead.")))

(cl:ensure-generic-function 'language-val :lambda-list '(m))
(cl:defmethod language-val ((m <ASRLanguage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:language-val is deprecated.  Use pal_interaction_msgs-msg:language instead.")
  (language m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ASRLanguage>) ostream)
  "Serializes a message object of type '<ASRLanguage>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'language))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'language))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ASRLanguage>) istream)
  "Deserializes a message object of type '<ASRLanguage>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'language) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'language) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ASRLanguage>)))
  "Returns string type for a message object of type '<ASRLanguage>"
  "pal_interaction_msgs/ASRLanguage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ASRLanguage)))
  "Returns string type for a message object of type 'ASRLanguage"
  "pal_interaction_msgs/ASRLanguage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ASRLanguage>)))
  "Returns md5sum for a message object of type '<ASRLanguage>"
  "f9264c5bffd188939e827e658af68a0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ASRLanguage)))
  "Returns md5sum for a message object of type 'ASRLanguage"
  "f9264c5bffd188939e827e658af68a0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ASRLanguage>)))
  "Returns full string definition for message of type '<ASRLanguage>"
  (cl:format cl:nil "# This message is to indicate the language~%# that has to be set in the speech recognizer~%string language~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ASRLanguage)))
  "Returns full string definition for message of type 'ASRLanguage"
  (cl:format cl:nil "# This message is to indicate the language~%# that has to be set in the speech recognizer~%string language~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ASRLanguage>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'language))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ASRLanguage>))
  "Converts a ROS message object to a list"
  (cl:list 'ASRLanguage
    (cl:cons ':language (language msg))
))
