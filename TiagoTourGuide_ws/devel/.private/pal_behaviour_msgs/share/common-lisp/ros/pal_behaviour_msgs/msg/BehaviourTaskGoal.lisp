; Auto-generated. Do not edit!


(cl:in-package pal_behaviour_msgs-msg)


;//! \htmlinclude BehaviourTaskGoal.msg.html

(cl:defclass <BehaviourTaskGoal> (roslisp-msg-protocol:ros-message)
  ((taskName
    :reader taskName
    :initarg :taskName
    :type cl:string
    :initform "")
   (arguments
    :reader arguments
    :initarg :arguments
    :type (cl:vector pal_behaviour_msgs-msg:BehaviourArgument)
   :initform (cl:make-array 0 :element-type 'pal_behaviour_msgs-msg:BehaviourArgument :initial-element (cl:make-instance 'pal_behaviour_msgs-msg:BehaviourArgument))))
)

(cl:defclass BehaviourTaskGoal (<BehaviourTaskGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BehaviourTaskGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BehaviourTaskGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_behaviour_msgs-msg:<BehaviourTaskGoal> is deprecated: use pal_behaviour_msgs-msg:BehaviourTaskGoal instead.")))

(cl:ensure-generic-function 'taskName-val :lambda-list '(m))
(cl:defmethod taskName-val ((m <BehaviourTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_behaviour_msgs-msg:taskName-val is deprecated.  Use pal_behaviour_msgs-msg:taskName instead.")
  (taskName m))

(cl:ensure-generic-function 'arguments-val :lambda-list '(m))
(cl:defmethod arguments-val ((m <BehaviourTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_behaviour_msgs-msg:arguments-val is deprecated.  Use pal_behaviour_msgs-msg:arguments instead.")
  (arguments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BehaviourTaskGoal>) ostream)
  "Serializes a message object of type '<BehaviourTaskGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'taskName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'taskName))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arguments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'arguments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BehaviourTaskGoal>) istream)
  "Deserializes a message object of type '<BehaviourTaskGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'taskName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'taskName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arguments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arguments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_behaviour_msgs-msg:BehaviourArgument))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BehaviourTaskGoal>)))
  "Returns string type for a message object of type '<BehaviourTaskGoal>"
  "pal_behaviour_msgs/BehaviourTaskGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviourTaskGoal)))
  "Returns string type for a message object of type 'BehaviourTaskGoal"
  "pal_behaviour_msgs/BehaviourTaskGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BehaviourTaskGoal>)))
  "Returns md5sum for a message object of type '<BehaviourTaskGoal>"
  "f29a8a8019064c8a1f3f3dbe3effeb54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BehaviourTaskGoal)))
  "Returns md5sum for a message object of type 'BehaviourTaskGoal"
  "f29a8a8019064c8a1f3f3dbe3effeb54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BehaviourTaskGoal>)))
  "Returns full string definition for message of type '<BehaviourTaskGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Example usage in axclient:~%#   taskName: 'presentation'~%#   arguments: [{key: 'path', ~%#   value: 'interaction/touchscreen/presentations/autoPresentation.presentation'}]~%#~%string taskName~%pal_behaviour_msgs/BehaviourArgument[] arguments~%~%================================================================================~%MSG: pal_behaviour_msgs/BehaviourArgument~%## SMC event~%~%#Header header~%~%string           key~%string           value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BehaviourTaskGoal)))
  "Returns full string definition for message of type 'BehaviourTaskGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Example usage in axclient:~%#   taskName: 'presentation'~%#   arguments: [{key: 'path', ~%#   value: 'interaction/touchscreen/presentations/autoPresentation.presentation'}]~%#~%string taskName~%pal_behaviour_msgs/BehaviourArgument[] arguments~%~%================================================================================~%MSG: pal_behaviour_msgs/BehaviourArgument~%## SMC event~%~%#Header header~%~%string           key~%string           value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BehaviourTaskGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'taskName))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arguments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BehaviourTaskGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'BehaviourTaskGoal
    (cl:cons ':taskName (taskName msg))
    (cl:cons ':arguments (arguments msg))
))
