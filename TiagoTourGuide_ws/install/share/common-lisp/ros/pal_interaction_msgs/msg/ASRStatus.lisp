; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude ASRStatus.msg.html

(cl:defclass <ASRStatus> (roslisp-msg-protocol:ros-message)
  ((active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil)
   (language
    :reader language
    :initarg :language
    :type cl:string
    :initform "")
   (enabled_grammar
    :reader enabled_grammar
    :initarg :enabled_grammar
    :type cl:string
    :initform "")
   (acoustic_env
    :reader acoustic_env
    :initarg :acoustic_env
    :type cl:string
    :initform "")
   (device
    :reader device
    :initarg :device
    :type pal_interaction_msgs-msg:AudioDeviceDescription
    :initform (cl:make-instance 'pal_interaction_msgs-msg:AudioDeviceDescription)))
)

(cl:defclass ASRStatus (<ASRStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ASRStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ASRStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<ASRStatus> is deprecated: use pal_interaction_msgs-msg:ASRStatus instead.")))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <ASRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:active-val is deprecated.  Use pal_interaction_msgs-msg:active instead.")
  (active m))

(cl:ensure-generic-function 'language-val :lambda-list '(m))
(cl:defmethod language-val ((m <ASRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:language-val is deprecated.  Use pal_interaction_msgs-msg:language instead.")
  (language m))

(cl:ensure-generic-function 'enabled_grammar-val :lambda-list '(m))
(cl:defmethod enabled_grammar-val ((m <ASRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:enabled_grammar-val is deprecated.  Use pal_interaction_msgs-msg:enabled_grammar instead.")
  (enabled_grammar m))

(cl:ensure-generic-function 'acoustic_env-val :lambda-list '(m))
(cl:defmethod acoustic_env-val ((m <ASRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:acoustic_env-val is deprecated.  Use pal_interaction_msgs-msg:acoustic_env instead.")
  (acoustic_env m))

(cl:ensure-generic-function 'device-val :lambda-list '(m))
(cl:defmethod device-val ((m <ASRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:device-val is deprecated.  Use pal_interaction_msgs-msg:device instead.")
  (device m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ASRStatus>) ostream)
  "Serializes a message object of type '<ASRStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'language))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'language))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'enabled_grammar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'enabled_grammar))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'acoustic_env))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'acoustic_env))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'device) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ASRStatus>) istream)
  "Deserializes a message object of type '<ASRStatus>"
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'language) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'language) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enabled_grammar) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'enabled_grammar) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'acoustic_env) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'acoustic_env) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'device) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ASRStatus>)))
  "Returns string type for a message object of type '<ASRStatus>"
  "pal_interaction_msgs/ASRStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ASRStatus)))
  "Returns string type for a message object of type 'ASRStatus"
  "pal_interaction_msgs/ASRStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ASRStatus>)))
  "Returns md5sum for a message object of type '<ASRStatus>"
  "b05e32d6465a052804ec3f6d853dbe61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ASRStatus)))
  "Returns md5sum for a message object of type 'ASRStatus"
  "b05e32d6465a052804ec3f6d853dbe61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ASRStatus>)))
  "Returns full string definition for message of type '<ASRStatus>"
  (cl:format cl:nil "# The status of the ASR~%# if it is active then active=true~%bool active~%~%# the current language ~%string language~%~%# the current enabled grammar~%string enabled_grammar~%~%# the current acoustic models~%string acoustic_env~%~%# A description of the audio device the ~%# recognizer is taking audio from.~%AudioDeviceDescription device~%~%================================================================================~%MSG: pal_interaction_msgs/AudioDeviceDescription~%# Description of an audio device.~%~%int8 SIGNED = 0~%int8 UNSIGNED = 1~%~%~%# name of the device (usually a portaudio name)~%string device_name~%~%# sample rate of the acquired audio signal~%uint32 sample_rate~%~%# sample size in bits~%int8 sample_size~%~%# format can be SIGNED or UNSIGNED~%int8 format~%~%# buffer size used to acquire data.~%uint16 buffer_size~%~%# number of recorded channels~%int8 number_of_channels~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ASRStatus)))
  "Returns full string definition for message of type 'ASRStatus"
  (cl:format cl:nil "# The status of the ASR~%# if it is active then active=true~%bool active~%~%# the current language ~%string language~%~%# the current enabled grammar~%string enabled_grammar~%~%# the current acoustic models~%string acoustic_env~%~%# A description of the audio device the ~%# recognizer is taking audio from.~%AudioDeviceDescription device~%~%================================================================================~%MSG: pal_interaction_msgs/AudioDeviceDescription~%# Description of an audio device.~%~%int8 SIGNED = 0~%int8 UNSIGNED = 1~%~%~%# name of the device (usually a portaudio name)~%string device_name~%~%# sample rate of the acquired audio signal~%uint32 sample_rate~%~%# sample size in bits~%int8 sample_size~%~%# format can be SIGNED or UNSIGNED~%int8 format~%~%# buffer size used to acquire data.~%uint16 buffer_size~%~%# number of recorded channels~%int8 number_of_channels~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ASRStatus>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'language))
     4 (cl:length (cl:slot-value msg 'enabled_grammar))
     4 (cl:length (cl:slot-value msg 'acoustic_env))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'device))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ASRStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ASRStatus
    (cl:cons ':active (active msg))
    (cl:cons ':language (language msg))
    (cl:cons ':enabled_grammar (enabled_grammar msg))
    (cl:cons ':acoustic_env (acoustic_env msg))
    (cl:cons ':device (device msg))
))
