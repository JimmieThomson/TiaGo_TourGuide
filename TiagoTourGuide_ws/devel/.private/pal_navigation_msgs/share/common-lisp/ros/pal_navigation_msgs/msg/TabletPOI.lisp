; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude TabletPOI.msg.html

(cl:defclass <TabletPOI> (roslisp-msg-protocol:ros-message)
  ((POIs
    :reader POIs
    :initarg :POIs
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (IDs
    :reader IDs
    :initarg :IDs
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (map_id
    :reader map_id
    :initarg :map_id
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass TabletPOI (<TabletPOI>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TabletPOI>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TabletPOI)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<TabletPOI> is deprecated: use pal_navigation_msgs-msg:TabletPOI instead.")))

(cl:ensure-generic-function 'POIs-val :lambda-list '(m))
(cl:defmethod POIs-val ((m <TabletPOI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:POIs-val is deprecated.  Use pal_navigation_msgs-msg:POIs instead.")
  (POIs m))

(cl:ensure-generic-function 'IDs-val :lambda-list '(m))
(cl:defmethod IDs-val ((m <TabletPOI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:IDs-val is deprecated.  Use pal_navigation_msgs-msg:IDs instead.")
  (IDs m))

(cl:ensure-generic-function 'map_id-val :lambda-list '(m))
(cl:defmethod map_id-val ((m <TabletPOI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:map_id-val is deprecated.  Use pal_navigation_msgs-msg:map_id instead.")
  (map_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TabletPOI>) ostream)
  "Serializes a message object of type '<TabletPOI>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'POIs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'POIs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'IDs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'IDs))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map_id) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TabletPOI>) istream)
  "Deserializes a message object of type '<TabletPOI>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'POIs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'POIs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'IDs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'IDs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map_id) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TabletPOI>)))
  "Returns string type for a message object of type '<TabletPOI>"
  "pal_navigation_msgs/TabletPOI")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TabletPOI)))
  "Returns string type for a message object of type 'TabletPOI"
  "pal_navigation_msgs/TabletPOI")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TabletPOI>)))
  "Returns md5sum for a message object of type '<TabletPOI>"
  "2ec4b22e981d882e9e77e8562cb8c5fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TabletPOI)))
  "Returns md5sum for a message object of type 'TabletPOI"
  "2ec4b22e981d882e9e77e8562cb8c5fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TabletPOI>)))
  "Returns full string definition for message of type '<TabletPOI>"
  (cl:format cl:nil "geometry_msgs/Point[] POIs~%~%std_msgs/String[] IDs~%~%std_msgs/String map_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TabletPOI)))
  "Returns full string definition for message of type 'TabletPOI"
  (cl:format cl:nil "geometry_msgs/Point[] POIs~%~%std_msgs/String[] IDs~%~%std_msgs/String map_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TabletPOI>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'POIs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'IDs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TabletPOI>))
  "Converts a ROS message object to a list"
  (cl:list 'TabletPOI
    (cl:cons ':POIs (POIs msg))
    (cl:cons ':IDs (IDs msg))
    (cl:cons ':map_id (map_id msg))
))
