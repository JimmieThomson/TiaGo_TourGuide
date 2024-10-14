; Auto-generated. Do not edit!


(cl:in-package pal_detection_msgs-msg)


;//! \htmlinclude RecognizedObjectArray.msg.html

(cl:defclass <RecognizedObjectArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector pal_detection_msgs-msg:RecognizedObject)
   :initform (cl:make-array 0 :element-type 'pal_detection_msgs-msg:RecognizedObject :initial-element (cl:make-instance 'pal_detection_msgs-msg:RecognizedObject))))
)

(cl:defclass RecognizedObjectArray (<RecognizedObjectArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizedObjectArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizedObjectArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-msg:<RecognizedObjectArray> is deprecated: use pal_detection_msgs-msg:RecognizedObjectArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RecognizedObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:header-val is deprecated.  Use pal_detection_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <RecognizedObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-msg:objects-val is deprecated.  Use pal_detection_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizedObjectArray>) ostream)
  "Serializes a message object of type '<RecognizedObjectArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizedObjectArray>) istream)
  "Deserializes a message object of type '<RecognizedObjectArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_detection_msgs-msg:RecognizedObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognizedObjectArray>)))
  "Returns string type for a message object of type '<RecognizedObjectArray>"
  "pal_detection_msgs/RecognizedObjectArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizedObjectArray)))
  "Returns string type for a message object of type 'RecognizedObjectArray"
  "pal_detection_msgs/RecognizedObjectArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognizedObjectArray>)))
  "Returns md5sum for a message object of type '<RecognizedObjectArray>"
  "dcb18214bccf44241bbc5f55aa4358f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizedObjectArray)))
  "Returns md5sum for a message object of type 'RecognizedObjectArray"
  "dcb18214bccf44241bbc5f55aa4358f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizedObjectArray>)))
  "Returns full string definition for message of type '<RecognizedObjectArray>"
  (cl:format cl:nil "Header header~%~%# This message type describes a potential scene configuration: a set of objects that can explain the scene~%pal_detection_msgs/RecognizedObject[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pal_detection_msgs/RecognizedObject~%# Contains information about the class of a found object, along with its confidence and ROI of detection~%~%# class: The respective class type of the found object~%string object_class~%~%# confidence: how sure you are it is that object and not another one.~%# It is between 0 and 1 and the closer to one it is the better~%float32 confidence~%~%# bounding_box: The region of the image, where the object is found~%sensor_msgs/RegionOfInterest bounding_box~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizedObjectArray)))
  "Returns full string definition for message of type 'RecognizedObjectArray"
  (cl:format cl:nil "Header header~%~%# This message type describes a potential scene configuration: a set of objects that can explain the scene~%pal_detection_msgs/RecognizedObject[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pal_detection_msgs/RecognizedObject~%# Contains information about the class of a found object, along with its confidence and ROI of detection~%~%# class: The respective class type of the found object~%string object_class~%~%# confidence: how sure you are it is that object and not another one.~%# It is between 0 and 1 and the closer to one it is the better~%float32 confidence~%~%# bounding_box: The region of the image, where the object is found~%sensor_msgs/RegionOfInterest bounding_box~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizedObjectArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizedObjectArray>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizedObjectArray
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
