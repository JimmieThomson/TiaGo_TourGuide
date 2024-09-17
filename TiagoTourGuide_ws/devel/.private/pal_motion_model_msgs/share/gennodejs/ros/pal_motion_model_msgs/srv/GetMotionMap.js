// Auto-generated. Do not edit!

// (in-package pal_motion_model_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let MotionModelMap = require('../msg/MotionModelMap.js');

//-----------------------------------------------------------

class GetMotionMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMotionMapRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMotionMapRequest
    let len;
    let data = new GetMotionMapRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_motion_model_msgs/GetMotionMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Get the motion map 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMotionMapRequest(null);
    return resolved;
    }
};

class GetMotionMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map = null;
    }
    else {
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = new MotionModelMap();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMotionMapResponse
    // Serialize message field [map]
    bufferOffset = MotionModelMap.serialize(obj.map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMotionMapResponse
    let len;
    let data = new GetMotionMapResponse(null);
    // Deserialize message field [map]
    data.map = MotionModelMap.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MotionModelMap.getMessageSize(object.map);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_motion_model_msgs/GetMotionMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff508f86b1d484eed7ca1c596036d1bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pal_motion_model_msgs/MotionModelMap map
    
    
    ================================================================================
    MSG: pal_motion_model_msgs/MotionModelMap
    #This represents a 2-D motion model map, in which each cell has the probabilistic motion models for the robot.
    
    Header header 
    
    #MetaData for the map
    nav_msgs/MapMetaData info
    
    # The map data, in row-major order, starting with (0,0). A list of  models is stored for every cell. 
    MotionModelList[] data
    
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: pal_motion_model_msgs/MotionModelList
    #list of motion models learnt in a specific place
    
    MotionModel[] models
    
    
    
    
    ================================================================================
    MSG: pal_motion_model_msgs/MotionModel
    ## Contains the 2D motion model of a robot at a specific location
    
    #Heading direction is represented through a gaussian pdf.
    float32  heading_mean
    float32  heading_std_dev
    
    #For statistics we store a pdf over the robot speeds
    float32  linear_speed_mean
    float32  linear_speed_std_dev
    float32  angular_speed_mean
    float32  angular_speed_std_dev
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMotionMapResponse(null);
    if (msg.map !== undefined) {
      resolved.map = MotionModelMap.Resolve(msg.map)
    }
    else {
      resolved.map = new MotionModelMap()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMotionMapRequest,
  Response: GetMotionMapResponse,
  md5sum() { return 'ff508f86b1d484eed7ca1c596036d1bf'; },
  datatype() { return 'pal_motion_model_msgs/GetMotionMap'; }
};
