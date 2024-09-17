; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude EulerAngles.msg.html

(cl:defclass <EulerAngles> (roslisp-msg-protocol:ros-message)
  ((sequence
    :reader sequence
    :initarg :sequence
    :type cl:string
    :initform "")
   (angles_in_degrees
    :reader angles_in_degrees
    :initarg :angles_in_degrees
    :type cl:boolean
    :initform cl:nil)
   (ai
    :reader ai
    :initarg :ai
    :type cl:float
    :initform 0.0)
   (aj
    :reader aj
    :initarg :aj
    :type cl:float
    :initform 0.0)
   (ak
    :reader ak
    :initarg :ak
    :type cl:float
    :initform 0.0))
)

(cl:defclass EulerAngles (<EulerAngles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EulerAngles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EulerAngles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<EulerAngles> is deprecated: use pal_navigation_msgs-msg:EulerAngles instead.")))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <EulerAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:sequence-val is deprecated.  Use pal_navigation_msgs-msg:sequence instead.")
  (sequence m))

(cl:ensure-generic-function 'angles_in_degrees-val :lambda-list '(m))
(cl:defmethod angles_in_degrees-val ((m <EulerAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:angles_in_degrees-val is deprecated.  Use pal_navigation_msgs-msg:angles_in_degrees instead.")
  (angles_in_degrees m))

(cl:ensure-generic-function 'ai-val :lambda-list '(m))
(cl:defmethod ai-val ((m <EulerAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:ai-val is deprecated.  Use pal_navigation_msgs-msg:ai instead.")
  (ai m))

(cl:ensure-generic-function 'aj-val :lambda-list '(m))
(cl:defmethod aj-val ((m <EulerAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:aj-val is deprecated.  Use pal_navigation_msgs-msg:aj instead.")
  (aj m))

(cl:ensure-generic-function 'ak-val :lambda-list '(m))
(cl:defmethod ak-val ((m <EulerAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:ak-val is deprecated.  Use pal_navigation_msgs-msg:ak instead.")
  (ak m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EulerAngles>) ostream)
  "Serializes a message object of type '<EulerAngles>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sequence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sequence))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'angles_in_degrees) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ai))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'aj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ak))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EulerAngles>) istream)
  "Deserializes a message object of type '<EulerAngles>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sequence) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sequence) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'angles_in_degrees) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ai) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aj) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ak) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EulerAngles>)))
  "Returns string type for a message object of type '<EulerAngles>"
  "pal_navigation_msgs/EulerAngles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EulerAngles)))
  "Returns string type for a message object of type 'EulerAngles"
  "pal_navigation_msgs/EulerAngles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EulerAngles>)))
  "Returns md5sum for a message object of type '<EulerAngles>"
  "b41bea25ef0825fa6d2799746a51460f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EulerAngles)))
  "Returns md5sum for a message object of type 'EulerAngles"
  "b41bea25ef0825fa6d2799746a51460f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EulerAngles>)))
  "Returns full string definition for message of type '<EulerAngles>"
  (cl:format cl:nil "string sequence # as per transformations.py, e.g. 'rzyx' for standard yaw-pitch-roll~%bool angles_in_degrees # true if ai, aj, ak are in degrees, otherwise they are in radians~%# rotations about 1st, 2nd, 3rd axis:~%float64 ai~%float64 aj~%float64 ak~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EulerAngles)))
  "Returns full string definition for message of type 'EulerAngles"
  (cl:format cl:nil "string sequence # as per transformations.py, e.g. 'rzyx' for standard yaw-pitch-roll~%bool angles_in_degrees # true if ai, aj, ak are in degrees, otherwise they are in radians~%# rotations about 1st, 2nd, 3rd axis:~%float64 ai~%float64 aj~%float64 ak~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EulerAngles>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sequence))
     1
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EulerAngles>))
  "Converts a ROS message object to a list"
  (cl:list 'EulerAngles
    (cl:cons ':sequence (sequence msg))
    (cl:cons ':angles_in_degrees (angles_in_degrees msg))
    (cl:cons ':ai (ai msg))
    (cl:cons ':aj (aj msg))
    (cl:cons ':ak (ak msg))
))
