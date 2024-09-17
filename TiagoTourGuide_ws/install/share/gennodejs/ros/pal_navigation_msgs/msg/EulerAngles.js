// Auto-generated. Do not edit!

// (in-package pal_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class EulerAngles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sequence = null;
      this.angles_in_degrees = null;
      this.ai = null;
      this.aj = null;
      this.ak = null;
    }
    else {
      if (initObj.hasOwnProperty('sequence')) {
        this.sequence = initObj.sequence
      }
      else {
        this.sequence = '';
      }
      if (initObj.hasOwnProperty('angles_in_degrees')) {
        this.angles_in_degrees = initObj.angles_in_degrees
      }
      else {
        this.angles_in_degrees = false;
      }
      if (initObj.hasOwnProperty('ai')) {
        this.ai = initObj.ai
      }
      else {
        this.ai = 0.0;
      }
      if (initObj.hasOwnProperty('aj')) {
        this.aj = initObj.aj
      }
      else {
        this.aj = 0.0;
      }
      if (initObj.hasOwnProperty('ak')) {
        this.ak = initObj.ak
      }
      else {
        this.ak = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EulerAngles
    // Serialize message field [sequence]
    bufferOffset = _serializer.string(obj.sequence, buffer, bufferOffset);
    // Serialize message field [angles_in_degrees]
    bufferOffset = _serializer.bool(obj.angles_in_degrees, buffer, bufferOffset);
    // Serialize message field [ai]
    bufferOffset = _serializer.float64(obj.ai, buffer, bufferOffset);
    // Serialize message field [aj]
    bufferOffset = _serializer.float64(obj.aj, buffer, bufferOffset);
    // Serialize message field [ak]
    bufferOffset = _serializer.float64(obj.ak, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EulerAngles
    let len;
    let data = new EulerAngles(null);
    // Deserialize message field [sequence]
    data.sequence = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [angles_in_degrees]
    data.angles_in_degrees = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ai]
    data.ai = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [aj]
    data.aj = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ak]
    data.ak = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sequence);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_navigation_msgs/EulerAngles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b41bea25ef0825fa6d2799746a51460f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new EulerAngles(null);
    if (msg.sequence !== undefined) {
      resolved.sequence = msg.sequence;
    }
    else {
      resolved.sequence = ''
    }

    if (msg.angles_in_degrees !== undefined) {
      resolved.angles_in_degrees = msg.angles_in_degrees;
    }
    else {
      resolved.angles_in_degrees = false
    }

    if (msg.ai !== undefined) {
      resolved.ai = msg.ai;
    }
    else {
      resolved.ai = 0.0
    }

    if (msg.aj !== undefined) {
      resolved.aj = msg.aj;
    }
    else {
      resolved.aj = 0.0
    }

    if (msg.ak !== undefined) {
      resolved.ak = msg.ak;
    }
    else {
      resolved.ak = 0.0
    }

    return resolved;
    }
};

module.exports = EulerAngles;
