; Auto-generated. Do not edit!


(cl:in-package pal_control_msgs-msg)


;//! \htmlinclude MotionManagerGoal.msg.html

(cl:defclass <MotionManagerGoal> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform "")
   (plan
    :reader plan
    :initarg :plan
    :type cl:boolean
    :initform cl:nil)
   (checkSafety
    :reader checkSafety
    :initarg :checkSafety
    :type cl:boolean
    :initform cl:nil)
   (repeat
    :reader repeat
    :initarg :repeat
    :type cl:boolean
    :initform cl:nil)
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0)
   (queueTimeout
    :reader queueTimeout
    :initarg :queueTimeout
    :type cl:integer
    :initform 0))
)

(cl:defclass MotionManagerGoal (<MotionManagerGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionManagerGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionManagerGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_control_msgs-msg:<MotionManagerGoal> is deprecated: use pal_control_msgs-msg:MotionManagerGoal instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <MotionManagerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_control_msgs-msg:filename-val is deprecated.  Use pal_control_msgs-msg:filename instead.")
  (filename m))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <MotionManagerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_control_msgs-msg:plan-val is deprecated.  Use pal_control_msgs-msg:plan instead.")
  (plan m))

(cl:ensure-generic-function 'checkSafety-val :lambda-list '(m))
(cl:defmethod checkSafety-val ((m <MotionManagerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_control_msgs-msg:checkSafety-val is deprecated.  Use pal_control_msgs-msg:checkSafety instead.")
  (checkSafety m))

(cl:ensure-generic-function 'repeat-val :lambda-list '(m))
(cl:defmethod repeat-val ((m <MotionManagerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_control_msgs-msg:repeat-val is deprecated.  Use pal_control_msgs-msg:repeat instead.")
  (repeat m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <MotionManagerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_control_msgs-msg:priority-val is deprecated.  Use pal_control_msgs-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'queueTimeout-val :lambda-list '(m))
(cl:defmethod queueTimeout-val ((m <MotionManagerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_control_msgs-msg:queueTimeout-val is deprecated.  Use pal_control_msgs-msg:queueTimeout instead.")
  (queueTimeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionManagerGoal>) ostream)
  "Serializes a message object of type '<MotionManagerGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'plan) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'checkSafety) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'repeat) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'queueTimeout)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionManagerGoal>) istream)
  "Deserializes a message object of type '<MotionManagerGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'plan) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'checkSafety) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'repeat) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'queueTimeout) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionManagerGoal>)))
  "Returns string type for a message object of type '<MotionManagerGoal>"
  "pal_control_msgs/MotionManagerGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionManagerGoal)))
  "Returns string type for a message object of type 'MotionManagerGoal"
  "pal_control_msgs/MotionManagerGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionManagerGoal>)))
  "Returns md5sum for a message object of type '<MotionManagerGoal>"
  "6cfa0989c229a7ae793c273afdc78ead")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionManagerGoal)))
  "Returns md5sum for a message object of type 'MotionManagerGoal"
  "6cfa0989c229a7ae793c273afdc78ead")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionManagerGoal>)))
  "Returns full string definition for message of type '<MotionManagerGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Path to XML file containing motions for the robot~%string filename~%~%# True if a collision-free approach motion and trajectory validation are to be performed.~%# If set to true but an approach motion is not required, it will not be computed.~%bool plan~%~%#True if safety around the robot must be checked using sensors such as the sonars and lasers~%bool checkSafety~%~%#True if the motion must be repeated until a new goal has been received~%bool repeat~%~%#priority of the motion, 0 is no priority, 100 is max priority~%uint8 priority~%~%#Specifies how long in miliseconds should the goal wait before forcing an execution. If a movement is being executed when the goal is received, it will wait the specified time or until the movement finishes to execute it.~%# -1 Means wait forever until the previous movement has finished~%int32 queueTimeout ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionManagerGoal)))
  "Returns full string definition for message of type 'MotionManagerGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Path to XML file containing motions for the robot~%string filename~%~%# True if a collision-free approach motion and trajectory validation are to be performed.~%# If set to true but an approach motion is not required, it will not be computed.~%bool plan~%~%#True if safety around the robot must be checked using sensors such as the sonars and lasers~%bool checkSafety~%~%#True if the motion must be repeated until a new goal has been received~%bool repeat~%~%#priority of the motion, 0 is no priority, 100 is max priority~%uint8 priority~%~%#Specifies how long in miliseconds should the goal wait before forcing an execution. If a movement is being executed when the goal is received, it will wait the specified time or until the movement finishes to execute it.~%# -1 Means wait forever until the previous movement has finished~%int32 queueTimeout ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionManagerGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
     1
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionManagerGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionManagerGoal
    (cl:cons ':filename (filename msg))
    (cl:cons ':plan (plan msg))
    (cl:cons ':checkSafety (checkSafety msg))
    (cl:cons ':repeat (repeat msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':queueTimeout (queueTimeout msg))
))
