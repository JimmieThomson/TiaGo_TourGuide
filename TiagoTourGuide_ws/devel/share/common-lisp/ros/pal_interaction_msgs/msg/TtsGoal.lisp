; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude TtsGoal.msg.html

(cl:defclass <TtsGoal> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type pal_interaction_msgs-msg:I18nText
    :initform (cl:make-instance 'pal_interaction_msgs-msg:I18nText))
   (rawtext
    :reader rawtext
    :initarg :rawtext
    :type pal_interaction_msgs-msg:TtsText
    :initform (cl:make-instance 'pal_interaction_msgs-msg:TtsText))
   (speakerName
    :reader speakerName
    :initarg :speakerName
    :type cl:string
    :initform "")
   (wait_before_speaking
    :reader wait_before_speaking
    :initarg :wait_before_speaking
    :type cl:float
    :initform 0.0))
)

(cl:defclass TtsGoal (<TtsGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TtsGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TtsGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<TtsGoal> is deprecated: use pal_interaction_msgs-msg:TtsGoal instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <TtsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:text-val is deprecated.  Use pal_interaction_msgs-msg:text instead.")
  (text m))

(cl:ensure-generic-function 'rawtext-val :lambda-list '(m))
(cl:defmethod rawtext-val ((m <TtsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:rawtext-val is deprecated.  Use pal_interaction_msgs-msg:rawtext instead.")
  (rawtext m))

(cl:ensure-generic-function 'speakerName-val :lambda-list '(m))
(cl:defmethod speakerName-val ((m <TtsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:speakerName-val is deprecated.  Use pal_interaction_msgs-msg:speakerName instead.")
  (speakerName m))

(cl:ensure-generic-function 'wait_before_speaking-val :lambda-list '(m))
(cl:defmethod wait_before_speaking-val ((m <TtsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:wait_before_speaking-val is deprecated.  Use pal_interaction_msgs-msg:wait_before_speaking instead.")
  (wait_before_speaking m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TtsGoal>) ostream)
  "Serializes a message object of type '<TtsGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'text) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rawtext) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'speakerName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'speakerName))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wait_before_speaking))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TtsGoal>) istream)
  "Deserializes a message object of type '<TtsGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'text) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rawtext) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speakerName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'speakerName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wait_before_speaking) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TtsGoal>)))
  "Returns string type for a message object of type '<TtsGoal>"
  "pal_interaction_msgs/TtsGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TtsGoal)))
  "Returns string type for a message object of type 'TtsGoal"
  "pal_interaction_msgs/TtsGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TtsGoal>)))
  "Returns md5sum for a message object of type '<TtsGoal>"
  "9c88bf4a4d119474b8ae97c98892bc78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TtsGoal)))
  "Returns md5sum for a message object of type 'TtsGoal"
  "9c88bf4a4d119474b8ae97c98892bc78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TtsGoal>)))
  "Returns full string definition for message of type '<TtsGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%## goal definition~%~%# utterance will contain indications to construct~%# the text to be spoken.~%# It must be specified in a section/key format ~%# for internationalisation. The actual text will~%# be obtained from configuration files as in pal_tts_cfg pkg.~% ~%I18nText text~%TtsText rawtext~%~%# This is to suggest a voice name to the ~%# tts engine. For the same language we might have~%# a variety of voices available, and this variable ~%# is to choose one among them. ~%# (not implemented yet)~%string speakerName~%~%# Time to wait before synthesising the text itself.~%# It can be used to produced delayed speech.~%float64 wait_before_speaking~%~%~%================================================================================~%MSG: pal_interaction_msgs/I18nText~%# section/key is used as in examples in the pal_tts_cfg pkg.~%string section~%string key~%~%# language id, must be speficied using RFC 3066~%string lang_id~%~%# arguments contain the values by which ~%# occurrences of '%s' will be replaced in the ~%# main text.~%# This only supports up to 2 arguments and no recursion.~%# However, recursion and more argumnents are~%# planned to be supported in the future.~%I18nArgument[] arguments~%~%================================================================================~%MSG: pal_interaction_msgs/I18nArgument~%# section key, override the value in expanded.~%# Use expanded for text that do not need expansion.~%# Please note that expanded here will not be translated ~%# to any language.~%~%string section~%string key~%string expanded~%~%~%================================================================================~%MSG: pal_interaction_msgs/TtsText~%# this message is to specify ~%# raw text to the TTS server. ~%~%string text~%~%# Language id in RFC 3066 format~%# This field is mandatory~%string lang_id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TtsGoal)))
  "Returns full string definition for message of type 'TtsGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%## goal definition~%~%# utterance will contain indications to construct~%# the text to be spoken.~%# It must be specified in a section/key format ~%# for internationalisation. The actual text will~%# be obtained from configuration files as in pal_tts_cfg pkg.~% ~%I18nText text~%TtsText rawtext~%~%# This is to suggest a voice name to the ~%# tts engine. For the same language we might have~%# a variety of voices available, and this variable ~%# is to choose one among them. ~%# (not implemented yet)~%string speakerName~%~%# Time to wait before synthesising the text itself.~%# It can be used to produced delayed speech.~%float64 wait_before_speaking~%~%~%================================================================================~%MSG: pal_interaction_msgs/I18nText~%# section/key is used as in examples in the pal_tts_cfg pkg.~%string section~%string key~%~%# language id, must be speficied using RFC 3066~%string lang_id~%~%# arguments contain the values by which ~%# occurrences of '%s' will be replaced in the ~%# main text.~%# This only supports up to 2 arguments and no recursion.~%# However, recursion and more argumnents are~%# planned to be supported in the future.~%I18nArgument[] arguments~%~%================================================================================~%MSG: pal_interaction_msgs/I18nArgument~%# section key, override the value in expanded.~%# Use expanded for text that do not need expansion.~%# Please note that expanded here will not be translated ~%# to any language.~%~%string section~%string key~%string expanded~%~%~%================================================================================~%MSG: pal_interaction_msgs/TtsText~%# this message is to specify ~%# raw text to the TTS server. ~%~%string text~%~%# Language id in RFC 3066 format~%# This field is mandatory~%string lang_id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TtsGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'text))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rawtext))
     4 (cl:length (cl:slot-value msg 'speakerName))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TtsGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'TtsGoal
    (cl:cons ':text (text msg))
    (cl:cons ':rawtext (rawtext msg))
    (cl:cons ':speakerName (speakerName msg))
    (cl:cons ':wait_before_speaking (wait_before_speaking msg))
))
