// Auto-generated. Do not edit!

// (in-package pal_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PolarReading = require('./PolarReading.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PolarReadingScan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.readings = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('readings')) {
        this.readings = initObj.readings
      }
      else {
        this.readings = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PolarReadingScan
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [readings]
    // Serialize the length for message field [readings]
    bufferOffset = _serializer.uint32(obj.readings.length, buffer, bufferOffset);
    obj.readings.forEach((val) => {
      bufferOffset = PolarReading.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PolarReadingScan
    let len;
    let data = new PolarReadingScan(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [readings]
    // Deserialize array length for message field [readings]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.readings = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.readings[i] = PolarReading.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.readings.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_navigation_msgs/PolarReadingScan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31bf8adf3389c9066eb83f63abcbe26f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Time of sensor data acquisition, coordinate frame ID.
    Header header
    
    # Polar reading scan: vector of PolarReading(angle, distance)
    pal_navigation_msgs/PolarReading[] readings 
    
    
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
    MSG: pal_navigation_msgs/PolarReading
    # Polar reading: a distance to a given angle
    float32 angle # inradians
    
    float32 distance # in meters
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PolarReadingScan(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.readings !== undefined) {
      resolved.readings = new Array(msg.readings.length);
      for (let i = 0; i < resolved.readings.length; ++i) {
        resolved.readings[i] = PolarReading.Resolve(msg.readings[i]);
      }
    }
    else {
      resolved.readings = []
    }

    return resolved;
    }
};

module.exports = PolarReadingScan;
