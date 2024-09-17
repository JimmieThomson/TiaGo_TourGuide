// Auto-generated. Do not edit!

// (in-package pal_device_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LedRainbowParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transition_duration = null;
    }
    else {
      if (initObj.hasOwnProperty('transition_duration')) {
        this.transition_duration = initObj.transition_duration
      }
      else {
        this.transition_duration = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedRainbowParams
    // Serialize message field [transition_duration]
    bufferOffset = _serializer.duration(obj.transition_duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedRainbowParams
    let len;
    let data = new LedRainbowParams(null);
    // Deserialize message field [transition_duration]
    data.transition_duration = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_device_msgs/LedRainbowParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f44f9582c55f88a544d929daa76e5ae7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Time to perform rainbow
    duration transition_duration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedRainbowParams(null);
    if (msg.transition_duration !== undefined) {
      resolved.transition_duration = msg.transition_duration;
    }
    else {
      resolved.transition_duration = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = LedRainbowParams;
