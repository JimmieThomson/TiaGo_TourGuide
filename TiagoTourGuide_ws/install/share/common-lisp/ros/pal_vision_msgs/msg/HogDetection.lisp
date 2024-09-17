; Auto-generated. Do not edit!


(cl:in-package pal_vision_msgs-msg)


;//! \htmlinclude HogDetection.msg.html

(cl:defclass <HogDetection> (roslisp-msg-protocol:ros-message)
  ((imageBoundingBox
    :reader imageBoundingBox
    :initarg :imageBoundingBox
    :type pal_vision_msgs-msg:Rectangle
    :initform (cl:make-instance 'pal_vision_msgs-msg:Rectangle))
   (direction
    :reader direction
    :initarg :direction
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (hog
    :reader hog
    :initarg :hog
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (principalEigenVectorRGB
    :reader principalEigenVectorRGB
    :initarg :principalEigenVectorRGB
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (rgbClusterCenters
    :reader rgbClusterCenters
    :initarg :rgbClusterCenters
    :type (cl:vector std_msgs-msg:ColorRGBA)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:ColorRGBA :initial-element (cl:make-instance 'std_msgs-msg:ColorRGBA)))
   (rgbDescriptor1
    :reader rgbDescriptor1
    :initarg :rgbDescriptor1
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (rgbDescriptor2
    :reader rgbDescriptor2
    :initarg :rgbDescriptor2
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass HogDetection (<HogDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HogDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HogDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-msg:<HogDetection> is deprecated: use pal_vision_msgs-msg:HogDetection instead.")))

(cl:ensure-generic-function 'imageBoundingBox-val :lambda-list '(m))
(cl:defmethod imageBoundingBox-val ((m <HogDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:imageBoundingBox-val is deprecated.  Use pal_vision_msgs-msg:imageBoundingBox instead.")
  (imageBoundingBox m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <HogDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:direction-val is deprecated.  Use pal_vision_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'hog-val :lambda-list '(m))
(cl:defmethod hog-val ((m <HogDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:hog-val is deprecated.  Use pal_vision_msgs-msg:hog instead.")
  (hog m))

(cl:ensure-generic-function 'principalEigenVectorRGB-val :lambda-list '(m))
(cl:defmethod principalEigenVectorRGB-val ((m <HogDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:principalEigenVectorRGB-val is deprecated.  Use pal_vision_msgs-msg:principalEigenVectorRGB instead.")
  (principalEigenVectorRGB m))

(cl:ensure-generic-function 'rgbClusterCenters-val :lambda-list '(m))
(cl:defmethod rgbClusterCenters-val ((m <HogDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:rgbClusterCenters-val is deprecated.  Use pal_vision_msgs-msg:rgbClusterCenters instead.")
  (rgbClusterCenters m))

(cl:ensure-generic-function 'rgbDescriptor1-val :lambda-list '(m))
(cl:defmethod rgbDescriptor1-val ((m <HogDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:rgbDescriptor1-val is deprecated.  Use pal_vision_msgs-msg:rgbDescriptor1 instead.")
  (rgbDescriptor1 m))

(cl:ensure-generic-function 'rgbDescriptor2-val :lambda-list '(m))
(cl:defmethod rgbDescriptor2-val ((m <HogDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:rgbDescriptor2-val is deprecated.  Use pal_vision_msgs-msg:rgbDescriptor2 instead.")
  (rgbDescriptor2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HogDetection>) ostream)
  "Serializes a message object of type '<HogDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imageBoundingBox) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'hog))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'hog))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'principalEigenVectorRGB) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rgbClusterCenters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'rgbClusterCenters))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rgbDescriptor1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'rgbDescriptor1))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rgbDescriptor2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'rgbDescriptor2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HogDetection>) istream)
  "Deserializes a message object of type '<HogDetection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imageBoundingBox) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'hog) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'hog)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'principalEigenVectorRGB) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rgbClusterCenters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rgbClusterCenters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:ColorRGBA))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rgbDescriptor1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rgbDescriptor1)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rgbDescriptor2) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rgbDescriptor2)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HogDetection>)))
  "Returns string type for a message object of type '<HogDetection>"
  "pal_vision_msgs/HogDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HogDetection)))
  "Returns string type for a message object of type 'HogDetection"
  "pal_vision_msgs/HogDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HogDetection>)))
  "Returns md5sum for a message object of type '<HogDetection>"
  "33e1731149b6e078eff6e4b55c75f260")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HogDetection)))
  "Returns md5sum for a message object of type 'HogDetection"
  "33e1731149b6e078eff6e4b55c75f260")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HogDetection>)))
  "Returns full string definition for message of type '<HogDetection>"
  (cl:format cl:nil "## Contains data relative to the detection of a person using the HOG descriptor~%~%pal_vision_msgs/Rectangle  imageBoundingBox         # bounding box of image region in which the person has been detected~%geometry_msgs/Vector3      direction                # unitary vector expressing in what direction wrt the robot base frame the person is~%float32[]                  hog                      # HOG descriptor of the person region~%std_msgs/ColorRGBA         principalEigenVectorRGB  # Eigen vector (remember this is an unitary vector) corresponding to the maximum eigen value of all the RGB values in the person region. ~%std_msgs/ColorRGBA[]       rgbClusterCenters        # RGB cluster centers of the person region in the image obtained using k-means. The rgb components are expressed in [0..1]~%uint32[]                   rgbDescriptor1           # Descriptor based on binarized RGB gradients between adjacent image blocks (version 1)~%uint32[]                   rgbDescriptor2           # Descriptor based on binarized RGB gradients between adjacent image blocks (version 2)~%~%~%~%~%================================================================================~%MSG: pal_vision_msgs/Rectangle~%## Rectangle defined by a point, its width and height~%# corresponds to the openCV struct : CvRect~%~%# coordinates of the top left corner of the box~%int64 x~%int64 y~%~%# wigth of the box~%int64 width~%~%# height of the box~%int64 height~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HogDetection)))
  "Returns full string definition for message of type 'HogDetection"
  (cl:format cl:nil "## Contains data relative to the detection of a person using the HOG descriptor~%~%pal_vision_msgs/Rectangle  imageBoundingBox         # bounding box of image region in which the person has been detected~%geometry_msgs/Vector3      direction                # unitary vector expressing in what direction wrt the robot base frame the person is~%float32[]                  hog                      # HOG descriptor of the person region~%std_msgs/ColorRGBA         principalEigenVectorRGB  # Eigen vector (remember this is an unitary vector) corresponding to the maximum eigen value of all the RGB values in the person region. ~%std_msgs/ColorRGBA[]       rgbClusterCenters        # RGB cluster centers of the person region in the image obtained using k-means. The rgb components are expressed in [0..1]~%uint32[]                   rgbDescriptor1           # Descriptor based on binarized RGB gradients between adjacent image blocks (version 1)~%uint32[]                   rgbDescriptor2           # Descriptor based on binarized RGB gradients between adjacent image blocks (version 2)~%~%~%~%~%================================================================================~%MSG: pal_vision_msgs/Rectangle~%## Rectangle defined by a point, its width and height~%# corresponds to the openCV struct : CvRect~%~%# coordinates of the top left corner of the box~%int64 x~%int64 y~%~%# wigth of the box~%int64 width~%~%# height of the box~%int64 height~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HogDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imageBoundingBox))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hog) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'principalEigenVectorRGB))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rgbClusterCenters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rgbDescriptor1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rgbDescriptor2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HogDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'HogDetection
    (cl:cons ':imageBoundingBox (imageBoundingBox msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':hog (hog msg))
    (cl:cons ':principalEigenVectorRGB (principalEigenVectorRGB msg))
    (cl:cons ':rgbClusterCenters (rgbClusterCenters msg))
    (cl:cons ':rgbDescriptor1 (rgbDescriptor1 msg))
    (cl:cons ':rgbDescriptor2 (rgbDescriptor2 msg))
))
