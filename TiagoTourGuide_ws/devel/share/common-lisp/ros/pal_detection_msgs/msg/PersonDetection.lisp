; Auto-generated. Do not edit!


(cl:in-package pal_detection_msgs-msg)


;//! \htmlinclude PersonDetection.msg.html

(cl:defclass <PersonDetection> (roslisp-msg-protocol:ros-message)
  ((full_body
    :reader full_body
    :initarg :full_body
    :type pal_detection_msgs-msg:Detection2d
    :initform (cl:make-instance 'pal_detection_msgs-msg:Detection2d))
   (face
    :reader face
    :initarg :face
    :type pal_detection_msgs-msg:FaceDetection
    :initform (cl:make-instance 'pal_detection_msgs-msg:FaceDetection))
   (legs
    :reader legs
    :initarg :legs
    :type pal_detection_msgs-msg:LegDetections
    :initform (cl:make-instance 'pal_detection_msgs-msg:LegDetections))
   (position3D
    :reader position3D
    :initarg :position3D
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped)))
)

(cl:defclass PersonDetection (<PersonDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-msg:<PersonDetection> is deprecated: use pal_detection_msgs-msg:PersonDetection instead.")))

(cl:ensure-generic-function 'full_body-val :lambda-list '(m))
(cl:defmethod full_body-val ((m <PersonDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:full_body-val is deprecated.  Use pal_detection_msgs-msg:full_body instead.")
  (full_body m))

(cl:ensure-generic-function 'face-val :lambda-list '(m))
(cl:defmethod face-val ((m <PersonDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:face-val is deprecated.  Use pal_detection_msgs-msg:face instead.")
  (face m))

(cl:ensure-generic-function 'legs-val :lambda-list '(m))
(cl:defmethod legs-val ((m <PersonDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:legs-val is deprecated.  Use pal_detection_msgs-msg:legs instead.")
  (legs m))

(cl:ensure-generic-function 'position3D-val :lambda-list '(m))
(cl:defmethod position3D-val ((m <PersonDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:position3D-val is deprecated.  Use pal_detection_msgs-msg:position3D instead.")
  (position3D m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonDetection>) ostream)
  "Serializes a message object of type '<PersonDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'full_body) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'face) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'legs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position3D) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonDetection>) istream)
  "Deserializes a message object of type '<PersonDetection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'full_body) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'face) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'legs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position3D) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonDetection>)))
  "Returns string type for a message object of type '<PersonDetection>"
  "pal_detection_msgs/PersonDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonDetection)))
  "Returns string type for a message object of type 'PersonDetection"
  "pal_detection_msgs/PersonDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonDetection>)))
  "Returns md5sum for a message object of type '<PersonDetection>"
  "e36e1ffebbbf48f74bd26f2521fb377f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonDetection)))
  "Returns md5sum for a message object of type 'PersonDetection"
  "e36e1ffebbbf48f74bd26f2521fb377f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonDetection>)))
  "Returns full string definition for message of type '<PersonDetection>"
  (cl:format cl:nil "## Contains detection correspondences among the different person detectors available~%~%# full body image detection. If width == height == 0 then no full body detection is available~%pal_detection_msgs/Detection2d full_body~%~%# face image detection. If width == height == 0 then the face has not been detected~%pal_detection_msgs/FaceDetection face~%~%# leg detection in laser scan. If Point is (0,0,0) then no legs have been detected~%pal_detection_msgs/LegDetections legs~%~%# 3D position of the person with respect to a given frame specified in the header of the PointStamped.~%# If the position is not available then (0,0,0) is set.~%geometry_msgs/PointStamped position3D ~%~%~%================================================================================~%MSG: pal_detection_msgs/Detection2d~%## Rectangle defined by a point, its width and height~%# corresponds to the openCV struct : CvRect~%~%# coordinates of the top left corner of the box~%int64 x~%int64 y~%~%# width of the box~%int64 width~%~%# height of the box~%int64 height~%~%~%================================================================================~%MSG: pal_detection_msgs/FaceDetection~%~%##########################################~%#~%# Face detection data~%#~%##########################################~%~%#####################~%# Face bounding box~%#####################~%# coordinates of the top left corner of the box~%int32 x~%int32 y~%~%# width of the box~%int32 width~%~%# height of the box~%int32 height~%~%############################~%# Eyes position (if found)~%############################~%~%bool eyesLocated~%~%int32 leftEyeX~%int32 leftEyeY~%int32 rightEyeX~%int32 rightEyeY~%~%#############################~%# Centre of eyes 3D estimate~%#############################~%geometry_msgs/Point32 position~%~%~%############################~%# Person recognition~%############################~%~%string name~%float32 confidence~%~%############################~%# Gender recognition~%############################~%string gender~%float32 genderConfidence~%~%############################~%# Facial expression~%############################~%string EXPRESSION_NEUTRAL=\"neutral\"~%string EXPRESSION_SMILE=\"smile\"~%string EXPRESSION_RAISED_BROWS=\"raised brows\"~%string EXPRESSION_EYES_AWAY=\"eyes away\"~%string EXPRESSION_SQUINTING=\"squinting\"~%string EXPRESSION_FROWNING=\"frowning\"~%string expression~%float32 expression_confidence~%~%############################~%# Facial emotion~%############################~%float32 emotion_anger_confidence~%float32 emotion_disgust_confidence~%float32 emotion_fear_confidence~%float32 emotion_happiness_confidence~%float32 emotion_neutral_confidence~%float32 emotion_sadness_confidence~%float32 emotion_surprise_confidence~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: pal_detection_msgs/LegDetections~%## Contains data relative to the detection of the legs of persons in a laser scan~%~%Header header~%~%geometry_msgs/Point[]  position3D    # 3D position of the persons' legs in a given frame~%~%# Optional transformation between the laser frame and a certain parent frame~%geometry_msgs/TransformStamped laser_pose~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonDetection)))
  "Returns full string definition for message of type 'PersonDetection"
  (cl:format cl:nil "## Contains detection correspondences among the different person detectors available~%~%# full body image detection. If width == height == 0 then no full body detection is available~%pal_detection_msgs/Detection2d full_body~%~%# face image detection. If width == height == 0 then the face has not been detected~%pal_detection_msgs/FaceDetection face~%~%# leg detection in laser scan. If Point is (0,0,0) then no legs have been detected~%pal_detection_msgs/LegDetections legs~%~%# 3D position of the person with respect to a given frame specified in the header of the PointStamped.~%# If the position is not available then (0,0,0) is set.~%geometry_msgs/PointStamped position3D ~%~%~%================================================================================~%MSG: pal_detection_msgs/Detection2d~%## Rectangle defined by a point, its width and height~%# corresponds to the openCV struct : CvRect~%~%# coordinates of the top left corner of the box~%int64 x~%int64 y~%~%# width of the box~%int64 width~%~%# height of the box~%int64 height~%~%~%================================================================================~%MSG: pal_detection_msgs/FaceDetection~%~%##########################################~%#~%# Face detection data~%#~%##########################################~%~%#####################~%# Face bounding box~%#####################~%# coordinates of the top left corner of the box~%int32 x~%int32 y~%~%# width of the box~%int32 width~%~%# height of the box~%int32 height~%~%############################~%# Eyes position (if found)~%############################~%~%bool eyesLocated~%~%int32 leftEyeX~%int32 leftEyeY~%int32 rightEyeX~%int32 rightEyeY~%~%#############################~%# Centre of eyes 3D estimate~%#############################~%geometry_msgs/Point32 position~%~%~%############################~%# Person recognition~%############################~%~%string name~%float32 confidence~%~%############################~%# Gender recognition~%############################~%string gender~%float32 genderConfidence~%~%############################~%# Facial expression~%############################~%string EXPRESSION_NEUTRAL=\"neutral\"~%string EXPRESSION_SMILE=\"smile\"~%string EXPRESSION_RAISED_BROWS=\"raised brows\"~%string EXPRESSION_EYES_AWAY=\"eyes away\"~%string EXPRESSION_SQUINTING=\"squinting\"~%string EXPRESSION_FROWNING=\"frowning\"~%string expression~%float32 expression_confidence~%~%############################~%# Facial emotion~%############################~%float32 emotion_anger_confidence~%float32 emotion_disgust_confidence~%float32 emotion_fear_confidence~%float32 emotion_happiness_confidence~%float32 emotion_neutral_confidence~%float32 emotion_sadness_confidence~%float32 emotion_surprise_confidence~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: pal_detection_msgs/LegDetections~%## Contains data relative to the detection of the legs of persons in a laser scan~%~%Header header~%~%geometry_msgs/Point[]  position3D    # 3D position of the persons' legs in a given frame~%~%# Optional transformation between the laser frame and a certain parent frame~%geometry_msgs/TransformStamped laser_pose~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'full_body))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'face))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'legs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position3D))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonDetection
    (cl:cons ':full_body (full_body msg))
    (cl:cons ':face (face msg))
    (cl:cons ':legs (legs msg))
    (cl:cons ':position3D (position3D msg))
))
