; Auto-generated. Do not edit!


(cl:in-package pal_vision_msgs-msg)


;//! \htmlinclude FaceDetections.msg.html

(cl:defclass <FaceDetections> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (imgID
    :reader imgID
    :initarg :imgID
    :type cl:integer
    :initform 0)
   (faces
    :reader faces
    :initarg :faces
    :type (cl:vector pal_vision_msgs-msg:FaceDetection)
   :initform (cl:make-array 0 :element-type 'pal_vision_msgs-msg:FaceDetection :initial-element (cl:make-instance 'pal_vision_msgs-msg:FaceDetection))))
)

(cl:defclass FaceDetections (<FaceDetections>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceDetections>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceDetections)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-msg:<FaceDetections> is deprecated: use pal_vision_msgs-msg:FaceDetections instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FaceDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:header-val is deprecated.  Use pal_vision_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'imgID-val :lambda-list '(m))
(cl:defmethod imgID-val ((m <FaceDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:imgID-val is deprecated.  Use pal_vision_msgs-msg:imgID instead.")
  (imgID m))

(cl:ensure-generic-function 'faces-val :lambda-list '(m))
(cl:defmethod faces-val ((m <FaceDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:faces-val is deprecated.  Use pal_vision_msgs-msg:faces instead.")
  (faces m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceDetections>) ostream)
  "Serializes a message object of type '<FaceDetections>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imgID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'imgID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'imgID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'imgID)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'faces))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'faces))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceDetections>) istream)
  "Deserializes a message object of type '<FaceDetections>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imgID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'imgID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'imgID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'imgID)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'faces) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'faces)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_vision_msgs-msg:FaceDetection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceDetections>)))
  "Returns string type for a message object of type '<FaceDetections>"
  "pal_vision_msgs/FaceDetections")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceDetections)))
  "Returns string type for a message object of type 'FaceDetections"
  "pal_vision_msgs/FaceDetections")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceDetections>)))
  "Returns md5sum for a message object of type '<FaceDetections>"
  "d5cd88065d95055a47408f1591427874")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceDetections)))
  "Returns md5sum for a message object of type 'FaceDetections"
  "d5cd88065d95055a47408f1591427874")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceDetections>)))
  "Returns full string definition for message of type '<FaceDetections>"
  (cl:format cl:nil "## Contains data relative to the detection of the faces of persons in an image~%~%Header header~%~%uint32                           imgID    #image sequence ID in which the faces have been detected. Images are published in /person/image~%pal_vision_msgs/FaceDetection[]  faces~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pal_vision_msgs/FaceDetection~%## Contains data relative to the detection of the face of a person~%~%geometry_msgs/Point        position3D         # 3D position of the person face projected on the ground plane, expressed in the robot frame /base_link~%pal_vision_msgs/Rectangle  imageBoundingBox   # bounding box of the face in the image~%float32[]                  hog                # HOG descriptor of the face~%~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: pal_vision_msgs/Rectangle~%## Rectangle defined by a point, its width and height~%# corresponds to the openCV struct : CvRect~%~%# coordinates of the top left corner of the box~%int64 x~%int64 y~%~%# wigth of the box~%int64 width~%~%# height of the box~%int64 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceDetections)))
  "Returns full string definition for message of type 'FaceDetections"
  (cl:format cl:nil "## Contains data relative to the detection of the faces of persons in an image~%~%Header header~%~%uint32                           imgID    #image sequence ID in which the faces have been detected. Images are published in /person/image~%pal_vision_msgs/FaceDetection[]  faces~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pal_vision_msgs/FaceDetection~%## Contains data relative to the detection of the face of a person~%~%geometry_msgs/Point        position3D         # 3D position of the person face projected on the ground plane, expressed in the robot frame /base_link~%pal_vision_msgs/Rectangle  imageBoundingBox   # bounding box of the face in the image~%float32[]                  hog                # HOG descriptor of the face~%~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: pal_vision_msgs/Rectangle~%## Rectangle defined by a point, its width and height~%# corresponds to the openCV struct : CvRect~%~%# coordinates of the top left corner of the box~%int64 x~%int64 y~%~%# wigth of the box~%int64 width~%~%# height of the box~%int64 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceDetections>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'faces) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceDetections>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceDetections
    (cl:cons ':header (header msg))
    (cl:cons ':imgID (imgID msg))
    (cl:cons ':faces (faces msg))
))
