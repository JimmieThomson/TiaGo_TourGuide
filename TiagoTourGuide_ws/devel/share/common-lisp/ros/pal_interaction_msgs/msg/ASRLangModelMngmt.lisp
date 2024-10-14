; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude ASRLangModelMngmt.msg.html

(cl:defclass <ASRLangModelMngmt> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (modelName
    :reader modelName
    :initarg :modelName
    :type cl:string
    :initform ""))
)

(cl:defclass ASRLangModelMngmt (<ASRLangModelMngmt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ASRLangModelMngmt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ASRLangModelMngmt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<ASRLangModelMngmt> is deprecated: use pal_interaction_msgs-msg:ASRLangModelMngmt instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <ASRLangModelMngmt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:action-val is deprecated.  Use pal_interaction_msgs-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'modelName-val :lambda-list '(m))
(cl:defmethod modelName-val ((m <ASRLangModelMngmt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:modelName-val is deprecated.  Use pal_interaction_msgs-msg:modelName instead.")
  (modelName m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ASRLangModelMngmt>)))
    "Constants for message type '<ASRLangModelMngmt>"
  '((:ENABLE . 1)
    (:DISABLE . 2)
    (:LOAD . 3)
    (:UNLOAD . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ASRLangModelMngmt)))
    "Constants for message type 'ASRLangModelMngmt"
  '((:ENABLE . 1)
    (:DISABLE . 2)
    (:LOAD . 3)
    (:UNLOAD . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ASRLangModelMngmt>) ostream)
  "Serializes a message object of type '<ASRLangModelMngmt>"
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'modelName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'modelName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ASRLangModelMngmt>) istream)
  "Deserializes a message object of type '<ASRLangModelMngmt>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'modelName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'modelName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ASRLangModelMngmt>)))
  "Returns string type for a message object of type '<ASRLangModelMngmt>"
  "pal_interaction_msgs/ASRLangModelMngmt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ASRLangModelMngmt)))
  "Returns string type for a message object of type 'ASRLangModelMngmt"
  "pal_interaction_msgs/ASRLangModelMngmt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ASRLangModelMngmt>)))
  "Returns md5sum for a message object of type '<ASRLangModelMngmt>"
  "b14d87d721997c14475b6bf74e854ad8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ASRLangModelMngmt)))
  "Returns md5sum for a message object of type 'ASRLangModelMngmt"
  "b14d87d721997c14475b6bf74e854ad8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ASRLangModelMngmt>)))
  "Returns full string definition for message of type '<ASRLangModelMngmt>"
  (cl:format cl:nil "# This message is to be used in the ASR service to manage the grammars~%# makes possible to enable/disable, load/unload grammars.~%~%~%# Types of action~%int8 ENABLE = 1~%int8 DISABLE = 2~%int8 LOAD = 3~%int8 UNLOAD = 4~%~%# Message variables~%# Type of action requested~%int8 action~%~%# Name of the grammar to actuate on.~%string modelName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ASRLangModelMngmt)))
  "Returns full string definition for message of type 'ASRLangModelMngmt"
  (cl:format cl:nil "# This message is to be used in the ASR service to manage the grammars~%# makes possible to enable/disable, load/unload grammars.~%~%~%# Types of action~%int8 ENABLE = 1~%int8 DISABLE = 2~%int8 LOAD = 3~%int8 UNLOAD = 4~%~%# Message variables~%# Type of action requested~%int8 action~%~%# Name of the grammar to actuate on.~%string modelName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ASRLangModelMngmt>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'modelName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ASRLangModelMngmt>))
  "Converts a ROS message object to a list"
  (cl:list 'ASRLangModelMngmt
    (cl:cons ':action (action msg))
    (cl:cons ':modelName (modelName msg))
))
