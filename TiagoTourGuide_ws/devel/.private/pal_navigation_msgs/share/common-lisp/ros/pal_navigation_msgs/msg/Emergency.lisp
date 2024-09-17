; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude Emergency.msg.html

(cl:defclass <Emergency> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:boolean
    :initform cl:nil)
   (forward
    :reader forward
    :initarg :forward
    :type cl:boolean
    :initform cl:nil)
   (backward
    :reader backward
    :initarg :backward
    :type cl:boolean
    :initform cl:nil)
   (msgs
    :reader msgs
    :initarg :msgs
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String))))
)

(cl:defclass Emergency (<Emergency>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Emergency>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Emergency)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<Emergency> is deprecated: use pal_navigation_msgs-msg:Emergency instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Emergency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:data-val is deprecated.  Use pal_navigation_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'forward-val :lambda-list '(m))
(cl:defmethod forward-val ((m <Emergency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:forward-val is deprecated.  Use pal_navigation_msgs-msg:forward instead.")
  (forward m))

(cl:ensure-generic-function 'backward-val :lambda-list '(m))
(cl:defmethod backward-val ((m <Emergency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:backward-val is deprecated.  Use pal_navigation_msgs-msg:backward instead.")
  (backward m))

(cl:ensure-generic-function 'msgs-val :lambda-list '(m))
(cl:defmethod msgs-val ((m <Emergency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:msgs-val is deprecated.  Use pal_navigation_msgs-msg:msgs instead.")
  (msgs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Emergency>) ostream)
  "Serializes a message object of type '<Emergency>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'forward) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'backward) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'msgs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'msgs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Emergency>) istream)
  "Deserializes a message object of type '<Emergency>"
    (cl:setf (cl:slot-value msg 'data) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'forward) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'backward) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'msgs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'msgs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Emergency>)))
  "Returns string type for a message object of type '<Emergency>"
  "pal_navigation_msgs/Emergency")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Emergency)))
  "Returns string type for a message object of type 'Emergency"
  "pal_navigation_msgs/Emergency")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Emergency>)))
  "Returns md5sum for a message object of type '<Emergency>"
  "a23e1ed551a213a5d03f1cf6db037717")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Emergency)))
  "Returns md5sum for a message object of type 'Emergency"
  "a23e1ed551a213a5d03f1cf6db037717")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Emergency>)))
  "Returns full string definition for message of type '<Emergency>"
  (cl:format cl:nil "# Emergency stop msg~%bool data~%bool forward~%bool backward~%std_msgs/String[] msgs~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Emergency)))
  "Returns full string definition for message of type 'Emergency"
  (cl:format cl:nil "# Emergency stop msg~%bool data~%bool forward~%bool backward~%std_msgs/String[] msgs~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Emergency>))
  (cl:+ 0
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'msgs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Emergency>))
  "Converts a ROS message object to a list"
  (cl:list 'Emergency
    (cl:cons ':data (data msg))
    (cl:cons ':forward (forward msg))
    (cl:cons ':backward (backward msg))
    (cl:cons ':msgs (msgs msg))
))
