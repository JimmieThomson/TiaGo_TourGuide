; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude ASRFileResult.msg.html

(cl:defclass <ASRFileResult> (roslisp-msg-protocol:ros-message)
  ((file
    :reader file
    :initarg :file
    :type cl:string
    :initform "")
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform "")
   (recognised_utterances
    :reader recognised_utterances
    :initarg :recognised_utterances
    :type (cl:vector pal_interaction_msgs-msg:asrresult)
   :initform (cl:make-array 0 :element-type 'pal_interaction_msgs-msg:asrresult :initial-element (cl:make-instance 'pal_interaction_msgs-msg:asrresult))))
)

(cl:defclass ASRFileResult (<ASRFileResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ASRFileResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ASRFileResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<ASRFileResult> is deprecated: use pal_interaction_msgs-msg:ASRFileResult instead.")))

(cl:ensure-generic-function 'file-val :lambda-list '(m))
(cl:defmethod file-val ((m <ASRFileResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:file-val is deprecated.  Use pal_interaction_msgs-msg:file instead.")
  (file m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <ASRFileResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:msg-val is deprecated.  Use pal_interaction_msgs-msg:msg instead.")
  (msg m))

(cl:ensure-generic-function 'recognised_utterances-val :lambda-list '(m))
(cl:defmethod recognised_utterances-val ((m <ASRFileResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:recognised_utterances-val is deprecated.  Use pal_interaction_msgs-msg:recognised_utterances instead.")
  (recognised_utterances m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ASRFileResult>) ostream)
  "Serializes a message object of type '<ASRFileResult>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'recognised_utterances))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'recognised_utterances))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ASRFileResult>) istream)
  "Deserializes a message object of type '<ASRFileResult>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'recognised_utterances) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'recognised_utterances)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_interaction_msgs-msg:asrresult))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ASRFileResult>)))
  "Returns string type for a message object of type '<ASRFileResult>"
  "pal_interaction_msgs/ASRFileResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ASRFileResult)))
  "Returns string type for a message object of type 'ASRFileResult"
  "pal_interaction_msgs/ASRFileResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ASRFileResult>)))
  "Returns md5sum for a message object of type '<ASRFileResult>"
  "f039521e38adb20a017037121dedb1d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ASRFileResult)))
  "Returns md5sum for a message object of type 'ASRFileResult"
  "f039521e38adb20a017037121dedb1d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ASRFileResult>)))
  "Returns full string definition for message of type '<ASRFileResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%##result definition~%# same path as specified in goal variable file~%string file~%# error/warning messages ~%string msg~%# vector of results~%asrresult[] recognised_utterances~%~%================================================================================~%MSG: pal_interaction_msgs/asrresult~%## Message that containes the recognized utterance.~%## Confidence values~%int8 CONFIDENCE_UNDEFINED = -1~%int8 CONFIDENCE_POOR = 1~%int8 CONFIDENCE_LOW  = 2~%int8 CONFIDENCE_GOOD = 3~%int8 CONFIDENCE_MAX  = 4~%~%# ASR result messages used by RosRecognizerServer~%~%# text recognized~%string text~%~%# confidence with values from POOR to MAX~%int8 confidence~%~%# start and end of the recognizer uterance.~%time start~%time end~%~%# list of recognized tags~%# key value pairs of strings extracted from the text~%# given the action tags placed in the grammar.~%actiontag[] tags~%~%================================================================================~%MSG: pal_interaction_msgs/actiontag~%# Action tag contaings the key/value information genertated by parsing the recognised text with a JSGF grammar ~%~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ASRFileResult)))
  "Returns full string definition for message of type 'ASRFileResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%##result definition~%# same path as specified in goal variable file~%string file~%# error/warning messages ~%string msg~%# vector of results~%asrresult[] recognised_utterances~%~%================================================================================~%MSG: pal_interaction_msgs/asrresult~%## Message that containes the recognized utterance.~%## Confidence values~%int8 CONFIDENCE_UNDEFINED = -1~%int8 CONFIDENCE_POOR = 1~%int8 CONFIDENCE_LOW  = 2~%int8 CONFIDENCE_GOOD = 3~%int8 CONFIDENCE_MAX  = 4~%~%# ASR result messages used by RosRecognizerServer~%~%# text recognized~%string text~%~%# confidence with values from POOR to MAX~%int8 confidence~%~%# start and end of the recognizer uterance.~%time start~%time end~%~%# list of recognized tags~%# key value pairs of strings extracted from the text~%# given the action tags placed in the grammar.~%actiontag[] tags~%~%================================================================================~%MSG: pal_interaction_msgs/actiontag~%# Action tag contaings the key/value information genertated by parsing the recognised text with a JSGF grammar ~%~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ASRFileResult>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file))
     4 (cl:length (cl:slot-value msg 'msg))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'recognised_utterances) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ASRFileResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ASRFileResult
    (cl:cons ':file (file msg))
    (cl:cons ':msg (msg msg))
    (cl:cons ':recognised_utterances (recognised_utterances msg))
))
