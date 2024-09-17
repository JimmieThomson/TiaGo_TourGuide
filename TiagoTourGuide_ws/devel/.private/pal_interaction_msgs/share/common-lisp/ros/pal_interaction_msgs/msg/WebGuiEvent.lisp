; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude WebGuiEvent.msg.html

(cl:defclass <WebGuiEvent> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (arg
    :reader arg
    :initarg :arg
    :type cl:string
    :initform ""))
)

(cl:defclass WebGuiEvent (<WebGuiEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WebGuiEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WebGuiEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<WebGuiEvent> is deprecated: use pal_interaction_msgs-msg:WebGuiEvent instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <WebGuiEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:name-val is deprecated.  Use pal_interaction_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'arg-val :lambda-list '(m))
(cl:defmethod arg-val ((m <WebGuiEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:arg-val is deprecated.  Use pal_interaction_msgs-msg:arg instead.")
  (arg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WebGuiEvent>) ostream)
  "Serializes a message object of type '<WebGuiEvent>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'arg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'arg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WebGuiEvent>) istream)
  "Deserializes a message object of type '<WebGuiEvent>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'arg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WebGuiEvent>)))
  "Returns string type for a message object of type '<WebGuiEvent>"
  "pal_interaction_msgs/WebGuiEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WebGuiEvent)))
  "Returns string type for a message object of type 'WebGuiEvent"
  "pal_interaction_msgs/WebGuiEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WebGuiEvent>)))
  "Returns md5sum for a message object of type '<WebGuiEvent>"
  "bd4a90be174b9e14b06cf397c1359fb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WebGuiEvent)))
  "Returns md5sum for a message object of type 'WebGuiEvent"
  "bd4a90be174b9e14b06cf397c1359fb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WebGuiEvent>)))
  "Returns full string definition for message of type '<WebGuiEvent>"
  (cl:format cl:nil "# message used by rb_flango~%string name~%# Expected contents:~%# goTo~%# setLanguage~%string arg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WebGuiEvent)))
  "Returns full string definition for message of type 'WebGuiEvent"
  (cl:format cl:nil "# message used by rb_flango~%string name~%# Expected contents:~%# goTo~%# setLanguage~%string arg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WebGuiEvent>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'arg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WebGuiEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'WebGuiEvent
    (cl:cons ':name (name msg))
    (cl:cons ':arg (arg msg))
))
