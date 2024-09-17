// Auto-generated. Do not edit!

// (in-package pal_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EulerAngles = require('./EulerAngles.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class EulerAnglesStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.angles = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('angles')) {
        this.angles = initObj.angles
      }
      else {
        this.angles = new EulerAngles();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EulerAnglesStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [angles]
    bufferOffset = EulerAngles.serialize(obj.angles, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EulerAnglesStamped
    let len;
    let data = new EulerAnglesStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [angles]
    data.angles = EulerAngles.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += EulerAngles.getMessageSize(object.angles);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_navigation_msgs/EulerAnglesStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08ed1513cf62c3aa9d3f21c206745853';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    EulerAngles angles
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
    MSG: pal_navigation_msgs/EulerAngles
    string sequence # as per transformations.py, e.g. 'rzyx' for standard yaw-pitch-roll
    bool angles_in_degrees # true if ai, aj, ak are in degrees, otherwise they are in radians
    # rotations about 1st, 2nd, 3rd axis:
    float64 ai
    float64 aj
    float64 ak
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EulerAnglesStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.angles !== undefined) {
      resolved.angles = EulerAngles.Resolve(msg.angles)
    }
    else {
      resolved.angles = new EulerAngles()
    }

    return resolved;
    }
};

module.exports = EulerAnglesStamped;
