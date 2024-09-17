; Auto-generated. Do not edit!


(cl:in-package pal_detection_msgs-msg)


;//! \htmlinclude Detections2d.msg.html

(cl:defclass <Detections2d> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (detections
    :reader detections
    :initarg :detections
    :type (cl:vector pal_detection_msgs-msg:Detection2d)
   :initform (cl:make-array 0 :element-type 'pal_detection_msgs-msg:Detection2d :initial-element (cl:make-instance 'pal_detection_msgs-msg:Detection2d)))
   (camera_pose
    :reader camera_pose
    :initarg :camera_pose
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped)))
)

(cl:defclass Detections2d (<Detections2d>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Detections2d>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Detections2d)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-msg:<Detections2d> is deprecated: use pal_detection_msgs-msg:Detections2d instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Detections2d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:header-val is deprecated.  Use pal_detection_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'detections-val :lambda-list '(m))
(cl:defmethod detections-val ((m <Detections2d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:detections-val is deprecated.  Use pal_detection_msgs-msg:detections instead.")
  (detections m))

(cl:ensure-generic-function 'camera_pose-val :lambda-list '(m))
(cl:defmethod camera_pose-val ((m <Detections2d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:camera_pose-val is deprecated.  Use pal_detection_msgs-msg:camera_pose instead.")
  (camera_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Detections2d>) ostream)
  "Serializes a message object of type '<Detections2d>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detections))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Detections2d>) istream)
  "Deserializes a message object of type '<Detections2d>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_detection_msgs-msg:Detection2d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Detections2d>)))
  "Returns string type for a message object of type '<Detections2d>"
  "pal_detection_msgs/Detections2d")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detections2d)))
  "Returns string type for a message object of type 'Detections2d"
  "pal_detection_msgs/Detections2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Detections2d>)))
  "Returns md5sum for a message object of type '<Detections2d>"
  "508e4e5ac7930673178d3ead64ba3f4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Detections2d)))
  "Returns md5sum for a message object of type 'Detections2d"
  "508e4e5ac7930673178d3ead64ba3f4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Detections2d>)))
  "Returns full string definition for message of type '<Detections2d>"
  (cl:format cl:nil "Header header~%~%pal_detection_msgs/Detection2d[]  detections~%~%# Optional transformation between the camera frame and a certain parent frame~%geometry_msgs/TransformStamped camera_pose~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pal_detection_msgs/Detection2d~%## Rectangle defined by a point, its width and height~%# corresponds to the openCV struct : CvRect~%~%# coordinates of the top left corner of the box~%int64 x~%int64 y~%~%# width of the box~%int64 width~%~%# height of the box~%int64 height~%~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Detections2d)))
  "Returns full string definition for message of type 'Detections2d"
  (cl:format cl:nil "Header header~%~%pal_detection_msgs/Detection2d[]  detections~%~%# Optional transformation between the camera frame and a certain parent frame~%geometry_msgs/TransformStamped camera_pose~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pal_detection_msgs/Detection2d~%## Rectangle defined by a point, its width and height~%# corresponds to the openCV struct : CvRect~%~%# coordinates of the top left corner of the box~%int64 x~%int64 y~%~%# width of the box~%int64 width~%~%# height of the box~%int64 height~%~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Detections2d>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Detections2d>))
  "Converts a ROS message object to a list"
  (cl:list 'Detections2d
    (cl:cons ':header (header msg))
    (cl:cons ':detections (detections msg))
    (cl:cons ':camera_pose (camera_pose msg))
))
