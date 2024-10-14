; Auto-generated. Do not edit!


(cl:in-package pal_detection_msgs-msg)


;//! \htmlinclude RecognizedObject.msg.html

(cl:defclass <RecognizedObject> (roslisp-msg-protocol:ros-message)
  ((object_class
    :reader object_class
    :initarg :object_class
    :type cl:string
    :initform "")
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (bounding_box
    :reader bounding_box
    :initarg :bounding_box
    :type sensor_msgs-msg:RegionOfInterest
    :initform (cl:make-instance 'sensor_msgs-msg:RegionOfInterest)))
)

(cl:defclass RecognizedObject (<RecognizedObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizedObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizedObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-msg:<RecognizedObject> is deprecated: use pal_detection_msgs-msg:RecognizedObject instead.")))

(cl:ensure-generic-function 'object_class-val :lambda-list '(m))
(cl:defmethod object_class-val ((m <RecognizedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:object_class-val is deprecated.  Use pal_detection_msgs-msg:object_class instead.")
  (object_class m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <RecognizedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:confidence-val is deprecated.  Use pal_detection_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'bounding_box-val :lambda-list '(m))
(cl:defmethod bounding_box-val ((m <RecognizedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:bounding_box-val is deprecated.  Use pal_detection_msgs-msg:bounding_box instead.")
  (bounding_box m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizedObject>) ostream)
  "Serializes a message object of type '<RecognizedObject>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_class))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_class))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizedObject>) istream)
  "Deserializes a message object of type '<RecognizedObject>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_class) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_class) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognizedObject>)))
  "Returns string type for a message object of type '<RecognizedObject>"
  "pal_detection_msgs/RecognizedObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizedObject)))
  "Returns string type for a message object of type 'RecognizedObject"
  "pal_detection_msgs/RecognizedObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognizedObject>)))
  "Returns md5sum for a message object of type '<RecognizedObject>"
  "ac3fbc481abe751cad38199e3707858d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizedObject)))
  "Returns md5sum for a message object of type 'RecognizedObject"
  "ac3fbc481abe751cad38199e3707858d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizedObject>)))
  "Returns full string definition for message of type '<RecognizedObject>"
  (cl:format cl:nil "# Contains information about the class of a found object, along with its confidence and ROI of detection~%~%# class: The respective class type of the found object~%string object_class~%~%# confidence: how sure you are it is that object and not another one.~%# It is between 0 and 1 and the closer to one it is the better~%float32 confidence~%~%# bounding_box: The region of the image, where the object is found~%sensor_msgs/RegionOfInterest bounding_box~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizedObject)))
  "Returns full string definition for message of type 'RecognizedObject"
  (cl:format cl:nil "# Contains information about the class of a found object, along with its confidence and ROI of detection~%~%# class: The respective class type of the found object~%string object_class~%~%# confidence: how sure you are it is that object and not another one.~%# It is between 0 and 1 and the closer to one it is the better~%float32 confidence~%~%# bounding_box: The region of the image, where the object is found~%sensor_msgs/RegionOfInterest bounding_box~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizedObject>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_class))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizedObject>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizedObject
    (cl:cons ':object_class (object_class msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':bounding_box (bounding_box msg))
))
