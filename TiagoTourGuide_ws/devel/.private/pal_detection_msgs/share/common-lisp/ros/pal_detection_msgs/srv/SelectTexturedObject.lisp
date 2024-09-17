; Auto-generated. Do not edit!


(cl:in-package pal_detection_msgs-srv)


;//! \htmlinclude SelectTexturedObject-request.msg.html

(cl:defclass <SelectTexturedObject-request> (roslisp-msg-protocol:ros-message)
  ((imageFullPathFileName
    :reader imageFullPathFileName
    :initarg :imageFullPathFileName
    :type cl:string
    :initform "")
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass SelectTexturedObject-request (<SelectTexturedObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SelectTexturedObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SelectTexturedObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-srv:<SelectTexturedObject-request> is deprecated: use pal_detection_msgs-srv:SelectTexturedObject-request instead.")))

(cl:ensure-generic-function 'imageFullPathFileName-val :lambda-list '(m))
(cl:defmethod imageFullPathFileName-val ((m <SelectTexturedObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:imageFullPathFileName-val is deprecated.  Use pal_detection_msgs-srv:imageFullPathFileName instead.")
  (imageFullPathFileName m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <SelectTexturedObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:width-val is deprecated.  Use pal_detection_msgs-srv:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <SelectTexturedObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:height-val is deprecated.  Use pal_detection_msgs-srv:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SelectTexturedObject-request>) ostream)
  "Serializes a message object of type '<SelectTexturedObject-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'imageFullPathFileName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'imageFullPathFileName))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SelectTexturedObject-request>) istream)
  "Deserializes a message object of type '<SelectTexturedObject-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'imageFullPathFileName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'imageFullPathFileName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SelectTexturedObject-request>)))
  "Returns string type for a service object of type '<SelectTexturedObject-request>"
  "pal_detection_msgs/SelectTexturedObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelectTexturedObject-request)))
  "Returns string type for a service object of type 'SelectTexturedObject-request"
  "pal_detection_msgs/SelectTexturedObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SelectTexturedObject-request>)))
  "Returns md5sum for a message object of type '<SelectTexturedObject-request>"
  "faf29785b500c6c5f79cbce8786d0710")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SelectTexturedObject-request)))
  "Returns md5sum for a message object of type 'SelectTexturedObject-request"
  "faf29785b500c6c5f79cbce8786d0710")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SelectTexturedObject-request>)))
  "Returns full string definition for message of type '<SelectTexturedObject-request>"
  (cl:format cl:nil "# This service message allows specifying to the texture_detector node~%# which object it must look for.~%#~%~%string imageFullPathFileName # image filename including full path and file extension (always .png)~%                             # The file must exist in the computer where the texture_detector node~%                             # is running. The image must contain a frontal view of a planar textured object.~%float64 width                # width of the planar object in meters. Set to 0 if no pose estimation is required.~%float64 height               # height of the planar object in meters. Set to 0 if no pose estimation is required.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SelectTexturedObject-request)))
  "Returns full string definition for message of type 'SelectTexturedObject-request"
  (cl:format cl:nil "# This service message allows specifying to the texture_detector node~%# which object it must look for.~%#~%~%string imageFullPathFileName # image filename including full path and file extension (always .png)~%                             # The file must exist in the computer where the texture_detector node~%                             # is running. The image must contain a frontal view of a planar textured object.~%float64 width                # width of the planar object in meters. Set to 0 if no pose estimation is required.~%float64 height               # height of the planar object in meters. Set to 0 if no pose estimation is required.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SelectTexturedObject-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'imageFullPathFileName))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SelectTexturedObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SelectTexturedObject-request
    (cl:cons ':imageFullPathFileName (imageFullPathFileName msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
;//! \htmlinclude SelectTexturedObject-response.msg.html

(cl:defclass <SelectTexturedObject-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SelectTexturedObject-response (<SelectTexturedObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SelectTexturedObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SelectTexturedObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-srv:<SelectTexturedObject-response> is deprecated: use pal_detection_msgs-srv:SelectTexturedObject-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SelectTexturedObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:result-val is deprecated.  Use pal_detection_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SelectTexturedObject-response>) ostream)
  "Serializes a message object of type '<SelectTexturedObject-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SelectTexturedObject-response>) istream)
  "Deserializes a message object of type '<SelectTexturedObject-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SelectTexturedObject-response>)))
  "Returns string type for a service object of type '<SelectTexturedObject-response>"
  "pal_detection_msgs/SelectTexturedObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelectTexturedObject-response)))
  "Returns string type for a service object of type 'SelectTexturedObject-response"
  "pal_detection_msgs/SelectTexturedObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SelectTexturedObject-response>)))
  "Returns md5sum for a message object of type '<SelectTexturedObject-response>"
  "faf29785b500c6c5f79cbce8786d0710")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SelectTexturedObject-response)))
  "Returns md5sum for a message object of type 'SelectTexturedObject-response"
  "faf29785b500c6c5f79cbce8786d0710")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SelectTexturedObject-response>)))
  "Returns full string definition for message of type '<SelectTexturedObject-response>"
  (cl:format cl:nil "bool result                  # returns true if the texture_detector node has been able to load the given image filename~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SelectTexturedObject-response)))
  "Returns full string definition for message of type 'SelectTexturedObject-response"
  (cl:format cl:nil "bool result                  # returns true if the texture_detector node has been able to load the given image filename~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SelectTexturedObject-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SelectTexturedObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SelectTexturedObject-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SelectTexturedObject)))
  'SelectTexturedObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SelectTexturedObject)))
  'SelectTexturedObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelectTexturedObject)))
  "Returns string type for a service object of type '<SelectTexturedObject>"
  "pal_detection_msgs/SelectTexturedObject")