; Auto-generated. Do not edit!


(cl:in-package pal_visual_localization_msgs-msg)


;//! \htmlinclude VisualLocRecognizeResult.msg.html

(cl:defclass <VisualLocRecognizeResult> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (estimatedPose
    :reader estimatedPose
    :initarg :estimatedPose
    :type geometry_msgs-msg:PoseWithCovarianceStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovarianceStamped)))
)

(cl:defclass VisualLocRecognizeResult (<VisualLocRecognizeResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisualLocRecognizeResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisualLocRecognizeResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_visual_localization_msgs-msg:<VisualLocRecognizeResult> is deprecated: use pal_visual_localization_msgs-msg:VisualLocRecognizeResult instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <VisualLocRecognizeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_visual_localization_msgs-msg:success-val is deprecated.  Use pal_visual_localization_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <VisualLocRecognizeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_visual_localization_msgs-msg:confidence-val is deprecated.  Use pal_visual_localization_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'estimatedPose-val :lambda-list '(m))
(cl:defmethod estimatedPose-val ((m <VisualLocRecognizeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_visual_localization_msgs-msg:estimatedPose-val is deprecated.  Use pal_visual_localization_msgs-msg:estimatedPose instead.")
  (estimatedPose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisualLocRecognizeResult>) ostream)
  "Serializes a message object of type '<VisualLocRecognizeResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'estimatedPose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisualLocRecognizeResult>) istream)
  "Deserializes a message object of type '<VisualLocRecognizeResult>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'estimatedPose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisualLocRecognizeResult>)))
  "Returns string type for a message object of type '<VisualLocRecognizeResult>"
  "pal_visual_localization_msgs/VisualLocRecognizeResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisualLocRecognizeResult)))
  "Returns string type for a message object of type 'VisualLocRecognizeResult"
  "pal_visual_localization_msgs/VisualLocRecognizeResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisualLocRecognizeResult>)))
  "Returns md5sum for a message object of type '<VisualLocRecognizeResult>"
  "af944bb003989194ffe33120c472f3ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisualLocRecognizeResult)))
  "Returns md5sum for a message object of type 'VisualLocRecognizeResult"
  "af944bb003989194ffe33120c472f3ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisualLocRecognizeResult>)))
  "Returns full string definition for message of type '<VisualLocRecognizeResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool success                                               # return true if get successful recognition~%float64 confidence                                         # recognition confidence~%geometry_msgs/PoseWithCovarianceStamped estimatedPose      # estimated pose (use this only when success == true)~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisualLocRecognizeResult)))
  "Returns full string definition for message of type 'VisualLocRecognizeResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool success                                               # return true if get successful recognition~%float64 confidence                                         # recognition confidence~%geometry_msgs/PoseWithCovarianceStamped estimatedPose      # estimated pose (use this only when success == true)~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisualLocRecognizeResult>))
  (cl:+ 0
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'estimatedPose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisualLocRecognizeResult>))
  "Converts a ROS message object to a list"
  (cl:list 'VisualLocRecognizeResult
    (cl:cons ':success (success msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':estimatedPose (estimatedPose msg))
))
