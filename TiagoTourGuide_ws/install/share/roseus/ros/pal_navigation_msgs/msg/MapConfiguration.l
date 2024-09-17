;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::MapConfiguration)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'MapConfiguration (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::MAPCONFIGURATION")
  (make-package "PAL_NAVIGATION_MSGS::MAPCONFIGURATION"))

(in-package "ROS")
;;//! \htmlinclude MapConfiguration.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass pal_navigation_msgs::MapConfiguration
  :super ros::object
  :slots (_numberOfSubMaps _highways _pods _pois _vo _zoi _ramps _poigroups _visualLocDb _navigation_map _user_map _transform ))

(defmethod pal_navigation_msgs::MapConfiguration
  (:init
   (&key
    ((:numberOfSubMaps __numberOfSubMaps) 0)
    ((:highways __highways) ())
    ((:pods __pods) (instance pal_navigation_msgs::POI :init))
    ((:pois __pois) (instance pal_navigation_msgs::POI :init))
    ((:vo __vo) (instance pal_navigation_msgs::POI :init))
    ((:zoi __zoi) (instance pal_navigation_msgs::POI :init))
    ((:ramps __ramps) (instance pal_navigation_msgs::POI :init))
    ((:poigroups __poigroups) ())
    ((:visualLocDb __visualLocDb) (instance pal_navigation_msgs::VisualLocDB :init))
    ((:navigation_map __navigation_map) (instance nav_msgs::OccupancyGrid :init))
    ((:user_map __user_map) (instance sensor_msgs::Image :init))
    ((:transform __transform) (instance pal_navigation_msgs::NiceMapTransformation :init))
    )
   (send-super :init)
   (setq _numberOfSubMaps (round __numberOfSubMaps))
   (setq _highways __highways)
   (setq _pods __pods)
   (setq _pois __pois)
   (setq _vo __vo)
   (setq _zoi __zoi)
   (setq _ramps __ramps)
   (setq _poigroups __poigroups)
   (setq _visualLocDb __visualLocDb)
   (setq _navigation_map __navigation_map)
   (setq _user_map __user_map)
   (setq _transform __transform)
   self)
  (:numberOfSubMaps
   (&optional __numberOfSubMaps)
   (if __numberOfSubMaps (setq _numberOfSubMaps __numberOfSubMaps)) _numberOfSubMaps)
  (:highways
   (&rest __highways)
   (if (keywordp (car __highways))
       (send* _highways __highways)
     (progn
       (if __highways (setq _highways (car __highways)))
       _highways)))
  (:pods
   (&rest __pods)
   (if (keywordp (car __pods))
       (send* _pods __pods)
     (progn
       (if __pods (setq _pods (car __pods)))
       _pods)))
  (:pois
   (&rest __pois)
   (if (keywordp (car __pois))
       (send* _pois __pois)
     (progn
       (if __pois (setq _pois (car __pois)))
       _pois)))
  (:vo
   (&rest __vo)
   (if (keywordp (car __vo))
       (send* _vo __vo)
     (progn
       (if __vo (setq _vo (car __vo)))
       _vo)))
  (:zoi
   (&rest __zoi)
   (if (keywordp (car __zoi))
       (send* _zoi __zoi)
     (progn
       (if __zoi (setq _zoi (car __zoi)))
       _zoi)))
  (:ramps
   (&rest __ramps)
   (if (keywordp (car __ramps))
       (send* _ramps __ramps)
     (progn
       (if __ramps (setq _ramps (car __ramps)))
       _ramps)))
  (:poigroups
   (&rest __poigroups)
   (if (keywordp (car __poigroups))
       (send* _poigroups __poigroups)
     (progn
       (if __poigroups (setq _poigroups (car __poigroups)))
       _poigroups)))
  (:visualLocDb
   (&rest __visualLocDb)
   (if (keywordp (car __visualLocDb))
       (send* _visualLocDb __visualLocDb)
     (progn
       (if __visualLocDb (setq _visualLocDb (car __visualLocDb)))
       _visualLocDb)))
  (:navigation_map
   (&rest __navigation_map)
   (if (keywordp (car __navigation_map))
       (send* _navigation_map __navigation_map)
     (progn
       (if __navigation_map (setq _navigation_map (car __navigation_map)))
       _navigation_map)))
  (:user_map
   (&rest __user_map)
   (if (keywordp (car __user_map))
       (send* _user_map __user_map)
     (progn
       (if __user_map (setq _user_map (car __user_map)))
       _user_map)))
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:serialization-length
   ()
   (+
    ;; int32 _numberOfSubMaps
    4
    ;; pal_navigation_msgs/Highways[] _highways
    (apply #'+ (send-all _highways :serialization-length)) 4
    ;; pal_navigation_msgs/POI _pods
    (send _pods :serialization-length)
    ;; pal_navigation_msgs/POI _pois
    (send _pois :serialization-length)
    ;; pal_navigation_msgs/POI _vo
    (send _vo :serialization-length)
    ;; pal_navigation_msgs/POI _zoi
    (send _zoi :serialization-length)
    ;; pal_navigation_msgs/POI _ramps
    (send _ramps :serialization-length)
    ;; pal_navigation_msgs/POIGroup[] _poigroups
    (apply #'+ (send-all _poigroups :serialization-length)) 4
    ;; pal_navigation_msgs/VisualLocDB _visualLocDb
    (send _visualLocDb :serialization-length)
    ;; nav_msgs/OccupancyGrid _navigation_map
    (send _navigation_map :serialization-length)
    ;; sensor_msgs/Image _user_map
    (send _user_map :serialization-length)
    ;; pal_navigation_msgs/NiceMapTransformation _transform
    (send _transform :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _numberOfSubMaps
       (write-long _numberOfSubMaps s)
     ;; pal_navigation_msgs/Highways[] _highways
     (write-long (length _highways) s)
     (dolist (elem _highways)
       (send elem :serialize s)
       )
     ;; pal_navigation_msgs/POI _pods
       (send _pods :serialize s)
     ;; pal_navigation_msgs/POI _pois
       (send _pois :serialize s)
     ;; pal_navigation_msgs/POI _vo
       (send _vo :serialize s)
     ;; pal_navigation_msgs/POI _zoi
       (send _zoi :serialize s)
     ;; pal_navigation_msgs/POI _ramps
       (send _ramps :serialize s)
     ;; pal_navigation_msgs/POIGroup[] _poigroups
     (write-long (length _poigroups) s)
     (dolist (elem _poigroups)
       (send elem :serialize s)
       )
     ;; pal_navigation_msgs/VisualLocDB _visualLocDb
       (send _visualLocDb :serialize s)
     ;; nav_msgs/OccupancyGrid _navigation_map
       (send _navigation_map :serialize s)
     ;; sensor_msgs/Image _user_map
       (send _user_map :serialize s)
     ;; pal_navigation_msgs/NiceMapTransformation _transform
       (send _transform :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _numberOfSubMaps
     (setq _numberOfSubMaps (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; pal_navigation_msgs/Highways[] _highways
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _highways (let (r) (dotimes (i n) (push (instance pal_navigation_msgs::Highways :init) r)) r))
     (dolist (elem- _highways)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; pal_navigation_msgs/POI _pods
     (send _pods :deserialize buf ptr-) (incf ptr- (send _pods :serialization-length))
   ;; pal_navigation_msgs/POI _pois
     (send _pois :deserialize buf ptr-) (incf ptr- (send _pois :serialization-length))
   ;; pal_navigation_msgs/POI _vo
     (send _vo :deserialize buf ptr-) (incf ptr- (send _vo :serialization-length))
   ;; pal_navigation_msgs/POI _zoi
     (send _zoi :deserialize buf ptr-) (incf ptr- (send _zoi :serialization-length))
   ;; pal_navigation_msgs/POI _ramps
     (send _ramps :deserialize buf ptr-) (incf ptr- (send _ramps :serialization-length))
   ;; pal_navigation_msgs/POIGroup[] _poigroups
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poigroups (let (r) (dotimes (i n) (push (instance pal_navigation_msgs::POIGroup :init) r)) r))
     (dolist (elem- _poigroups)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; pal_navigation_msgs/VisualLocDB _visualLocDb
     (send _visualLocDb :deserialize buf ptr-) (incf ptr- (send _visualLocDb :serialization-length))
   ;; nav_msgs/OccupancyGrid _navigation_map
     (send _navigation_map :deserialize buf ptr-) (incf ptr- (send _navigation_map :serialization-length))
   ;; sensor_msgs/Image _user_map
     (send _user_map :deserialize buf ptr-) (incf ptr- (send _user_map :serialization-length))
   ;; pal_navigation_msgs/NiceMapTransformation _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;;
   self)
  )

(setf (get pal_navigation_msgs::MapConfiguration :md5sum-) "ececfa8367e0b051bd8f60942b6b493d")
(setf (get pal_navigation_msgs::MapConfiguration :datatype-) "pal_navigation_msgs/MapConfiguration")
(setf (get pal_navigation_msgs::MapConfiguration :definition-)
      "#Configuration of a map
int32 numberOfSubMaps

#Highways of the map
pal_navigation_msgs/Highways[] highways

#Points of direction of the map
pal_navigation_msgs/POI pods

#Points of interest of the map
pal_navigation_msgs/POI pois

#Virtual obstacles of the map
pal_navigation_msgs/POI vo

#Zones of interest of the map
pal_navigation_msgs/POI zoi

#Ramps of the map
pal_navigation_msgs/POI ramps

#POI Groups of the map
pal_navigation_msgs/POIGroup[] poigroups

# Deprecated
pal_navigation_msgs/VisualLocDB visualLocDb

#Real (ugly) map 
nav_msgs/OccupancyGrid navigation_map

#Pretty map
sensor_msgs/Image user_map

# Deprecated, now the user_map must be transformed to match the scale/
# orientation of the navigation_map
#Transformation between ugly and pretty map
pal_navigation_msgs/NiceMapTransformation transform



================================================================================
MSG: pal_navigation_msgs/Highways
# Poi (Point of interest)

geometry_msgs/Point[] points

std_msgs/Bool         directional

std_msgs/Float32      line_width

std_msgs/String       name
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: std_msgs/Bool
bool data
================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: std_msgs/String
string data

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
MSG: pal_navigation_msgs/POIGroup
std_msgs/String group_name
std_msgs/String[] poi_names

================================================================================
MSG: pal_navigation_msgs/VisualLocDB
#Contents of the 3 binary files that contain the visual localization DB

uint8[] documents
uint8[] tree
uint8[] weights

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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
MSG: pal_navigation_msgs/NiceMapTransformation
float64 x 
float64 y
float64 rotYawRad # Yaw rotation in rads
float64 scale


")



(provide :pal_navigation_msgs/MapConfiguration "ececfa8367e0b051bd8f60942b6b493d")


