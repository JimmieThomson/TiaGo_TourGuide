; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude TtsFeedback.msg.html

(cl:defclass <TtsFeedback> (roslisp-msg-protocol:ros-message)
  ((event_type
    :reader event_type
    :initarg :event_type
    :type cl:fixnum
    :initform 0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0)
   (text_said
    :reader text_said
    :initarg :text_said
    :type cl:string
    :initform "")
   (next_word
    :reader next_word
    :initarg :next_word
    :type cl:string
    :initform "")
   (viseme_id
    :reader viseme_id
    :initarg :viseme_id
    :type cl:string
    :initform "")
   (marks
    :reader marks
    :initarg :marks
    :type pal_interaction_msgs-msg:TtsMark
    :initform (cl:make-instance 'pal_interaction_msgs-msg:TtsMark)))
)

(cl:defclass TtsFeedback (<TtsFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TtsFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TtsFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<TtsFeedback> is deprecated: use pal_interaction_msgs-msg:TtsFeedback instead.")))

(cl:ensure-generic-function 'event_type-val :lambda-list '(m))
(cl:defmethod event_type-val ((m <TtsFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:event_type-val is deprecated.  Use pal_interaction_msgs-msg:event_type instead.")
  (event_type m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <TtsFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:timestamp-val is deprecated.  Use pal_interaction_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'text_said-val :lambda-list '(m))
(cl:defmethod text_said-val ((m <TtsFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:text_said-val is deprecated.  Use pal_interaction_msgs-msg:text_said instead.")
  (text_said m))

(cl:ensure-generic-function 'next_word-val :lambda-list '(m))
(cl:defmethod next_word-val ((m <TtsFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:next_word-val is deprecated.  Use pal_interaction_msgs-msg:next_word instead.")
  (next_word m))

(cl:ensure-generic-function 'viseme_id-val :lambda-list '(m))
(cl:defmethod viseme_id-val ((m <TtsFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:viseme_id-val is deprecated.  Use pal_interaction_msgs-msg:viseme_id instead.")
  (viseme_id m))

(cl:ensure-generic-function 'marks-val :lambda-list '(m))
(cl:defmethod marks-val ((m <TtsFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:marks-val is deprecated.  Use pal_interaction_msgs-msg:marks instead.")
  (marks m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TtsFeedback>)))
    "Constants for message type '<TtsFeedback>"
  '((:TTS_EVENT_INITIALIZATION . 1)
    (:TTS_EVENT_SHUTDOWN . 2)
    (:TTS_EVENT_SYNCHRONIZATION . 4)
    (:TTS_EVENT_FINISHED_PLAYING_UTTERANCE . 8)
    (:TTS_EVENT_MARK . 16)
    (:TTS_EVENT_STARTED_PLAYING_WORD . 32)
    (:TTS_EVENT_FINISHED_PLAYING_PHRASE . 64)
    (:TTS_EVENT_FINISHED_PLAYING_SENTENCE . 128)
    (:TTS_EVENT_VISEME . 256))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TtsFeedback)))
    "Constants for message type 'TtsFeedback"
  '((:TTS_EVENT_INITIALIZATION . 1)
    (:TTS_EVENT_SHUTDOWN . 2)
    (:TTS_EVENT_SYNCHRONIZATION . 4)
    (:TTS_EVENT_FINISHED_PLAYING_UTTERANCE . 8)
    (:TTS_EVENT_MARK . 16)
    (:TTS_EVENT_STARTED_PLAYING_WORD . 32)
    (:TTS_EVENT_FINISHED_PLAYING_PHRASE . 64)
    (:TTS_EVENT_FINISHED_PLAYING_SENTENCE . 128)
    (:TTS_EVENT_VISEME . 256))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TtsFeedback>) ostream)
  "Serializes a message object of type '<TtsFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'event_type)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text_said))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text_said))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'next_word))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'next_word))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'viseme_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'viseme_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'marks) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TtsFeedback>) istream)
  "Deserializes a message object of type '<TtsFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'event_type)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text_said) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text_said) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'next_word) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'next_word) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'viseme_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'viseme_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'marks) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TtsFeedback>)))
  "Returns string type for a message object of type '<TtsFeedback>"
  "pal_interaction_msgs/TtsFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TtsFeedback)))
  "Returns string type for a message object of type 'TtsFeedback"
  "pal_interaction_msgs/TtsFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TtsFeedback>)))
  "Returns md5sum for a message object of type '<TtsFeedback>"
  "05870cd8b62fcb00e76ae3889c0ed8f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TtsFeedback)))
  "Returns md5sum for a message object of type 'TtsFeedback"
  "05870cd8b62fcb00e76ae3889c0ed8f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TtsFeedback>)))
  "Returns full string definition for message of type '<TtsFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%## feedback~%~%# Everytime one of the following events occuring~%# during the synthesis process a feedback message~%# will be published.~%# Only TTS_EVENT_STARTED_PLAYING_WORD and ~%# TTS_EVENT_MARK are implemented now.~%~%uint16 TTS_EVENT_INITIALIZATION = 1~%uint16 TTS_EVENT_SHUTDOWN = 2~%uint16 TTS_EVENT_SYNCHRONIZATION = 4~%uint16 TTS_EVENT_FINISHED_PLAYING_UTTERANCE = 8~%uint16 TTS_EVENT_MARK = 16~%uint16 TTS_EVENT_STARTED_PLAYING_WORD = 32~%uint16 TTS_EVENT_FINISHED_PLAYING_PHRASE = 64~%uint16 TTS_EVENT_FINISHED_PLAYING_SENTENCE = 128~%uint16 TTS_EVENT_VISEME = 256~%~%# Store the event type and can be used~%# to filter messages depending on the type of ~%# events we are interested in~%~%uint16 event_type~%~%# Time since the begining of the synthesis~%# at which the event occured.~%~%time timestamp~%~%# Text said until now, ~%# it will contain the current word in case of WORD events~%~%string text_said~%~%# Next word to be pronounced~%# (not implemented)~%string next_word~%~%string viseme_id~%~%# Everytime a mark like this one~%# <mark name=\"markname\"/> is present in the text~%# a MARK event will be generated with the 'name' ~%# argument value as mark id. Other fields~%# different from the mark_id are not implemented.~%~%TtsMark marks~%~%~%================================================================================~%MSG: pal_interaction_msgs/TtsMark~%# id will contain the value of name argument in the <mark/>~%# tags when they are placed in synthesised text.~%# Filling keys and value is not implemented yet.~%string id~%string[] keys~%string[] value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TtsFeedback)))
  "Returns full string definition for message of type 'TtsFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%## feedback~%~%# Everytime one of the following events occuring~%# during the synthesis process a feedback message~%# will be published.~%# Only TTS_EVENT_STARTED_PLAYING_WORD and ~%# TTS_EVENT_MARK are implemented now.~%~%uint16 TTS_EVENT_INITIALIZATION = 1~%uint16 TTS_EVENT_SHUTDOWN = 2~%uint16 TTS_EVENT_SYNCHRONIZATION = 4~%uint16 TTS_EVENT_FINISHED_PLAYING_UTTERANCE = 8~%uint16 TTS_EVENT_MARK = 16~%uint16 TTS_EVENT_STARTED_PLAYING_WORD = 32~%uint16 TTS_EVENT_FINISHED_PLAYING_PHRASE = 64~%uint16 TTS_EVENT_FINISHED_PLAYING_SENTENCE = 128~%uint16 TTS_EVENT_VISEME = 256~%~%# Store the event type and can be used~%# to filter messages depending on the type of ~%# events we are interested in~%~%uint16 event_type~%~%# Time since the begining of the synthesis~%# at which the event occured.~%~%time timestamp~%~%# Text said until now, ~%# it will contain the current word in case of WORD events~%~%string text_said~%~%# Next word to be pronounced~%# (not implemented)~%string next_word~%~%string viseme_id~%~%# Everytime a mark like this one~%# <mark name=\"markname\"/> is present in the text~%# a MARK event will be generated with the 'name' ~%# argument value as mark id. Other fields~%# different from the mark_id are not implemented.~%~%TtsMark marks~%~%~%================================================================================~%MSG: pal_interaction_msgs/TtsMark~%# id will contain the value of name argument in the <mark/>~%# tags when they are placed in synthesised text.~%# Filling keys and value is not implemented yet.~%string id~%string[] keys~%string[] value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TtsFeedback>))
  (cl:+ 0
     2
     8
     4 (cl:length (cl:slot-value msg 'text_said))
     4 (cl:length (cl:slot-value msg 'next_word))
     4 (cl:length (cl:slot-value msg 'viseme_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'marks))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TtsFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'TtsFeedback
    (cl:cons ':event_type (event_type msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':text_said (text_said msg))
    (cl:cons ':next_word (next_word msg))
    (cl:cons ':viseme_id (viseme_id msg))
    (cl:cons ':marks (marks msg))
))
