; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude EulerAnglesStamped.msg.html

(cl:defclass <EulerAnglesStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (angles
    :reader angles
    :initarg :angles
    :type pal_navigation_msgs-msg:EulerAngles
    :initform (cl:make-instance 'pal_navigation_msgs-msg:EulerAngles)))
)

(cl:defclass EulerAnglesStamped (<EulerAnglesStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EulerAnglesStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EulerAnglesStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<EulerAnglesStamped> is deprecated: use pal_navigation_msgs-msg:EulerAnglesStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EulerAnglesStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:header-val is deprecated.  Use pal_navigation_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'angles-val :lambda-list '(m))
(cl:defmethod angles-val ((m <EulerAnglesStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:angles-val is deprecated.  Use pal_navigation_msgs-msg:angles instead.")
  (angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EulerAnglesStamped>) ostream)
  "Serializes a message object of type '<EulerAnglesStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angles) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EulerAnglesStamped>) istream)
  "Deserializes a message object of type '<EulerAnglesStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angles) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EulerAnglesStamped>)))
  "Returns string type for a message object of type '<EulerAnglesStamped>"
  "pal_navigation_msgs/EulerAnglesStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EulerAnglesStamped)))
  "Returns string type for a message object of type 'EulerAnglesStamped"
  "pal_navigation_msgs/EulerAnglesStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EulerAnglesStamped>)))
  "Returns md5sum for a message object of type '<EulerAnglesStamped>"
  "08ed1513cf62c3aa9d3f21c206745853")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EulerAnglesStamped)))
  "Returns md5sum for a message object of type 'EulerAnglesStamped"
  "08ed1513cf62c3aa9d3f21c206745853")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EulerAnglesStamped>)))
  "Returns full string definition for message of type '<EulerAnglesStamped>"
  (cl:format cl:nil "Header header~%EulerAngles angles~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pal_navigation_msgs/EulerAngles~%string sequence # as per transformations.py, e.g. 'rzyx' for standard yaw-pitch-roll~%bool angles_in_degrees # true if ai, aj, ak are in degrees, otherwise they are in radians~%# rotations about 1st, 2nd, 3rd axis:~%float64 ai~%float64 aj~%float64 ak~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EulerAnglesStamped)))
  "Returns full string definition for message of type 'EulerAnglesStamped"
  (cl:format cl:nil "Header header~%EulerAngles angles~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pal_navigation_msgs/EulerAngles~%string sequence # as per transformations.py, e.g. 'rzyx' for standard yaw-pitch-roll~%bool angles_in_degrees # true if ai, aj, ak are in degrees, otherwise they are in radians~%# rotations about 1st, 2nd, 3rd axis:~%float64 ai~%float64 aj~%float64 ak~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EulerAnglesStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angles))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EulerAnglesStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'EulerAnglesStamped
    (cl:cons ':header (header msg))
    (cl:cons ':angles (angles msg))
))
