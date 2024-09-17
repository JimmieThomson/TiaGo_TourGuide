; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude NavigationStatus.msg.html

(cl:defclass <NavigationStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (msg
    :reader msg
    :initarg :msg
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass NavigationStatus (<NavigationStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<NavigationStatus> is deprecated: use pal_navigation_msgs-msg:NavigationStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <NavigationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:status-val is deprecated.  Use pal_navigation_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <NavigationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:msg-val is deprecated.  Use pal_navigation_msgs-msg:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationStatus>) ostream)
  "Serializes a message object of type '<NavigationStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'msg) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationStatus>) istream)
  "Deserializes a message object of type '<NavigationStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'msg) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationStatus>)))
  "Returns string type for a message object of type '<NavigationStatus>"
  "pal_navigation_msgs/NavigationStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationStatus)))
  "Returns string type for a message object of type 'NavigationStatus"
  "pal_navigation_msgs/NavigationStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationStatus>)))
  "Returns md5sum for a message object of type '<NavigationStatus>"
  "37841f68121395f14fd0a4c8470eb55c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationStatus)))
  "Returns md5sum for a message object of type 'NavigationStatus"
  "37841f68121395f14fd0a4c8470eb55c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationStatus>)))
  "Returns full string definition for message of type '<NavigationStatus>"
  (cl:format cl:nil "std_msgs/String  status~%std_msgs/String  msg~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationStatus)))
  "Returns full string definition for message of type 'NavigationStatus"
  (cl:format cl:nil "std_msgs/String  status~%std_msgs/String  msg~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationStatus
    (cl:cons ':status (status msg))
    (cl:cons ':msg (msg msg))
))
