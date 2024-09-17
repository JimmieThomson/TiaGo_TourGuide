; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-msg)


;//! \htmlinclude LedEffectViaTopicParams.msg.html

(cl:defclass <LedEffectViaTopicParams> (roslisp-msg-protocol:ros-message)
  ((topic_name
    :reader topic_name
    :initarg :topic_name
    :type cl:string
    :initform ""))
)

(cl:defclass LedEffectViaTopicParams (<LedEffectViaTopicParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedEffectViaTopicParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedEffectViaTopicParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-msg:<LedEffectViaTopicParams> is deprecated: use pal_device_msgs-msg:LedEffectViaTopicParams instead.")))

(cl:ensure-generic-function 'topic_name-val :lambda-list '(m))
(cl:defmethod topic_name-val ((m <LedEffectViaTopicParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:topic_name-val is deprecated.  Use pal_device_msgs-msg:topic_name instead.")
  (topic_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedEffectViaTopicParams>) ostream)
  "Serializes a message object of type '<LedEffectViaTopicParams>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedEffectViaTopicParams>) istream)
  "Deserializes a message object of type '<LedEffectViaTopicParams>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedEffectViaTopicParams>)))
  "Returns string type for a message object of type '<LedEffectViaTopicParams>"
  "pal_device_msgs/LedEffectViaTopicParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedEffectViaTopicParams)))
  "Returns string type for a message object of type 'LedEffectViaTopicParams"
  "pal_device_msgs/LedEffectViaTopicParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedEffectViaTopicParams>)))
  "Returns md5sum for a message object of type '<LedEffectViaTopicParams>"
  "b38cc2f19f45368c2db7867751ce95a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedEffectViaTopicParams)))
  "Returns md5sum for a message object of type 'LedEffectViaTopicParams"
  "b38cc2f19f45368c2db7867751ce95a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedEffectViaTopicParams>)))
  "Returns full string definition for message of type '<LedEffectViaTopicParams>"
  (cl:format cl:nil "#Topic name, must be of type pal_device_msgs/LedDataArray~%string topic_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedEffectViaTopicParams)))
  "Returns full string definition for message of type 'LedEffectViaTopicParams"
  (cl:format cl:nil "#Topic name, must be of type pal_device_msgs/LedDataArray~%string topic_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedEffectViaTopicParams>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedEffectViaTopicParams>))
  "Converts a ROS message object to a list"
  (cl:list 'LedEffectViaTopicParams
    (cl:cons ':topic_name (topic_name msg))
))
