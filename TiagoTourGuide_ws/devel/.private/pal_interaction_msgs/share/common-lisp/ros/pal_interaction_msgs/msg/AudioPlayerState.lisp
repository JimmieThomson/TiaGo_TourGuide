; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude AudioPlayerState.msg.html

(cl:defclass <AudioPlayerState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (isPlaying
    :reader isPlaying
    :initarg :isPlaying
    :type cl:boolean
    :initform cl:nil)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass AudioPlayerState (<AudioPlayerState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioPlayerState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioPlayerState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<AudioPlayerState> is deprecated: use pal_interaction_msgs-msg:AudioPlayerState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AudioPlayerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:header-val is deprecated.  Use pal_interaction_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'isPlaying-val :lambda-list '(m))
(cl:defmethod isPlaying-val ((m <AudioPlayerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:isPlaying-val is deprecated.  Use pal_interaction_msgs-msg:isPlaying instead.")
  (isPlaying m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <AudioPlayerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:msg-val is deprecated.  Use pal_interaction_msgs-msg:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioPlayerState>) ostream)
  "Serializes a message object of type '<AudioPlayerState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isPlaying) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioPlayerState>) istream)
  "Deserializes a message object of type '<AudioPlayerState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'isPlaying) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioPlayerState>)))
  "Returns string type for a message object of type '<AudioPlayerState>"
  "pal_interaction_msgs/AudioPlayerState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioPlayerState)))
  "Returns string type for a message object of type 'AudioPlayerState"
  "pal_interaction_msgs/AudioPlayerState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioPlayerState>)))
  "Returns md5sum for a message object of type '<AudioPlayerState>"
  "56d08544761f7625c1fa9ada542abb32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioPlayerState)))
  "Returns md5sum for a message object of type 'AudioPlayerState"
  "56d08544761f7625c1fa9ada542abb32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioPlayerState>)))
  "Returns full string definition for message of type '<AudioPlayerState>"
  (cl:format cl:nil "# Message used to publish when the internal player is playing something on the speakers~%# isPlayer is true when playing.~%Header header~%bool isPlaying~%string msg~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioPlayerState)))
  "Returns full string definition for message of type 'AudioPlayerState"
  (cl:format cl:nil "# Message used to publish when the internal player is playing something on the speakers~%# isPlayer is true when playing.~%Header header~%bool isPlaying~%string msg~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioPlayerState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioPlayerState>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioPlayerState
    (cl:cons ':header (header msg))
    (cl:cons ':isPlaying (isPlaying msg))
    (cl:cons ':msg (msg msg))
))
