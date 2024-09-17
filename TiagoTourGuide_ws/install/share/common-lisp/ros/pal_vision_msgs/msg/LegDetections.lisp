; Auto-generated. Do not edit!


(cl:in-package pal_vision_msgs-msg)


;//! \htmlinclude LegDetections.msg.html

(cl:defclass <LegDetections> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position3D
    :reader position3D
    :initarg :position3D
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass LegDetections (<LegDetections>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LegDetections>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LegDetections)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-msg:<LegDetections> is deprecated: use pal_vision_msgs-msg:LegDetections instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LegDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:header-val is deprecated.  Use pal_vision_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position3D-val :lambda-list '(m))
(cl:defmethod position3D-val ((m <LegDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:position3D-val is deprecated.  Use pal_vision_msgs-msg:position3D instead.")
  (position3D m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LegDetections>) ostream)
  "Serializes a message object of type '<LegDetections>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position3D))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'position3D))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LegDetections>) istream)
  "Deserializes a message object of type '<LegDetections>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position3D) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position3D)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LegDetections>)))
  "Returns string type for a message object of type '<LegDetections>"
  "pal_vision_msgs/LegDetections")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LegDetections)))
  "Returns string type for a message object of type 'LegDetections"
  "pal_vision_msgs/LegDetections")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LegDetections>)))
  "Returns md5sum for a message object of type '<LegDetections>"
  "817c989208cff6eff51aae475bf50d0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LegDetections)))
  "Returns md5sum for a message object of type 'LegDetections"
  "817c989208cff6eff51aae475bf50d0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LegDetections>)))
  "Returns full string definition for message of type '<LegDetections>"
  (cl:format cl:nil "## Contains data relative to the detection of the legs of persons in a laser scan~%~%Header header~%~%geometry_msgs/Point[]  position3D    # 3D position of the persons' legs projected on the ground plane, expressed in the robot frame /base_link~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LegDetections)))
  "Returns full string definition for message of type 'LegDetections"
  (cl:format cl:nil "## Contains data relative to the detection of the legs of persons in a laser scan~%~%Header header~%~%geometry_msgs/Point[]  position3D    # 3D position of the persons' legs projected on the ground plane, expressed in the robot frame /base_link~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LegDetections>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position3D) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LegDetections>))
  "Converts a ROS message object to a list"
  (cl:list 'LegDetections
    (cl:cons ':header (header msg))
    (cl:cons ':position3D (position3D msg))
))
