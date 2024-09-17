; Auto-generated. Do not edit!


(cl:in-package pal_vision_msgs-msg)


;//! \htmlinclude DetectedPerson.msg.html

(cl:defclass <DetectedPerson> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objectId
    :reader objectId
    :initarg :objectId
    :type cl:integer
    :initform 0)
   (boxColour
    :reader boxColour
    :initarg :boxColour
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (position3D
    :reader position3D
    :initarg :position3D
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (box
    :reader box
    :initarg :box
    :type pal_vision_msgs-msg:Rectangle
    :initform (cl:make-instance 'pal_vision_msgs-msg:Rectangle))
   (faceBox
    :reader faceBox
    :initarg :faceBox
    :type pal_vision_msgs-msg:Rectangle
    :initform (cl:make-instance 'pal_vision_msgs-msg:Rectangle)))
)

(cl:defclass DetectedPerson (<DetectedPerson>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedPerson>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedPerson)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-msg:<DetectedPerson> is deprecated: use pal_vision_msgs-msg:DetectedPerson instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DetectedPerson>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:header-val is deprecated.  Use pal_vision_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objectId-val :lambda-list '(m))
(cl:defmethod objectId-val ((m <DetectedPerson>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:objectId-val is deprecated.  Use pal_vision_msgs-msg:objectId instead.")
  (objectId m))

(cl:ensure-generic-function 'boxColour-val :lambda-list '(m))
(cl:defmethod boxColour-val ((m <DetectedPerson>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:boxColour-val is deprecated.  Use pal_vision_msgs-msg:boxColour instead.")
  (boxColour m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <DetectedPerson>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:confidence-val is deprecated.  Use pal_vision_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'position3D-val :lambda-list '(m))
(cl:defmethod position3D-val ((m <DetectedPerson>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:position3D-val is deprecated.  Use pal_vision_msgs-msg:position3D instead.")
  (position3D m))

(cl:ensure-generic-function 'box-val :lambda-list '(m))
(cl:defmethod box-val ((m <DetectedPerson>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:box-val is deprecated.  Use pal_vision_msgs-msg:box instead.")
  (box m))

(cl:ensure-generic-function 'faceBox-val :lambda-list '(m))
(cl:defmethod faceBox-val ((m <DetectedPerson>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-msg:faceBox-val is deprecated.  Use pal_vision_msgs-msg:faceBox instead.")
  (faceBox m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedPerson>) ostream)
  "Serializes a message object of type '<DetectedPerson>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'objectId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'boxColour) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position3D) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'faceBox) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedPerson>) istream)
  "Deserializes a message object of type '<DetectedPerson>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'objectId) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'boxColour) istream)
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position3D) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'faceBox) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedPerson>)))
  "Returns string type for a message object of type '<DetectedPerson>"
  "pal_vision_msgs/DetectedPerson")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedPerson)))
  "Returns string type for a message object of type 'DetectedPerson"
  "pal_vision_msgs/DetectedPerson")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedPerson>)))
  "Returns md5sum for a message object of type '<DetectedPerson>"
  "f5d598391f8f6fb6645fe7d38b2e7101")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedPerson)))
  "Returns md5sum for a message object of type 'DetectedPerson"
  "f5d598391f8f6fb6645fe7d38b2e7101")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedPerson>)))
  "Returns full string definition for message of type '<DetectedPerson>"
  (cl:format cl:nil "## Contains data relative to the detection of a person~%~%Header header~%~%# ID associated to a detected person by the personServer~%int64 objectId~%~%# colour associated to the detected person by the personServer~%# values from the personServer are in [0-255]~%std_msgs/ColorRGBA boxColour~%~%# detection confidence~%float64 confidence~%~%# 3D position of the person projected on the ground plane, expressed in the world frame~%geometry_msgs/Point  position3D~%~%# rectangular zone of the image that contains the person detected~%pal_vision_msgs/Rectangle box~%~%# rectangular zone of the image that may contain the face of the person detected~%# if no face has been detected, faceBox = Rectangle(0, 0, 0, 0)~%pal_vision_msgs/Rectangle faceBox~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: pal_vision_msgs/Rectangle~%## Rectangle defined by a point, its width and height~%# corresponds to the openCV struct : CvRect~%~%# coordinates of the top left corner of the box~%int64 x~%int64 y~%~%# wigth of the box~%int64 width~%~%# height of the box~%int64 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedPerson)))
  "Returns full string definition for message of type 'DetectedPerson"
  (cl:format cl:nil "## Contains data relative to the detection of a person~%~%Header header~%~%# ID associated to a detected person by the personServer~%int64 objectId~%~%# colour associated to the detected person by the personServer~%# values from the personServer are in [0-255]~%std_msgs/ColorRGBA boxColour~%~%# detection confidence~%float64 confidence~%~%# 3D position of the person projected on the ground plane, expressed in the world frame~%geometry_msgs/Point  position3D~%~%# rectangular zone of the image that contains the person detected~%pal_vision_msgs/Rectangle box~%~%# rectangular zone of the image that may contain the face of the person detected~%# if no face has been detected, faceBox = Rectangle(0, 0, 0, 0)~%pal_vision_msgs/Rectangle faceBox~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: pal_vision_msgs/Rectangle~%## Rectangle defined by a point, its width and height~%# corresponds to the openCV struct : CvRect~%~%# coordinates of the top left corner of the box~%int64 x~%int64 y~%~%# wigth of the box~%int64 width~%~%# height of the box~%int64 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedPerson>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'boxColour))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position3D))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'faceBox))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedPerson>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedPerson
    (cl:cons ':header (header msg))
    (cl:cons ':objectId (objectId msg))
    (cl:cons ':boxColour (boxColour msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':position3D (position3D msg))
    (cl:cons ':box (box msg))
    (cl:cons ':faceBox (faceBox msg))
))
