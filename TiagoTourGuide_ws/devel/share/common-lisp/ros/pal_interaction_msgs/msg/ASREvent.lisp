; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude ASREvent.msg.html

(cl:defclass <ASREvent> (roslisp-msg-protocol:ros-message)
  ((event_id
    :reader event_id
    :initarg :event_id
    :type cl:fixnum
    :initform 0)
   (listen_state
    :reader listen_state
    :initarg :listen_state
    :type cl:fixnum
    :initform 0)
   (recognized_utterance
    :reader recognized_utterance
    :initarg :recognized_utterance
    :type pal_interaction_msgs-msg:asrresult
    :initform (cl:make-instance 'pal_interaction_msgs-msg:asrresult))
   (active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ASREvent (<ASREvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ASREvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ASREvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<ASREvent> is deprecated: use pal_interaction_msgs-msg:ASREvent instead.")))

(cl:ensure-generic-function 'event_id-val :lambda-list '(m))
(cl:defmethod event_id-val ((m <ASREvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:event_id-val is deprecated.  Use pal_interaction_msgs-msg:event_id instead.")
  (event_id m))

(cl:ensure-generic-function 'listen_state-val :lambda-list '(m))
(cl:defmethod listen_state-val ((m <ASREvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:listen_state-val is deprecated.  Use pal_interaction_msgs-msg:listen_state instead.")
  (listen_state m))

(cl:ensure-generic-function 'recognized_utterance-val :lambda-list '(m))
(cl:defmethod recognized_utterance-val ((m <ASREvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:recognized_utterance-val is deprecated.  Use pal_interaction_msgs-msg:recognized_utterance instead.")
  (recognized_utterance m))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <ASREvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:active-val is deprecated.  Use pal_interaction_msgs-msg:active instead.")
  (active m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ASREvent>)))
    "Constants for message type '<ASREvent>"
  '((:EVENT_UNDEFINED . -1)
    (:EVENT_LISTEN_STATE . 1)
    (:EVENT_RECOGNIZED_UTT . 2)
    (:EVENT_ASR_ACTIVATION . 3)
    (:EVENT_FAILED_DECODING . 4)
    (:LISTEN_UNDEFINED . 20)
    (:LISTEN_CALIBRATION . 21)
    (:LISTEN_WAITING_FOR_SPEECH . 22)
    (:LISTEN_SPEECH_DETECTED . 23)
    (:LISTEN_END_OF_SPEECH . 24))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ASREvent)))
    "Constants for message type 'ASREvent"
  '((:EVENT_UNDEFINED . -1)
    (:EVENT_LISTEN_STATE . 1)
    (:EVENT_RECOGNIZED_UTT . 2)
    (:EVENT_ASR_ACTIVATION . 3)
    (:EVENT_FAILED_DECODING . 4)
    (:LISTEN_UNDEFINED . 20)
    (:LISTEN_CALIBRATION . 21)
    (:LISTEN_WAITING_FOR_SPEECH . 22)
    (:LISTEN_SPEECH_DETECTED . 23)
    (:LISTEN_END_OF_SPEECH . 24))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ASREvent>) ostream)
  "Serializes a message object of type '<ASREvent>"
  (cl:let* ((signed (cl:slot-value msg 'event_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'listen_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'recognized_utterance) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ASREvent>) istream)
  "Deserializes a message object of type '<ASREvent>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'event_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'listen_state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'recognized_utterance) istream)
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ASREvent>)))
  "Returns string type for a message object of type '<ASREvent>"
  "pal_interaction_msgs/ASREvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ASREvent)))
  "Returns string type for a message object of type 'ASREvent"
  "pal_interaction_msgs/ASREvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ASREvent>)))
  "Returns md5sum for a message object of type '<ASREvent>"
  "e26dacd12290ffb6af0944d5b6ae9ffd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ASREvent)))
  "Returns md5sum for a message object of type 'ASREvent"
  "e26dacd12290ffb6af0944d5b6ae9ffd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ASREvent>)))
  "Returns full string definition for message of type '<ASREvent>"
  (cl:format cl:nil "# ASR result messages used by RosRecognizerServer~%# This message are published in the ASR event topic.~%# The kind of events that are published are the following ones:~%## Event types to be published.~%int8 EVENT_UNDEFINED          = -1~%int8 EVENT_LISTEN_STATE       = 1~%int8 EVENT_RECOGNIZED_UTT     = 2~%int8 EVENT_ASR_ACTIVATION     = 3~%int8 EVENT_FAILED_DECODING    = 4~%~%# 1-> The ASR changed its listening state.~%# 2-> The ASR recognized a full uterance and published the result~%# 3-> The ASR has been activated/deactivated~%# 4-> The ASR tried to regcognise an utterance unsuccesfuly~%~%# These are the possible listening states published when event_id = LISTENING_STATE~%~%## Listen states~%int8 LISTEN_UNDEFINED = 20~%int8 LISTEN_CALIBRATION = 21~%int8 LISTEN_WAITING_FOR_SPEECH = 22~%int8 LISTEN_SPEECH_DETECTED = 23~%int8 LISTEN_END_OF_SPEECH = 24~%~%# 21-> Audio calibration is taking place~%# 22-> Some speech has been detected.~%# 23-> The ASR is waiting for someone to start speaking.~%# 24-> The end of an utterance has been found, and will start decoding it.~%~%##  Message variables~%~%# The event type published.~%int8 event_id~%~%# The listening state of the ASR~%int8 listen_state~%~%# The recognized result in case of event_id = EVENT_RECOGNIZED_UTT~%# Also it contains a best-guess in case of event_id = EVENT_FAILED_DECODING~%asrresult recognized_utterance~%~%~%# The current state of the recognizer (activated/deactivated)~%bool active~%~%================================================================================~%MSG: pal_interaction_msgs/asrresult~%## Message that containes the recognized utterance.~%## Confidence values~%int8 CONFIDENCE_UNDEFINED = -1~%int8 CONFIDENCE_POOR = 1~%int8 CONFIDENCE_LOW  = 2~%int8 CONFIDENCE_GOOD = 3~%int8 CONFIDENCE_MAX  = 4~%~%# ASR result messages used by RosRecognizerServer~%~%# text recognized~%string text~%~%# confidence with values from POOR to MAX~%int8 confidence~%~%# start and end of the recognizer uterance.~%time start~%time end~%~%# list of recognized tags~%# key value pairs of strings extracted from the text~%# given the action tags placed in the grammar.~%actiontag[] tags~%~%================================================================================~%MSG: pal_interaction_msgs/actiontag~%# Action tag contaings the key/value information genertated by parsing the recognised text with a JSGF grammar ~%~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ASREvent)))
  "Returns full string definition for message of type 'ASREvent"
  (cl:format cl:nil "# ASR result messages used by RosRecognizerServer~%# This message are published in the ASR event topic.~%# The kind of events that are published are the following ones:~%## Event types to be published.~%int8 EVENT_UNDEFINED          = -1~%int8 EVENT_LISTEN_STATE       = 1~%int8 EVENT_RECOGNIZED_UTT     = 2~%int8 EVENT_ASR_ACTIVATION     = 3~%int8 EVENT_FAILED_DECODING    = 4~%~%# 1-> The ASR changed its listening state.~%# 2-> The ASR recognized a full uterance and published the result~%# 3-> The ASR has been activated/deactivated~%# 4-> The ASR tried to regcognise an utterance unsuccesfuly~%~%# These are the possible listening states published when event_id = LISTENING_STATE~%~%## Listen states~%int8 LISTEN_UNDEFINED = 20~%int8 LISTEN_CALIBRATION = 21~%int8 LISTEN_WAITING_FOR_SPEECH = 22~%int8 LISTEN_SPEECH_DETECTED = 23~%int8 LISTEN_END_OF_SPEECH = 24~%~%# 21-> Audio calibration is taking place~%# 22-> Some speech has been detected.~%# 23-> The ASR is waiting for someone to start speaking.~%# 24-> The end of an utterance has been found, and will start decoding it.~%~%##  Message variables~%~%# The event type published.~%int8 event_id~%~%# The listening state of the ASR~%int8 listen_state~%~%# The recognized result in case of event_id = EVENT_RECOGNIZED_UTT~%# Also it contains a best-guess in case of event_id = EVENT_FAILED_DECODING~%asrresult recognized_utterance~%~%~%# The current state of the recognizer (activated/deactivated)~%bool active~%~%================================================================================~%MSG: pal_interaction_msgs/asrresult~%## Message that containes the recognized utterance.~%## Confidence values~%int8 CONFIDENCE_UNDEFINED = -1~%int8 CONFIDENCE_POOR = 1~%int8 CONFIDENCE_LOW  = 2~%int8 CONFIDENCE_GOOD = 3~%int8 CONFIDENCE_MAX  = 4~%~%# ASR result messages used by RosRecognizerServer~%~%# text recognized~%string text~%~%# confidence with values from POOR to MAX~%int8 confidence~%~%# start and end of the recognizer uterance.~%time start~%time end~%~%# list of recognized tags~%# key value pairs of strings extracted from the text~%# given the action tags placed in the grammar.~%actiontag[] tags~%~%================================================================================~%MSG: pal_interaction_msgs/actiontag~%# Action tag contaings the key/value information genertated by parsing the recognised text with a JSGF grammar ~%~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ASREvent>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'recognized_utterance))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ASREvent>))
  "Converts a ROS message object to a list"
  (cl:list 'ASREvent
    (cl:cons ':event_id (event_id msg))
    (cl:cons ':listen_state (listen_state msg))
    (cl:cons ':recognized_utterance (recognized_utterance msg))
    (cl:cons ':active (active msg))
))
