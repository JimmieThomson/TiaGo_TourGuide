; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude FollowWaypointsGoal.msg.html

(cl:defclass <FollowWaypointsGoal> (roslisp-msg-protocol:ros-message)
  ((goal_index
    :reader goal_index
    :initarg :goal_index
    :type cl:integer
    :initform 0)
   (number_of_loops
    :reader number_of_loops
    :initarg :number_of_loops
    :type cl:integer
    :initform 0)
   (bt_model_name
    :reader bt_model_name
    :initarg :bt_model_name
    :type cl:string
    :initform "")
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector pal_navigation_msgs-msg:Waypoint)
   :initform (cl:make-array 0 :element-type 'pal_navigation_msgs-msg:Waypoint :initial-element (cl:make-instance 'pal_navigation_msgs-msg:Waypoint))))
)

(cl:defclass FollowWaypointsGoal (<FollowWaypointsGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowWaypointsGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowWaypointsGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<FollowWaypointsGoal> is deprecated: use pal_navigation_msgs-msg:FollowWaypointsGoal instead.")))

(cl:ensure-generic-function 'goal_index-val :lambda-list '(m))
(cl:defmethod goal_index-val ((m <FollowWaypointsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:goal_index-val is deprecated.  Use pal_navigation_msgs-msg:goal_index instead.")
  (goal_index m))

(cl:ensure-generic-function 'number_of_loops-val :lambda-list '(m))
(cl:defmethod number_of_loops-val ((m <FollowWaypointsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:number_of_loops-val is deprecated.  Use pal_navigation_msgs-msg:number_of_loops instead.")
  (number_of_loops m))

(cl:ensure-generic-function 'bt_model_name-val :lambda-list '(m))
(cl:defmethod bt_model_name-val ((m <FollowWaypointsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:bt_model_name-val is deprecated.  Use pal_navigation_msgs-msg:bt_model_name instead.")
  (bt_model_name m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <FollowWaypointsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:poses-val is deprecated.  Use pal_navigation_msgs-msg:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FollowWaypointsGoal>)))
    "Constants for message type '<FollowWaypointsGoal>"
  '((:NONE . 0)
    (:UNKNOWN . 600)
    (:TASK_EXECUTOR_FAILED . 601))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FollowWaypointsGoal)))
    "Constants for message type 'FollowWaypointsGoal"
  '((:NONE . 0)
    (:UNKNOWN . 600)
    (:TASK_EXECUTOR_FAILED . 601))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowWaypointsGoal>) ostream)
  "Serializes a message object of type '<FollowWaypointsGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goal_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'goal_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'goal_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'goal_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_loops)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'number_of_loops)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'number_of_loops)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'number_of_loops)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bt_model_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bt_model_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowWaypointsGoal>) istream)
  "Deserializes a message object of type '<FollowWaypointsGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goal_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'goal_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'goal_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'goal_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_loops)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'number_of_loops)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'number_of_loops)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'number_of_loops)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bt_model_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bt_model_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_navigation_msgs-msg:Waypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowWaypointsGoal>)))
  "Returns string type for a message object of type '<FollowWaypointsGoal>"
  "pal_navigation_msgs/FollowWaypointsGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowWaypointsGoal)))
  "Returns string type for a message object of type 'FollowWaypointsGoal"
  "pal_navigation_msgs/FollowWaypointsGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowWaypointsGoal>)))
  "Returns md5sum for a message object of type '<FollowWaypointsGoal>"
  "6ac0bba57c7ff0865644730bc6d43f52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowWaypointsGoal)))
  "Returns md5sum for a message object of type 'FollowWaypointsGoal"
  "6ac0bba57c7ff0865644730bc6d43f52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowWaypointsGoal>)))
  "Returns full string definition for message of type '<FollowWaypointsGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Error codes~%# Note: The expected priority order of the errors should match the message order~%uint32 NONE=0~%uint32 UNKNOWN=600~%uint32 TASK_EXECUTOR_FAILED=601~%~%#goal definition~%uint32 goal_index~%uint32 number_of_loops~%string bt_model_name~%pal_navigation_msgs/Waypoint[] poses~%~%================================================================================~%MSG: pal_navigation_msgs/Waypoint~%# Error codes~%# Note: The expected priority order of the errors should match the message order~%uint32 NOTHING=0~%uint32 WAIT=1~%uint32 ROTATE=2~%uint32 DOCK=3~%uint32 UNDOCK=4~%~%uint32[] actions~%geometry_msgs/PoseStamped pose~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowWaypointsGoal)))
  "Returns full string definition for message of type 'FollowWaypointsGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Error codes~%# Note: The expected priority order of the errors should match the message order~%uint32 NONE=0~%uint32 UNKNOWN=600~%uint32 TASK_EXECUTOR_FAILED=601~%~%#goal definition~%uint32 goal_index~%uint32 number_of_loops~%string bt_model_name~%pal_navigation_msgs/Waypoint[] poses~%~%================================================================================~%MSG: pal_navigation_msgs/Waypoint~%# Error codes~%# Note: The expected priority order of the errors should match the message order~%uint32 NOTHING=0~%uint32 WAIT=1~%uint32 ROTATE=2~%uint32 DOCK=3~%uint32 UNDOCK=4~%~%uint32[] actions~%geometry_msgs/PoseStamped pose~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowWaypointsGoal>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'bt_model_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowWaypointsGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowWaypointsGoal
    (cl:cons ':goal_index (goal_index msg))
    (cl:cons ':number_of_loops (number_of_loops msg))
    (cl:cons ':bt_model_name (bt_model_name msg))
    (cl:cons ':poses (poses msg))
))
