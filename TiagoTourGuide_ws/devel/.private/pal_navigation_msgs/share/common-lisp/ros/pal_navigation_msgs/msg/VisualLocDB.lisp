; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude VisualLocDB.msg.html

(cl:defclass <VisualLocDB> (roslisp-msg-protocol:ros-message)
  ((documents
    :reader documents
    :initarg :documents
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (tree
    :reader tree
    :initarg :tree
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (weights
    :reader weights
    :initarg :weights
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass VisualLocDB (<VisualLocDB>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisualLocDB>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisualLocDB)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<VisualLocDB> is deprecated: use pal_navigation_msgs-msg:VisualLocDB instead.")))

(cl:ensure-generic-function 'documents-val :lambda-list '(m))
(cl:defmethod documents-val ((m <VisualLocDB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:documents-val is deprecated.  Use pal_navigation_msgs-msg:documents instead.")
  (documents m))

(cl:ensure-generic-function 'tree-val :lambda-list '(m))
(cl:defmethod tree-val ((m <VisualLocDB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:tree-val is deprecated.  Use pal_navigation_msgs-msg:tree instead.")
  (tree m))

(cl:ensure-generic-function 'weights-val :lambda-list '(m))
(cl:defmethod weights-val ((m <VisualLocDB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:weights-val is deprecated.  Use pal_navigation_msgs-msg:weights instead.")
  (weights m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisualLocDB>) ostream)
  "Serializes a message object of type '<VisualLocDB>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'documents))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'documents))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tree))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'tree))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'weights))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'weights))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisualLocDB>) istream)
  "Deserializes a message object of type '<VisualLocDB>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'documents) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'documents)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tree) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tree)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'weights) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'weights)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisualLocDB>)))
  "Returns string type for a message object of type '<VisualLocDB>"
  "pal_navigation_msgs/VisualLocDB")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisualLocDB)))
  "Returns string type for a message object of type 'VisualLocDB"
  "pal_navigation_msgs/VisualLocDB")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisualLocDB>)))
  "Returns md5sum for a message object of type '<VisualLocDB>"
  "ecd1514e0345ae95252fcd0c3269725c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisualLocDB)))
  "Returns md5sum for a message object of type 'VisualLocDB"
  "ecd1514e0345ae95252fcd0c3269725c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisualLocDB>)))
  "Returns full string definition for message of type '<VisualLocDB>"
  (cl:format cl:nil "#Contents of the 3 binary files that contain the visual localization DB~%~%uint8[] documents~%uint8[] tree~%uint8[] weights~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisualLocDB)))
  "Returns full string definition for message of type 'VisualLocDB"
  (cl:format cl:nil "#Contents of the 3 binary files that contain the visual localization DB~%~%uint8[] documents~%uint8[] tree~%uint8[] weights~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisualLocDB>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'documents) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tree) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'weights) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisualLocDB>))
  "Converts a ROS message object to a list"
  (cl:list 'VisualLocDB
    (cl:cons ':documents (documents msg))
    (cl:cons ':tree (tree msg))
    (cl:cons ':weights (weights msg))
))
