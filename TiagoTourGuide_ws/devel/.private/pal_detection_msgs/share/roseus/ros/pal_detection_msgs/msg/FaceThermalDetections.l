;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::FaceThermalDetections)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'FaceThermalDetections (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::FACETHERMALDETECTIONS")
  (make-package "PAL_DETECTION_MSGS::FACETHERMALDETECTIONS"))

(in-package "ROS")
;;//! \htmlinclude FaceThermalDetections.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_detection_msgs::FaceThermalDetections
  :super ros::object
  :slots (_header _faces ))

(defmethod pal_detection_msgs::FaceThermalDetections
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:faces __faces) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _faces __faces)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:faces
   (&rest __faces)
   (if (keywordp (car __faces))
       (send* _faces __faces)
     (progn
       (if __faces (setq _faces (car __faces)))
       _faces)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/RegionOfInterest[] _faces
    (apply #'+ (send-all _faces :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/RegionOfInterest[] _faces
     (write-long (length _faces) s)
     (dolist (elem _faces)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/RegionOfInterest[] _faces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _faces (let (r) (dotimes (i n) (push (instance sensor_msgs::RegionOfInterest :init) r)) r))
     (dolist (elem- _faces)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pal_detection_msgs::FaceThermalDetections :md5sum-) "fa2af80db62cfc8ff93c82f9846f3ebf")
(setf (get pal_detection_msgs::FaceThermalDetections :datatype-) "pal_detection_msgs/FaceThermalDetections")
(setf (get pal_detection_msgs::FaceThermalDetections :definition-)
      "Header header

sensor_msgs/RegionOfInterest[]  faces

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
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

")



(provide :pal_detection_msgs/FaceThermalDetections "fa2af80db62cfc8ff93c82f9846f3ebf")


