; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-srv)


;//! \htmlinclude ListMaps-request.msg.html

(cl:defclass <ListMaps-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ListMaps-request (<ListMaps-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListMaps-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListMaps-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<ListMaps-request> is deprecated: use pal_navigation_msgs-srv:ListMaps-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListMaps-request>) ostream)
  "Serializes a message object of type '<ListMaps-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListMaps-request>) istream)
  "Deserializes a message object of type '<ListMaps-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListMaps-request>)))
  "Returns string type for a service object of type '<ListMaps-request>"
  "pal_navigation_msgs/ListMapsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListMaps-request)))
  "Returns string type for a service object of type 'ListMaps-request"
  "pal_navigation_msgs/ListMapsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListMaps-request>)))
  "Returns md5sum for a message object of type '<ListMaps-request>"
  "1ab49819563e07b1a3a5b6c08ee434d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListMaps-request)))
  "Returns md5sum for a message object of type 'ListMaps-request"
  "1ab49819563e07b1a3a5b6c08ee434d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListMaps-request>)))
  "Returns full string definition for message of type '<ListMaps-request>"
  (cl:format cl:nil "## ListMaps service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListMaps-request)))
  "Returns full string definition for message of type 'ListMaps-request"
  (cl:format cl:nil "## ListMaps service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListMaps-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListMaps-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ListMaps-request
))
;//! \htmlinclude ListMaps-response.msg.html

(cl:defclass <ListMaps-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (maps
    :reader maps
    :initarg :maps
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ListMaps-response (<ListMaps-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListMaps-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListMaps-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<ListMaps-response> is deprecated: use pal_navigation_msgs-srv:ListMaps-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ListMaps-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:success-val is deprecated.  Use pal_navigation_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'maps-val :lambda-list '(m))
(cl:defmethod maps-val ((m <ListMaps-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:maps-val is deprecated.  Use pal_navigation_msgs-srv:maps instead.")
  (maps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListMaps-response>) ostream)
  "Serializes a message object of type '<ListMaps-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'maps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'maps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListMaps-response>) istream)
  "Deserializes a message object of type '<ListMaps-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'maps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'maps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListMaps-response>)))
  "Returns string type for a service object of type '<ListMaps-response>"
  "pal_navigation_msgs/ListMapsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListMaps-response)))
  "Returns string type for a service object of type 'ListMaps-response"
  "pal_navigation_msgs/ListMapsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListMaps-response>)))
  "Returns md5sum for a message object of type '<ListMaps-response>"
  "1ab49819563e07b1a3a5b6c08ee434d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListMaps-response)))
  "Returns md5sum for a message object of type 'ListMaps-response"
  "1ab49819563e07b1a3a5b6c08ee434d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListMaps-response>)))
  "Returns full string definition for message of type '<ListMaps-response>"
  (cl:format cl:nil "bool success~%string[] maps~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListMaps-response)))
  "Returns full string definition for message of type 'ListMaps-response"
  (cl:format cl:nil "bool success~%string[] maps~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListMaps-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'maps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListMaps-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ListMaps-response
    (cl:cons ':success (success msg))
    (cl:cons ':maps (maps msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ListMaps)))
  'ListMaps-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ListMaps)))
  'ListMaps-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListMaps)))
  "Returns string type for a service object of type '<ListMaps>"
  "pal_navigation_msgs/ListMaps")