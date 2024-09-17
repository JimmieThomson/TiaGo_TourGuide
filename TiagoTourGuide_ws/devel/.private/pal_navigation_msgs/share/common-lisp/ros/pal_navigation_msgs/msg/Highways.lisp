; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude Highways.msg.html

(cl:defclass <Highways> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (directional
    :reader directional
    :initarg :directional
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (line_width
    :reader line_width
    :initarg :line_width
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (name
    :reader name
    :initarg :name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass Highways (<Highways>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Highways>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Highways)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<Highways> is deprecated: use pal_navigation_msgs-msg:Highways instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Highways>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:points-val is deprecated.  Use pal_navigation_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'directional-val :lambda-list '(m))
(cl:defmethod directional-val ((m <Highways>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:directional-val is deprecated.  Use pal_navigation_msgs-msg:directional instead.")
  (directional m))

(cl:ensure-generic-function 'line_width-val :lambda-list '(m))
(cl:defmethod line_width-val ((m <Highways>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:line_width-val is deprecated.  Use pal_navigation_msgs-msg:line_width instead.")
  (line_width m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Highways>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:name-val is deprecated.  Use pal_navigation_msgs-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Highways>) ostream)
  "Serializes a message object of type '<Highways>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'directional) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'line_width) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'name) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Highways>) istream)
  "Deserializes a message object of type '<Highways>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'directional) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'line_width) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'name) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Highways>)))
  "Returns string type for a message object of type '<Highways>"
  "pal_navigation_msgs/Highways")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Highways)))
  "Returns string type for a message object of type 'Highways"
  "pal_navigation_msgs/Highways")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Highways>)))
  "Returns md5sum for a message object of type '<Highways>"
  "ea8a17a2c3e3e85a215276d3571fb184")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Highways)))
  "Returns md5sum for a message object of type 'Highways"
  "ea8a17a2c3e3e85a215276d3571fb184")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Highways>)))
  "Returns full string definition for message of type '<Highways>"
  (cl:format cl:nil "# Poi (Point of interest)~%~%geometry_msgs/Point[] points~%~%std_msgs/Bool         directional~%~%std_msgs/Float32      line_width~%~%std_msgs/String       name~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Highways)))
  "Returns full string definition for message of type 'Highways"
  (cl:format cl:nil "# Poi (Point of interest)~%~%geometry_msgs/Point[] points~%~%std_msgs/Bool         directional~%~%std_msgs/Float32      line_width~%~%std_msgs/String       name~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Highways>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'directional))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'line_width))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Highways>))
  "Converts a ROS message object to a list"
  (cl:list 'Highways
    (cl:cons ':points (points msg))
    (cl:cons ':directional (directional msg))
    (cl:cons ':line_width (line_width msg))
    (cl:cons ':name (name msg))
))
