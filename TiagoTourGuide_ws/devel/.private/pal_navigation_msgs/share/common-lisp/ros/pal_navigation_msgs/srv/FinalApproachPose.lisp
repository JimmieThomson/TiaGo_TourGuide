; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-srv)


;//! \htmlinclude FinalApproachPose-request.msg.html

(cl:defclass <FinalApproachPose-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass FinalApproachPose-request (<FinalApproachPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FinalApproachPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FinalApproachPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<FinalApproachPose-request> is deprecated: use pal_navigation_msgs-srv:FinalApproachPose-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <FinalApproachPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:pose-val is deprecated.  Use pal_navigation_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FinalApproachPose-request>) ostream)
  "Serializes a message object of type '<FinalApproachPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FinalApproachPose-request>) istream)
  "Deserializes a message object of type '<FinalApproachPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FinalApproachPose-request>)))
  "Returns string type for a service object of type '<FinalApproachPose-request>"
  "pal_navigation_msgs/FinalApproachPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FinalApproachPose-request)))
  "Returns string type for a service object of type 'FinalApproachPose-request"
  "pal_navigation_msgs/FinalApproachPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FinalApproachPose-request>)))
  "Returns md5sum for a message object of type '<FinalApproachPose-request>"
  "798f73d56e5c8c9c501d7329ddd80106")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FinalApproachPose-request)))
  "Returns md5sum for a message object of type 'FinalApproachPose-request"
  "798f73d56e5c8c9c501d7329ddd80106")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FinalApproachPose-request>)))
  "Returns full string definition for message of type '<FinalApproachPose-request>"
  (cl:format cl:nil "# pose: desired robot pose (referenced to base_link)~%# Note: maximun distance allowed with this service call is 1 meter. Use only for final approach~%geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FinalApproachPose-request)))
  "Returns full string definition for message of type 'FinalApproachPose-request"
  (cl:format cl:nil "# pose: desired robot pose (referenced to base_link)~%# Note: maximun distance allowed with this service call is 1 meter. Use only for final approach~%geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FinalApproachPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FinalApproachPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FinalApproachPose-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude FinalApproachPose-response.msg.html

(cl:defclass <FinalApproachPose-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass FinalApproachPose-response (<FinalApproachPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FinalApproachPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FinalApproachPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-srv:<FinalApproachPose-response> is deprecated: use pal_navigation_msgs-srv:FinalApproachPose-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <FinalApproachPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-srv:done-val is deprecated.  Use pal_navigation_msgs-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FinalApproachPose-response>) ostream)
  "Serializes a message object of type '<FinalApproachPose-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'done) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FinalApproachPose-response>) istream)
  "Deserializes a message object of type '<FinalApproachPose-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'done) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FinalApproachPose-response>)))
  "Returns string type for a service object of type '<FinalApproachPose-response>"
  "pal_navigation_msgs/FinalApproachPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FinalApproachPose-response)))
  "Returns string type for a service object of type 'FinalApproachPose-response"
  "pal_navigation_msgs/FinalApproachPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FinalApproachPose-response>)))
  "Returns md5sum for a message object of type '<FinalApproachPose-response>"
  "798f73d56e5c8c9c501d7329ddd80106")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FinalApproachPose-response)))
  "Returns md5sum for a message object of type 'FinalApproachPose-response"
  "798f73d56e5c8c9c501d7329ddd80106")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FinalApproachPose-response>)))
  "Returns full string definition for message of type '<FinalApproachPose-response>"
  (cl:format cl:nil "#Returns true if final pose was achieved ~%std_msgs/Bool done~%~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FinalApproachPose-response)))
  "Returns full string definition for message of type 'FinalApproachPose-response"
  (cl:format cl:nil "#Returns true if final pose was achieved ~%std_msgs/Bool done~%~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FinalApproachPose-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'done))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FinalApproachPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FinalApproachPose-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FinalApproachPose)))
  'FinalApproachPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FinalApproachPose)))
  'FinalApproachPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FinalApproachPose)))
  "Returns string type for a service object of type '<FinalApproachPose>"
  "pal_navigation_msgs/FinalApproachPose")