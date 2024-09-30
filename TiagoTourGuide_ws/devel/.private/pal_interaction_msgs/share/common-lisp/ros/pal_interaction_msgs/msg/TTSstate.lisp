; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude TTSstate.msg.html

(cl:defclass <TTSstate> (roslisp-msg-protocol:ros-message)
  ((isSpeaking
    :reader isSpeaking
    :initarg :isSpeaking
    :type cl:boolean
    :initform cl:nil)
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass TTSstate (<TTSstate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TTSstate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TTSstate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<TTSstate> is deprecated: use pal_interaction_msgs-msg:TTSstate instead.")))

(cl:ensure-generic-function 'isSpeaking-val :lambda-list '(m))
(cl:defmethod isSpeaking-val ((m <TTSstate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:isSpeaking-val is deprecated.  Use pal_interaction_msgs-msg:isSpeaking instead.")
  (isSpeaking m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <TTSstate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:text-val is deprecated.  Use pal_interaction_msgs-msg:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TTSstate>) ostream)
  "Serializes a message object of type '<TTSstate>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSpeaking) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TTSstate>) istream)
  "Deserializes a message object of type '<TTSstate>"
    (cl:setf (cl:slot-value msg 'isSpeaking) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TTSstate>)))
  "Returns string type for a message object of type '<TTSstate>"
  "pal_interaction_msgs/TTSstate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TTSstate)))
  "Returns string type for a message object of type 'TTSstate"
  "pal_interaction_msgs/TTSstate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TTSstate>)))
  "Returns md5sum for a message object of type '<TTSstate>"
  "b3b6b5f485986278e907e9bb4f658e3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TTSstate)))
  "Returns md5sum for a message object of type 'TTSstate"
  "b3b6b5f485986278e907e9bb4f658e3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TTSstate>)))
  "Returns full string definition for message of type '<TTSstate>"
  (cl:format cl:nil "bool isSpeaking~%string text~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TTSstate)))
  "Returns full string definition for message of type 'TTSstate"
  (cl:format cl:nil "bool isSpeaking~%string text~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TTSstate>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TTSstate>))
  "Converts a ROS message object to a list"
  (cl:list 'TTSstate
    (cl:cons ':isSpeaking (isSpeaking msg))
    (cl:cons ':text (text msg))
))
