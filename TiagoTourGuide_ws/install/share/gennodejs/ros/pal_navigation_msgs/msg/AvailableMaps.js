// Auto-generated. Do not edit!

// (in-package pal_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AvailableMaps {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_names = null;
    }
    else {
      if (initObj.hasOwnProperty('map_names')) {
        this.map_names = initObj.map_names
      }
      else {
        this.map_names = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AvailableMaps
    // Serialize message field [map_names]
    // Serialize the length for message field [map_names]
    bufferOffset = _serializer.uint32(obj.map_names.length, buffer, bufferOffset);
    obj.map_names.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AvailableMaps
    let len;
    let data = new AvailableMaps(null);
    // Deserialize message field [map_names]
    // Deserialize array length for message field [map_names]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.map_names = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.map_names[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.map_names.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_navigation_msgs/AvailableMaps';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9db0e90f3d30f37c0bc8af001416200d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # TODO: This may change!
    std_msgs/String[] map_names
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AvailableMaps(null);
    if (msg.map_names !== undefined) {
      resolved.map_names = new Array(msg.map_names.length);
      for (let i = 0; i < resolved.map_names.length; ++i) {
        resolved.map_names[i] = std_msgs.msg.String.Resolve(msg.map_names[i]);
      }
    }
    else {
      resolved.map_names = []
    }

    return resolved;
    }
};

module.exports = AvailableMaps;
