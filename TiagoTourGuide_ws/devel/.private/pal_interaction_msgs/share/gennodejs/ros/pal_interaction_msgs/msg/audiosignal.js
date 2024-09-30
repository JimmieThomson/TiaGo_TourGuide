// Auto-generated. Do not edit!

// (in-package pal_interaction_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class audiosignal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.channel0 = null;
      this.channel1 = null;
    }
    else {
      if (initObj.hasOwnProperty('channel0')) {
        this.channel0 = initObj.channel0
      }
      else {
        this.channel0 = [];
      }
      if (initObj.hasOwnProperty('channel1')) {
        this.channel1 = initObj.channel1
      }
      else {
        this.channel1 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type audiosignal
    // Serialize message field [channel0]
    bufferOffset = _arraySerializer.float64(obj.channel0, buffer, bufferOffset, null);
    // Serialize message field [channel1]
    bufferOffset = _arraySerializer.float64(obj.channel1, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type audiosignal
    let len;
    let data = new audiosignal(null);
    // Deserialize message field [channel0]
    data.channel0 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [channel1]
    data.channel1 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.channel0.length;
    length += 8 * object.channel1.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/audiosignal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9406f94b261ed2ebad808e7af5b61907';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] channel0
    float64[] channel1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new audiosignal(null);
    if (msg.channel0 !== undefined) {
      resolved.channel0 = msg.channel0;
    }
    else {
      resolved.channel0 = []
    }

    if (msg.channel1 !== undefined) {
      resolved.channel1 = msg.channel1;
    }
    else {
      resolved.channel1 = []
    }

    return resolved;
    }
};

module.exports = audiosignal;
