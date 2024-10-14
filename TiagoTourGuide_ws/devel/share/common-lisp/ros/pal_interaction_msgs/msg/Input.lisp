; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude Input.msg.html

(cl:defclass <Input> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (args
    :reader args
    :initarg :args
    :type (cl:vector pal_interaction_msgs-msg:InputArgument)
   :initform (cl:make-array 0 :element-type 'pal_interaction_msgs-msg:InputArgument :initial-element (cl:make-instance 'pal_interaction_msgs-msg:InputArgument))))
)

(cl:defclass Input (<Input>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Input>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Input)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<Input> is deprecated: use pal_interaction_msgs-msg:Input instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:action-val is deprecated.  Use pal_interaction_msgs-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'args-val :lambda-list '(m))
(cl:defmethod args-val ((m <Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:args-val is deprecated.  Use pal_interaction_msgs-msg:args instead.")
  (args m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Input>)))
    "Constants for message type '<Input>"
  '((:INPUT_ACCEPT . "INPUT_ACCEPT")
    (:INPUT_REJECT . "INPUT_REJECT")
    (:INPUT_CANCEL . "INPUT_CANCEL")
    (:OK . "ok")
    (:YES . "yes")
    (:NO . "no")
    (:CANCEL . "cancel")
    (:ABORT . "abort"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Input)))
    "Constants for message type 'Input"
  '((:INPUT_ACCEPT . "INPUT_ACCEPT")
    (:INPUT_REJECT . "INPUT_REJECT")
    (:INPUT_CANCEL . "INPUT_CANCEL")
    (:OK . "ok")
    (:YES . "yes")
    (:NO . "no")
    (:CANCEL . "cancel")
    (:ABORT . "abort"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Input>) ostream)
  "Serializes a message object of type '<Input>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'args))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'args))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Input>) istream)
  "Deserializes a message object of type '<Input>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'args) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'args)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_interaction_msgs-msg:InputArgument))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Input>)))
  "Returns string type for a message object of type '<Input>"
  "pal_interaction_msgs/Input")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Input)))
  "Returns string type for a message object of type 'Input"
  "pal_interaction_msgs/Input")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Input>)))
  "Returns md5sum for a message object of type '<Input>"
  "c45da4349e5b4eb0f54025571ad69bd7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Input)))
  "Returns md5sum for a message object of type 'Input"
  "c45da4349e5b4eb0f54025571ad69bd7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Input>)))
  "Returns full string definition for message of type '<Input>"
  (cl:format cl:nil "#action to perform~%string INPUT_ACCEPT = INPUT_ACCEPT~%string INPUT_REJECT = INPUT_REJECT~%string INPUT_CANCEL = INPUT_CANCEL~%~%# Deprecated in favor of the INPUT_* above. Will be removed in a future message~%string OK = ok~%string YES = yes~%string NO = no~%string CANCEL = cancel~%string ABORT = abort~%~%# Can be any of the above, and additionally any custom action you want~%string action~%~%InputArgument[] args~%~%================================================================================~%MSG: pal_interaction_msgs/InputArgument~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Input)))
  "Returns full string definition for message of type 'Input"
  (cl:format cl:nil "#action to perform~%string INPUT_ACCEPT = INPUT_ACCEPT~%string INPUT_REJECT = INPUT_REJECT~%string INPUT_CANCEL = INPUT_CANCEL~%~%# Deprecated in favor of the INPUT_* above. Will be removed in a future message~%string OK = ok~%string YES = yes~%string NO = no~%string CANCEL = cancel~%string ABORT = abort~%~%# Can be any of the above, and additionally any custom action you want~%string action~%~%InputArgument[] args~%~%================================================================================~%MSG: pal_interaction_msgs/InputArgument~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Input>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'args) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Input>))
  "Converts a ROS message object to a list"
  (cl:list 'Input
    (cl:cons ':action (action msg))
    (cl:cons ':args (args msg))
))
