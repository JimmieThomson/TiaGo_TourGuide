; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude ServiceStatus.msg.html

(cl:defclass <ServiceStatus> (roslisp-msg-protocol:ros-message)
  ((serviceName
    :reader serviceName
    :initarg :serviceName
    :type cl:string
    :initform "")
   (is_running
    :reader is_running
    :initarg :is_running
    :type cl:boolean
    :initform cl:nil)
   (update_frequency
    :reader update_frequency
    :initarg :update_frequency
    :type cl:float
    :initform 0.0)
   (latest_run_time
    :reader latest_run_time
    :initarg :latest_run_time
    :type cl:real
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ServiceStatus (<ServiceStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<ServiceStatus> is deprecated: use pal_navigation_msgs-msg:ServiceStatus instead.")))

(cl:ensure-generic-function 'serviceName-val :lambda-list '(m))
(cl:defmethod serviceName-val ((m <ServiceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:serviceName-val is deprecated.  Use pal_navigation_msgs-msg:serviceName instead.")
  (serviceName m))

(cl:ensure-generic-function 'is_running-val :lambda-list '(m))
(cl:defmethod is_running-val ((m <ServiceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:is_running-val is deprecated.  Use pal_navigation_msgs-msg:is_running instead.")
  (is_running m))

(cl:ensure-generic-function 'update_frequency-val :lambda-list '(m))
(cl:defmethod update_frequency-val ((m <ServiceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:update_frequency-val is deprecated.  Use pal_navigation_msgs-msg:update_frequency instead.")
  (update_frequency m))

(cl:ensure-generic-function 'latest_run_time-val :lambda-list '(m))
(cl:defmethod latest_run_time-val ((m <ServiceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:latest_run_time-val is deprecated.  Use pal_navigation_msgs-msg:latest_run_time instead.")
  (latest_run_time m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ServiceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:status-val is deprecated.  Use pal_navigation_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceStatus>) ostream)
  "Serializes a message object of type '<ServiceStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serviceName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serviceName))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_running) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'update_frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'latest_run_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'latest_run_time) (cl:floor (cl:slot-value msg 'latest_run_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceStatus>) istream)
  "Deserializes a message object of type '<ServiceStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serviceName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serviceName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_running) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'update_frequency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'latest_run_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceStatus>)))
  "Returns string type for a message object of type '<ServiceStatus>"
  "pal_navigation_msgs/ServiceStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceStatus)))
  "Returns string type for a message object of type 'ServiceStatus"
  "pal_navigation_msgs/ServiceStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceStatus>)))
  "Returns md5sum for a message object of type '<ServiceStatus>"
  "b734cea5bf73c81e5fb0d99553451daa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceStatus)))
  "Returns md5sum for a message object of type 'ServiceStatus"
  "b734cea5bf73c81e5fb0d99553451daa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceStatus>)))
  "Returns full string definition for message of type '<ServiceStatus>"
  (cl:format cl:nil "# Navigation ServiceStatus msg ~%string serviceName~%~%#true if the service has been started~%bool    is_running~%~%#expected frequency of control loop (in hertz)~%float32 update_frequency~%~%#Timestamp of the latest loop cycle execution~%time    latest_run_time~%~%#true if the service is running and working fine~%bool    status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceStatus)))
  "Returns full string definition for message of type 'ServiceStatus"
  (cl:format cl:nil "# Navigation ServiceStatus msg ~%string serviceName~%~%#true if the service has been started~%bool    is_running~%~%#expected frequency of control loop (in hertz)~%float32 update_frequency~%~%#Timestamp of the latest loop cycle execution~%time    latest_run_time~%~%#true if the service is running and working fine~%bool    status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'serviceName))
     1
     4
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceStatus
    (cl:cons ':serviceName (serviceName msg))
    (cl:cons ':is_running (is_running msg))
    (cl:cons ':update_frequency (update_frequency msg))
    (cl:cons ':latest_run_time (latest_run_time msg))
    (cl:cons ':status (status msg))
))
