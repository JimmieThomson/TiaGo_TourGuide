; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude AvailableMaps.msg.html

(cl:defclass <AvailableMaps> (roslisp-msg-protocol:ros-message)
  ((map_names
    :reader map_names
    :initarg :map_names
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String))))
)

(cl:defclass AvailableMaps (<AvailableMaps>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AvailableMaps>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AvailableMaps)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<AvailableMaps> is deprecated: use pal_navigation_msgs-msg:AvailableMaps instead.")))

(cl:ensure-generic-function 'map_names-val :lambda-list '(m))
(cl:defmethod map_names-val ((m <AvailableMaps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:map_names-val is deprecated.  Use pal_navigation_msgs-msg:map_names instead.")
  (map_names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AvailableMaps>) ostream)
  "Serializes a message object of type '<AvailableMaps>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'map_names))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AvailableMaps>) istream)
  "Deserializes a message object of type '<AvailableMaps>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AvailableMaps>)))
  "Returns string type for a message object of type '<AvailableMaps>"
  "pal_navigation_msgs/AvailableMaps")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AvailableMaps)))
  "Returns string type for a message object of type 'AvailableMaps"
  "pal_navigation_msgs/AvailableMaps")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AvailableMaps>)))
  "Returns md5sum for a message object of type '<AvailableMaps>"
  "9db0e90f3d30f37c0bc8af001416200d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AvailableMaps)))
  "Returns md5sum for a message object of type 'AvailableMaps"
  "9db0e90f3d30f37c0bc8af001416200d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AvailableMaps>)))
  "Returns full string definition for message of type '<AvailableMaps>"
  (cl:format cl:nil "# TODO: This may change!~%std_msgs/String[] map_names~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AvailableMaps)))
  "Returns full string definition for message of type 'AvailableMaps"
  (cl:format cl:nil "# TODO: This may change!~%std_msgs/String[] map_names~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AvailableMaps>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AvailableMaps>))
  "Converts a ROS message object to a list"
  (cl:list 'AvailableMaps
    (cl:cons ':map_names (map_names msg))
))
