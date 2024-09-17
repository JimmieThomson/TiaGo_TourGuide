; Auto-generated. Do not edit!


(cl:in-package pal_motion_model_msgs-msg)


;//! \htmlinclude MotionModel.msg.html

(cl:defclass <MotionModel> (roslisp-msg-protocol:ros-message)
  ((heading_mean
    :reader heading_mean
    :initarg :heading_mean
    :type cl:float
    :initform 0.0)
   (heading_std_dev
    :reader heading_std_dev
    :initarg :heading_std_dev
    :type cl:float
    :initform 0.0)
   (linear_speed_mean
    :reader linear_speed_mean
    :initarg :linear_speed_mean
    :type cl:float
    :initform 0.0)
   (linear_speed_std_dev
    :reader linear_speed_std_dev
    :initarg :linear_speed_std_dev
    :type cl:float
    :initform 0.0)
   (angular_speed_mean
    :reader angular_speed_mean
    :initarg :angular_speed_mean
    :type cl:float
    :initform 0.0)
   (angular_speed_std_dev
    :reader angular_speed_std_dev
    :initarg :angular_speed_std_dev
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotionModel (<MotionModel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionModel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionModel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_motion_model_msgs-msg:<MotionModel> is deprecated: use pal_motion_model_msgs-msg:MotionModel instead.")))

(cl:ensure-generic-function 'heading_mean-val :lambda-list '(m))
(cl:defmethod heading_mean-val ((m <MotionModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_motion_model_msgs-msg:heading_mean-val is deprecated.  Use pal_motion_model_msgs-msg:heading_mean instead.")
  (heading_mean m))

(cl:ensure-generic-function 'heading_std_dev-val :lambda-list '(m))
(cl:defmethod heading_std_dev-val ((m <MotionModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_motion_model_msgs-msg:heading_std_dev-val is deprecated.  Use pal_motion_model_msgs-msg:heading_std_dev instead.")
  (heading_std_dev m))

(cl:ensure-generic-function 'linear_speed_mean-val :lambda-list '(m))
(cl:defmethod linear_speed_mean-val ((m <MotionModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_motion_model_msgs-msg:linear_speed_mean-val is deprecated.  Use pal_motion_model_msgs-msg:linear_speed_mean instead.")
  (linear_speed_mean m))

(cl:ensure-generic-function 'linear_speed_std_dev-val :lambda-list '(m))
(cl:defmethod linear_speed_std_dev-val ((m <MotionModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_motion_model_msgs-msg:linear_speed_std_dev-val is deprecated.  Use pal_motion_model_msgs-msg:linear_speed_std_dev instead.")
  (linear_speed_std_dev m))

(cl:ensure-generic-function 'angular_speed_mean-val :lambda-list '(m))
(cl:defmethod angular_speed_mean-val ((m <MotionModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_motion_model_msgs-msg:angular_speed_mean-val is deprecated.  Use pal_motion_model_msgs-msg:angular_speed_mean instead.")
  (angular_speed_mean m))

(cl:ensure-generic-function 'angular_speed_std_dev-val :lambda-list '(m))
(cl:defmethod angular_speed_std_dev-val ((m <MotionModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_motion_model_msgs-msg:angular_speed_std_dev-val is deprecated.  Use pal_motion_model_msgs-msg:angular_speed_std_dev instead.")
  (angular_speed_std_dev m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionModel>) ostream)
  "Serializes a message object of type '<MotionModel>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading_mean))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading_std_dev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_speed_mean))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_speed_std_dev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_speed_mean))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_speed_std_dev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionModel>) istream)
  "Deserializes a message object of type '<MotionModel>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading_mean) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading_std_dev) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_speed_mean) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_speed_std_dev) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_speed_mean) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_speed_std_dev) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionModel>)))
  "Returns string type for a message object of type '<MotionModel>"
  "pal_motion_model_msgs/MotionModel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionModel)))
  "Returns string type for a message object of type 'MotionModel"
  "pal_motion_model_msgs/MotionModel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionModel>)))
  "Returns md5sum for a message object of type '<MotionModel>"
  "fe7c341575e9287349aa5851bafdbb40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionModel)))
  "Returns md5sum for a message object of type 'MotionModel"
  "fe7c341575e9287349aa5851bafdbb40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionModel>)))
  "Returns full string definition for message of type '<MotionModel>"
  (cl:format cl:nil "## Contains the 2D motion model of a robot at a specific location~%~%#Heading direction is represented through a gaussian pdf.~%float32  heading_mean~%float32  heading_std_dev~%~%#For statistics we store a pdf over the robot speeds~%float32  linear_speed_mean~%float32  linear_speed_std_dev~%float32  angular_speed_mean~%float32  angular_speed_std_dev~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionModel)))
  "Returns full string definition for message of type 'MotionModel"
  (cl:format cl:nil "## Contains the 2D motion model of a robot at a specific location~%~%#Heading direction is represented through a gaussian pdf.~%float32  heading_mean~%float32  heading_std_dev~%~%#For statistics we store a pdf over the robot speeds~%float32  linear_speed_mean~%float32  linear_speed_std_dev~%float32  angular_speed_mean~%float32  angular_speed_std_dev~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionModel>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionModel>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionModel
    (cl:cons ':heading_mean (heading_mean msg))
    (cl:cons ':heading_std_dev (heading_std_dev msg))
    (cl:cons ':linear_speed_mean (linear_speed_mean msg))
    (cl:cons ':linear_speed_std_dev (linear_speed_std_dev msg))
    (cl:cons ':angular_speed_mean (angular_speed_mean msg))
    (cl:cons ':angular_speed_std_dev (angular_speed_std_dev msg))
))
