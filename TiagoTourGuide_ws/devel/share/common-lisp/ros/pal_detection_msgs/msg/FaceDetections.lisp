; Auto-generated. Do not edit!


(cl:in-package pal_detection_msgs-msg)


;//! \htmlinclude FaceDetections.msg.html

(cl:defclass <FaceDetections> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (faces
    :reader faces
    :initarg :faces
    :type (cl:vector pal_detection_msgs-msg:FaceDetection)
   :initform (cl:make-array 0 :element-type 'pal_detection_msgs-msg:FaceDetection :initial-element (cl:make-instance 'pal_detection_msgs-msg:FaceDetection)))
   (camera_pose
    :reader camera_pose
    :initarg :camera_pose
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped)))
)

(cl:defclass FaceDetections (<FaceDetections>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceDetections>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceDetections)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-msg:<FaceDetections> is deprecated: use pal_detection_msgs-msg:FaceDetections instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FaceDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:header-val is deprecated.  Use pal_detection_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'faces-val :lambda-list '(m))
(cl:defmethod faces-val ((m <FaceDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:faces-val is deprecated.  Use pal_detection_msgs-msg:faces instead.")
  (faces m))

(cl:ensure-generic-function 'camera_pose-val :lambda-list '(m))
(cl:defmethod camera_pose-val ((m <FaceDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:camera_pose-val is deprecated.  Use pal_detection_msgs-msg:camera_pose instead.")
  (camera_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceDetections>) ostream)
  "Serializes a message object of type '<FaceDetections>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'faces))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'faces))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceDetections>) istream)
  "Deserializes a message object of type '<FaceDetections>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'faces) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'faces)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_detection_msgs-msg:FaceDetection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceDetections>)))
  "Returns string type for a message object of type '<FaceDetections>"
  "pal_detection_msgs/FaceDetections")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceDetections)))
  "Returns string type for a message object of type 'FaceDetections"
  "pal_detection_msgs/FaceDetections")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceDetections>)))
  "Returns md5sum for a message object of type '<FaceDetections>"
  "ccd073854ad87c6de267f72e92545e09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceDetections)))
  "Returns md5sum for a message object of type 'FaceDetections"
  "ccd073854ad87c6de267f72e92545e09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceDetections>)))
  "Returns full string definition for message of type '<FaceDetections>"
  (cl:format cl:nil "Header header~%~%pal_detection_msgs/FaceDetection[]  faces~%~%# Optional transformation between the camera frame and a certain parent frame~%geometry_msgs/TransformStamped camera_pose~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pal_detection_msgs/FaceDetection~%~%##########################################~%#~%# Face detection data~%#~%##########################################~%~%#####################~%# Face bounding box~%#####################~%# coordinates of the top left corner of the box~%int32 x~%int32 y~%~%# width of the box~%int32 width~%~%# height of the box~%int32 height~%~%############################~%# Eyes position (if found)~%############################~%~%bool eyesLocated~%~%int32 leftEyeX~%int32 leftEyeY~%int32 rightEyeX~%int32 rightEyeY~%~%#############################~%# Centre of eyes 3D estimate~%#############################~%geometry_msgs/Point32 position~%~%~%############################~%# Person recognition~%############################~%~%string name~%float32 confidence~%~%############################~%# Gender recognition~%############################~%string gender~%float32 genderConfidence~%~%############################~%# Facial expression~%############################~%string EXPRESSION_NEUTRAL=\"neutral\"~%string EXPRESSION_SMILE=\"smile\"~%string EXPRESSION_RAISED_BROWS=\"raised brows\"~%string EXPRESSION_EYES_AWAY=\"eyes away\"~%string EXPRESSION_SQUINTING=\"squinting\"~%string EXPRESSION_FROWNING=\"frowning\"~%string expression~%float32 expression_confidence~%~%############################~%# Facial emotion~%############################~%float32 emotion_anger_confidence~%float32 emotion_disgust_confidence~%float32 emotion_fear_confidence~%float32 emotion_happiness_confidence~%float32 emotion_neutral_confidence~%float32 emotion_sadness_confidence~%float32 emotion_surprise_confidence~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceDetections)))
  "Returns full string definition for message of type 'FaceDetections"
  (cl:format cl:nil "Header header~%~%pal_detection_msgs/FaceDetection[]  faces~%~%# Optional transformation between the camera frame and a certain parent frame~%geometry_msgs/TransformStamped camera_pose~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pal_detection_msgs/FaceDetection~%~%##########################################~%#~%# Face detection data~%#~%##########################################~%~%#####################~%# Face bounding box~%#####################~%# coordinates of the top left corner of the box~%int32 x~%int32 y~%~%# width of the box~%int32 width~%~%# height of the box~%int32 height~%~%############################~%# Eyes position (if found)~%############################~%~%bool eyesLocated~%~%int32 leftEyeX~%int32 leftEyeY~%int32 rightEyeX~%int32 rightEyeY~%~%#############################~%# Centre of eyes 3D estimate~%#############################~%geometry_msgs/Point32 position~%~%~%############################~%# Person recognition~%############################~%~%string name~%float32 confidence~%~%############################~%# Gender recognition~%############################~%string gender~%float32 genderConfidence~%~%############################~%# Facial expression~%############################~%string EXPRESSION_NEUTRAL=\"neutral\"~%string EXPRESSION_SMILE=\"smile\"~%string EXPRESSION_RAISED_BROWS=\"raised brows\"~%string EXPRESSION_EYES_AWAY=\"eyes away\"~%string EXPRESSION_SQUINTING=\"squinting\"~%string EXPRESSION_FROWNING=\"frowning\"~%string expression~%float32 expression_confidence~%~%############################~%# Facial emotion~%############################~%float32 emotion_anger_confidence~%float32 emotion_disgust_confidence~%float32 emotion_fear_confidence~%float32 emotion_happiness_confidence~%float32 emotion_neutral_confidence~%float32 emotion_sadness_confidence~%float32 emotion_surprise_confidence~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceDetections>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'faces) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceDetections>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceDetections
    (cl:cons ':header (header msg))
    (cl:cons ':faces (faces msg))
    (cl:cons ':camera_pose (camera_pose msg))
))
