; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-srv)


;//! \htmlinclude GetSpeechDuration-request.msg.html

(cl:defclass <GetSpeechDuration-request> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type pal_interaction_msgs-msg:I18nText
    :initform (cl:make-instance 'pal_interaction_msgs-msg:I18nText))
   (rawtext
    :reader rawtext
    :initarg :rawtext
    :type pal_interaction_msgs-msg:TtsText
    :initform (cl:make-instance 'pal_interaction_msgs-msg:TtsText)))
)

(cl:defclass GetSpeechDuration-request (<GetSpeechDuration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSpeechDuration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSpeechDuration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-srv:<GetSpeechDuration-request> is deprecated: use pal_interaction_msgs-srv:GetSpeechDuration-request instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <GetSpeechDuration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-srv:text-val is deprecated.  Use pal_interaction_msgs-srv:text instead.")
  (text m))

(cl:ensure-generic-function 'rawtext-val :lambda-list '(m))
(cl:defmethod rawtext-val ((m <GetSpeechDuration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-srv:rawtext-val is deprecated.  Use pal_interaction_msgs-srv:rawtext instead.")
  (rawtext m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSpeechDuration-request>) ostream)
  "Serializes a message object of type '<GetSpeechDuration-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'text) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rawtext) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSpeechDuration-request>) istream)
  "Deserializes a message object of type '<GetSpeechDuration-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'text) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rawtext) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSpeechDuration-request>)))
  "Returns string type for a service object of type '<GetSpeechDuration-request>"
  "pal_interaction_msgs/GetSpeechDurationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSpeechDuration-request)))
  "Returns string type for a service object of type 'GetSpeechDuration-request"
  "pal_interaction_msgs/GetSpeechDurationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSpeechDuration-request>)))
  "Returns md5sum for a message object of type '<GetSpeechDuration-request>"
  "d04aea620ba3493798f087eca950ddd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSpeechDuration-request)))
  "Returns md5sum for a message object of type 'GetSpeechDuration-request"
  "d04aea620ba3493798f087eca950ddd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSpeechDuration-request>)))
  "Returns full string definition for message of type '<GetSpeechDuration-request>"
  (cl:format cl:nil "# Same logic as Tts.action goal~%# If text is specified with section and key, it will be used for computing the duration~%# otherwise rawtext will be used  (even if empty)~%I18nText text~%TtsText rawtext~%~%================================================================================~%MSG: pal_interaction_msgs/I18nText~%# section/key is used as in examples in the pal_tts_cfg pkg.~%string section~%string key~%~%# language id, must be speficied using RFC 3066~%string lang_id~%~%# arguments contain the values by which ~%# occurrences of '%s' will be replaced in the ~%# main text.~%# This only supports up to 2 arguments and no recursion.~%# However, recursion and more argumnents are~%# planned to be supported in the future.~%I18nArgument[] arguments~%~%================================================================================~%MSG: pal_interaction_msgs/I18nArgument~%# section key, override the value in expanded.~%# Use expanded for text that do not need expansion.~%# Please note that expanded here will not be translated ~%# to any language.~%~%string section~%string key~%string expanded~%~%~%================================================================================~%MSG: pal_interaction_msgs/TtsText~%# this message is to specify ~%# raw text to the TTS server. ~%~%string text~%~%# Language id in RFC 3066 format~%# This field is mandatory~%string lang_id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSpeechDuration-request)))
  "Returns full string definition for message of type 'GetSpeechDuration-request"
  (cl:format cl:nil "# Same logic as Tts.action goal~%# If text is specified with section and key, it will be used for computing the duration~%# otherwise rawtext will be used  (even if empty)~%I18nText text~%TtsText rawtext~%~%================================================================================~%MSG: pal_interaction_msgs/I18nText~%# section/key is used as in examples in the pal_tts_cfg pkg.~%string section~%string key~%~%# language id, must be speficied using RFC 3066~%string lang_id~%~%# arguments contain the values by which ~%# occurrences of '%s' will be replaced in the ~%# main text.~%# This only supports up to 2 arguments and no recursion.~%# However, recursion and more argumnents are~%# planned to be supported in the future.~%I18nArgument[] arguments~%~%================================================================================~%MSG: pal_interaction_msgs/I18nArgument~%# section key, override the value in expanded.~%# Use expanded for text that do not need expansion.~%# Please note that expanded here will not be translated ~%# to any language.~%~%string section~%string key~%string expanded~%~%~%================================================================================~%MSG: pal_interaction_msgs/TtsText~%# this message is to specify ~%# raw text to the TTS server. ~%~%string text~%~%# Language id in RFC 3066 format~%# This field is mandatory~%string lang_id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSpeechDuration-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'text))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rawtext))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSpeechDuration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSpeechDuration-request
    (cl:cons ':text (text msg))
    (cl:cons ':rawtext (rawtext msg))
))
;//! \htmlinclude GetSpeechDuration-response.msg.html

(cl:defclass <GetSpeechDuration-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil)
   (words
    :reader words
    :initarg :words
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (word_durations
    :reader word_durations
    :initarg :word_durations
    :type (cl:vector cl:real)
   :initform (cl:make-array 0 :element-type 'cl:real :initial-element 0)))
)

(cl:defclass GetSpeechDuration-response (<GetSpeechDuration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSpeechDuration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSpeechDuration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-srv:<GetSpeechDuration-response> is deprecated: use pal_interaction_msgs-srv:GetSpeechDuration-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <GetSpeechDuration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-srv:ok-val is deprecated.  Use pal_interaction_msgs-srv:ok instead.")
  (ok m))

(cl:ensure-generic-function 'words-val :lambda-list '(m))
(cl:defmethod words-val ((m <GetSpeechDuration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-srv:words-val is deprecated.  Use pal_interaction_msgs-srv:words instead.")
  (words m))

(cl:ensure-generic-function 'word_durations-val :lambda-list '(m))
(cl:defmethod word_durations-val ((m <GetSpeechDuration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-srv:word_durations-val is deprecated.  Use pal_interaction_msgs-srv:word_durations instead.")
  (word_durations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSpeechDuration-response>) ostream)
  "Serializes a message object of type '<GetSpeechDuration-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'words))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'words))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'word_durations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__sec (cl:floor ele))
        (__nsec (cl:round (cl:* 1e9 (cl:- ele (cl:floor ele))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream)))
   (cl:slot-value msg 'word_durations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSpeechDuration-response>) istream)
  "Deserializes a message object of type '<GetSpeechDuration-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'words) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'words)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'word_durations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'word_durations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSpeechDuration-response>)))
  "Returns string type for a service object of type '<GetSpeechDuration-response>"
  "pal_interaction_msgs/GetSpeechDurationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSpeechDuration-response)))
  "Returns string type for a service object of type 'GetSpeechDuration-response"
  "pal_interaction_msgs/GetSpeechDurationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSpeechDuration-response>)))
  "Returns md5sum for a message object of type '<GetSpeechDuration-response>"
  "d04aea620ba3493798f087eca950ddd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSpeechDuration-response)))
  "Returns md5sum for a message object of type 'GetSpeechDuration-response"
  "d04aea620ba3493798f087eca950ddd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSpeechDuration-response>)))
  "Returns full string definition for message of type '<GetSpeechDuration-response>"
  (cl:format cl:nil "bool ok~%string[] words~%duration[] word_durations~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSpeechDuration-response)))
  "Returns full string definition for message of type 'GetSpeechDuration-response"
  (cl:format cl:nil "bool ok~%string[] words~%duration[] word_durations~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSpeechDuration-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'words) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'word_durations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSpeechDuration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSpeechDuration-response
    (cl:cons ':ok (ok msg))
    (cl:cons ':words (words msg))
    (cl:cons ':word_durations (word_durations msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSpeechDuration)))
  'GetSpeechDuration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSpeechDuration)))
  'GetSpeechDuration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSpeechDuration)))
  "Returns string type for a service object of type '<GetSpeechDuration>"
  "pal_interaction_msgs/GetSpeechDuration")