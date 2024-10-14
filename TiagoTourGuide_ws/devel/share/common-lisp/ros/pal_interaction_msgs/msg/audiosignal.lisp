; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude audiosignal.msg.html

(cl:defclass <audiosignal> (roslisp-msg-protocol:ros-message)
  ((channel0
    :reader channel0
    :initarg :channel0
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (channel1
    :reader channel1
    :initarg :channel1
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass audiosignal (<audiosignal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <audiosignal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'audiosignal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<audiosignal> is deprecated: use pal_interaction_msgs-msg:audiosignal instead.")))

(cl:ensure-generic-function 'channel0-val :lambda-list '(m))
(cl:defmethod channel0-val ((m <audiosignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:channel0-val is deprecated.  Use pal_interaction_msgs-msg:channel0 instead.")
  (channel0 m))

(cl:ensure-generic-function 'channel1-val :lambda-list '(m))
(cl:defmethod channel1-val ((m <audiosignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:channel1-val is deprecated.  Use pal_interaction_msgs-msg:channel1 instead.")
  (channel1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <audiosignal>) ostream)
  "Serializes a message object of type '<audiosignal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'channel0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'channel0))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'channel1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'channel1))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <audiosignal>) istream)
  "Deserializes a message object of type '<audiosignal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'channel0) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'channel0)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'channel1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'channel1)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<audiosignal>)))
  "Returns string type for a message object of type '<audiosignal>"
  "pal_interaction_msgs/audiosignal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'audiosignal)))
  "Returns string type for a message object of type 'audiosignal"
  "pal_interaction_msgs/audiosignal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<audiosignal>)))
  "Returns md5sum for a message object of type '<audiosignal>"
  "9406f94b261ed2ebad808e7af5b61907")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'audiosignal)))
  "Returns md5sum for a message object of type 'audiosignal"
  "9406f94b261ed2ebad808e7af5b61907")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<audiosignal>)))
  "Returns full string definition for message of type '<audiosignal>"
  (cl:format cl:nil "float64[] channel0~%float64[] channel1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'audiosignal)))
  "Returns full string definition for message of type 'audiosignal"
  (cl:format cl:nil "float64[] channel0~%float64[] channel1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <audiosignal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'channel0) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'channel1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <audiosignal>))
  "Converts a ROS message object to a list"
  (cl:list 'audiosignal
    (cl:cons ':channel0 (channel0 msg))
    (cl:cons ':channel1 (channel1 msg))
))
