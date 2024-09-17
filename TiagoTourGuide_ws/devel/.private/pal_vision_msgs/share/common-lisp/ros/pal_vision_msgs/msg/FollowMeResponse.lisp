; Auto-generated. Do not edit!


(cl:in-package pal_vision_msgs-msg)


;//! \htmlinclude FollowMeResponse.msg.html

(cl:defclass <FollowMeResponse> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (targetDetected
    :reader targetDetected
    :initarg :targetDetected
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FollowMeResponse (<FollowMeResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowMeResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowMeResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-msg:<FollowMeResponse> is deprecated: use pal_vision_msgs-msg:FollowMeResponse instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FollowMeResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:header-val is deprecated.  Use pal_vision_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'targetDetected-val :lambda-list '(m))
(cl:defmethod targetDetected-val ((m <FollowMeResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:targetDetected-val is deprecated.  Use pal_vision_msgs-msg:targetDetected instead.")
  (targetDetected m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowMeResponse>) ostream)
  "Serializes a message object of type '<FollowMeResponse>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'targetDetected) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowMeResponse>) istream)
  "Deserializes a message object of type '<FollowMeResponse>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'targetDetected) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowMeResponse>)))
  "Returns string type for a message object of type '<FollowMeResponse>"
  "pal_vision_msgs/FollowMeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowMeResponse)))
  "Returns string type for a message object of type 'FollowMeResponse"
  "pal_vision_msgs/FollowMeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowMeResponse>)))
  "Returns md5sum for a message object of type '<FollowMeResponse>"
  "36315720880eb3a5b4a4ddf6ffd48eec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowMeResponse)))
  "Returns md5sum for a message object of type 'FollowMeResponse"
  "36315720880eb3a5b4a4ddf6ffd48eec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowMeResponse>)))
  "Returns full string definition for message of type '<FollowMeResponse>"
  (cl:format cl:nil "## Contains the response of followMeServer when it is searching for the target person~%~%Header header~%~%bool targetDetected~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowMeResponse)))
  "Returns full string definition for message of type 'FollowMeResponse"
  (cl:format cl:nil "## Contains the response of followMeServer when it is searching for the target person~%~%Header header~%~%bool targetDetected~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowMeResponse>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowMeResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowMeResponse
    (cl:cons ':header (header msg))
    (cl:cons ':targetDetected (targetDetected msg))
))
