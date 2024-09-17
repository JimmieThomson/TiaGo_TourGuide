// Auto-generated. Do not edit!

// (in-package pal_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MissedWaypoint = require('./MissedWaypoint.js');

//-----------------------------------------------------------

class FollowWaypointsResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.missed_waypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('missed_waypoints')) {
        this.missed_waypoints = initObj.missed_waypoints
      }
      else {
        this.missed_waypoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FollowWaypointsResult
    // Serialize message field [missed_waypoints]
    // Serialize the length for message field [missed_waypoints]
    bufferOffset = _serializer.uint32(obj.missed_waypoints.length, buffer, bufferOffset);
    obj.missed_waypoints.forEach((val) => {
      bufferOffset = MissedWaypoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FollowWaypointsResult
    let len;
    let data = new FollowWaypointsResult(null);
    // Deserialize message field [missed_waypoints]
    // Deserialize array length for message field [missed_waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.missed_waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.missed_waypoints[i] = MissedWaypoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.missed_waypoints.forEach((val) => {
      length += MissedWaypoint.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_navigation_msgs/FollowWaypointsResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a001ea894e996455eb93e1c0139428c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result definition
    pal_navigation_msgs/MissedWaypoint[] missed_waypoints
    
    ================================================================================
    MSG: pal_navigation_msgs/MissedWaypoint
    uint32 index
    geometry_msgs/PoseStamped goal
    uint16 error_code
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FollowWaypointsResult(null);
    if (msg.missed_waypoints !== undefined) {
      resolved.missed_waypoints = new Array(msg.missed_waypoints.length);
      for (let i = 0; i < resolved.missed_waypoints.length; ++i) {
        resolved.missed_waypoints[i] = MissedWaypoint.Resolve(msg.missed_waypoints[i]);
      }
    }
    else {
      resolved.missed_waypoints = []
    }

    return resolved;
    }
};

module.exports = FollowWaypointsResult;
