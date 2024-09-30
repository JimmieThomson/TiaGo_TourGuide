; Auto-generated. Do not edit!


(cl:in-package pal_detection_msgs-srv)


;//! \htmlinclude AddTexturedObject-request.msg.html

(cl:defclass <AddTexturedObject-request> (roslisp-msg-protocol:ros-message)
  ((img
    :reader img
    :initarg :img
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (fullPathFileName
    :reader fullPathFileName
    :initarg :fullPathFileName
    :type cl:string
    :initform ""))
)

(cl:defclass AddTexturedObject-request (<AddTexturedObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTexturedObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTexturedObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-srv:<AddTexturedObject-request> is deprecated: use pal_detection_msgs-srv:AddTexturedObject-request instead.")))

(cl:ensure-generic-function 'img-val :lambda-list '(m))
(cl:defmethod img-val ((m <AddTexturedObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:img-val is deprecated.  Use pal_detection_msgs-srv:img instead.")
  (img m))

(cl:ensure-generic-function 'fullPathFileName-val :lambda-list '(m))
(cl:defmethod fullPathFileName-val ((m <AddTexturedObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:fullPathFileName-val is deprecated.  Use pal_detection_msgs-srv:fullPathFileName instead.")
  (fullPathFileName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTexturedObject-request>) ostream)
  "Serializes a message object of type '<AddTexturedObject-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'img) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'fullPathFileName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'fullPathFileName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTexturedObject-request>) istream)
  "Deserializes a message object of type '<AddTexturedObject-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'img) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fullPathFileName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'fullPathFileName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTexturedObject-request>)))
  "Returns string type for a service object of type '<AddTexturedObject-request>"
  "pal_detection_msgs/AddTexturedObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTexturedObject-request)))
  "Returns string type for a service object of type 'AddTexturedObject-request"
  "pal_detection_msgs/AddTexturedObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTexturedObject-request>)))
  "Returns md5sum for a message object of type '<AddTexturedObject-request>"
  "e516c1b4cddfd9938ab91f008085bdcc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTexturedObject-request)))
  "Returns md5sum for a message object of type 'AddTexturedObject-request"
  "e516c1b4cddfd9938ab91f008085bdcc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTexturedObject-request>)))
  "Returns full string definition for message of type '<AddTexturedObject-request>"
  (cl:format cl:nil "# This service message allows storing in the robot computer where ~%# the texture_detector node is running the image of a new textured object~%#~%sensor_msgs/Image img     # image of the new textured object~%string fullPathFileName   # full path and filename, without extension, where the image~%                          # will be stored. The file image format will be PNG. ~%                          # This parameter must be a valid full path in the computer where~%                          # the texture_detector node is running. For instace,~%                          # calling this service with fullPathFileName set to \"/home/pal/new_object\"~%                          # will make the texture_detector node create the file /home/pal/new_object.png~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTexturedObject-request)))
  "Returns full string definition for message of type 'AddTexturedObject-request"
  (cl:format cl:nil "# This service message allows storing in the robot computer where ~%# the texture_detector node is running the image of a new textured object~%#~%sensor_msgs/Image img     # image of the new textured object~%string fullPathFileName   # full path and filename, without extension, where the image~%                          # will be stored. The file image format will be PNG. ~%                          # This parameter must be a valid full path in the computer where~%                          # the texture_detector node is running. For instace,~%                          # calling this service with fullPathFileName set to \"/home/pal/new_object\"~%                          # will make the texture_detector node create the file /home/pal/new_object.png~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTexturedObject-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'img))
     4 (cl:length (cl:slot-value msg 'fullPathFileName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTexturedObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTexturedObject-request
    (cl:cons ':img (img msg))
    (cl:cons ':fullPathFileName (fullPathFileName msg))
))
;//! \htmlinclude AddTexturedObject-response.msg.html

(cl:defclass <AddTexturedObject-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AddTexturedObject-response (<AddTexturedObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTexturedObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTexturedObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_detection_msgs-srv:<AddTexturedObject-response> is deprecated: use pal_detection_msgs-srv:AddTexturedObject-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AddTexturedObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_detection_msgs-srv:result-val is deprecated.  Use pal_detection_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTexturedObject-response>) ostream)
  "Serializes a message object of type '<AddTexturedObject-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTexturedObject-response>) istream)
  "Deserializes a message object of type '<AddTexturedObject-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTexturedObject-response>)))
  "Returns string type for a service object of type '<AddTexturedObject-response>"
  "pal_detection_msgs/AddTexturedObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTexturedObject-response)))
  "Returns string type for a service object of type 'AddTexturedObject-response"
  "pal_detection_msgs/AddTexturedObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTexturedObject-response>)))
  "Returns md5sum for a message object of type '<AddTexturedObject-response>"
  "e516c1b4cddfd9938ab91f008085bdcc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTexturedObject-response)))
  "Returns md5sum for a message object of type 'AddTexturedObject-response"
  "e516c1b4cddfd9938ab91f008085bdcc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTexturedObject-response>)))
  "Returns full string definition for message of type '<AddTexturedObject-response>"
  (cl:format cl:nil "bool result               # The result will be true if the texture_detector node has been~%                          # able to store the image in the specified path and filename~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTexturedObject-response)))
  "Returns full string definition for message of type 'AddTexturedObject-response"
  (cl:format cl:nil "bool result               # The result will be true if the texture_detector node has been~%                          # able to store the image in the specified path and filename~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTexturedObject-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTexturedObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTexturedObject-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddTexturedObject)))
  'AddTexturedObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddTexturedObject)))
  'AddTexturedObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTexturedObject)))
  "Returns string type for a service object of type '<AddTexturedObject>"
  "pal_detection_msgs/AddTexturedObject")