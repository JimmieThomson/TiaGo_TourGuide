; Auto-generated. Do not edit!


(cl:in-package pal_device_msgs-msg)


;//! \htmlinclude LedPreProgrammedParams.msg.html

(cl:defclass <LedPreProgrammedParams> (roslisp-msg-protocol:ros-message)
  ((preprogrammed_id
    :reader preprogrammed_id
    :initarg :preprogrammed_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LedPreProgrammedParams (<LedPreProgrammedParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedPreProgrammedParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedPreProgrammedParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_device_msgs-msg:<LedPreProgrammedParams> is deprecated: use pal_device_msgs-msg:LedPreProgrammedParams instead.")))

(cl:ensure-generic-function 'preprogrammed_id-val :lambda-list '(m))
(cl:defmethod preprogrammed_id-val ((m <LedPreProgrammedParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_device_msgs-msg:preprogrammed_id-val is deprecated.  Use pal_device_msgs-msg:preprogrammed_id instead.")
  (preprogrammed_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedPreProgrammedParams>) ostream)
  "Serializes a message object of type '<LedPreProgrammedParams>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'preprogrammed_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedPreProgrammedParams>) istream)
  "Deserializes a message object of type '<LedPreProgrammedParams>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'preprogrammed_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedPreProgrammedParams>)))
  "Returns string type for a message object of type '<LedPreProgrammedParams>"
  "pal_device_msgs/LedPreProgrammedParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedPreProgrammedParams)))
  "Returns string type for a message object of type 'LedPreProgrammedParams"
  "pal_device_msgs/LedPreProgrammedParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedPreProgrammedParams>)))
  "Returns md5sum for a message object of type '<LedPreProgrammedParams>"
  "269ccb5728503bb2fd4261e5b289d3c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedPreProgrammedParams)))
  "Returns md5sum for a message object of type 'LedPreProgrammedParams"
  "269ccb5728503bb2fd4261e5b289d3c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedPreProgrammedParams>)))
  "Returns full string definition for message of type '<LedPreProgrammedParams>"
  (cl:format cl:nil "#Id of pre-programmed effect, most likely device specific~%uint8 preprogrammed_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedPreProgrammedParams)))
  "Returns full string definition for message of type 'LedPreProgrammedParams"
  (cl:format cl:nil "#Id of pre-programmed effect, most likely device specific~%uint8 preprogrammed_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedPreProgrammedParams>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedPreProgrammedParams>))
  "Converts a ROS message object to a list"
  (cl:list 'LedPreProgrammedParams
    (cl:cons ':preprogrammed_id (preprogrammed_id msg))
))
