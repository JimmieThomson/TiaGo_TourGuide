;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::LaserImage)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'LaserImage (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::LASERIMAGE")
  (make-package "PAL_NAVIGATION_MSGS::LASERIMAGE"))

(in-package "ROS")
;;//! \htmlinclude LaserImage.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_navigation_msgs::LaserImage
  :super ros::object
  :slots (_header _origin _image _height _width _resolution ))

(defmethod pal_navigation_msgs::LaserImage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:origin __origin) (instance geometry_msgs::Point :init))
    ((:image __image) (instance sensor_msgs::CompressedImage :init))
    ((:height __height) 0.0)
    ((:width __width) 0.0)
    ((:resolution __resolution) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _origin __origin)
   (setq _image __image)
   (setq _height (float __height))
   (setq _width (float __width))
   (setq _resolution (float __resolution))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:origin
   (&rest __origin)
   (if (keywordp (car __origin))
       (send* _origin __origin)
     (progn
       (if __origin (setq _origin (car __origin)))
       _origin)))
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _origin
    (send _origin :serialization-length)
    ;; sensor_msgs/CompressedImage _image
    (send _image :serialization-length)
    ;; float32 _height
    4
    ;; float32 _width
    4
    ;; float32 _resolution
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _origin
       (send _origin :serialize s)
     ;; sensor_msgs/CompressedImage _image
       (send _image :serialize s)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _origin
     (send _origin :deserialize buf ptr-) (incf ptr- (send _origin :serialization-length))
   ;; sensor_msgs/CompressedImage _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _resolution
     (setq _resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_navigation_msgs::LaserImage :md5sum-) "e82af91b74169c7fe9fbf3272ddc55b8")
(setf (get pal_navigation_msgs::LaserImage :datatype-) "pal_navigation_msgs/LaserImage")
(setf (get pal_navigation_msgs::LaserImage :definition-)
      "Header header
geometry_msgs/Point origin
sensor_msgs/CompressedImage image
float32 height
float32 width
float32 resolution

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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

")



(provide :pal_navigation_msgs/LaserImage "e82af91b74169c7fe9fbf3272ddc55b8")


