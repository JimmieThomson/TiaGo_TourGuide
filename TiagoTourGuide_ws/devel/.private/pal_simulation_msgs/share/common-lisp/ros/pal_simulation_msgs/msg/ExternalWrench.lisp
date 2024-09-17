; Auto-generated. Do not edit!


(cl:in-package pal_simulation_msgs-msg)


;//! \htmlinclude ExternalWrench.msg.html

(cl:defclass <ExternalWrench> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (link_name
    :reader link_name
    :initarg :link_name
    :type cl:string
    :initform "")
   (wrench
    :reader wrench
    :initarg :wrench
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (application_point
    :reader application_point
    :initarg :application_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (duration
    :reader duration
    :initarg :duration
    :type cl:real
    :initform 0))
)

(cl:defclass ExternalWrench (<ExternalWrench>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExternalWrench>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExternalWrench)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_simulation_msgs-msg:<ExternalWrench> is deprecated: use pal_simulation_msgs-msg:ExternalWrench instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ExternalWrench>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_simulation_msgs-msg:header-val is deprecated.  Use pal_simulation_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'link_name-val :lambda-list '(m))
(cl:defmethod link_name-val ((m <ExternalWrench>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_simulation_msgs-msg:link_name-val is deprecated.  Use pal_simulation_msgs-msg:link_name instead.")
  (link_name m))

(cl:ensure-generic-function 'wrench-val :lambda-list '(m))
(cl:defmethod wrench-val ((m <ExternalWrench>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_simulation_msgs-msg:wrench-val is deprecated.  Use pal_simulation_msgs-msg:wrench instead.")
  (wrench m))

(cl:ensure-generic-function 'application_point-val :lambda-list '(m))
(cl:defmethod application_point-val ((m <ExternalWrench>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_simulation_msgs-msg:application_point-val is deprecated.  Use pal_simulation_msgs-msg:application_point instead.")
  (application_point m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <ExternalWrench>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_simulation_msgs-msg:duration-val is deprecated.  Use pal_simulation_msgs-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExternalWrench>) ostream)
  "Serializes a message object of type '<ExternalWrench>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wrench) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'application_point) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'duration) (cl:floor (cl:slot-value msg 'duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExternalWrench>) istream)
  "Deserializes a message object of type '<ExternalWrench>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wrench) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'application_point) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExternalWrench>)))
  "Returns string type for a message object of type '<ExternalWrench>"
  "pal_simulation_msgs/ExternalWrench")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExternalWrench)))
  "Returns string type for a message object of type 'ExternalWrench"
  "pal_simulation_msgs/ExternalWrench")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExternalWrench>)))
  "Returns md5sum for a message object of type '<ExternalWrench>"
  "336010778c1866e3bca3bc8a7913851f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExternalWrench)))
  "Returns md5sum for a message object of type 'ExternalWrench"
  "336010778c1866e3bca3bc8a7913851f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExternalWrench>)))
  "Returns full string definition for message of type '<ExternalWrench>"
  (cl:format cl:nil "Header                  header~%~%string                  link_name~%geometry_msgs/Wrench    wrench~%geometry_msgs/Point     application_point~%duration                duration~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExternalWrench)))
  "Returns full string definition for message of type 'ExternalWrench"
  (cl:format cl:nil "Header                  header~%~%string                  link_name~%geometry_msgs/Wrench    wrench~%geometry_msgs/Point     application_point~%duration                duration~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExternalWrench>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'link_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wrench))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'application_point))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExternalWrench>))
  "Converts a ROS message object to a list"
  (cl:list 'ExternalWrench
    (cl:cons ':header (header msg))
    (cl:cons ':link_name (link_name msg))
    (cl:cons ':wrench (wrench msg))
    (cl:cons ':application_point (application_point msg))
    (cl:cons ':duration (duration msg))
))
