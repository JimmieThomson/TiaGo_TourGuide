; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude POIGroup.msg.html

(cl:defclass <POIGroup> (roslisp-msg-protocol:ros-message)
  ((group_name
    :reader group_name
    :initarg :group_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (poi_names
    :reader poi_names
    :initarg :poi_names
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String))))
)

(cl:defclass POIGroup (<POIGroup>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <POIGroup>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'POIGroup)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<POIGroup> is deprecated: use pal_navigation_msgs-msg:POIGroup instead.")))

(cl:ensure-generic-function 'group_name-val :lambda-list '(m))
(cl:defmethod group_name-val ((m <POIGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:group_name-val is deprecated.  Use pal_navigation_msgs-msg:group_name instead.")
  (group_name m))

(cl:ensure-generic-function 'poi_names-val :lambda-list '(m))
(cl:defmethod poi_names-val ((m <POIGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:poi_names-val is deprecated.  Use pal_navigation_msgs-msg:poi_names instead.")
  (poi_names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <POIGroup>) ostream)
  "Serializes a message object of type '<POIGroup>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'group_name) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poi_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poi_names))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <POIGroup>) istream)
  "Deserializes a message object of type '<POIGroup>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'group_name) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poi_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poi_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<POIGroup>)))
  "Returns string type for a message object of type '<POIGroup>"
  "pal_navigation_msgs/POIGroup")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'POIGroup)))
  "Returns string type for a message object of type 'POIGroup"
  "pal_navigation_msgs/POIGroup")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<POIGroup>)))
  "Returns md5sum for a message object of type '<POIGroup>"
  "b26e4f03643dc943e8e2917c6c6e5767")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'POIGroup)))
  "Returns md5sum for a message object of type 'POIGroup"
  "b26e4f03643dc943e8e2917c6c6e5767")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<POIGroup>)))
  "Returns full string definition for message of type '<POIGroup>"
  (cl:format cl:nil "std_msgs/String group_name~%std_msgs/String[] poi_names~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'POIGroup)))
  "Returns full string definition for message of type 'POIGroup"
  (cl:format cl:nil "std_msgs/String group_name~%std_msgs/String[] poi_names~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <POIGroup>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'group_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poi_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <POIGroup>))
  "Converts a ROS message object to a list"
  (cl:list 'POIGroup
    (cl:cons ':group_name (group_name msg))
    (cl:cons ':poi_names (poi_names msg))
))
