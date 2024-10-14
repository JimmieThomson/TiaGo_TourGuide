;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::TexturedObjectDetection)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'TexturedObjectDetection (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::TEXTUREDOBJECTDETECTION")
  (make-package "PAL_DETECTION_MSGS::TEXTUREDOBJECTDETECTION"))

(in-package "ROS")
;;//! \htmlinclude TexturedObjectDetection.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_detection_msgs::TexturedObjectDetection
  :super ros::object
  :slots (_header _img _roi ))

(defmethod pal_detection_msgs::TexturedObjectDetection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:img __img) (instance sensor_msgs::CompressedImage :init))
    ((:roi __roi) (instance pal_detection_msgs::RotatedDetection2d :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _img __img)
   (setq _roi __roi)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:img
   (&rest __img)
   (if (keywordp (car __img))
       (send* _img __img)
     (progn
       (if __img (setq _img (car __img)))
       _img)))
  (:roi
   (&rest __roi)
   (if (keywordp (car __roi))
       (send* _roi __roi)
     (progn
       (if __roi (setq _roi (car __roi)))
       _roi)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/CompressedImage _img
    (send _img :serialization-length)
    ;; pal_detection_msgs/RotatedDetection2d _roi
    (send _roi :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/CompressedImage _img
       (send _img :serialize s)
     ;; pal_detection_msgs/RotatedDetection2d _roi
       (send _roi :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/CompressedImage _img
     (send _img :deserialize buf ptr-) (incf ptr- (send _img :serialization-length))
   ;; pal_detection_msgs/RotatedDetection2d _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;;
   self)
  )

(setf (get pal_detection_msgs::TexturedObjectDetection :md5sum-) "cb7f0068423d23f481cd8a23473b3e42")
(setf (get pal_detection_msgs::TexturedObjectDetection :datatype-) "pal_detection_msgs/TexturedObjectDetection")
(setf (get pal_detection_msgs::TexturedObjectDetection :definition-)
      "## Message with the information of a textured object detected

Header header

sensor_msgs/CompressedImage img
pal_detection_msgs/RotatedDetection2d roi

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

================================================================================
MSG: sensor_msgs/CompressedImage
# This message contains a compressed image

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image

string format        # Specifies the format of the data
                     #   Acceptable values:
                     #     jpeg, png
uint8[] data         # Compressed image buffer

================================================================================
MSG: pal_detection_msgs/RotatedDetection2d
## Rotated rectangle in image coordinates defined by 4 vertices

Header header

# coordinates of the vertices of a rotated rectangle
int64[] x
int64[] y



")



(provide :pal_detection_msgs/TexturedObjectDetection "cb7f0068423d23f481cd8a23473b3e42")


