; Auto-generated. Do not edit!


(cl:in-package pal_detection_msgs-msg)


;//! \htmlinclude WaveDetection.msg.html

(cl:defclass <WaveDetection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (wave
    :reader wave
    :initarg :wave
    :type cl:boolean
    :initform cl:nil)
   (u
    :reader u
    :initarg :u
    :type cl:fixnum
    :initform 0)
   (v
    :reader v
    :initarg :v
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaveDetection (<WaveDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaveDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaveDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-msg:<WaveDetection> is deprecated: use pal_detection_msgs-msg:WaveDetection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WaveDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:header-val is deprecated.  Use pal_detection_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'wave-val :lambda-list '(m))
(cl:defmethod wave-val ((m <WaveDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:wave-val is deprecated.  Use pal_detection_msgs-msg:wave instead.")
  (wave m))

(cl:ensure-generic-function 'u-val :lambda-list '(m))
(cl:defmethod u-val ((m <WaveDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:u-val is deprecated.  Use pal_detection_msgs-msg:u instead.")
  (u m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <WaveDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:v-val is deprecated.  Use pal_detection_msgs-msg:v instead.")
  (v m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaveDetection>) ostream)
  "Serializes a message object of type '<WaveDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wave) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'u)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'v)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaveDetection>) istream)
  "Deserializes a message object of type '<WaveDetection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'wave) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'u) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'v) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaveDetection>)))
  "Returns string type for a message object of type '<WaveDetection>"
  "pal_detection_msgs/WaveDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaveDetection)))
  "Returns string type for a message object of type 'WaveDetection"
  "pal_detection_msgs/WaveDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaveDetection>)))
  "Returns md5sum for a message object of type '<WaveDetection>"
  "aa420a347ae2972ab2629dc50442fbb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaveDetection)))
  "Returns md5sum for a message object of type 'WaveDetection"
  "aa420a347ae2972ab2629dc50442fbb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaveDetection>)))
  "Returns full string definition for message of type '<WaveDetection>"
  (cl:format cl:nil "Header header~%~%bool wave    #whether a person waving has been detected~%int8 u       #(u, v) are the pixel coordinates where~%int8 v       #the person waving has been detected~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaveDetection)))
  "Returns full string definition for message of type 'WaveDetection"
  (cl:format cl:nil "Header header~%~%bool wave    #whether a person waving has been detected~%int8 u       #(u, v) are the pixel coordinates where~%int8 v       #the person waving has been detected~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaveDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaveDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'WaveDetection
    (cl:cons ':header (header msg))
    (cl:cons ':wave (wave msg))
    (cl:cons ':u (u msg))
    (cl:cons ':v (v msg))
))
