; Auto-generated. Do not edit!


(cl:in-package pal_vision_msgs-msg)


;//! \htmlinclude FaceDetection.msg.html

(cl:defclass <FaceDetection> (roslisp-msg-protocol:ros-message)
  ((position3D
    :reader position3D
    :initarg :position3D
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (imageBoundingBox
    :reader imageBoundingBox
    :initarg :imageBoundingBox
    :type pal_vision_msgs-msg:Rectangle
    :initform (cl:make-instance 'pal_vision_msgs-msg:Rectangle))
   (hog
    :reader hog
    :initarg :hog
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FaceDetection (<FaceDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-msg:<FaceDetection> is deprecated: use pal_vision_msgs-msg:FaceDetection instead.")))

(cl:ensure-generic-function 'position3D-val :lambda-list '(m))
(cl:defmethod position3D-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:position3D-val is deprecated.  Use pal_vision_msgs-msg:position3D instead.")
  (position3D m))

(cl:ensure-generic-function 'imageBoundingBox-val :lambda-list '(m))
(cl:defmethod imageBoundingBox-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:imageBoundingBox-val is deprecated.  Use pal_vision_msgs-msg:imageBoundingBox instead.")
  (imageBoundingBox m))

(cl:ensure-generic-function 'hog-val :lambda-list '(m))
(cl:defmethod hog-val ((m <FaceDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:hog-val is deprecated.  Use pal_vision_msgs-msg:hog instead.")
  (hog m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceDetection>) ostream)
  "Serializes a message object of type '<FaceDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position3D) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imageBoundingBox) ostream)
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceDetection>) istream)
  "Deserializes a message object of type '<FaceDetection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position3D) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imageBoundingBox) istream)
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceDetection>)))
  "Returns string type for a message object of type '<FaceDetection>"
  "pal_vision_msgs/FaceDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceDetection)))
  "Returns string type for a message object of type 'FaceDetection"
  "pal_vision_msgs/FaceDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceDetection>)))
  "Returns md5sum for a message object of type '<FaceDetection>"
  "bf1d543fd0ed58f92521046e9c5f942a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceDetection)))
  "Returns md5sum for a message object of type 'FaceDetection"
  "bf1d543fd0ed58f92521046e9c5f942a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceDetection>)))
  "Returns full string definition for message of type '<FaceDetection>"
  (cl:format cl:nil "## Contains data relative to the detection of the face of a person~%~%geometry_msgs/Point        position3D         # 3D position of the person face projected on the ground plane, expressed in the robot frame /base_link~%pal_vision_msgs/Rectangle  imageBoundingBox   # bounding box of the face in the image~%float32[]                  hog                # HOG descriptor of the face~%~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: pal_vision_msgs/Rectangle~%## Rectangle defined by a point, its width and height~%# corresponds to the openCV struct : CvRect~%~%# coordinates of the top left corner of the box~%int64 x~%int64 y~%~%# wigth of the box~%int64 width~%~%# height of the box~%int64 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceDetection)))
  "Returns full string definition for message of type 'FaceDetection"
  (cl:format cl:nil "## Contains data relative to the detection of the face of a person~%~%geometry_msgs/Point        position3D         # 3D position of the person face projected on the ground plane, expressed in the robot frame /base_link~%pal_vision_msgs/Rectangle  imageBoundingBox   # bounding box of the face in the image~%float32[]                  hog                # HOG descriptor of the face~%~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: pal_vision_msgs/Rectangle~%## Rectangle defined by a point, its width and height~%# corresponds to the openCV struct : CvRect~%~%# coordinates of the top left corner of the box~%int64 x~%int64 y~%~%# wigth of the box~%int64 width~%~%# height of the box~%int64 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position3D))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imageBoundingBox))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hog) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceDetection
    (cl:cons ':position3D (position3D msg))
    (cl:cons ':imageBoundingBox (imageBoundingBox msg))
    (cl:cons ':hog (hog msg))
))
