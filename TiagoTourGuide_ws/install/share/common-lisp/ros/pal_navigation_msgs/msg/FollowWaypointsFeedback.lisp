; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude FollowWaypointsFeedback.msg.html

(cl:defclass <FollowWaypointsFeedback> (roslisp-msg-protocol:ros-message)
  ((current_waypoint
    :reader current_waypoint
    :initarg :current_waypoint
    :type cl:integer
    :initform 0))
)

(cl:defclass FollowWaypointsFeedback (<FollowWaypointsFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowWaypointsFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowWaypointsFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<FollowWaypointsFeedback> is deprecated: use pal_navigation_msgs-msg:FollowWaypointsFeedback instead.")))

(cl:ensure-generic-function 'current_waypoint-val :lambda-list '(m))
(cl:defmethod current_waypoint-val ((m <FollowWaypointsFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:current_waypoint-val is deprecated.  Use pal_navigation_msgs-msg:current_waypoint instead.")
  (current_waypoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowWaypointsFeedback>) ostream)
  "Serializes a message object of type '<FollowWaypointsFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_waypoint)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_waypoint)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_waypoint)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_waypoint)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowWaypointsFeedback>) istream)
  "Deserializes a message object of type '<FollowWaypointsFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_waypoint)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_waypoint)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_waypoint)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_waypoint)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowWaypointsFeedback>)))
  "Returns string type for a message object of type '<FollowWaypointsFeedback>"
  "pal_navigation_msgs/FollowWaypointsFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowWaypointsFeedback)))
  "Returns string type for a message object of type 'FollowWaypointsFeedback"
  "pal_navigation_msgs/FollowWaypointsFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowWaypointsFeedback>)))
  "Returns md5sum for a message object of type '<FollowWaypointsFeedback>"
  "177b7c637cfd197b106babd2a33fde11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowWaypointsFeedback)))
  "Returns md5sum for a message object of type 'FollowWaypointsFeedback"
  "177b7c637cfd197b106babd2a33fde11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowWaypointsFeedback>)))
  "Returns full string definition for message of type '<FollowWaypointsFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%uint32 current_waypoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowWaypointsFeedback)))
  "Returns full string definition for message of type 'FollowWaypointsFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%uint32 current_waypoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowWaypointsFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowWaypointsFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowWaypointsFeedback
    (cl:cons ':current_waypoint (current_waypoint msg))
))