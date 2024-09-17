; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude PolarReadingScan.msg.html

(cl:defclass <PolarReadingScan> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (readings
    :reader readings
    :initarg :readings
    :type (cl:vector pal_navigation_msgs-msg:PolarReading)
   :initform (cl:make-array 0 :element-type 'pal_navigation_msgs-msg:PolarReading :initial-element (cl:make-instance 'pal_navigation_msgs-msg:PolarReading))))
)

(cl:defclass PolarReadingScan (<PolarReadingScan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PolarReadingScan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PolarReadingScan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<PolarReadingScan> is deprecated: use pal_navigation_msgs-msg:PolarReadingScan instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PolarReadingScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:header-val is deprecated.  Use pal_navigation_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'readings-val :lambda-list '(m))
(cl:defmethod readings-val ((m <PolarReadingScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:readings-val is deprecated.  Use pal_navigation_msgs-msg:readings instead.")
  (readings m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PolarReadingScan>) ostream)
  "Serializes a message object of type '<PolarReadingScan>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'readings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'readings))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PolarReadingScan>) istream)
  "Deserializes a message object of type '<PolarReadingScan>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'readings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'readings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_navigation_msgs-msg:PolarReading))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PolarReadingScan>)))
  "Returns string type for a message object of type '<PolarReadingScan>"
  "pal_navigation_msgs/PolarReadingScan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PolarReadingScan)))
  "Returns string type for a message object of type 'PolarReadingScan"
  "pal_navigation_msgs/PolarReadingScan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PolarReadingScan>)))
  "Returns md5sum for a message object of type '<PolarReadingScan>"
  "31bf8adf3389c9066eb83f63abcbe26f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PolarReadingScan)))
  "Returns md5sum for a message object of type 'PolarReadingScan"
  "31bf8adf3389c9066eb83f63abcbe26f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PolarReadingScan>)))
  "Returns full string definition for message of type '<PolarReadingScan>"
  (cl:format cl:nil "# Time of sensor data acquisition, coordinate frame ID.~%Header header~%~%# Polar reading scan: vector of PolarReading(angle, distance)~%pal_navigation_msgs/PolarReading[] readings ~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pal_navigation_msgs/PolarReading~%# Polar reading: a distance to a given angle~%float32 angle # inradians~%~%float32 distance # in meters~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PolarReadingScan)))
  "Returns full string definition for message of type 'PolarReadingScan"
  (cl:format cl:nil "# Time of sensor data acquisition, coordinate frame ID.~%Header header~%~%# Polar reading scan: vector of PolarReading(angle, distance)~%pal_navigation_msgs/PolarReading[] readings ~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pal_navigation_msgs/PolarReading~%# Polar reading: a distance to a given angle~%float32 angle # inradians~%~%float32 distance # in meters~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PolarReadingScan>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'readings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PolarReadingScan>))
  "Converts a ROS message object to a list"
  (cl:list 'PolarReadingScan
    (cl:cons ':header (header msg))
    (cl:cons ':readings (readings msg))
))
