; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude I18nText.msg.html

(cl:defclass <I18nText> (roslisp-msg-protocol:ros-message)
  ((section
    :reader section
    :initarg :section
    :type cl:string
    :initform "")
   (key
    :reader key
    :initarg :key
    :type cl:string
    :initform "")
   (lang_id
    :reader lang_id
    :initarg :lang_id
    :type cl:string
    :initform "")
   (arguments
    :reader arguments
    :initarg :arguments
    :type (cl:vector pal_interaction_msgs-msg:I18nArgument)
   :initform (cl:make-array 0 :element-type 'pal_interaction_msgs-msg:I18nArgument :initial-element (cl:make-instance 'pal_interaction_msgs-msg:I18nArgument))))
)

(cl:defclass I18nText (<I18nText>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <I18nText>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'I18nText)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<I18nText> is deprecated: use pal_interaction_msgs-msg:I18nText instead.")))

(cl:ensure-generic-function 'section-val :lambda-list '(m))
(cl:defmethod section-val ((m <I18nText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:section-val is deprecated.  Use pal_interaction_msgs-msg:section instead.")
  (section m))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <I18nText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:key-val is deprecated.  Use pal_interaction_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'lang_id-val :lambda-list '(m))
(cl:defmethod lang_id-val ((m <I18nText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:lang_id-val is deprecated.  Use pal_interaction_msgs-msg:lang_id instead.")
  (lang_id m))

(cl:ensure-generic-function 'arguments-val :lambda-list '(m))
(cl:defmethod arguments-val ((m <I18nText>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:arguments-val is deprecated.  Use pal_interaction_msgs-msg:arguments instead.")
  (arguments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <I18nText>) ostream)
  "Serializes a message object of type '<I18nText>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'section))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'section))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lang_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lang_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arguments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'arguments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <I18nText>) istream)
  "Deserializes a message object of type '<I18nText>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'section) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'section) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lang_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lang_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arguments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arguments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_interaction_msgs-msg:I18nArgument))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<I18nText>)))
  "Returns string type for a message object of type '<I18nText>"
  "pal_interaction_msgs/I18nText")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'I18nText)))
  "Returns string type for a message object of type 'I18nText"
  "pal_interaction_msgs/I18nText")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<I18nText>)))
  "Returns md5sum for a message object of type '<I18nText>"
  "855c0cd82eb6837b039ea45087975cc2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'I18nText)))
  "Returns md5sum for a message object of type 'I18nText"
  "855c0cd82eb6837b039ea45087975cc2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<I18nText>)))
  "Returns full string definition for message of type '<I18nText>"
  (cl:format cl:nil "# section/key is used as in examples in the pal_tts_cfg pkg.~%string section~%string key~%~%# language id, must be speficied using RFC 3066~%string lang_id~%~%# arguments contain the values by which ~%# occurrences of '%s' will be replaced in the ~%# main text.~%# This only supports up to 2 arguments and no recursion.~%# However, recursion and more argumnents are~%# planned to be supported in the future.~%I18nArgument[] arguments~%~%================================================================================~%MSG: pal_interaction_msgs/I18nArgument~%# section key, override the value in expanded.~%# Use expanded for text that do not need expansion.~%# Please note that expanded here will not be translated ~%# to any language.~%~%string section~%string key~%string expanded~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'I18nText)))
  "Returns full string definition for message of type 'I18nText"
  (cl:format cl:nil "# section/key is used as in examples in the pal_tts_cfg pkg.~%string section~%string key~%~%# language id, must be speficied using RFC 3066~%string lang_id~%~%# arguments contain the values by which ~%# occurrences of '%s' will be replaced in the ~%# main text.~%# This only supports up to 2 arguments and no recursion.~%# However, recursion and more argumnents are~%# planned to be supported in the future.~%I18nArgument[] arguments~%~%================================================================================~%MSG: pal_interaction_msgs/I18nArgument~%# section key, override the value in expanded.~%# Use expanded for text that do not need expansion.~%# Please note that expanded here will not be translated ~%# to any language.~%~%string section~%string key~%string expanded~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <I18nText>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'section))
     4 (cl:length (cl:slot-value msg 'key))
     4 (cl:length (cl:slot-value msg 'lang_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arguments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <I18nText>))
  "Converts a ROS message object to a list"
  (cl:list 'I18nText
    (cl:cons ':section (section msg))
    (cl:cons ':key (key msg))
    (cl:cons ':lang_id (lang_id msg))
    (cl:cons ':arguments (arguments msg))
))
