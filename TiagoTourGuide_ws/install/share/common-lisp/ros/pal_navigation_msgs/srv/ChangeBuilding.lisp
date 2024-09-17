; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-srv)


;//! \htmlinclude ChangeBuilding-request.msg.html

(cl:defclass <ChangeBuilding-request> (roslisp-msg-protocol:ros-message)
  ((building_name
    :reader building_name
    :initarg :building_name
    :type cl:string
    :initform "")
   (floor_name
    :reader floor_name
    :initarg :floor_name
    :type cl:string
    :initform ""))
)

(cl:defclass ChangeBuilding-request (<ChangeBuilding-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeBuilding-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeBuilding-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<ChangeBuilding-request> is deprecated: use pal_navigation_msgs-srv:ChangeBuilding-request instead.")))

(cl:ensure-generic-function 'building_name-val :lambda-list '(m))
(cl:defmethod building_name-val ((m <ChangeBuilding-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:building_name-val is deprecated.  Use pal_navigation_msgs-srv:building_name instead.")
  (building_name m))

(cl:ensure-generic-function 'floor_name-val :lambda-list '(m))
(cl:defmethod floor_name-val ((m <ChangeBuilding-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:floor_name-val is deprecated.  Use pal_navigation_msgs-srv:floor_name instead.")
  (floor_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeBuilding-request>) ostream)
  "Serializes a message object of type '<ChangeBuilding-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'building_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'building_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'floor_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'floor_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeBuilding-request>) istream)
  "Deserializes a message object of type '<ChangeBuilding-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'building_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'building_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'floor_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'floor_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeBuilding-request>)))
  "Returns string type for a service object of type '<ChangeBuilding-request>"
  "pal_navigation_msgs/ChangeBuildingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeBuilding-request)))
  "Returns string type for a service object of type 'ChangeBuilding-request"
  "pal_navigation_msgs/ChangeBuildingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeBuilding-request>)))
  "Returns md5sum for a message object of type '<ChangeBuilding-request>"
  "f26c9152216ed3be6558d7ed27b2ae57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeBuilding-request)))
  "Returns md5sum for a message object of type 'ChangeBuilding-request"
  "f26c9152216ed3be6558d7ed27b2ae57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeBuilding-request>)))
  "Returns full string definition for message of type '<ChangeBuilding-request>"
  (cl:format cl:nil "## Action for changing the current building and/or the current floor~%string building_name # should correspond to a building description file in ~~/.pal/maps/buildings~%string floor_name # should correspond to a floor name within the building description file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeBuilding-request)))
  "Returns full string definition for message of type 'ChangeBuilding-request"
  (cl:format cl:nil "## Action for changing the current building and/or the current floor~%string building_name # should correspond to a building description file in ~~/.pal/maps/buildings~%string floor_name # should correspond to a floor name within the building description file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeBuilding-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'building_name))
     4 (cl:length (cl:slot-value msg 'floor_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeBuilding-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeBuilding-request
    (cl:cons ':building_name (building_name msg))
    (cl:cons ':floor_name (floor_name msg))
))
;//! \htmlinclude ChangeBuilding-response.msg.html

(cl:defclass <ChangeBuilding-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeBuilding-response (<ChangeBuilding-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeBuilding-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeBuilding-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<ChangeBuilding-response> is deprecated: use pal_navigation_msgs-srv:ChangeBuilding-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ChangeBuilding-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:success-val is deprecated.  Use pal_navigation_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeBuilding-response>) ostream)
  "Serializes a message object of type '<ChangeBuilding-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeBuilding-response>) istream)
  "Deserializes a message object of type '<ChangeBuilding-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeBuilding-response>)))
  "Returns string type for a service object of type '<ChangeBuilding-response>"
  "pal_navigation_msgs/ChangeBuildingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeBuilding-response)))
  "Returns string type for a service object of type 'ChangeBuilding-response"
  "pal_navigation_msgs/ChangeBuildingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeBuilding-response>)))
  "Returns md5sum for a message object of type '<ChangeBuilding-response>"
  "f26c9152216ed3be6558d7ed27b2ae57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeBuilding-response)))
  "Returns md5sum for a message object of type 'ChangeBuilding-response"
  "f26c9152216ed3be6558d7ed27b2ae57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeBuilding-response>)))
  "Returns full string definition for message of type '<ChangeBuilding-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeBuilding-response)))
  "Returns full string definition for message of type 'ChangeBuilding-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeBuilding-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeBuilding-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeBuilding-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeBuilding)))
  'ChangeBuilding-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeBuilding)))
  'ChangeBuilding-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeBuilding)))
  "Returns string type for a service object of type '<ChangeBuilding>"
  "pal_navigation_msgs/ChangeBuilding")