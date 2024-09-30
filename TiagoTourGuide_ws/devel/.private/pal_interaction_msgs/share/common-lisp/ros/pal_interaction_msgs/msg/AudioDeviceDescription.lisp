; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude AudioDeviceDescription.msg.html

(cl:defclass <AudioDeviceDescription> (roslisp-msg-protocol:ros-message)
  ((device_name
    :reader device_name
    :initarg :device_name
    :type cl:string
    :initform "")
   (sample_rate
    :reader sample_rate
    :initarg :sample_rate
    :type cl:integer
    :initform 0)
   (sample_size
    :reader sample_size
    :initarg :sample_size
    :type cl:fixnum
    :initform 0)
   (format
    :reader format
    :initarg :format
    :type cl:fixnum
    :initform 0)
   (buffer_size
    :reader buffer_size
    :initarg :buffer_size
    :type cl:fixnum
    :initform 0)
   (number_of_channels
    :reader number_of_channels
    :initarg :number_of_channels
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AudioDeviceDescription (<AudioDeviceDescription>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioDeviceDescription>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioDeviceDescription)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<AudioDeviceDescription> is deprecated: use pal_interaction_msgs-msg:AudioDeviceDescription instead.")))

(cl:ensure-generic-function 'device_name-val :lambda-list '(m))
(cl:defmethod device_name-val ((m <AudioDeviceDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:device_name-val is deprecated.  Use pal_interaction_msgs-msg:device_name instead.")
  (device_name m))

(cl:ensure-generic-function 'sample_rate-val :lambda-list '(m))
(cl:defmethod sample_rate-val ((m <AudioDeviceDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:sample_rate-val is deprecated.  Use pal_interaction_msgs-msg:sample_rate instead.")
  (sample_rate m))

(cl:ensure-generic-function 'sample_size-val :lambda-list '(m))
(cl:defmethod sample_size-val ((m <AudioDeviceDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:sample_size-val is deprecated.  Use pal_interaction_msgs-msg:sample_size instead.")
  (sample_size m))

(cl:ensure-generic-function 'format-val :lambda-list '(m))
(cl:defmethod format-val ((m <AudioDeviceDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:format-val is deprecated.  Use pal_interaction_msgs-msg:format instead.")
  (format m))

(cl:ensure-generic-function 'buffer_size-val :lambda-list '(m))
(cl:defmethod buffer_size-val ((m <AudioDeviceDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:buffer_size-val is deprecated.  Use pal_interaction_msgs-msg:buffer_size instead.")
  (buffer_size m))

(cl:ensure-generic-function 'number_of_channels-val :lambda-list '(m))
(cl:defmethod number_of_channels-val ((m <AudioDeviceDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:number_of_channels-val is deprecated.  Use pal_interaction_msgs-msg:number_of_channels instead.")
  (number_of_channels m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AudioDeviceDescription>)))
    "Constants for message type '<AudioDeviceDescription>"
  '((:SIGNED . 0)
    (:UNSIGNED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AudioDeviceDescription)))
    "Constants for message type 'AudioDeviceDescription"
  '((:SIGNED . 0)
    (:UNSIGNED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioDeviceDescription>) ostream)
  "Serializes a message object of type '<AudioDeviceDescription>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sample_rate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sample_rate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sample_rate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sample_rate)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sample_size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'format)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buffer_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'buffer_size)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'number_of_channels)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioDeviceDescription>) istream)
  "Deserializes a message object of type '<AudioDeviceDescription>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sample_rate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sample_rate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sample_rate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sample_rate)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sample_size) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'format) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buffer_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'buffer_size)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number_of_channels) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioDeviceDescription>)))
  "Returns string type for a message object of type '<AudioDeviceDescription>"
  "pal_interaction_msgs/AudioDeviceDescription")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioDeviceDescription)))
  "Returns string type for a message object of type 'AudioDeviceDescription"
  "pal_interaction_msgs/AudioDeviceDescription")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioDeviceDescription>)))
  "Returns md5sum for a message object of type '<AudioDeviceDescription>"
  "e55171ed98aeb49e34453bc5efb47184")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioDeviceDescription)))
  "Returns md5sum for a message object of type 'AudioDeviceDescription"
  "e55171ed98aeb49e34453bc5efb47184")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioDeviceDescription>)))
  "Returns full string definition for message of type '<AudioDeviceDescription>"
  (cl:format cl:nil "# Description of an audio device.~%~%int8 SIGNED = 0~%int8 UNSIGNED = 1~%~%~%# name of the device (usually a portaudio name)~%string device_name~%~%# sample rate of the acquired audio signal~%uint32 sample_rate~%~%# sample size in bits~%int8 sample_size~%~%# format can be SIGNED or UNSIGNED~%int8 format~%~%# buffer size used to acquire data.~%uint16 buffer_size~%~%# number of recorded channels~%int8 number_of_channels~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioDeviceDescription)))
  "Returns full string definition for message of type 'AudioDeviceDescription"
  (cl:format cl:nil "# Description of an audio device.~%~%int8 SIGNED = 0~%int8 UNSIGNED = 1~%~%~%# name of the device (usually a portaudio name)~%string device_name~%~%# sample rate of the acquired audio signal~%uint32 sample_rate~%~%# sample size in bits~%int8 sample_size~%~%# format can be SIGNED or UNSIGNED~%int8 format~%~%# buffer size used to acquire data.~%uint16 buffer_size~%~%# number of recorded channels~%int8 number_of_channels~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioDeviceDescription>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'device_name))
     4
     1
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioDeviceDescription>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioDeviceDescription
    (cl:cons ':device_name (device_name msg))
    (cl:cons ':sample_rate (sample_rate msg))
    (cl:cons ':sample_size (sample_size msg))
    (cl:cons ':format (format msg))
    (cl:cons ':buffer_size (buffer_size msg))
    (cl:cons ':number_of_channels (number_of_channels msg))
))
