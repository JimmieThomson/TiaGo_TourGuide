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

class DirectionOfArrival {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.doa = null;
      this.prob = null;
      this.power = null;
      this.metadoa = null;
    }
    else {
      if (initObj.hasOwnProperty('doa')) {
        this.doa = initObj.doa
      }
      else {
        this.doa = 0.0;
      }
      if (initObj.hasOwnProperty('prob')) {
        this.prob = initObj.prob
      }
      else {
        this.prob = 0.0;
      }
      if (initObj.hasOwnProperty('power')) {
        this.power = initObj.power
      }
      else {
        this.power = 0.0;
      }
      if (initObj.hasOwnProperty('metadoa')) {
        this.metadoa = initObj.metadoa
      }
      else {
        this.metadoa = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DirectionOfArrival
    // Serialize message field [doa]
    bufferOffset = _serializer.float32(obj.doa, buffer, bufferOffset);
    // Serialize message field [prob]
    bufferOffset = _serializer.float32(obj.prob, buffer, bufferOffset);
    // Serialize message field [power]
    bufferOffset = _serializer.float32(obj.power, buffer, bufferOffset);
    // Serialize message field [metadoa]
    bufferOffset = _serializer.string(obj.metadoa, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DirectionOfArrival
    let len;
    let data = new DirectionOfArrival(null);
    // Deserialize message field [doa]
    data.doa = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [prob]
    data.prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [power]
    data.power = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [metadoa]
    data.metadoa = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.metadoa);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/DirectionOfArrival';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbcea81e85fdde7bb3d71de75dea9f5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 doa
    float32 prob
    float32 power
    string metadoa
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DirectionOfArrival(null);
    if (msg.doa !== undefined) {
      resolved.doa = msg.doa;
    }
    else {
      resolved.doa = 0.0
    }

    if (msg.prob !== undefined) {
      resolved.prob = msg.prob;
    }
    else {
      resolved.prob = 0.0
    }

    if (msg.power !== undefined) {
      resolved.power = msg.power;
    }
    else {
      resolved.power = 0.0
    }

    if (msg.metadoa !== undefined) {
      resolved.metadoa = msg.metadoa;
    }
    else {
      resolved.metadoa = ''
    }

    return resolved;
    }
};

module.exports = DirectionOfArrival;
