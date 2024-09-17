; Auto-generated. Do not edit!


(cl:in-package pal_detection_msgs-msg)


;//! \htmlinclude TexturedObjectDetection.msg.html

(cl:defclass <TexturedObjectDetection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (img
    :reader img
    :initarg :img
    :type sensor_msgs-msg:CompressedImage
    :initform (cl:make-instance 'sensor_msgs-msg:CompressedImage))
   (roi
    :reader roi
    :initarg :roi
    :type pal_detection_msgs-msg:RotatedDetection2d
    :initform (cl:make-instance 'pal_detection_msgs-msg:RotatedDetection2d)))
)

(cl:defclass TexturedObjectDetection (<TexturedObjectDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TexturedObjectDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TexturedObjectDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-msg:<TexturedObjectDetection> is deprecated: use pal_detection_msgs-msg:TexturedObjectDetection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TexturedObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:header-val is deprecated.  Use pal_detection_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'img-val :lambda-list '(m))
(cl:defmethod img-val ((m <TexturedObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:img-val is deprecated.  Use pal_detection_msgs-msg:img instead.")
  (img m))

(cl:ensure-generic-function 'roi-val :lambda-list '(m))
(cl:defmethod roi-val ((m <TexturedObjectDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:roi-val is deprecated.  Use pal_detection_msgs-msg:roi instead.")
  (roi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TexturedObjectDetection>) ostream)
  "Serializes a message object of type '<TexturedObjectDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'img) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roi) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TexturedObjectDetection>) istream)
  "Deserializes a message object of type '<TexturedObjectDetection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'img) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roi) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TexturedObjectDetection>)))
  "Returns string type for a message object of type '<TexturedObjectDetection>"
  "pal_detection_msgs/TexturedObjectDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TexturedObjectDetection)))
  "Returns string type for a message object of type 'TexturedObjectDetection"
  "pal_detection_msgs/TexturedObjectDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TexturedObjectDetection>)))
  "Returns md5sum for a message object of type '<TexturedObjectDetection>"
  "cb7f0068423d23f481cd8a23473b3e42")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TexturedObjectDetection)))
  "Returns md5sum for a message object of type 'TexturedObjectDetection"
  "cb7f0068423d23f481cd8a23473b3e42")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TexturedObjectDetection>)))
  "Returns full string definition for message of type '<TexturedObjectDetection>"
  (cl:format cl:nil "## Message with the information of a textured object detected~%~%Header header~%~%sensor_msgs/CompressedImage img~%pal_detection_msgs/RotatedDetection2d roi~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: pal_detection_msgs/RotatedDetection2d~%## Rotated rectangle in image coordinates defined by 4 vertices~%~%Header header~%~%# coordinates of the vertices of a rotated rectangle~%int64[] x~%int64[] y~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TexturedObjectDetection)))
  "Returns full string definition for message of type 'TexturedObjectDetection"
  (cl:format cl:nil "## Message with the information of a textured object detected~%~%Header header~%~%sensor_msgs/CompressedImage img~%pal_detection_msgs/RotatedDetection2d roi~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: pal_detection_msgs/RotatedDetection2d~%## Rotated rectangle in image coordinates defined by 4 vertices~%~%Header header~%~%# coordinates of the vertices of a rotated rectangle~%int64[] x~%int64[] y~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TexturedObjectDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'img))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roi))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TexturedObjectDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'TexturedObjectDetection
    (cl:cons ':header (header msg))
    (cl:cons ':img (img msg))
    (cl:cons ':roi (roi msg))
))
