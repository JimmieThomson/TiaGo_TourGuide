; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-srv)


;//! \htmlinclude ASRService-request.msg.html

(cl:defclass <ASRService-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type pal_interaction_msgs-msg:ASRSrvRequest
    :initform (cl:make-instance 'pal_interaction_msgs-msg:ASRSrvRequest)))
)

(cl:defclass ASRService-request (<ASRService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ASRService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ASRService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-srv:<ASRService-request> is deprecated: use pal_interaction_msgs-srv:ASRService-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <ASRService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-srv:request-val is deprecated.  Use pal_interaction_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ASRService-request>) ostream)
  "Serializes a message object of type '<ASRService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ASRService-request>) istream)
  "Deserializes a message object of type '<ASRService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ASRService-request>)))
  "Returns string type for a service object of type '<ASRService-request>"
  "pal_interaction_msgs/ASRServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ASRService-request)))
  "Returns string type for a service object of type 'ASRService-request"
  "pal_interaction_msgs/ASRServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ASRService-request>)))
  "Returns md5sum for a message object of type '<ASRService-request>"
  "f43b49712181a29a41dc6f7687806c53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ASRService-request)))
  "Returns md5sum for a message object of type 'ASRService-request"
  "f43b49712181a29a41dc6f7687806c53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ASRService-request>)))
  "Returns full string definition for message of type '<ASRService-request>"
  (cl:format cl:nil "pal_interaction_msgs/ASRSrvRequest request~%~%================================================================================~%MSG: pal_interaction_msgs/ASRSrvRequest~%# Request messages for the recognizer service.~%# It is possible to request and activate task, ~%# a grammar management task and language change or just~%# request the current status.~%~%# Type of request list~%int8 ACTIVATION = 1~%int8 GRAMMAR = 2~%int8 LANGUAGE = 3~%int8 STATUS = 4~%int8 KWSPOTTING = 5~%~%# Message variables~%# list of requests types (several requests can be send in one single message)~%int8[] requests~%~%# Information related to each possible request~%# except for status that does not need any additional info.~%ASRActivation activation~%ASRLangModelMngmt model~%ASRLanguage lang~%~%================================================================================~%MSG: pal_interaction_msgs/ASRActivation~%# Message that can be used to send activation commands to the speech recognizer.~%# It is possible to activate/deactivate or pause/resume the recognizer with these commands.~%# action list~%int8 ACTIVATE = 1~%int8 DEACTIVATE = 2~%int8 PAUSE = 3~%int8 RESUME = 4~%int8 CALIBRATE = 5~%~%# Message variables~%int8 action~%~%~%================================================================================~%MSG: pal_interaction_msgs/ASRLangModelMngmt~%# This message is to be used in the ASR service to manage the grammars~%# makes possible to enable/disable, load/unload grammars.~%~%~%# Types of action~%int8 ENABLE = 1~%int8 DISABLE = 2~%int8 LOAD = 3~%int8 UNLOAD = 4~%~%# Message variables~%# Type of action requested~%int8 action~%~%# Name of the grammar to actuate on.~%string modelName~%~%================================================================================~%MSG: pal_interaction_msgs/ASRLanguage~%# This message is to indicate the language~%# that has to be set in the speech recognizer~%string language~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ASRService-request)))
  "Returns full string definition for message of type 'ASRService-request"
  (cl:format cl:nil "pal_interaction_msgs/ASRSrvRequest request~%~%================================================================================~%MSG: pal_interaction_msgs/ASRSrvRequest~%# Request messages for the recognizer service.~%# It is possible to request and activate task, ~%# a grammar management task and language change or just~%# request the current status.~%~%# Type of request list~%int8 ACTIVATION = 1~%int8 GRAMMAR = 2~%int8 LANGUAGE = 3~%int8 STATUS = 4~%int8 KWSPOTTING = 5~%~%# Message variables~%# list of requests types (several requests can be send in one single message)~%int8[] requests~%~%# Information related to each possible request~%# except for status that does not need any additional info.~%ASRActivation activation~%ASRLangModelMngmt model~%ASRLanguage lang~%~%================================================================================~%MSG: pal_interaction_msgs/ASRActivation~%# Message that can be used to send activation commands to the speech recognizer.~%# It is possible to activate/deactivate or pause/resume the recognizer with these commands.~%# action list~%int8 ACTIVATE = 1~%int8 DEACTIVATE = 2~%int8 PAUSE = 3~%int8 RESUME = 4~%int8 CALIBRATE = 5~%~%# Message variables~%int8 action~%~%~%================================================================================~%MSG: pal_interaction_msgs/ASRLangModelMngmt~%# This message is to be used in the ASR service to manage the grammars~%# makes possible to enable/disable, load/unload grammars.~%~%~%# Types of action~%int8 ENABLE = 1~%int8 DISABLE = 2~%int8 LOAD = 3~%int8 UNLOAD = 4~%~%# Message variables~%# Type of action requested~%int8 action~%~%# Name of the grammar to actuate on.~%string modelName~%~%================================================================================~%MSG: pal_interaction_msgs/ASRLanguage~%# This message is to indicate the language~%# that has to be set in the speech recognizer~%string language~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ASRService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ASRService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ASRService-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude ASRService-response.msg.html

(cl:defclass <ASRService-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type pal_interaction_msgs-msg:ASRSrvResponse
    :initform (cl:make-instance 'pal_interaction_msgs-msg:ASRSrvResponse)))
)

(cl:defclass ASRService-response (<ASRService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ASRService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ASRService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-srv:<ASRService-response> is deprecated: use pal_interaction_msgs-srv:ASRService-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <ASRService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-srv:response-val is deprecated.  Use pal_interaction_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ASRService-response>) ostream)
  "Serializes a message object of type '<ASRService-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ASRService-response>) istream)
  "Deserializes a message object of type '<ASRService-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ASRService-response>)))
  "Returns string type for a service object of type '<ASRService-response>"
  "pal_interaction_msgs/ASRServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ASRService-response)))
  "Returns string type for a service object of type 'ASRService-response"
  "pal_interaction_msgs/ASRServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ASRService-response>)))
  "Returns md5sum for a message object of type '<ASRService-response>"
  "f43b49712181a29a41dc6f7687806c53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ASRService-response)))
  "Returns md5sum for a message object of type 'ASRService-response"
  "f43b49712181a29a41dc6f7687806c53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ASRService-response>)))
  "Returns full string definition for message of type '<ASRService-response>"
  (cl:format cl:nil "pal_interaction_msgs/ASRSrvResponse response~%~%~%================================================================================~%MSG: pal_interaction_msgs/ASRSrvResponse~%# The status of the ASR with additional error or warning information~%ASRStatus status~%string error_msg~%string warn_msg~%~%================================================================================~%MSG: pal_interaction_msgs/ASRStatus~%# The status of the ASR~%# if it is active then active=true~%bool active~%~%# the current language ~%string language~%~%# the current enabled grammar~%string enabled_grammar~%~%# the current acoustic models~%string acoustic_env~%~%# A description of the audio device the ~%# recognizer is taking audio from.~%AudioDeviceDescription device~%~%================================================================================~%MSG: pal_interaction_msgs/AudioDeviceDescription~%# Description of an audio device.~%~%int8 SIGNED = 0~%int8 UNSIGNED = 1~%~%~%# name of the device (usually a portaudio name)~%string device_name~%~%# sample rate of the acquired audio signal~%uint32 sample_rate~%~%# sample size in bits~%int8 sample_size~%~%# format can be SIGNED or UNSIGNED~%int8 format~%~%# buffer size used to acquire data.~%uint16 buffer_size~%~%# number of recorded channels~%int8 number_of_channels~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ASRService-response)))
  "Returns full string definition for message of type 'ASRService-response"
  (cl:format cl:nil "pal_interaction_msgs/ASRSrvResponse response~%~%~%================================================================================~%MSG: pal_interaction_msgs/ASRSrvResponse~%# The status of the ASR with additional error or warning information~%ASRStatus status~%string error_msg~%string warn_msg~%~%================================================================================~%MSG: pal_interaction_msgs/ASRStatus~%# The status of the ASR~%# if it is active then active=true~%bool active~%~%# the current language ~%string language~%~%# the current enabled grammar~%string enabled_grammar~%~%# the current acoustic models~%string acoustic_env~%~%# A description of the audio device the ~%# recognizer is taking audio from.~%AudioDeviceDescription device~%~%================================================================================~%MSG: pal_interaction_msgs/AudioDeviceDescription~%# Description of an audio device.~%~%int8 SIGNED = 0~%int8 UNSIGNED = 1~%~%~%# name of the device (usually a portaudio name)~%string device_name~%~%# sample rate of the acquired audio signal~%uint32 sample_rate~%~%# sample size in bits~%int8 sample_size~%~%# format can be SIGNED or UNSIGNED~%int8 format~%~%# buffer size used to acquire data.~%uint16 buffer_size~%~%# number of recorded channels~%int8 number_of_channels~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ASRService-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ASRService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ASRService-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ASRService)))
  'ASRService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ASRService)))
  'ASRService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ASRService)))
  "Returns string type for a service object of type '<ASRService>"
  "pal_interaction_msgs/ASRService")