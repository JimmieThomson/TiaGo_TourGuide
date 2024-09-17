; Auto-generated. Do not edit!


(cl:in-package pal_motion_model_msgs-msg)


;//! \htmlinclude MotionModelList.msg.html

(cl:defclass <MotionModelList> (roslisp-msg-protocol:ros-message)
  ((models
    :reader models
    :initarg :models
    :type (cl:vector pal_motion_model_msgs-msg:MotionModel)
   :initform (cl:make-array 0 :element-type 'pal_motion_model_msgs-msg:MotionModel :initial-element (cl:make-instance 'pal_motion_model_msgs-msg:MotionModel))))
)

(cl:defclass MotionModelList (<MotionModelList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionModelList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionModelList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_motion_model_msgs-msg:<MotionModelList> is deprecated: use pal_motion_model_msgs-msg:MotionModelList instead.")))

(cl:ensure-generic-function 'models-val :lambda-list '(m))
(cl:defmethod models-val ((m <MotionModelList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_motion_model_msgs-msg:models-val is deprecated.  Use pal_motion_model_msgs-msg:models instead.")
  (models m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionModelList>) ostream)
  "Serializes a message object of type '<MotionModelList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'models))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'models))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionModelList>) istream)
  "Deserializes a message object of type '<MotionModelList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'models) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'models)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_motion_model_msgs-msg:MotionModel))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionModelList>)))
  "Returns string type for a message object of type '<MotionModelList>"
  "pal_motion_model_msgs/MotionModelList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionModelList)))
  "Returns string type for a message object of type 'MotionModelList"
  "pal_motion_model_msgs/MotionModelList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionModelList>)))
  "Returns md5sum for a message object of type '<MotionModelList>"
  "f24b8d6d6a0a1542de28f172c2da67ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionModelList)))
  "Returns md5sum for a message object of type 'MotionModelList"
  "f24b8d6d6a0a1542de28f172c2da67ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionModelList>)))
  "Returns full string definition for message of type '<MotionModelList>"
  (cl:format cl:nil "#list of motion models learnt in a specific place~%~%MotionModel[] models~%~%~%~%~%================================================================================~%MSG: pal_motion_model_msgs/MotionModel~%## Contains the 2D motion model of a robot at a specific location~%~%#Heading direction is represented through a gaussian pdf.~%float32  heading_mean~%float32  heading_std_dev~%~%#For statistics we store a pdf over the robot speeds~%float32  linear_speed_mean~%float32  linear_speed_std_dev~%float32  angular_speed_mean~%float32  angular_speed_std_dev~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionModelList)))
  "Returns full string definition for message of type 'MotionModelList"
  (cl:format cl:nil "#list of motion models learnt in a specific place~%~%MotionModel[] models~%~%~%~%~%================================================================================~%MSG: pal_motion_model_msgs/MotionModel~%## Contains the 2D motion model of a robot at a specific location~%~%#Heading direction is represented through a gaussian pdf.~%float32  heading_mean~%float32  heading_std_dev~%~%#For statistics we store a pdf over the robot speeds~%float32  linear_speed_mean~%float32  linear_speed_std_dev~%float32  angular_speed_mean~%float32  angular_speed_std_dev~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionModelList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'models) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionModelList>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionModelList
    (cl:cons ':models (models msg))
))
