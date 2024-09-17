; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude asrresult.msg.html

(cl:defclass <asrresult> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:fixnum
    :initform 0)
   (start
    :reader start
    :initarg :start
    :type cl:real
    :initform 0)
   (end
    :reader end
    :initarg :end
    :type cl:real
    :initform 0)
   (tags
    :reader tags
    :initarg :tags
    :type (cl:vector pal_interaction_msgs-msg:actiontag)
   :initform (cl:make-array 0 :element-type 'pal_interaction_msgs-msg:actiontag :initial-element (cl:make-instance 'pal_interaction_msgs-msg:actiontag))))
)

(cl:defclass asrresult (<asrresult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <asrresult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'asrresult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<asrresult> is deprecated: use pal_interaction_msgs-msg:asrresult instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <asrresult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:text-val is deprecated.  Use pal_interaction_msgs-msg:text instead.")
  (text m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <asrresult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:confidence-val is deprecated.  Use pal_interaction_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <asrresult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:start-val is deprecated.  Use pal_interaction_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <asrresult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:end-val is deprecated.  Use pal_interaction_msgs-msg:end instead.")
  (end m))

(cl:ensure-generic-function 'tags-val :lambda-list '(m))
(cl:defmethod tags-val ((m <asrresult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:tags-val is deprecated.  Use pal_interaction_msgs-msg:tags instead.")
  (tags m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<asrresult>)))
    "Constants for message type '<asrresult>"
  '((:CONFIDENCE_UNDEFINED . -1)
    (:CONFIDENCE_POOR . 1)
    (:CONFIDENCE_LOW . 2)
    (:CONFIDENCE_GOOD . 3)
    (:CONFIDENCE_MAX . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'asrresult)))
    "Constants for message type 'asrresult"
  '((:CONFIDENCE_UNDEFINED . -1)
    (:CONFIDENCE_POOR . 1)
    (:CONFIDENCE_LOW . 2)
    (:CONFIDENCE_GOOD . 3)
    (:CONFIDENCE_MAX . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <asrresult>) ostream)
  "Serializes a message object of type '<asrresult>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:let* ((signed (cl:slot-value msg 'confidence)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'start)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'start) (cl:floor (cl:slot-value msg 'start)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'end)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'end) (cl:floor (cl:slot-value msg 'end)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tags))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <asrresult>) istream)
  "Deserializes a message object of type '<asrresult>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'confidence) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_interaction_msgs-msg:actiontag))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<asrresult>)))
  "Returns string type for a message object of type '<asrresult>"
  "pal_interaction_msgs/asrresult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'asrresult)))
  "Returns string type for a message object of type 'asrresult"
  "pal_interaction_msgs/asrresult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<asrresult>)))
  "Returns md5sum for a message object of type '<asrresult>"
  "a6ebae90936a20cef967166ff7e96f64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'asrresult)))
  "Returns md5sum for a message object of type 'asrresult"
  "a6ebae90936a20cef967166ff7e96f64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<asrresult>)))
  "Returns full string definition for message of type '<asrresult>"
  (cl:format cl:nil "## Message that containes the recognized utterance.~%## Confidence values~%int8 CONFIDENCE_UNDEFINED = -1~%int8 CONFIDENCE_POOR = 1~%int8 CONFIDENCE_LOW  = 2~%int8 CONFIDENCE_GOOD = 3~%int8 CONFIDENCE_MAX  = 4~%~%# ASR result messages used by RosRecognizerServer~%~%# text recognized~%string text~%~%# confidence with values from POOR to MAX~%int8 confidence~%~%# start and end of the recognizer uterance.~%time start~%time end~%~%# list of recognized tags~%# key value pairs of strings extracted from the text~%# given the action tags placed in the grammar.~%actiontag[] tags~%~%================================================================================~%MSG: pal_interaction_msgs/actiontag~%# Action tag contaings the key/value information genertated by parsing the recognised text with a JSGF grammar ~%~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'asrresult)))
  "Returns full string definition for message of type 'asrresult"
  (cl:format cl:nil "## Message that containes the recognized utterance.~%## Confidence values~%int8 CONFIDENCE_UNDEFINED = -1~%int8 CONFIDENCE_POOR = 1~%int8 CONFIDENCE_LOW  = 2~%int8 CONFIDENCE_GOOD = 3~%int8 CONFIDENCE_MAX  = 4~%~%# ASR result messages used by RosRecognizerServer~%~%# text recognized~%string text~%~%# confidence with values from POOR to MAX~%int8 confidence~%~%# start and end of the recognizer uterance.~%time start~%time end~%~%# list of recognized tags~%# key value pairs of strings extracted from the text~%# given the action tags placed in the grammar.~%actiontag[] tags~%~%================================================================================~%MSG: pal_interaction_msgs/actiontag~%# Action tag contaings the key/value information genertated by parsing the recognised text with a JSGF grammar ~%~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <asrresult>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     1
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <asrresult>))
  "Converts a ROS message object to a list"
  (cl:list 'asrresult
    (cl:cons ':text (text msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
    (cl:cons ':tags (tags msg))
))
