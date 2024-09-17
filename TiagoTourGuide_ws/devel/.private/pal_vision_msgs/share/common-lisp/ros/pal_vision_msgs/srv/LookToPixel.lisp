; Auto-generated. Do not edit!


(cl:in-package pal_vision_msgs-srv)


;//! \htmlinclude LookToPixel-request.msg.html

(cl:defclass <LookToPixel-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass LookToPixel-request (<LookToPixel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LookToPixel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LookToPixel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-srv:<LookToPixel-request> is deprecated: use pal_vision_msgs-srv:LookToPixel-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <LookToPixel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-srv:x-val is deprecated.  Use pal_vision_msgs-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <LookToPixel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_vision_msgs-srv:y-val is deprecated.  Use pal_vision_msgs-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LookToPixel-request>) ostream)
  "Serializes a message object of type '<LookToPixel-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LookToPixel-request>) istream)
  "Deserializes a message object of type '<LookToPixel-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LookToPixel-request>)))
  "Returns string type for a service object of type '<LookToPixel-request>"
  "pal_vision_msgs/LookToPixelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookToPixel-request)))
  "Returns string type for a service object of type 'LookToPixel-request"
  "pal_vision_msgs/LookToPixelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LookToPixel-request>)))
  "Returns md5sum for a message object of type '<LookToPixel-request>"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LookToPixel-request)))
  "Returns md5sum for a message object of type 'LookToPixel-request"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LookToPixel-request>)))
  "Returns full string definition for message of type '<LookToPixel-request>"
  (cl:format cl:nil "## Service message to make the robot look towards a direction defined by a pixel of its left camera~%## The service is implemented in personServer at /personServer/lookToPixel~%##~%## The parameters of the service are the pixel coordinates (x,y) expressed relative to the image width and height. ~%## For instance, if the service is called with (x,y) = (1, 0) then the robot will look the right side; if (x,y) = (0.5, 0.5) the robot~%## will look forward; if (0.5, 1) the robot will look downwards; etc.~%~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LookToPixel-request)))
  "Returns full string definition for message of type 'LookToPixel-request"
  (cl:format cl:nil "## Service message to make the robot look towards a direction defined by a pixel of its left camera~%## The service is implemented in personServer at /personServer/lookToPixel~%##~%## The parameters of the service are the pixel coordinates (x,y) expressed relative to the image width and height. ~%## For instance, if the service is called with (x,y) = (1, 0) then the robot will look the right side; if (x,y) = (0.5, 0.5) the robot~%## will look forward; if (0.5, 1) the robot will look downwards; etc.~%~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LookToPixel-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LookToPixel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LookToPixel-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude LookToPixel-response.msg.html

(cl:defclass <LookToPixel-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LookToPixel-response (<LookToPixel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LookToPixel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LookToPixel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_vision_msgs-srv:<LookToPixel-response> is deprecated: use pal_vision_msgs-srv:LookToPixel-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LookToPixel-response>) ostream)
  "Serializes a message object of type '<LookToPixel-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LookToPixel-response>) istream)
  "Deserializes a message object of type '<LookToPixel-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LookToPixel-response>)))
  "Returns string type for a service object of type '<LookToPixel-response>"
  "pal_vision_msgs/LookToPixelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookToPixel-response)))
  "Returns string type for a service object of type 'LookToPixel-response"
  "pal_vision_msgs/LookToPixelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LookToPixel-response>)))
  "Returns md5sum for a message object of type '<LookToPixel-response>"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LookToPixel-response)))
  "Returns md5sum for a message object of type 'LookToPixel-response"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LookToPixel-response>)))
  "Returns full string definition for message of type '<LookToPixel-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LookToPixel-response)))
  "Returns full string definition for message of type 'LookToPixel-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LookToPixel-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LookToPixel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LookToPixel-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LookToPixel)))
  'LookToPixel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LookToPixel)))
  'LookToPixel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookToPixel)))
  "Returns string type for a service object of type '<LookToPixel>"
  "pal_vision_msgs/LookToPixel")