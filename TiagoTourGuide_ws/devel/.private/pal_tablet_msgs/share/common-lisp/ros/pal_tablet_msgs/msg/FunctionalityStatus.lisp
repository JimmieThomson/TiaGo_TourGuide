; Auto-generated. Do not edit!


(cl:in-package pal_tablet_msgs-msg)


;//! \htmlinclude FunctionalityStatus.msg.html

(cl:defclass <FunctionalityStatus> (roslisp-msg-protocol:ros-message)
  ((errMessage
    :reader errMessage
    :initarg :errMessage
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (errStatus
    :reader errStatus
    :initarg :errStatus
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass FunctionalityStatus (<FunctionalityStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FunctionalityStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FunctionalityStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_tablet_msgs-msg:<FunctionalityStatus> is deprecated: use pal_tablet_msgs-msg:FunctionalityStatus instead.")))

(cl:ensure-generic-function 'errMessage-val :lambda-list '(m))
(cl:defmethod errMessage-val ((m <FunctionalityStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_tablet_msgs-msg:errMessage-val is deprecated.  Use pal_tablet_msgs-msg:errMessage instead.")
  (errMessage m))

(cl:ensure-generic-function 'errStatus-val :lambda-list '(m))
(cl:defmethod errStatus-val ((m <FunctionalityStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_tablet_msgs-msg:errStatus-val is deprecated.  Use pal_tablet_msgs-msg:errStatus instead.")
  (errStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FunctionalityStatus>) ostream)
  "Serializes a message object of type '<FunctionalityStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'errMessage) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'errStatus) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FunctionalityStatus>) istream)
  "Deserializes a message object of type '<FunctionalityStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'errMessage) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'errStatus) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FunctionalityStatus>)))
  "Returns string type for a message object of type '<FunctionalityStatus>"
  "pal_tablet_msgs/FunctionalityStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FunctionalityStatus)))
  "Returns string type for a message object of type 'FunctionalityStatus"
  "pal_tablet_msgs/FunctionalityStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FunctionalityStatus>)))
  "Returns md5sum for a message object of type '<FunctionalityStatus>"
  "8a8da27b7dcd09b29d33e708966ece31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FunctionalityStatus)))
  "Returns md5sum for a message object of type 'FunctionalityStatus"
  "8a8da27b7dcd09b29d33e708966ece31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FunctionalityStatus>)))
  "Returns full string definition for message of type '<FunctionalityStatus>"
  (cl:format cl:nil "# Functionality status message~%~%std_msgs/String   errMessage~%std_msgs/Bool     errStatus~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FunctionalityStatus)))
  "Returns full string definition for message of type 'FunctionalityStatus"
  (cl:format cl:nil "# Functionality status message~%~%std_msgs/String   errMessage~%std_msgs/Bool     errStatus~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FunctionalityStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'errMessage))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'errStatus))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FunctionalityStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'FunctionalityStatus
    (cl:cons ':errMessage (errMessage msg))
    (cl:cons ':errStatus (errStatus msg))
))
