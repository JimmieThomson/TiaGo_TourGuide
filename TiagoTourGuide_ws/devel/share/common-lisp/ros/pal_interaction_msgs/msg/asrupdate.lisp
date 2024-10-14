; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude asrupdate.msg.html

(cl:defclass <asrupdate> (roslisp-msg-protocol:ros-message)
  ((language
    :reader language
    :initarg :language
    :type cl:string
    :initform "")
   (enable_grammar
    :reader enable_grammar
    :initarg :enable_grammar
    :type cl:string
    :initform "")
   (disable_grammar
    :reader disable_grammar
    :initarg :disable_grammar
    :type cl:string
    :initform "")
   (acousticenv
    :reader acousticenv
    :initarg :acousticenv
    :type cl:string
    :initform "")
   (active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass asrupdate (<asrupdate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <asrupdate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'asrupdate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<asrupdate> is deprecated: use pal_interaction_msgs-msg:asrupdate instead.")))

(cl:ensure-generic-function 'language-val :lambda-list '(m))
(cl:defmethod language-val ((m <asrupdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:language-val is deprecated.  Use pal_interaction_msgs-msg:language instead.")
  (language m))

(cl:ensure-generic-function 'enable_grammar-val :lambda-list '(m))
(cl:defmethod enable_grammar-val ((m <asrupdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:enable_grammar-val is deprecated.  Use pal_interaction_msgs-msg:enable_grammar instead.")
  (enable_grammar m))

(cl:ensure-generic-function 'disable_grammar-val :lambda-list '(m))
(cl:defmethod disable_grammar-val ((m <asrupdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:disable_grammar-val is deprecated.  Use pal_interaction_msgs-msg:disable_grammar instead.")
  (disable_grammar m))

(cl:ensure-generic-function 'acousticenv-val :lambda-list '(m))
(cl:defmethod acousticenv-val ((m <asrupdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:acousticenv-val is deprecated.  Use pal_interaction_msgs-msg:acousticenv instead.")
  (acousticenv m))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <asrupdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:active-val is deprecated.  Use pal_interaction_msgs-msg:active instead.")
  (active m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <asrupdate>) ostream)
  "Serializes a message object of type '<asrupdate>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'language))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'language))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'enable_grammar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'enable_grammar))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'disable_grammar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'disable_grammar))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'acousticenv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'acousticenv))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <asrupdate>) istream)
  "Deserializes a message object of type '<asrupdate>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'language) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'language) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enable_grammar) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'enable_grammar) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'disable_grammar) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'disable_grammar) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'acousticenv) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'acousticenv) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<asrupdate>)))
  "Returns string type for a message object of type '<asrupdate>"
  "pal_interaction_msgs/asrupdate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'asrupdate)))
  "Returns string type for a message object of type 'asrupdate"
  "pal_interaction_msgs/asrupdate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<asrupdate>)))
  "Returns md5sum for a message object of type '<asrupdate>"
  "1f28e753977d8fe335d6b968a649f1ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'asrupdate)))
  "Returns md5sum for a message object of type 'asrupdate"
  "1f28e753977d8fe335d6b968a649f1ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<asrupdate>)))
  "Returns full string definition for message of type '<asrupdate>"
  (cl:format cl:nil "# V.1.0 of the ASR ROS API for the servie.~%# just has the language and grammar to enable, the acoustic models to be used,~%# and whether we want to activate or deactivate the recognizer.~%string language~%string enable_grammar~%string disable_grammar~%string acousticenv~%bool active~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'asrupdate)))
  "Returns full string definition for message of type 'asrupdate"
  (cl:format cl:nil "# V.1.0 of the ASR ROS API for the servie.~%# just has the language and grammar to enable, the acoustic models to be used,~%# and whether we want to activate or deactivate the recognizer.~%string language~%string enable_grammar~%string disable_grammar~%string acousticenv~%bool active~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <asrupdate>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'language))
     4 (cl:length (cl:slot-value msg 'enable_grammar))
     4 (cl:length (cl:slot-value msg 'disable_grammar))
     4 (cl:length (cl:slot-value msg 'acousticenv))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <asrupdate>))
  "Converts a ROS message object to a list"
  (cl:list 'asrupdate
    (cl:cons ':language (language msg))
    (cl:cons ':enable_grammar (enable_grammar msg))
    (cl:cons ':disable_grammar (disable_grammar msg))
    (cl:cons ':acousticenv (acousticenv msg))
    (cl:cons ':active (active msg))
))
