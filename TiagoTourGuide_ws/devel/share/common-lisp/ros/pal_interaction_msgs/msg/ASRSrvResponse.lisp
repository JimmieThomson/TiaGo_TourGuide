; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude ASRSrvResponse.msg.html

(cl:defclass <ASRSrvResponse> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type pal_interaction_msgs-msg:ASRStatus
    :initform (cl:make-instance 'pal_interaction_msgs-msg:ASRStatus))
   (error_msg
    :reader error_msg
    :initarg :error_msg
    :type cl:string
    :initform "")
   (warn_msg
    :reader warn_msg
    :initarg :warn_msg
    :type cl:string
    :initform ""))
)

(cl:defclass ASRSrvResponse (<ASRSrvResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ASRSrvResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ASRSrvResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<ASRSrvResponse> is deprecated: use pal_interaction_msgs-msg:ASRSrvResponse instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ASRSrvResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:status-val is deprecated.  Use pal_interaction_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'error_msg-val :lambda-list '(m))
(cl:defmethod error_msg-val ((m <ASRSrvResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:error_msg-val is deprecated.  Use pal_interaction_msgs-msg:error_msg instead.")
  (error_msg m))

(cl:ensure-generic-function 'warn_msg-val :lambda-list '(m))
(cl:defmethod warn_msg-val ((m <ASRSrvResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:warn_msg-val is deprecated.  Use pal_interaction_msgs-msg:warn_msg instead.")
  (warn_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ASRSrvResponse>) ostream)
  "Serializes a message object of type '<ASRSrvResponse>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msg))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'warn_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'warn_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ASRSrvResponse>) istream)
  "Deserializes a message object of type '<ASRSrvResponse>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'warn_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'warn_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ASRSrvResponse>)))
  "Returns string type for a message object of type '<ASRSrvResponse>"
  "pal_interaction_msgs/ASRSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ASRSrvResponse)))
  "Returns string type for a message object of type 'ASRSrvResponse"
  "pal_interaction_msgs/ASRSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ASRSrvResponse>)))
  "Returns md5sum for a message object of type '<ASRSrvResponse>"
  "ae96a6a28fb96b873d0b448b3cf2c80c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ASRSrvResponse)))
  "Returns md5sum for a message object of type 'ASRSrvResponse"
  "ae96a6a28fb96b873d0b448b3cf2c80c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ASRSrvResponse>)))
  "Returns full string definition for message of type '<ASRSrvResponse>"
  (cl:format cl:nil "# The status of the ASR with additional error or warning information~%ASRStatus status~%string error_msg~%string warn_msg~%~%================================================================================~%MSG: pal_interaction_msgs/ASRStatus~%# The status of the ASR~%# if it is active then active=true~%bool active~%~%# the current language ~%string language~%~%# the current enabled grammar~%string enabled_grammar~%~%# the current acoustic models~%string acoustic_env~%~%# A description of the audio device the ~%# recognizer is taking audio from.~%AudioDeviceDescription device~%~%================================================================================~%MSG: pal_interaction_msgs/AudioDeviceDescription~%# Description of an audio device.~%~%int8 SIGNED = 0~%int8 UNSIGNED = 1~%~%~%# name of the device (usually a portaudio name)~%string device_name~%~%# sample rate of the acquired audio signal~%uint32 sample_rate~%~%# sample size in bits~%int8 sample_size~%~%# format can be SIGNED or UNSIGNED~%int8 format~%~%# buffer size used to acquire data.~%uint16 buffer_size~%~%# number of recorded channels~%int8 number_of_channels~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ASRSrvResponse)))
  "Returns full string definition for message of type 'ASRSrvResponse"
  (cl:format cl:nil "# The status of the ASR with additional error or warning information~%ASRStatus status~%string error_msg~%string warn_msg~%~%================================================================================~%MSG: pal_interaction_msgs/ASRStatus~%# The status of the ASR~%# if it is active then active=true~%bool active~%~%# the current language ~%string language~%~%# the current enabled grammar~%string enabled_grammar~%~%# the current acoustic models~%string acoustic_env~%~%# A description of the audio device the ~%# recognizer is taking audio from.~%AudioDeviceDescription device~%~%================================================================================~%MSG: pal_interaction_msgs/AudioDeviceDescription~%# Description of an audio device.~%~%int8 SIGNED = 0~%int8 UNSIGNED = 1~%~%~%# name of the device (usually a portaudio name)~%string device_name~%~%# sample rate of the acquired audio signal~%uint32 sample_rate~%~%# sample size in bits~%int8 sample_size~%~%# format can be SIGNED or UNSIGNED~%int8 format~%~%# buffer size used to acquire data.~%uint16 buffer_size~%~%# number of recorded channels~%int8 number_of_channels~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ASRSrvResponse>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     4 (cl:length (cl:slot-value msg 'error_msg))
     4 (cl:length (cl:slot-value msg 'warn_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ASRSrvResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'ASRSrvResponse
    (cl:cons ':status (status msg))
    (cl:cons ':error_msg (error_msg msg))
    (cl:cons ':warn_msg (warn_msg msg))
))
