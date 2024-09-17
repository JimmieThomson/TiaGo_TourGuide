// Auto-generated. Do not edit!

// (in-package pal_navigation_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let MapConfiguration = require('../msg/MapConfiguration.js');

//-----------------------------------------------------------

class GetMapConfigurationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMapConfigurationRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMapConfigurationRequest
    let len;
    let data = new GetMapConfigurationRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_navigation_msgs/GetMapConfigurationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Get Map Configuration 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMapConfigurationRequest(null);
    return resolved;
    }
};

class GetMapConfigurationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_config = null;
    }
    else {
      if (initObj.hasOwnProperty('map_config')) {
        this.map_config = initObj.map_config
      }
      else {
        this.map_config = new MapConfiguration();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMapConfigurationResponse
    // Serialize message field [map_config]
    bufferOffset = MapConfiguration.serialize(obj.map_config, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMapConfigurationResponse
    let len;
    let data = new GetMapConfigurationResponse(null);
    // Deserialize message field [map_config]
    data.map_config = MapConfiguration.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MapConfiguration.getMessageSize(object.map_config);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_navigation_msgs/GetMapConfigurationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b715262b1a37dffae6fd4dc1b6ceb0bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pal_navigation_msgs/MapConfiguration   map_config
    
    
    
    ================================================================================
    MSG: pal_navigation_msgs/MapConfiguration
    #Configuration of a map
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
    #   "u", "v" - row and column (respectively) in the left stereo image.
    #              This is opposite to usual conventions but remains for
    #              historical reasons. The newer PointCloud2 message has no
    #              such problem.
    #   "rgb" - For point clouds produced by color stereo cameras. uint8
    #           (R,G,B) values packed into the least significant 24 bits,
    #           in order.
    #   "intensity" - laser or pixel intensity.
    #   "distance"
    
    # The channel name should give semantics of the channel (e.g.
    # "intensity" instead of "value").
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMapConfigurationResponse(null);
    if (msg.map_config !== undefined) {
      resolved.map_config = MapConfiguration.Resolve(msg.map_config)
    }
    else {
      resolved.map_config = new MapConfiguration()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMapConfigurationRequest,
  Response: GetMapConfigurationResponse,
  md5sum() { return 'b715262b1a37dffae6fd4dc1b6ceb0bd'; },
  datatype() { return 'pal_navigation_msgs/GetMapConfiguration'; }
};
