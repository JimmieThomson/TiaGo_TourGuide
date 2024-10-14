; Auto-generated. Do not edit!


(cl:in-package pal_detection_msgs-srv)


;//! \htmlinclude ChangeObjectRecognizerModel-request.msg.html

(cl:defclass <ChangeObjectRecognizerModel-request> (roslisp-msg-protocol:ros-message)
  ((model_name
    :reader model_name
    :initarg :model_name
    :type cl:string
    :initform "")
   (reset_desired_classes_param
    :reader reset_desired_classes_param
    :initarg :reset_desired_classes_param
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeObjectRecognizerModel-request (<ChangeObjectRecognizerModel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeObjectRecognizerModel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeObjectRecognizerModel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-srv:<ChangeObjectRecognizerModel-request> is deprecated: use pal_detection_msgs-srv:ChangeObjectRecognizerModel-request instead.")))

(cl:ensure-generic-function 'model_name-val :lambda-list '(m))
(cl:defmethod model_name-val ((m <ChangeObjectRecognizerModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:model_name-val is deprecated.  Use pal_detection_msgs-srv:model_name instead.")
  (model_name m))

(cl:ensure-generic-function 'reset_desired_classes_param-val :lambda-list '(m))
(cl:defmethod reset_desired_classes_param-val ((m <ChangeObjectRecognizerModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:reset_desired_classes_param-val is deprecated.  Use pal_detection_msgs-srv:reset_desired_classes_param instead.")
  (reset_desired_classes_param m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeObjectRecognizerModel-request>) ostream)
  "Serializes a message object of type '<ChangeObjectRecognizerModel-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_desired_classes_param) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeObjectRecognizerModel-request>) istream)
  "Deserializes a message object of type '<ChangeObjectRecognizerModel-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'reset_desired_classes_param) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeObjectRecognizerModel-request>)))
  "Returns string type for a service object of type '<ChangeObjectRecognizerModel-request>"
  "pal_detection_msgs/ChangeObjectRecognizerModelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeObjectRecognizerModel-request)))
  "Returns string type for a service object of type 'ChangeObjectRecognizerModel-request"
  "pal_detection_msgs/ChangeObjectRecognizerModelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeObjectRecognizerModel-request>)))
  "Returns md5sum for a message object of type '<ChangeObjectRecognizerModel-request>"
  "772f7a8423ea945bf501239102bf9c1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeObjectRecognizerModel-request)))
  "Returns md5sum for a message object of type 'ChangeObjectRecognizerModel-request"
  "772f7a8423ea945bf501239102bf9c1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeObjectRecognizerModel-request>)))
  "Returns full string definition for message of type '<ChangeObjectRecognizerModel-request>"
  (cl:format cl:nil "# This service allows to change the object recognizer model~%~%# model_name: New object recognizer model name ~%string model_name~%~%# reset_desired_classes_param: reset the desired classes params for the new model~%bool reset_desired_classes_param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeObjectRecognizerModel-request)))
  "Returns full string definition for message of type 'ChangeObjectRecognizerModel-request"
  (cl:format cl:nil "# This service allows to change the object recognizer model~%~%# model_name: New object recognizer model name ~%string model_name~%~%# reset_desired_classes_param: reset the desired classes params for the new model~%bool reset_desired_classes_param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeObjectRecognizerModel-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeObjectRecognizerModel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeObjectRecognizerModel-request
    (cl:cons ':model_name (model_name msg))
    (cl:cons ':reset_desired_classes_param (reset_desired_classes_param msg))
))
;//! \htmlinclude ChangeObjectRecognizerModel-response.msg.html

(cl:defclass <ChangeObjectRecognizerModel-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeObjectRecognizerModel-response (<ChangeObjectRecognizerModel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeObjectRecognizerModel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeObjectRecognizerModel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-srv:<ChangeObjectRecognizerModel-response> is deprecated: use pal_detection_msgs-srv:ChangeObjectRecognizerModel-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ChangeObjectRecognizerModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:status-val is deprecated.  Use pal_detection_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeObjectRecognizerModel-response>) ostream)
  "Serializes a message object of type '<ChangeObjectRecognizerModel-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeObjectRecognizerModel-response>) istream)
  "Deserializes a message object of type '<ChangeObjectRecognizerModel-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeObjectRecognizerModel-response>)))
  "Returns string type for a service object of type '<ChangeObjectRecognizerModel-response>"
  "pal_detection_msgs/ChangeObjectRecognizerModelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeObjectRecognizerModel-response)))
  "Returns string type for a service object of type 'ChangeObjectRecognizerModel-response"
  "pal_detection_msgs/ChangeObjectRecognizerModelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeObjectRecognizerModel-response>)))
  "Returns md5sum for a message object of type '<ChangeObjectRecognizerModel-response>"
  "772f7a8423ea945bf501239102bf9c1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeObjectRecognizerModel-response)))
  "Returns md5sum for a message object of type 'ChangeObjectRecognizerModel-response"
  "772f7a8423ea945bf501239102bf9c1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeObjectRecognizerModel-response>)))
  "Returns full string definition for message of type '<ChangeObjectRecognizerModel-response>"
  (cl:format cl:nil "# status: provides the status info of the service call~%bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeObjectRecognizerModel-response)))
  "Returns full string definition for message of type 'ChangeObjectRecognizerModel-response"
  (cl:format cl:nil "# status: provides the status info of the service call~%bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeObjectRecognizerModel-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeObjectRecognizerModel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeObjectRecognizerModel-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeObjectRecognizerModel)))
  'ChangeObjectRecognizerModel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeObjectRecognizerModel)))
  'ChangeObjectRecognizerModel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeObjectRecognizerModel)))
  "Returns string type for a service object of type '<ChangeObjectRecognizerModel>"
  "pal_detection_msgs/ChangeObjectRecognizerModel")