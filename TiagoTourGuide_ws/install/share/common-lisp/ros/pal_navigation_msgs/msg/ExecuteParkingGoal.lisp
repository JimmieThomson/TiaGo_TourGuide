; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude ExecuteParkingGoal.msg.html

(cl:defclass <ExecuteParkingGoal> (roslisp-msg-protocol:ros-message)
  ((source_frame
    :reader source_frame
    :initarg :source_frame
    :type cl:string
    :initform "")
   (target_frame
    :reader target_frame
    :initarg :target_frame
    :type cl:string
    :initform "")
   (backwards
    :reader backwards
    :initarg :backwards
    :type cl:boolean
    :initform cl:nil)
   (max_lin_vel
    :reader max_lin_vel
    :initarg :max_lin_vel
    :type cl:float
    :initform 0.0)
   (max_rot_vel
    :reader max_rot_vel
    :initarg :max_rot_vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass ExecuteParkingGoal (<ExecuteParkingGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecuteParkingGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecuteParkingGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<ExecuteParkingGoal> is deprecated: use pal_navigation_msgs-msg:ExecuteParkingGoal instead.")))

(cl:ensure-generic-function 'source_frame-val :lambda-list '(m))
(cl:defmethod source_frame-val ((m <ExecuteParkingGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:source_frame-val is deprecated.  Use pal_navigation_msgs-msg:source_frame instead.")
  (source_frame m))

(cl:ensure-generic-function 'target_frame-val :lambda-list '(m))
(cl:defmethod target_frame-val ((m <ExecuteParkingGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:target_frame-val is deprecated.  Use pal_navigation_msgs-msg:target_frame instead.")
  (target_frame m))

(cl:ensure-generic-function 'backwards-val :lambda-list '(m))
(cl:defmethod backwards-val ((m <ExecuteParkingGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:backwards-val is deprecated.  Use pal_navigation_msgs-msg:backwards instead.")
  (backwards m))

(cl:ensure-generic-function 'max_lin_vel-val :lambda-list '(m))
(cl:defmethod max_lin_vel-val ((m <ExecuteParkingGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:max_lin_vel-val is deprecated.  Use pal_navigation_msgs-msg:max_lin_vel instead.")
  (max_lin_vel m))

(cl:ensure-generic-function 'max_rot_vel-val :lambda-list '(m))
(cl:defmethod max_rot_vel-val ((m <ExecuteParkingGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:max_rot_vel-val is deprecated.  Use pal_navigation_msgs-msg:max_rot_vel instead.")
  (max_rot_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecuteParkingGoal>) ostream)
  "Serializes a message object of type '<ExecuteParkingGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_frame))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'backwards) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_lin_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_rot_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecuteParkingGoal>) istream)
  "Deserializes a message object of type '<ExecuteParkingGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'backwards) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_lin_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_rot_vel) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecuteParkingGoal>)))
  "Returns string type for a message object of type '<ExecuteParkingGoal>"
  "pal_navigation_msgs/ExecuteParkingGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteParkingGoal)))
  "Returns string type for a message object of type 'ExecuteParkingGoal"
  "pal_navigation_msgs/ExecuteParkingGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecuteParkingGoal>)))
  "Returns md5sum for a message object of type '<ExecuteParkingGoal>"
  "63333f38d3232e64556e90a5308fc7b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecuteParkingGoal)))
  "Returns md5sum for a message object of type 'ExecuteParkingGoal"
  "63333f38d3232e64556e90a5308fc7b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecuteParkingGoal>)))
  "Returns full string definition for message of type '<ExecuteParkingGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%string source_frame~%string target_frame~%bool backwards~%float64 max_lin_vel~%float64 max_rot_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecuteParkingGoal)))
  "Returns full string definition for message of type 'ExecuteParkingGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%string source_frame~%string target_frame~%bool backwards~%float64 max_lin_vel~%float64 max_rot_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecuteParkingGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'source_frame))
     4 (cl:length (cl:slot-value msg 'target_frame))
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecuteParkingGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecuteParkingGoal
    (cl:cons ':source_frame (source_frame msg))
    (cl:cons ':target_frame (target_frame msg))
    (cl:cons ':backwards (backwards msg))
    (cl:cons ':max_lin_vel (max_lin_vel msg))
    (cl:cons ':max_rot_vel (max_rot_vel msg))
))
