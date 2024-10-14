; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude TtsText.msg.html

(cl:defclass <TtsText> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (lang_id
    :reader lang_id
    :initarg :lang_id
    :type cl:string
    :initform ""))
)

(cl:defclass TtsText (<TtsText>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TtsText>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TtsText)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<TtsText> is deprecated: use pal_interaction_msgs-msg:TtsText instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <TtsText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:text-val is deprecated.  Use pal_interaction_msgs-msg:text instead.")
  (text m))

(cl:ensure-generic-function 'lang_id-val :lambda-list '(m))
(cl:defmethod lang_id-val ((m <TtsText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:lang_id-val is deprecated.  Use pal_interaction_msgs-msg:lang_id instead.")
  (lang_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TtsText>) ostream)
  "Serializes a message object of type '<TtsText>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lang_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lang_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TtsText>) istream)
  "Deserializes a message object of type '<TtsText>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lang_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lang_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TtsText>)))
  "Returns string type for a message object of type '<TtsText>"
  "pal_interaction_msgs/TtsText")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TtsText)))
  "Returns string type for a message object of type 'TtsText"
  "pal_interaction_msgs/TtsText")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TtsText>)))
  "Returns md5sum for a message object of type '<TtsText>"
  "a42001bb3ccbf1a914b618f34087dc37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TtsText)))
  "Returns md5sum for a message object of type 'TtsText"
  "a42001bb3ccbf1a914b618f34087dc37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TtsText>)))
  "Returns full string definition for message of type '<TtsText>"
  (cl:format cl:nil "# this message is to specify ~%# raw text to the TTS server. ~%~%string text~%~%# Language id in RFC 3066 format~%# This field is mandatory~%string lang_id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TtsText)))
  "Returns full string definition for message of type 'TtsText"
  (cl:format cl:nil "# this message is to specify ~%# raw text to the TTS server. ~%~%string text~%~%# Language id in RFC 3066 format~%# This field is mandatory~%string lang_id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TtsText>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     4 (cl:length (cl:slot-value msg 'lang_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TtsText>))
  "Converts a ROS message object to a list"
  (cl:list 'TtsText
    (cl:cons ':text (text msg))
    (cl:cons ':lang_id (lang_id msg))
))
