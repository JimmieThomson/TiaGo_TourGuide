; Auto-generated. Do not edit!


(cl:in-package pal_detection_msgs-srv)


;//! \htmlinclude StopEnrollment-request.msg.html

(cl:defclass <StopEnrollment-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopEnrollment-request (<StopEnrollment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopEnrollment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopEnrollment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-srv:<StopEnrollment-request> is deprecated: use pal_detection_msgs-srv:StopEnrollment-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopEnrollment-request>) ostream)
  "Serializes a message object of type '<StopEnrollment-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopEnrollment-request>) istream)
  "Deserializes a message object of type '<StopEnrollment-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopEnrollment-request>)))
  "Returns string type for a service object of type '<StopEnrollment-request>"
  "pal_detection_msgs/StopEnrollmentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopEnrollment-request)))
  "Returns string type for a service object of type 'StopEnrollment-request"
  "pal_detection_msgs/StopEnrollmentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopEnrollment-request>)))
  "Returns md5sum for a message object of type '<StopEnrollment-request>"
  "fb84ca50753c7bbc7737a1c5095dac61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopEnrollment-request)))
  "Returns md5sum for a message object of type 'StopEnrollment-request"
  "fb84ca50753c7bbc7737a1c5095dac61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopEnrollment-request>)))
  "Returns full string definition for message of type '<StopEnrollment-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopEnrollment-request)))
  "Returns full string definition for message of type 'StopEnrollment-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopEnrollment-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopEnrollment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopEnrollment-request
))
;//! \htmlinclude StopEnrollment-response.msg.html

(cl:defclass <StopEnrollment-response> (roslisp-msg-protocol:ros-message)
  ((enrollment_ok
    :reader enrollment_ok
    :initarg :enrollment_ok
    :type cl:boolean
    :initform cl:nil)
   (numFacesEnrolled
    :reader numFacesEnrolled
    :initarg :numFacesEnrolled
    :type cl:integer
    :initform 0)
   (error_msg
    :reader error_msg
    :initarg :error_msg
    :type cl:string
    :initform ""))
)

(cl:defclass StopEnrollment-response (<StopEnrollment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopEnrollment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopEnrollment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-srv:<StopEnrollment-response> is deprecated: use pal_detection_msgs-srv:StopEnrollment-response instead.")))

(cl:ensure-generic-function 'enrollment_ok-val :lambda-list '(m))
(cl:defmethod enrollment_ok-val ((m <StopEnrollment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:enrollment_ok-val is deprecated.  Use pal_detection_msgs-srv:enrollment_ok instead.")
  (enrollment_ok m))

(cl:ensure-generic-function 'numFacesEnrolled-val :lambda-list '(m))
(cl:defmethod numFacesEnrolled-val ((m <StopEnrollment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:numFacesEnrolled-val is deprecated.  Use pal_detection_msgs-srv:numFacesEnrolled instead.")
  (numFacesEnrolled m))

(cl:ensure-generic-function 'error_msg-val :lambda-list '(m))
(cl:defmethod error_msg-val ((m <StopEnrollment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:error_msg-val is deprecated.  Use pal_detection_msgs-srv:error_msg instead.")
  (error_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopEnrollment-response>) ostream)
  "Serializes a message object of type '<StopEnrollment-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enrollment_ok) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'numFacesEnrolled)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopEnrollment-response>) istream)
  "Deserializes a message object of type '<StopEnrollment-response>"
    (cl:setf (cl:slot-value msg 'enrollment_ok) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numFacesEnrolled) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopEnrollment-response>)))
  "Returns string type for a service object of type '<StopEnrollment-response>"
  "pal_detection_msgs/StopEnrollmentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopEnrollment-response)))
  "Returns string type for a service object of type 'StopEnrollment-response"
  "pal_detection_msgs/StopEnrollmentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopEnrollment-response>)))
  "Returns md5sum for a message object of type '<StopEnrollment-response>"
  "fb84ca50753c7bbc7737a1c5095dac61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopEnrollment-response)))
  "Returns md5sum for a message object of type 'StopEnrollment-response"
  "fb84ca50753c7bbc7737a1c5095dac61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopEnrollment-response>)))
  "Returns full string definition for message of type '<StopEnrollment-response>"
  (cl:format cl:nil "bool enrollment_ok~%int32 numFacesEnrolled~%string error_msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopEnrollment-response)))
  "Returns full string definition for message of type 'StopEnrollment-response"
  (cl:format cl:nil "bool enrollment_ok~%int32 numFacesEnrolled~%string error_msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopEnrollment-response>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'error_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopEnrollment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopEnrollment-response
    (cl:cons ':enrollment_ok (enrollment_ok msg))
    (cl:cons ':numFacesEnrolled (numFacesEnrolled msg))
    (cl:cons ':error_msg (error_msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopEnrollment)))
  'StopEnrollment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopEnrollment)))
  'StopEnrollment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopEnrollment)))
  "Returns string type for a service object of type '<StopEnrollment>"
  "pal_detection_msgs/StopEnrollment")