; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-msg)


;//! \htmlinclude LedDataArrayParams.msg.html

(cl:defclass <LedDataArrayParams> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector std_msgs-msg:ColorRGBA)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:ColorRGBA :initial-element (cl:make-instance 'std_msgs-msg:ColorRGBA))))
)

(cl:defclass LedDataArrayParams (<LedDataArrayParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedDataArrayParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedDataArrayParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-msg:<LedDataArrayParams> is deprecated: use pal_device_msgs-msg:LedDataArrayParams instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <LedDataArrayParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:data-val is deprecated.  Use pal_device_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedDataArrayParams>) ostream)
  "Serializes a message object of type '<LedDataArrayParams>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedDataArrayParams>) istream)
  "Deserializes a message object of type '<LedDataArrayParams>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:ColorRGBA))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedDataArrayParams>)))
  "Returns string type for a message object of type '<LedDataArrayParams>"
  "pal_device_msgs/LedDataArrayParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedDataArrayParams)))
  "Returns string type for a message object of type 'LedDataArrayParams"
  "pal_device_msgs/LedDataArrayParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedDataArrayParams>)))
  "Returns md5sum for a message object of type '<LedDataArrayParams>"
  "61714ccdbab6d68e5c7a3305a077f115")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedDataArrayParams)))
  "Returns md5sum for a message object of type 'LedDataArrayParams"
  "61714ccdbab6d68e5c7a3305a077f115")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedDataArrayParams>)))
  "Returns full string definition for message of type '<LedDataArrayParams>"
  (cl:format cl:nil "#Data of the effect, each element in the array represents a led, ~%#length should match device led count~%#For devices with no RGB option, just the alpha channel will be used~%std_msgs/ColorRGBA[] data~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedDataArrayParams)))
  "Returns full string definition for message of type 'LedDataArrayParams"
  (cl:format cl:nil "#Data of the effect, each element in the array represents a led, ~%#length should match device led count~%#For devices with no RGB option, just the alpha channel will be used~%std_msgs/ColorRGBA[] data~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedDataArrayParams>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedDataArrayParams>))
  "Converts a ROS message object to a list"
  (cl:list 'LedDataArrayParams
    (cl:cons ':data (data msg))
))
