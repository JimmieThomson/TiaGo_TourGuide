; Auto-generated. Do not edit!


(cl:in-package pal_navigation_msgs-msg)


;//! \htmlinclude MapConfiguration.msg.html

(cl:defclass <MapConfiguration> (roslisp-msg-protocol:ros-message)
  ((numberOfSubMaps
    :reader numberOfSubMaps
    :initarg :numberOfSubMaps
    :type cl:integer
    :initform 0)
   (highways
    :reader highways
    :initarg :highways
    :type (cl:vector pal_navigation_msgs-msg:Highways)
   :initform (cl:make-array 0 :element-type 'pal_navigation_msgs-msg:Highways :initial-element (cl:make-instance 'pal_navigation_msgs-msg:Highways)))
   (pods
    :reader pods
    :initarg :pods
    :type pal_navigation_msgs-msg:POI
    :initform (cl:make-instance 'pal_navigation_msgs-msg:POI))
   (pois
    :reader pois
    :initarg :pois
    :type pal_navigation_msgs-msg:POI
    :initform (cl:make-instance 'pal_navigation_msgs-msg:POI))
   (vo
    :reader vo
    :initarg :vo
    :type pal_navigation_msgs-msg:POI
    :initform (cl:make-instance 'pal_navigation_msgs-msg:POI))
   (zoi
    :reader zoi
    :initarg :zoi
    :type pal_navigation_msgs-msg:POI
    :initform (cl:make-instance 'pal_navigation_msgs-msg:POI))
   (ramps
    :reader ramps
    :initarg :ramps
    :type pal_navigation_msgs-msg:POI
    :initform (cl:make-instance 'pal_navigation_msgs-msg:POI))
   (poigroups
    :reader poigroups
    :initarg :poigroups
    :type (cl:vector pal_navigation_msgs-msg:POIGroup)
   :initform (cl:make-array 0 :element-type 'pal_navigation_msgs-msg:POIGroup :initial-element (cl:make-instance 'pal_navigation_msgs-msg:POIGroup)))
   (visualLocDb
    :reader visualLocDb
    :initarg :visualLocDb
    :type pal_navigation_msgs-msg:VisualLocDB
    :initform (cl:make-instance 'pal_navigation_msgs-msg:VisualLocDB))
   (navigation_map
    :reader navigation_map
    :initarg :navigation_map
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid))
   (user_map
    :reader user_map
    :initarg :user_map
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (transform
    :reader transform
    :initarg :transform
    :type pal_navigation_msgs-msg:NiceMapTransformation
    :initform (cl:make-instance 'pal_navigation_msgs-msg:NiceMapTransformation)))
)

(cl:defclass MapConfiguration (<MapConfiguration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapConfiguration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapConfiguration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_navigation_msgs-msg:<MapConfiguration> is deprecated: use pal_navigation_msgs-msg:MapConfiguration instead.")))

(cl:ensure-generic-function 'numberOfSubMaps-val :lambda-list '(m))
(cl:defmethod numberOfSubMaps-val ((m <MapConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:numberOfSubMaps-val is deprecated.  Use pal_navigation_msgs-msg:numberOfSubMaps instead.")
  (numberOfSubMaps m))

(cl:ensure-generic-function 'highways-val :lambda-list '(m))
(cl:defmethod highways-val ((m <MapConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:highways-val is deprecated.  Use pal_navigation_msgs-msg:highways instead.")
  (highways m))

(cl:ensure-generic-function 'pods-val :lambda-list '(m))
(cl:defmethod pods-val ((m <MapConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:pods-val is deprecated.  Use pal_navigation_msgs-msg:pods instead.")
  (pods m))

(cl:ensure-generic-function 'pois-val :lambda-list '(m))
(cl:defmethod pois-val ((m <MapConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:pois-val is deprecated.  Use pal_navigation_msgs-msg:pois instead.")
  (pois m))

(cl:ensure-generic-function 'vo-val :lambda-list '(m))
(cl:defmethod vo-val ((m <MapConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:vo-val is deprecated.  Use pal_navigation_msgs-msg:vo instead.")
  (vo m))

(cl:ensure-generic-function 'zoi-val :lambda-list '(m))
(cl:defmethod zoi-val ((m <MapConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:zoi-val is deprecated.  Use pal_navigation_msgs-msg:zoi instead.")
  (zoi m))

(cl:ensure-generic-function 'ramps-val :lambda-list '(m))
(cl:defmethod ramps-val ((m <MapConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:ramps-val is deprecated.  Use pal_navigation_msgs-msg:ramps instead.")
  (ramps m))

(cl:ensure-generic-function 'poigroups-val :lambda-list '(m))
(cl:defmethod poigroups-val ((m <MapConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:poigroups-val is deprecated.  Use pal_navigation_msgs-msg:poigroups instead.")
  (poigroups m))

(cl:ensure-generic-function 'visualLocDb-val :lambda-list '(m))
(cl:defmethod visualLocDb-val ((m <MapConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:visualLocDb-val is deprecated.  Use pal_navigation_msgs-msg:visualLocDb instead.")
  (visualLocDb m))

(cl:ensure-generic-function 'navigation_map-val :lambda-list '(m))
(cl:defmethod navigation_map-val ((m <MapConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:navigation_map-val is deprecated.  Use pal_navigation_msgs-msg:navigation_map instead.")
  (navigation_map m))

(cl:ensure-generic-function 'user_map-val :lambda-list '(m))
(cl:defmethod user_map-val ((m <MapConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:user_map-val is deprecated.  Use pal_navigation_msgs-msg:user_map instead.")
  (user_map m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <MapConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_navigation_msgs-msg:transform-val is deprecated.  Use pal_navigation_msgs-msg:transform instead.")
  (transform m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapConfiguration>) ostream)
  "Serializes a message object of type '<MapConfiguration>"
  (cl:let* ((signed (cl:slot-value msg 'numberOfSubMaps)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'highways))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'highways))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pods) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pois) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vo) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'zoi) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ramps) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poigroups))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poigroups))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'visualLocDb) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'navigation_map) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'user_map) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapConfiguration>) istream)
  "Deserializes a message object of type '<MapConfiguration>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numberOfSubMaps) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'highways) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'highways)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_navigation_msgs-msg:Highways))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pods) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pois) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vo) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'zoi) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ramps) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poigroups) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poigroups)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_navigation_msgs-msg:POIGroup))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'visualLocDb) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'navigation_map) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'user_map) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapConfiguration>)))
  "Returns string type for a message object of type '<MapConfiguration>"
  "pal_navigation_msgs/MapConfiguration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapConfiguration)))
  "Returns string type for a message object of type 'MapConfiguration"
  "pal_navigation_msgs/MapConfiguration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapConfiguration>)))
  "Returns md5sum for a message object of type '<MapConfiguration>"
  "ececfa8367e0b051bd8f60942b6b493d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapConfiguration)))
  "Returns md5sum for a message object of type 'MapConfiguration"
  "ececfa8367e0b051bd8f60942b6b493d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapConfiguration>)))
  "Returns full string definition for message of type '<MapConfiguration>"
  (cl:format cl:nil "#Configuration of a map~%int32 numberOfSubMaps~%~%#Highways of the map~%pal_navigation_msgs/Highways[] highways~%~%#Points of direction of the map~%pal_navigation_msgs/POI pods~%~%#Points of interest of the map~%pal_navigation_msgs/POI pois~%~%#Virtual obstacles of the map~%pal_navigation_msgs/POI vo~%~%#Zones of interest of the map~%pal_navigation_msgs/POI zoi~%~%#Ramps of the map~%pal_navigation_msgs/POI ramps~%~%#POI Groups of the map~%pal_navigation_msgs/POIGroup[] poigroups~%~%# Deprecated~%pal_navigation_msgs/VisualLocDB visualLocDb~%~%#Real (ugly) map ~%nav_msgs/OccupancyGrid navigation_map~%~%#Pretty map~%sensor_msgs/Image user_map~%~%# Deprecated, now the user_map must be transformed to match the scale/~%# orientation of the navigation_map~%#Transformation between ugly and pretty map~%pal_navigation_msgs/NiceMapTransformation transform~%~%~%~%================================================================================~%MSG: pal_navigation_msgs/Highways~%# Poi (Point of interest)~%~%geometry_msgs/Point[] points~%~%std_msgs/Bool         directional~%~%std_msgs/Float32      line_width~%~%std_msgs/String       name~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: pal_navigation_msgs/POI~%# Poi (Point of interest)~%~%sensor_msgs/PointCloud points~%~%std_msgs/String[]      ids~%~%std_msgs/String        map_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud~%# This message holds a collection of 3d points, plus optional additional~%# information about each point.~%~%# Time of sensor data acquisition, coordinate frame ID.~%Header header~%~%# Array of 3d points. Each Point32 should be interpreted as a 3d point~%# in the frame given in the header.~%geometry_msgs/Point32[] points~%~%# Each channel should have the same number of elements as points array,~%# and the data in each channel should correspond 1:1 with each point.~%# Channel names in common practice are listed in ChannelFloat32.msg.~%ChannelFloat32[] channels~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: sensor_msgs/ChannelFloat32~%# This message is used by the PointCloud message to hold optional data~%# associated with each point in the cloud. The length of the values~%# array should be the same as the length of the points array in the~%# PointCloud, and each value should be associated with the corresponding~%# point.~%~%# Channel names in existing practice include:~%#   \"u\", \"v\" - row and column (respectively) in the left stereo image.~%#              This is opposite to usual conventions but remains for~%#              historical reasons. The newer PointCloud2 message has no~%#              such problem.~%#   \"rgb\" - For point clouds produced by color stereo cameras. uint8~%#           (R,G,B) values packed into the least significant 24 bits,~%#           in order.~%#   \"intensity\" - laser or pixel intensity.~%#   \"distance\"~%~%# The channel name should give semantics of the channel (e.g.~%# \"intensity\" instead of \"value\").~%string name~%~%# The values array should be 1-1 with the elements of the associated~%# PointCloud.~%float32[] values~%~%================================================================================~%MSG: pal_navigation_msgs/POIGroup~%std_msgs/String group_name~%std_msgs/String[] poi_names~%~%================================================================================~%MSG: pal_navigation_msgs/VisualLocDB~%#Contents of the 3 binary files that contain the visual localization DB~%~%uint8[] documents~%uint8[] tree~%uint8[] weights~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: pal_navigation_msgs/NiceMapTransformation~%float64 x ~%float64 y~%float64 rotYawRad # Yaw rotation in rads~%float64 scale~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapConfiguration)))
  "Returns full string definition for message of type 'MapConfiguration"
  (cl:format cl:nil "#Configuration of a map~%int32 numberOfSubMaps~%~%#Highways of the map~%pal_navigation_msgs/Highways[] highways~%~%#Points of direction of the map~%pal_navigation_msgs/POI pods~%~%#Points of interest of the map~%pal_navigation_msgs/POI pois~%~%#Virtual obstacles of the map~%pal_navigation_msgs/POI vo~%~%#Zones of interest of the map~%pal_navigation_msgs/POI zoi~%~%#Ramps of the map~%pal_navigation_msgs/POI ramps~%~%#POI Groups of the map~%pal_navigation_msgs/POIGroup[] poigroups~%~%# Deprecated~%pal_navigation_msgs/VisualLocDB visualLocDb~%~%#Real (ugly) map ~%nav_msgs/OccupancyGrid navigation_map~%~%#Pretty map~%sensor_msgs/Image user_map~%~%# Deprecated, now the user_map must be transformed to match the scale/~%# orientation of the navigation_map~%#Transformation between ugly and pretty map~%pal_navigation_msgs/NiceMapTransformation transform~%~%~%~%================================================================================~%MSG: pal_navigation_msgs/Highways~%# Poi (Point of interest)~%~%geometry_msgs/Point[] points~%~%std_msgs/Bool         directional~%~%std_msgs/Float32      line_width~%~%std_msgs/String       name~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: pal_navigation_msgs/POI~%# Poi (Point of interest)~%~%sensor_msgs/PointCloud points~%~%std_msgs/String[]      ids~%~%std_msgs/String        map_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud~%# This message holds a collection of 3d points, plus optional additional~%# information about each point.~%~%# Time of sensor data acquisition, coordinate frame ID.~%Header header~%~%# Array of 3d points. Each Point32 should be interpreted as a 3d point~%# in the frame given in the header.~%geometry_msgs/Point32[] points~%~%# Each channel should have the same number of elements as points array,~%# and the data in each channel should correspond 1:1 with each point.~%# Channel names in common practice are listed in ChannelFloat32.msg.~%ChannelFloat32[] channels~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: sensor_msgs/ChannelFloat32~%# This message is used by the PointCloud message to hold optional data~%# associated with each point in the cloud. The length of the values~%# array should be the same as the length of the points array in the~%# PointCloud, and each value should be associated with the corresponding~%# point.~%~%# Channel names in existing practice include:~%#   \"u\", \"v\" - row and column (respectively) in the left stereo image.~%#              This is opposite to usual conventions but remains for~%#              historical reasons. The newer PointCloud2 message has no~%#              such problem.~%#   \"rgb\" - For point clouds produced by color stereo cameras. uint8~%#           (R,G,B) values packed into the least significant 24 bits,~%#           in order.~%#   \"intensity\" - laser or pixel intensity.~%#   \"distance\"~%~%# The channel name should give semantics of the channel (e.g.~%# \"intensity\" instead of \"value\").~%string name~%~%# The values array should be 1-1 with the elements of the associated~%# PointCloud.~%float32[] values~%~%================================================================================~%MSG: pal_navigation_msgs/POIGroup~%std_msgs/String group_name~%std_msgs/String[] poi_names~%~%================================================================================~%MSG: pal_navigation_msgs/VisualLocDB~%#Contents of the 3 binary files that contain the visual localization DB~%~%uint8[] documents~%uint8[] tree~%uint8[] weights~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: pal_navigation_msgs/NiceMapTransformation~%float64 x ~%float64 y~%float64 rotYawRad # Yaw rotation in rads~%float64 scale~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapConfiguration>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'highways) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pods))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pois))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vo))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'zoi))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ramps))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poigroups) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'visualLocDb))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'navigation_map))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'user_map))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapConfiguration>))
  "Converts a ROS message object to a list"
  (cl:list 'MapConfiguration
    (cl:cons ':numberOfSubMaps (numberOfSubMaps msg))
    (cl:cons ':highways (highways msg))
    (cl:cons ':pods (pods msg))
    (cl:cons ':pois (pois msg))
    (cl:cons ':vo (vo msg))
    (cl:cons ':zoi (zoi msg))
    (cl:cons ':ramps (ramps msg))
    (cl:cons ':poigroups (poigroups msg))
    (cl:cons ':visualLocDb (visualLocDb msg))
    (cl:cons ':navigation_map (navigation_map msg))
    (cl:cons ':user_map (user_map msg))
    (cl:cons ':transform (transform msg))
))
