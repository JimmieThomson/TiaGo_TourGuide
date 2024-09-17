; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude DirectionOfArrival.msg.html

(cl:defclass <DirectionOfArrival> (roslisp-msg-protocol:ros-message)
  ((doa
    :reader doa
    :initarg :doa
    :type cl:float
    :initform 0.0)
   (prob
    :reader prob
    :initarg :prob
    :type cl:float
    :initform 0.0)
   (power
    :reader power
    :initarg :power
    :type cl:float
    :initform 0.0)
   (metadoa
    :reader metadoa
    :initarg :metadoa
    :type cl:string
    :initform ""))
)

(cl:defclass DirectionOfArrival (<DirectionOfArrival>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DirectionOfArrival>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DirectionOfArrival)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<DirectionOfArrival> is deprecated: use pal_interaction_msgs-msg:DirectionOfArrival instead.")))

(cl:ensure-generic-function 'doa-val :lambda-list '(m))
(cl:defmethod doa-val ((m <DirectionOfArrival>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:doa-val is deprecated.  Use pal_interaction_msgs-msg:doa instead.")
  (doa m))

(cl:ensure-generic-function 'prob-val :lambda-list '(m))
(cl:defmethod prob-val ((m <DirectionOfArrival>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:prob-val is deprecated.  Use pal_interaction_msgs-msg:prob instead.")
  (prob m))

(cl:ensure-generic-function 'power-val :lambda-list '(m))
(cl:defmethod power-val ((m <DirectionOfArrival>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:power-val is deprecated.  Use pal_interaction_msgs-msg:power instead.")
  (power m))

(cl:ensure-generic-function 'metadoa-val :lambda-list '(m))
(cl:defmethod metadoa-val ((m <DirectionOfArrival>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:metadoa-val is deprecated.  Use pal_interaction_msgs-msg:metadoa instead.")
  (metadoa m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DirectionOfArrival>) ostream)
  "Serializes a message object of type '<DirectionOfArrival>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'doa))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'metadoa))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'metadoa))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DirectionOfArrival>) istream)
  "Deserializes a message object of type '<DirectionOfArrival>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'doa) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'power) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'metadoa) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'metadoa) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DirectionOfArrival>)))
  "Returns string type for a message object of type '<DirectionOfArrival>"
  "pal_interaction_msgs/DirectionOfArrival")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DirectionOfArrival)))
  "Returns string type for a message object of type 'DirectionOfArrival"
  "pal_interaction_msgs/DirectionOfArrival")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DirectionOfArrival>)))
  "Returns md5sum for a message object of type '<DirectionOfArrival>"
  "cbcea81e85fdde7bb3d71de75dea9f5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DirectionOfArrival)))
  "Returns md5sum for a message object of type 'DirectionOfArrival"
  "cbcea81e85fdde7bb3d71de75dea9f5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DirectionOfArrival>)))
  "Returns full string definition for message of type '<DirectionOfArrival>"
  (cl:format cl:nil "float32 doa~%float32 prob~%float32 power~%string metadoa~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DirectionOfArrival)))
  "Returns full string definition for message of type 'DirectionOfArrival"
  (cl:format cl:nil "float32 doa~%float32 prob~%float32 power~%string metadoa~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DirectionOfArrival>))
  (cl:+ 0
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'metadoa))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DirectionOfArrival>))
  "Converts a ROS message object to a list"
  (cl:list 'DirectionOfArrival
    (cl:cons ':doa (doa msg))
    (cl:cons ':prob (prob msg))
    (cl:cons ':power (power msg))
    (cl:cons ':metadoa (metadoa msg))
))
