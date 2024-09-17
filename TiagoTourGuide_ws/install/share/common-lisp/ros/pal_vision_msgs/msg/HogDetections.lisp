; Auto-generated. Do not edit!


(cl:in-package pal_vision_msgs-msg)


;//! \htmlinclude HogDetections.msg.html

(cl:defclass <HogDetections> (roslisp-msg-protocol:ros-message)
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
   (persons
    :reader persons
    :initarg :persons
    :type (cl:vector pal_vision_msgs-msg:HogDetection)
   :initform (cl:make-array 0 :element-type 'pal_vision_msgs-msg:HogDetection :initial-element (cl:make-instance 'pal_vision_msgs-msg:HogDetection))))
)

(cl:defclass HogDetections (<HogDetections>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HogDetections>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HogDetections)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-msg:<HogDetections> is deprecated: use pal_vision_msgs-msg:HogDetections instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HogDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:header-val is deprecated.  Use pal_vision_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'imgID-val :lambda-list '(m))
(cl:defmethod imgID-val ((m <HogDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:imgID-val is deprecated.  Use pal_vision_msgs-msg:imgID instead.")
  (imgID m))

(cl:ensure-generic-function 'persons-val :lambda-list '(m))
(cl:defmethod persons-val ((m <HogDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:persons-val is deprecated.  Use pal_vision_msgs-msg:persons instead.")
  (persons m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HogDetections>) ostream)
  "Serializes a message object of type '<HogDetections>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imgID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'imgID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'imgID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'imgID)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'persons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'persons))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HogDetections>) istream)
  "Deserializes a message object of type '<HogDetections>"
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
  (cl:setf (cl:slot-value msg 'persons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'persons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_vision_msgs-msg:HogDetection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HogDetections>)))
  "Returns string type for a message object of type '<HogDetections>"
  "pal_vision_msgs/HogDetections")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HogDetections)))
  "Returns string type for a message object of type 'HogDetections"
  "pal_vision_msgs/HogDetections")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HogDetections>)))
  "Returns md5sum for a message object of type '<HogDetections>"
  "6a2b9c8c4c785ae7eec19468d16ba3c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HogDetections)))
  "Returns md5sum for a message object of type 'HogDetections"
  "6a2b9c8c4c785ae7eec19468d16ba3c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HogDetections>)))
  "Returns full string definition for message of type '<HogDetections>"
  (cl:format cl:nil "## Contains data relative to the detection of person in an image using the HOG descriptor~%~%Header header~%~%uint32                           imgID    #image sequence ID in which the faces have been detected. Images are published in /person/image~%pal_vision_msgs/HogDetection[]   persons  #vector of HOG detections~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pal_vision_msgs/HogDetection~%## Contains data relative to the detection of a person using the HOG descriptor~%~%pal_vision_msgs/Rectangle  imageBoundingBox         # bounding box of image region in which the person has been detected~%geometry_msgs/Vector3      direction                # unitary vector expressing in what direction wrt the robot base frame the person is~%float32[]                  hog                      # HOG descriptor of the person region~%std_msgs/ColorRGBA         principalEigenVectorRGB  # Eigen vector (remember this is an unitary vector) corresponding to the maximum eigen value of all the RGB values in the person region. ~%std_msgs/ColorRGBA[]       rgbClusterCenters        # RGB cluster centers of the person region in the image obtained using k-means. The rgb components are expressed in [0..1]~%uint32[]                   rgbDescriptor1           # Descriptor based on binarized RGB gradients between adjacent image blocks (version 1)~%uint32[]                   rgbDescriptor2           # Descriptor based on binarized RGB gradients between adjacent image blocks (version 2)~%~%~%~%~%================================================================================~%MSG: pal_vision_msgs/Rectangle~%## Rectangle defined by a point, its width and height~%# corresponds to the openCV struct : CvRect~%~%# coordinates of the top left corner of the box~%int64 x~%int64 y~%~%# wigth of the box~%int64 width~%~%# height of the box~%int64 height~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HogDetections)))
  "Returns full string definition for message of type 'HogDetections"
  (cl:format cl:nil "## Contains data relative to the detection of person in an image using the HOG descriptor~%~%Header header~%~%uint32                           imgID    #image sequence ID in which the faces have been detected. Images are published in /person/image~%pal_vision_msgs/HogDetection[]   persons  #vector of HOG detections~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pal_vision_msgs/HogDetection~%## Contains data relative to the detection of a person using the HOG descriptor~%~%pal_vision_msgs/Rectangle  imageBoundingBox         # bounding box of image region in which the person has been detected~%geometry_msgs/Vector3      direction                # unitary vector expressing in what direction wrt the robot base frame the person is~%float32[]                  hog                      # HOG descriptor of the person region~%std_msgs/ColorRGBA         principalEigenVectorRGB  # Eigen vector (remember this is an unitary vector) corresponding to the maximum eigen value of all the RGB values in the person region. ~%std_msgs/ColorRGBA[]       rgbClusterCenters        # RGB cluster centers of the person region in the image obtained using k-means. The rgb components are expressed in [0..1]~%uint32[]                   rgbDescriptor1           # Descriptor based on binarized RGB gradients between adjacent image blocks (version 1)~%uint32[]                   rgbDescriptor2           # Descriptor based on binarized RGB gradients between adjacent image blocks (version 2)~%~%~%~%~%================================================================================~%MSG: pal_vision_msgs/Rectangle~%## Rectangle defined by a point, its width and height~%# corresponds to the openCV struct : CvRect~%~%# coordinates of the top left corner of the box~%int64 x~%int64 y~%~%# wigth of the box~%int64 width~%~%# height of the box~%int64 height~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HogDetections>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'persons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HogDetections>))
  "Converts a ROS message object to a list"
  (cl:list 'HogDetections
    (cl:cons ':header (header msg))
    (cl:cons ':imgID (imgID msg))
    (cl:cons ':persons (persons msg))
))
