;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::AddTexturedObject)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'AddTexturedObject (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::ADDTEXTUREDOBJECT")
  (make-package "PAL_DETECTION_MSGS::ADDTEXTUREDOBJECT"))
(unless (find-package "PAL_DETECTION_MSGS::ADDTEXTUREDOBJECTREQUEST")
  (make-package "PAL_DETECTION_MSGS::ADDTEXTUREDOBJECTREQUEST"))
(unless (find-package "PAL_DETECTION_MSGS::ADDTEXTUREDOBJECTRESPONSE")
  (make-package "PAL_DETECTION_MSGS::ADDTEXTUREDOBJECTRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass pal_detection_msgs::AddTexturedObjectRequest
  :super ros::object
  :slots (_img _fullPathFileName ))

(defmethod pal_detection_msgs::AddTexturedObjectRequest
  (:init
   (&key
    ((:img __img) (instance sensor_msgs::Image :init))
    ((:fullPathFileName __fullPathFileName) "")
    )
   (send-super :init)
   (setq _img __img)
   (setq _fullPathFileName (string __fullPathFileName))
   self)
  (:img
   (&rest __img)
   (if (keywordp (car __img))
       (send* _img __img)
     (progn
       (if __img (setq _img (car __img)))
       _img)))
  (:fullPathFileName
   (&optional __fullPathFileName)
   (if __fullPathFileName (setq _fullPathFileName __fullPathFileName)) _fullPathFileName)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _img
    (send _img :serialization-length)
    ;; string _fullPathFileName
    4 (length _fullPathFileName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _img
       (send _img :serialize s)
     ;; string _fullPathFileName
       (write-long (length _fullPathFileName) s) (princ _fullPathFileName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _img
     (send _img :deserialize buf ptr-) (incf ptr- (send _img :serialization-length))
   ;; string _fullPathFileName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _fullPathFileName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pal_detection_msgs::AddTexturedObjectResponse
  :super ros::object
  :slots (_result ))

(defmethod pal_detection_msgs::AddTexturedObjectResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pal_detection_msgs::AddTexturedObject
  :super ros::object
  :slots ())

(setf (get pal_detection_msgs::AddTexturedObject :md5sum-) "e516c1b4cddfd9938ab91f008085bdcc")
(setf (get pal_detection_msgs::AddTexturedObject :datatype-) "pal_detection_msgs/AddTexturedObject")
(setf (get pal_detection_msgs::AddTexturedObject :request) pal_detection_msgs::AddTexturedObjectRequest)
(setf (get pal_detection_msgs::AddTexturedObject :response) pal_detection_msgs::AddTexturedObjectResponse)

(defmethod pal_detection_msgs::AddTexturedObjectRequest
  (:response () (instance pal_detection_msgs::AddTexturedObjectResponse :init)))

(setf (get pal_detection_msgs::AddTexturedObjectRequest :md5sum-) "e516c1b4cddfd9938ab91f008085bdcc")
(setf (get pal_detection_msgs::AddTexturedObjectRequest :datatype-) "pal_detection_msgs/AddTexturedObjectRequest")
(setf (get pal_detection_msgs::AddTexturedObjectRequest :definition-)
      "# This service message allows storing in the robot computer where 
# the texture_detector node is running the image of a new textured object
#
sensor_msgs/Image img     # image of the new textured object
string fullPathFileName   # full path and filename, without extension, where the image
                          # will be stored. The file image format will be PNG. 
                          # This parameter must be a valid full path in the computer where
                          # the texture_detector node is running. For instace,
                          # calling this service with fullPathFileName set to \"/home/pal/new_object\"
                          # will make the texture_detector node create the file /home/pal/new_object.png

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
bool result               # The result will be true if the texture_detector node has been
                          # able to store the image in the specified path and filename


")

(setf (get pal_detection_msgs::AddTexturedObjectResponse :md5sum-) "e516c1b4cddfd9938ab91f008085bdcc")
(setf (get pal_detection_msgs::AddTexturedObjectResponse :datatype-) "pal_detection_msgs/AddTexturedObjectResponse")
(setf (get pal_detection_msgs::AddTexturedObjectResponse :definition-)
      "# This service message allows storing in the robot computer where 
# the texture_detector node is running the image of a new textured object
#
sensor_msgs/Image img     # image of the new textured object
string fullPathFileName   # full path and filename, without extension, where the image
                          # will be stored. The file image format will be PNG. 
                          # This parameter must be a valid full path in the computer where
                          # the texture_detector node is running. For instace,
                          # calling this service with fullPathFileName set to \"/home/pal/new_object\"
                          # will make the texture_detector node create the file /home/pal/new_object.png

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
bool result               # The result will be true if the texture_detector node has been
                          # able to store the image in the specified path and filename


")



(provide :pal_detection_msgs/AddTexturedObject "e516c1b4cddfd9938ab91f008085bdcc")


