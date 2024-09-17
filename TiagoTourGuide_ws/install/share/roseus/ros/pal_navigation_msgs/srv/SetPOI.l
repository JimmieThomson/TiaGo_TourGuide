;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::SetPOI)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'SetPOI (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::SETPOI")
  (make-package "PAL_NAVIGATION_MSGS::SETPOI"))
(unless (find-package "PAL_NAVIGATION_MSGS::SETPOIREQUEST")
  (make-package "PAL_NAVIGATION_MSGS::SETPOIREQUEST"))
(unless (find-package "PAL_NAVIGATION_MSGS::SETPOIRESPONSE")
  (make-package "PAL_NAVIGATION_MSGS::SETPOIRESPONSE"))

(in-package "ROS")





(defclass pal_navigation_msgs::SetPOIRequest
  :super ros::object
  :slots (_poi ))

(defmethod pal_navigation_msgs::SetPOIRequest
  (:init
   (&key
    ((:poi __poi) (instance pal_navigation_msgs::POI :init))
    )
   (send-super :init)
   (setq _poi __poi)
   self)
  (:poi
   (&rest __poi)
   (if (keywordp (car __poi))
       (send* _poi __poi)
     (progn
       (if __poi (setq _poi (car __poi)))
       _poi)))
  (:serialization-length
   ()
   (+
    ;; pal_navigation_msgs/POI _poi
    (send _poi :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pal_navigation_msgs/POI _poi
       (send _poi :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pal_navigation_msgs/POI _poi
     (send _poi :deserialize buf ptr-) (incf ptr- (send _poi :serialization-length))
   ;;
   self)
  )

(defclass pal_navigation_msgs::SetPOIResponse
  :super ros::object
  :slots ())

(defmethod pal_navigation_msgs::SetPOIResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pal_navigation_msgs::SetPOI
  :super ros::object
  :slots ())

(setf (get pal_navigation_msgs::SetPOI :md5sum-) "f0a8811f1068c7b1269d9e58c608681f")
(setf (get pal_navigation_msgs::SetPOI :datatype-) "pal_navigation_msgs/SetPOI")
(setf (get pal_navigation_msgs::SetPOI :request) pal_navigation_msgs::SetPOIRequest)
(setf (get pal_navigation_msgs::SetPOI :response) pal_navigation_msgs::SetPOIResponse)

(defmethod pal_navigation_msgs::SetPOIRequest
  (:response () (instance pal_navigation_msgs::SetPOIResponse :init)))

(setf (get pal_navigation_msgs::SetPOIRequest :md5sum-) "f0a8811f1068c7b1269d9e58c608681f")
(setf (get pal_navigation_msgs::SetPOIRequest :datatype-) "pal_navigation_msgs/SetPOIRequest")
(setf (get pal_navigation_msgs::SetPOIRequest :definition-)
      "# Send POI (Point of Interest) 
pal_navigation_msgs/POI   poi


================================================================================
MSG: pal_navigation_msgs/POI
# Poi (Point of interest)

sensor_msgs/PointCloud points

std_msgs/String[]      ids

std_msgs/String        map_id

================================================================================
MSG: sensor_msgs/PointCloud
# This message holds a collection of 3d points, plus optional additional
# information about each point.

# Time of sensor data acquisition, coordinate frame ID.
Header header

# Array of 3d points. Each Point32 should be interpreted as a 3d point
# in the frame given in the header.
geometry_msgs/Point32[] points

# Each channel should have the same number of elements as points array,
# and the data in each channel should correspond 1:1 with each point.
# Channel names in common practice are listed in ChannelFloat32.msg.
ChannelFloat32[] channels

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
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: sensor_msgs/ChannelFloat32
# This message is used by the PointCloud message to hold optional data
# associated with each point in the cloud. The length of the values
# array should be the same as the length of the points array in the
# PointCloud, and each value should be associated with the corresponding
# point.

# Channel names in existing practice include:
#   \"u\", \"v\" - row and column (respectively) in the left stereo image.
#              This is opposite to usual conventions but remains for
#              historical reasons. The newer PointCloud2 message has no
#              such problem.
#   \"rgb\" - For point clouds produced by color stereo cameras. uint8
#           (R,G,B) values packed into the least significant 24 bits,
#           in order.
#   \"intensity\" - laser or pixel intensity.
#   \"distance\"

# The channel name should give semantics of the channel (e.g.
# \"intensity\" instead of \"value\").
string name

# The values array should be 1-1 with the elements of the associated
# PointCloud.
float32[] values

================================================================================
MSG: std_msgs/String
string data
---


")

(setf (get pal_navigation_msgs::SetPOIResponse :md5sum-) "f0a8811f1068c7b1269d9e58c608681f")
(setf (get pal_navigation_msgs::SetPOIResponse :datatype-) "pal_navigation_msgs/SetPOIResponse")
(setf (get pal_navigation_msgs::SetPOIResponse :definition-)
      "# Send POI (Point of Interest) 
pal_navigation_msgs/POI   poi


================================================================================
MSG: pal_navigation_msgs/POI
# Poi (Point of interest)

sensor_msgs/PointCloud points

std_msgs/String[]      ids

std_msgs/String        map_id

================================================================================
MSG: sensor_msgs/PointCloud
# This message holds a collection of 3d points, plus optional additional
# information about each point.

# Time of sensor data acquisition, coordinate frame ID.
Header header

# Array of 3d points. Each Point32 should be interpreted as a 3d point
# in the frame given in the header.
geometry_msgs/Point32[] points

# Each channel should have the same number of elements as points array,
# and the data in each channel should correspond 1:1 with each point.
# Channel names in common practice are listed in ChannelFloat32.msg.
ChannelFloat32[] channels

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
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: sensor_msgs/ChannelFloat32
# This message is used by the PointCloud message to hold optional data
# associated with each point in the cloud. The length of the values
# array should be the same as the length of the points array in the
# PointCloud, and each value should be associated with the corresponding
# point.

# Channel names in existing practice include:
#   \"u\", \"v\" - row and column (respectively) in the left stereo image.
#              This is opposite to usual conventions but remains for
#              historical reasons. The newer PointCloud2 message has no
#              such problem.
#   \"rgb\" - For point clouds produced by color stereo cameras. uint8
#           (R,G,B) values packed into the least significant 24 bits,
#           in order.
#   \"intensity\" - laser or pixel intensity.
#   \"distance\"

# The channel name should give semantics of the channel (e.g.
# \"intensity\" instead of \"value\").
string name

# The values array should be 1-1 with the elements of the associated
# PointCloud.
float32[] values

================================================================================
MSG: std_msgs/String
string data
---


")



(provide :pal_navigation_msgs/SetPOI "f0a8811f1068c7b1269d9e58c608681f")


