; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude ASRSrvRequest.msg.html

(cl:defclass <ASRSrvRequest> (roslisp-msg-protocol:ros-message)
  ((requests
    :reader requests
    :initarg :requests
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (activation
    :reader activation
    :initarg :activation
    :type pal_interaction_msgs-msg:ASRActivation
    :initform (cl:make-instance 'pal_interaction_msgs-msg:ASRActivation))
   (model
    :reader model
    :initarg :model
    :type pal_interaction_msgs-msg:ASRLangModelMngmt
    :initform (cl:make-instance 'pal_interaction_msgs-msg:ASRLangModelMngmt))
   (lang
    :reader lang
    :initarg :lang
    :type pal_interaction_msgs-msg:ASRLanguage
    :initform (cl:make-instance 'pal_interaction_msgs-msg:ASRLanguage)))
)

(cl:defclass ASRSrvRequest (<ASRSrvRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ASRSrvRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ASRSrvRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<ASRSrvRequest> is deprecated: use pal_interaction_msgs-msg:ASRSrvRequest instead.")))

(cl:ensure-generic-function 'requests-val :lambda-list '(m))
(cl:defmethod requests-val ((m <ASRSrvRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:requests-val is deprecated.  Use pal_interaction_msgs-msg:requests instead.")
  (requests m))

(cl:ensure-generic-function 'activation-val :lambda-list '(m))
(cl:defmethod activation-val ((m <ASRSrvRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:activation-val is deprecated.  Use pal_interaction_msgs-msg:activation instead.")
  (activation m))

(cl:ensure-generic-function 'model-val :lambda-list '(m))
(cl:defmethod model-val ((m <ASRSrvRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:model-val is deprecated.  Use pal_interaction_msgs-msg:model instead.")
  (model m))

(cl:ensure-generic-function 'lang-val :lambda-list '(m))
(cl:defmethod lang-val ((m <ASRSrvRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:lang-val is deprecated.  Use pal_interaction_msgs-msg:lang instead.")
  (lang m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ASRSrvRequest>)))
    "Constants for message type '<ASRSrvRequest>"
  '((:ACTIVATION . 1)
    (:GRAMMAR . 2)
    (:LANGUAGE . 3)
    (:STATUS . 4)
    (:KWSPOTTING . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ASRSrvRequest)))
    "Constants for message type 'ASRSrvRequest"
  '((:ACTIVATION . 1)
    (:GRAMMAR . 2)
    (:LANGUAGE . 3)
    (:STATUS . 4)
    (:KWSPOTTING . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ASRSrvRequest>) ostream)
  "Serializes a message object of type '<ASRSrvRequest>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'requests))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'requests))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'activation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'model) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lang) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ASRSrvRequest>) istream)
  "Deserializes a message object of type '<ASRSrvRequest>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'requests) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'requests)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'activation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'model) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lang) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ASRSrvRequest>)))
  "Returns string type for a message object of type '<ASRSrvRequest>"
  "pal_interaction_msgs/ASRSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ASRSrvRequest)))
  "Returns string type for a message object of type 'ASRSrvRequest"
  "pal_interaction_msgs/ASRSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ASRSrvRequest>)))
  "Returns md5sum for a message object of type '<ASRSrvRequest>"
  "18340721947db95a89c5d69f8dcbb2cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ASRSrvRequest)))
  "Returns md5sum for a message object of type 'ASRSrvRequest"
  "18340721947db95a89c5d69f8dcbb2cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ASRSrvRequest>)))
  "Returns full string definition for message of type '<ASRSrvRequest>"
  (cl:format cl:nil "# Request messages for the recognizer service.~%# It is possible to request and activate task, ~%# a grammar management task and language change or just~%# request the current status.~%~%# Type of request list~%int8 ACTIVATION = 1~%int8 GRAMMAR = 2~%int8 LANGUAGE = 3~%int8 STATUS = 4~%int8 KWSPOTTING = 5~%~%# Message variables~%# list of requests types (several requests can be send in one single message)~%int8[] requests~%~%# Information related to each possible request~%# except for status that does not need any additional info.~%ASRActivation activation~%ASRLangModelMngmt model~%ASRLanguage lang~%~%================================================================================~%MSG: pal_interaction_msgs/ASRActivation~%# Message that can be used to send activation commands to the speech recognizer.~%# It is possible to activate/deactivate or pause/resume the recognizer with these commands.~%# action list~%int8 ACTIVATE = 1~%int8 DEACTIVATE = 2~%int8 PAUSE = 3~%int8 RESUME = 4~%int8 CALIBRATE = 5~%~%# Message variables~%int8 action~%~%~%================================================================================~%MSG: pal_interaction_msgs/ASRLangModelMngmt~%# This message is to be used in the ASR service to manage the grammars~%# makes possible to enable/disable, load/unload grammars.~%~%~%# Types of action~%int8 ENABLE = 1~%int8 DISABLE = 2~%int8 LOAD = 3~%int8 UNLOAD = 4~%~%# Message variables~%# Type of action requested~%int8 action~%~%# Name of the grammar to actuate on.~%string modelName~%~%================================================================================~%MSG: pal_interaction_msgs/ASRLanguage~%# This message is to indicate the language~%# that has to be set in the speech recognizer~%string language~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ASRSrvRequest)))
  "Returns full string definition for message of type 'ASRSrvRequest"
  (cl:format cl:nil "# Request messages for the recognizer service.~%# It is possible to request and activate task, ~%# a grammar management task and language change or just~%# request the current status.~%~%# Type of request list~%int8 ACTIVATION = 1~%int8 GRAMMAR = 2~%int8 LANGUAGE = 3~%int8 STATUS = 4~%int8 KWSPOTTING = 5~%~%# Message variables~%# list of requests types (several requests can be send in one single message)~%int8[] requests~%~%# Information related to each possible request~%# except for status that does not need any additional info.~%ASRActivation activation~%ASRLangModelMngmt model~%ASRLanguage lang~%~%================================================================================~%MSG: pal_interaction_msgs/ASRActivation~%# Message that can be used to send activation commands to the speech recognizer.~%# It is possible to activate/deactivate or pause/resume the recognizer with these commands.~%# action list~%int8 ACTIVATE = 1~%int8 DEACTIVATE = 2~%int8 PAUSE = 3~%int8 RESUME = 4~%int8 CALIBRATE = 5~%~%# Message variables~%int8 action~%~%~%================================================================================~%MSG: pal_interaction_msgs/ASRLangModelMngmt~%# This message is to be used in the ASR service to manage the grammars~%# makes possible to enable/disable, load/unload grammars.~%~%~%# Types of action~%int8 ENABLE = 1~%int8 DISABLE = 2~%int8 LOAD = 3~%int8 UNLOAD = 4~%~%# Message variables~%# Type of action requested~%int8 action~%~%# Name of the grammar to actuate on.~%string modelName~%~%================================================================================~%MSG: pal_interaction_msgs/ASRLanguage~%# This message is to indicate the language~%# that has to be set in the speech recognizer~%string language~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ASRSrvRequest>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'requests) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'activation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'model))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lang))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ASRSrvRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'ASRSrvRequest
    (cl:cons ':requests (requests msg))
    (cl:cons ':activation (activation msg))
    (cl:cons ':model (model msg))
    (cl:cons ':lang (lang msg))
))
