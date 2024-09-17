// Auto-generated. Do not edit!

// (in-package pal_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Highways = require('./Highways.js');
let POI = require('./POI.js');
let POIGroup = require('./POIGroup.js');
let VisualLocDB = require('./VisualLocDB.js');
let NiceMapTransformation = require('./NiceMapTransformation.js');
let sensor_msgs = _finder('sensor_msgs');
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class MapConfiguration {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.numberOfSubMaps = null;
      this.highways = null;
      this.pods = null;
      this.pois = null;
      this.vo = null;
      this.zoi = null;
      this.ramps = null;
      this.poigroups = null;
      this.visualLocDb = null;
      this.navigation_map = null;
      this.user_map = null;
      this.transform = null;
    }
    else {
      if (initObj.hasOwnProperty('numberOfSubMaps')) {
        this.numberOfSubMaps = initObj.numberOfSubMaps
      }
      else {
        this.numberOfSubMaps = 0;
      }
      if (initObj.hasOwnProperty('highways')) {
        this.highways = initObj.highways
      }
      else {
        this.highways = [];
      }
      if (initObj.hasOwnProperty('pods')) {
        this.pods = initObj.pods
      }
      else {
        this.pods = new POI();
      }
      if (initObj.hasOwnProperty('pois')) {
        this.pois = initObj.pois
      }
      else {
        this.pois = new POI();
      }
      if (initObj.hasOwnProperty('vo')) {
        this.vo = initObj.vo
      }
      else {
        this.vo = new POI();
      }
      if (initObj.hasOwnProperty('zoi')) {
        this.zoi = initObj.zoi
      }
      else {
        this.zoi = new POI();
      }
      if (initObj.hasOwnProperty('ramps')) {
        this.ramps = initObj.ramps
      }
      else {
        this.ramps = new POI();
      }
      if (initObj.hasOwnProperty('poigroups')) {
        this.poigroups = initObj.poigroups
      }
      else {
        this.poigroups = [];
      }
      if (initObj.hasOwnProperty('visualLocDb')) {
        this.visualLocDb = initObj.visualLocDb
      }
      else {
        this.visualLocDb = new VisualLocDB();
      }
      if (initObj.hasOwnProperty('navigation_map')) {
        this.navigation_map = initObj.navigation_map
      }
      else {
        this.navigation_map = new nav_msgs.msg.OccupancyGrid();
      }
      if (initObj.hasOwnProperty('user_map')) {
        this.user_map = initObj.user_map
      }
      else {
        this.user_map = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new NiceMapTransformation();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapConfiguration
    // Serialize message field [numberOfSubMaps]
    bufferOffset = _serializer.int32(obj.numberOfSubMaps, buffer, bufferOffset);
    // Serialize message field [highways]
    // Serialize the length for message field [highways]
    bufferOffset = _serializer.uint32(obj.highways.length, buffer, bufferOffset);
    obj.highways.forEach((val) => {
      bufferOffset = Highways.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pods]
    bufferOffset = POI.serialize(obj.pods, buffer, bufferOffset);
    // Serialize message field [pois]
    bufferOffset = POI.serialize(obj.pois, buffer, bufferOffset);
    // Serialize message field [vo]
    bufferOffset = POI.serialize(obj.vo, buffer, bufferOffset);
    // Serialize message field [zoi]
    bufferOffset = POI.serialize(obj.zoi, buffer, bufferOffset);
    // Serialize message field [ramps]
    bufferOffset = POI.serialize(obj.ramps, buffer, bufferOffset);
    // Serialize message field [poigroups]
    // Serialize the length for message field [poigroups]
    bufferOffset = _serializer.uint32(obj.poigroups.length, buffer, bufferOffset);
    obj.poigroups.forEach((val) => {
      bufferOffset = POIGroup.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [visualLocDb]
    bufferOffset = VisualLocDB.serialize(obj.visualLocDb, buffer, bufferOffset);
    // Serialize message field [navigation_map]
    bufferOffset = nav_msgs.msg.OccupancyGrid.serialize(obj.navigation_map, buffer, bufferOffset);
    // Serialize message field [user_map]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.user_map, buffer, bufferOffset);
    // Serialize message field [transform]
    bufferOffset = NiceMapTransformation.serialize(obj.transform, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapConfiguration
    let len;
    let data = new MapConfiguration(null);
    // Deserialize message field [numberOfSubMaps]
    data.numberOfSubMaps = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [highways]
    // Deserialize array length for message field [highways]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.highways = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.highways[i] = Highways.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pods]
    data.pods = POI.deserialize(buffer, bufferOffset);
    // Deserialize message field [pois]
    data.pois = POI.deserialize(buffer, bufferOffset);
    // Deserialize message field [vo]
    data.vo = POI.deserialize(buffer, bufferOffset);
    // Deserialize message field [zoi]
    data.zoi = POI.deserialize(buffer, bufferOffset);
    // Deserialize message field [ramps]
    data.ramps = POI.deserialize(buffer, bufferOffset);
    // Deserialize message field [poigroups]
    // Deserialize array length for message field [poigroups]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.poigroups = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.poigroups[i] = POIGroup.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [visualLocDb]
    data.visualLocDb = VisualLocDB.deserialize(buffer, bufferOffset);
    // Deserialize message field [navigation_map]
    data.navigation_map = nav_msgs.msg.OccupancyGrid.deserialize(buffer, bufferOffset);
    // Deserialize message field [user_map]
    data.user_map = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [transform]
    data.transform = NiceMapTransformation.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.highways.forEach((val) => {
      length += Highways.getMessageSize(val);
    });
    length += POI.getMessageSize(object.pods);
    length += POI.getMessageSize(object.pois);
    length += POI.getMessageSize(object.vo);
    length += POI.getMessageSize(object.zoi);
    length += POI.getMessageSize(object.ramps);
    object.poigroups.forEach((val) => {
      length += POIGroup.getMessageSize(val);
    });
    length += VisualLocDB.getMessageSize(object.visualLocDb);
    length += nav_msgs.msg.OccupancyGrid.getMessageSize(object.navigation_map);
    length += sensor_msgs.msg.Image.getMessageSize(object.user_map);
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_navigation_msgs/MapConfiguration';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ececfa8367e0b051bd8f60942b6b493d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MapConfiguration(null);
    if (msg.numberOfSubMaps !== undefined) {
      resolved.numberOfSubMaps = msg.numberOfSubMaps;
    }
    else {
      resolved.numberOfSubMaps = 0
    }

    if (msg.highways !== undefined) {
      resolved.highways = new Array(msg.highways.length);
      for (let i = 0; i < resolved.highways.length; ++i) {
        resolved.highways[i] = Highways.Resolve(msg.highways[i]);
      }
    }
    else {
      resolved.highways = []
    }

    if (msg.pods !== undefined) {
      resolved.pods = POI.Resolve(msg.pods)
    }
    else {
      resolved.pods = new POI()
    }

    if (msg.pois !== undefined) {
      resolved.pois = POI.Resolve(msg.pois)
    }
    else {
      resolved.pois = new POI()
    }

    if (msg.vo !== undefined) {
      resolved.vo = POI.Resolve(msg.vo)
    }
    else {
      resolved.vo = new POI()
    }

    if (msg.zoi !== undefined) {
      resolved.zoi = POI.Resolve(msg.zoi)
    }
    else {
      resolved.zoi = new POI()
    }

    if (msg.ramps !== undefined) {
      resolved.ramps = POI.Resolve(msg.ramps)
    }
    else {
      resolved.ramps = new POI()
    }

    if (msg.poigroups !== undefined) {
      resolved.poigroups = new Array(msg.poigroups.length);
      for (let i = 0; i < resolved.poigroups.length; ++i) {
        resolved.poigroups[i] = POIGroup.Resolve(msg.poigroups[i]);
      }
    }
    else {
      resolved.poigroups = []
    }

    if (msg.visualLocDb !== undefined) {
      resolved.visualLocDb = VisualLocDB.Resolve(msg.visualLocDb)
    }
    else {
      resolved.visualLocDb = new VisualLocDB()
    }

    if (msg.navigation_map !== undefined) {
      resolved.navigation_map = nav_msgs.msg.OccupancyGrid.Resolve(msg.navigation_map)
    }
    else {
      resolved.navigation_map = new nav_msgs.msg.OccupancyGrid()
    }

    if (msg.user_map !== undefined) {
      resolved.user_map = sensor_msgs.msg.Image.Resolve(msg.user_map)
    }
    else {
      resolved.user_map = new sensor_msgs.msg.Image()
    }

    if (msg.transform !== undefined) {
      resolved.transform = NiceMapTransformation.Resolve(msg.transform)
    }
    else {
      resolved.transform = new NiceMapTransformation()
    }

    return resolved;
    }
};

module.exports = MapConfiguration;
