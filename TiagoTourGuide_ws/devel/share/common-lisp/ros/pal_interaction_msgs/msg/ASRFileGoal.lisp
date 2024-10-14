; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude ASRFileGoal.msg.html

(cl:defclass <ASRFileGoal> (roslisp-msg-protocol:ros-message)
  ((file
    :reader file
    :initarg :file
    :type cl:string
    :initform "")
   (lang_id
    :reader lang_id
    :initarg :lang_id
    :type cl:string
    :initform "")
   (grammar
    :reader grammar
    :initarg :grammar
    :type cl:string
    :initform ""))
)

(cl:defclass ASRFileGoal (<ASRFileGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ASRFileGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ASRFileGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<ASRFileGoal> is deprecated: use pal_interaction_msgs-msg:ASRFileGoal instead.")))

(cl:ensure-generic-function 'file-val :lambda-list '(m))
(cl:defmethod file-val ((m <ASRFileGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:file-val is deprecated.  Use pal_interaction_msgs-msg:file instead.")
  (file m))

(cl:ensure-generic-function 'lang_id-val :lambda-list '(m))
(cl:defmethod lang_id-val ((m <ASRFileGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:lang_id-val is deprecated.  Use pal_interaction_msgs-msg:lang_id instead.")
  (lang_id m))

(cl:ensure-generic-function 'grammar-val :lambda-list '(m))
(cl:defmethod grammar-val ((m <ASRFileGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:grammar-val is deprecated.  Use pal_interaction_msgs-msg:grammar instead.")
  (grammar m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ASRFileGoal>) ostream)
  "Serializes a message object of type '<ASRFileGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lang_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lang_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'grammar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'grammar))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ASRFileGoal>) istream)
  "Deserializes a message object of type '<ASRFileGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lang_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lang_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'grammar) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'grammar) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ASRFileGoal>)))
  "Returns string type for a message object of type '<ASRFileGoal>"
  "pal_interaction_msgs/ASRFileGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ASRFileGoal)))
  "Returns string type for a message object of type 'ASRFileGoal"
  "pal_interaction_msgs/ASRFileGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ASRFileGoal>)))
  "Returns md5sum for a message object of type '<ASRFileGoal>"
  "31bee1dbb9e7542a0b7c4085dead9edf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ASRFileGoal)))
  "Returns md5sum for a message object of type 'ASRFileGoal"
  "31bee1dbb9e7542a0b7c4085dead9edf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ASRFileGoal>)))
  "Returns full string definition for message of type '<ASRFileGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%##goal definition~%# absolute path to the file to be recognised.~%# format has to be PCM 16 bits signed integer~%string file~%# language id. (i.e., en_US, es_ES, ...)~%string lang_id~%# grammar name~%string grammar~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ASRFileGoal)))
  "Returns full string definition for message of type 'ASRFileGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%##goal definition~%# absolute path to the file to be recognised.~%# format has to be PCM 16 bits signed integer~%string file~%# language id. (i.e., en_US, es_ES, ...)~%string lang_id~%# grammar name~%string grammar~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ASRFileGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file))
     4 (cl:length (cl:slot-value msg 'lang_id))
     4 (cl:length (cl:slot-value msg 'grammar))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ASRFileGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ASRFileGoal
    (cl:cons ':file (file msg))
    (cl:cons ':lang_id (lang_id msg))
    (cl:cons ':grammar (grammar msg))
))
