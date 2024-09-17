;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::POI)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'POI (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::POI")
  (make-package "PAL_NAVIGATION_MSGS::POI"))

(in-package "ROS")
;;//! \htmlinclude POI.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_navigation_msgs::POI
  :super ros::object
  :slots (_points _ids _map_id ))

(defmethod pal_navigation_msgs::POI
  (:init
   (&key
    ((:points __points) (instance sensor_msgs::PointCloud :init))
    ((:ids __ids) ())
    ((:map_id __map_id) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _points __points)
   (setq _ids __ids)
   (setq _map_id __map_id)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:ids
   (&rest __ids)
   (if (keywordp (car __ids))
       (send* _ids __ids)
     (progn
       (if __ids (setq _ids (car __ids)))
       _ids)))
  (:map_id
   (&rest __map_id)
   (if (keywordp (car __map_id))
       (send* _map_id __map_id)
     (progn
       (if __map_id (setq _map_id (car __map_id)))
       _map_id)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud _points
    (send _points :serialization-length)
    ;; std_msgs/String[] _ids
    (apply #'+ (send-all _ids :serialization-length)) 4
    ;; std_msgs/String _map_id
    (send _map_id :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud _points
       (send _points :serialize s)
     ;; std_msgs/String[] _ids
     (write-long (length _ids) s)
     (dolist (elem _ids)
       (send elem :serialize s)
       )
     ;; std_msgs/String _map_id
       (send _map_id :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud _points
     (send _points :deserialize buf ptr-) (incf ptr- (send _points :serialization-length))
   ;; std_msgs/String[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _ids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/String _map_id
     (send _map_id :deserialize buf ptr-) (incf ptr- (send _map_id :serialization-length))
   ;;
   self)
  )

(setf (get pal_navigation_msgs::POI :md5sum-) "accd8dd07484c01aa4180821c83d7d4f")
(setf (get pal_navigation_msgs::POI :datatype-) "pal_navigation_msgs/POI")
(setf (get pal_navigation_msgs::POI :definition-)
      "# Poi (Point of interest)

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

")



(provide :pal_navigation_msgs/POI "accd8dd07484c01aa4180821c83d7d4f")


