; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude I18nArgument.msg.html

(cl:defclass <I18nArgument> (roslisp-msg-protocol:ros-message)
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
   (expanded
    :reader expanded
    :initarg :expanded
    :type cl:string
    :initform ""))
)

(cl:defclass I18nArgument (<I18nArgument>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <I18nArgument>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'I18nArgument)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<I18nArgument> is deprecated: use pal_interaction_msgs-msg:I18nArgument instead.")))

(cl:ensure-generic-function 'section-val :lambda-list '(m))
(cl:defmethod section-val ((m <I18nArgument>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:section-val is deprecated.  Use pal_interaction_msgs-msg:section instead.")
  (section m))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <I18nArgument>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:key-val is deprecated.  Use pal_interaction_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'expanded-val :lambda-list '(m))
(cl:defmethod expanded-val ((m <I18nArgument>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:expanded-val is deprecated.  Use pal_interaction_msgs-msg:expanded instead.")
  (expanded m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <I18nArgument>) ostream)
  "Serializes a message object of type '<I18nArgument>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'expanded))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'expanded))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <I18nArgument>) istream)
  "Deserializes a message object of type '<I18nArgument>"
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
      (cl:setf (cl:slot-value msg 'expanded) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'expanded) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<I18nArgument>)))
  "Returns string type for a message object of type '<I18nArgument>"
  "pal_interaction_msgs/I18nArgument")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'I18nArgument)))
  "Returns string type for a message object of type 'I18nArgument"
  "pal_interaction_msgs/I18nArgument")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<I18nArgument>)))
  "Returns md5sum for a message object of type '<I18nArgument>"
  "5c584e5b757794e1616ca51692089746")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'I18nArgument)))
  "Returns md5sum for a message object of type 'I18nArgument"
  "5c584e5b757794e1616ca51692089746")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<I18nArgument>)))
  "Returns full string definition for message of type '<I18nArgument>"
  (cl:format cl:nil "# section key, override the value in expanded.~%# Use expanded for text that do not need expansion.~%# Please note that expanded here will not be translated ~%# to any language.~%~%string section~%string key~%string expanded~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'I18nArgument)))
  "Returns full string definition for message of type 'I18nArgument"
  (cl:format cl:nil "# section key, override the value in expanded.~%# Use expanded for text that do not need expansion.~%# Please note that expanded here will not be translated ~%# to any language.~%~%string section~%string key~%string expanded~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <I18nArgument>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'section))
     4 (cl:length (cl:slot-value msg 'key))
     4 (cl:length (cl:slot-value msg 'expanded))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <I18nArgument>))
  "Converts a ROS message object to a list"
  (cl:list 'I18nArgument
    (cl:cons ':section (section msg))
    (cl:cons ':key (key msg))
    (cl:cons ':expanded (expanded msg))
))
