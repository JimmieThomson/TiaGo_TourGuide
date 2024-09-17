; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude GoToPOIFeedback.msg.html

(cl:defclass <GoToPOIFeedback> (roslisp-msg-protocol:ros-message)
  ((base_position
    :reader base_position
    :initarg :base_position
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass GoToPOIFeedback (<GoToPOIFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToPOIFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToPOIFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<GoToPOIFeedback> is deprecated: use pal_navigation_msgs-msg:GoToPOIFeedback instead.")))

(cl:ensure-generic-function 'base_position-val :lambda-list '(m))
(cl:defmethod base_position-val ((m <GoToPOIFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:base_position-val is deprecated.  Use pal_navigation_msgs-msg:base_position instead.")
  (base_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToPOIFeedback>) ostream)
  "Serializes a message object of type '<GoToPOIFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base_position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToPOIFeedback>) istream)
  "Deserializes a message object of type '<GoToPOIFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base_position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToPOIFeedback>)))
  "Returns string type for a message object of type '<GoToPOIFeedback>"
  "pal_navigation_msgs/GoToPOIFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToPOIFeedback)))
  "Returns string type for a message object of type 'GoToPOIFeedback"
  "pal_navigation_msgs/GoToPOIFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToPOIFeedback>)))
  "Returns md5sum for a message object of type '<GoToPOIFeedback>"
  "3fb824c456a757373a226f6d08071bf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToPOIFeedback)))
  "Returns md5sum for a message object of type 'GoToPOIFeedback"
  "3fb824c456a757373a226f6d08071bf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToPOIFeedback>)))
  "Returns full string definition for message of type '<GoToPOIFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/PoseStamped base_position~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToPOIFeedback)))
  "Returns full string definition for message of type 'GoToPOIFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/PoseStamped base_position~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToPOIFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base_position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToPOIFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToPOIFeedback
    (cl:cons ':base_position (base_position msg))
))
