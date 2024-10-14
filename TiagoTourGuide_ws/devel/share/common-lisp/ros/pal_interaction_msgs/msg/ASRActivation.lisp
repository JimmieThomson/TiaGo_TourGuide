; Auto-generated. Do not edit!


(cl:in-package pal_interaction_msgs-msg)


;//! \htmlinclude ASRActivation.msg.html

(cl:defclass <ASRActivation> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ASRActivation (<ASRActivation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ASRActivation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ASRActivation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_interaction_msgs-msg:<ASRActivation> is deprecated: use pal_interaction_msgs-msg:ASRActivation instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <ASRActivation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_interaction_msgs-msg:action-val is deprecated.  Use pal_interaction_msgs-msg:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ASRActivation>)))
    "Constants for message type '<ASRActivation>"
  '((:ACTIVATE . 1)
    (:DEACTIVATE . 2)
    (:PAUSE . 3)
    (:RESUME . 4)
    (:CALIBRATE . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ASRActivation)))
    "Constants for message type 'ASRActivation"
  '((:ACTIVATE . 1)
    (:DEACTIVATE . 2)
    (:PAUSE . 3)
    (:RESUME . 4)
    (:CALIBRATE . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ASRActivation>) ostream)
  "Serializes a message object of type '<ASRActivation>"
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ASRActivation>) istream)
  "Deserializes a message object of type '<ASRActivation>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ASRActivation>)))
  "Returns string type for a message object of type '<ASRActivation>"
  "pal_interaction_msgs/ASRActivation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ASRActivation)))
  "Returns string type for a message object of type 'ASRActivation"
  "pal_interaction_msgs/ASRActivation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ASRActivation>)))
  "Returns md5sum for a message object of type '<ASRActivation>"
  "cbd42ef6448061151159fe3a848b2553")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ASRActivation)))
  "Returns md5sum for a message object of type 'ASRActivation"
  "cbd42ef6448061151159fe3a848b2553")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ASRActivation>)))
  "Returns full string definition for message of type '<ASRActivation>"
  (cl:format cl:nil "# Message that can be used to send activation commands to the speech recognizer.~%# It is possible to activate/deactivate or pause/resume the recognizer with these commands.~%# action list~%int8 ACTIVATE = 1~%int8 DEACTIVATE = 2~%int8 PAUSE = 3~%int8 RESUME = 4~%int8 CALIBRATE = 5~%~%# Message variables~%int8 action~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ASRActivation)))
  "Returns full string definition for message of type 'ASRActivation"
  (cl:format cl:nil "# Message that can be used to send activation commands to the speech recognizer.~%# It is possible to activate/deactivate or pause/resume the recognizer with these commands.~%# action list~%int8 ACTIVATE = 1~%int8 DEACTIVATE = 2~%int8 PAUSE = 3~%int8 RESUME = 4~%int8 CALIBRATE = 5~%~%# Message variables~%int8 action~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ASRActivation>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ASRActivation>))
  "Converts a ROS message object to a list"
  (cl:list 'ASRActivation
    (cl:cons ':action (action msg))
))
