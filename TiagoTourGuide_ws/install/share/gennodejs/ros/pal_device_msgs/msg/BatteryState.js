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

class BatteryState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.chargeState = null;
      this.batteryPercentage = null;
    }
    else {
      if (initObj.hasOwnProperty('chargeState')) {
        this.chargeState = initObj.chargeState
      }
      else {
        this.chargeState = 0;
      }
      if (initObj.hasOwnProperty('batteryPercentage')) {
        this.batteryPercentage = initObj.batteryPercentage
      }
      else {
        this.batteryPercentage = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryState
    // Serialize message field [chargeState]
    bufferOffset = _serializer.int8(obj.chargeState, buffer, bufferOffset);
    // Serialize message field [batteryPercentage]
    bufferOffset = _serializer.float32(obj.batteryPercentage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryState
    let len;
    let data = new BatteryState(null);
    // Deserialize message field [chargeState]
    data.chargeState = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [batteryPercentage]
    data.batteryPercentage = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_device_msgs/BatteryState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ffbf73d789e375a8bace732de9096d5f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    byte FULL = 5
    byte HIGH = 4
    byte MEDIUM = 3
    byte LOW = 2
    byte CRITICAL_LOW = 1
    
    #In the future we can use http://www.ros.org/doc/api/pr2_msgs/html/msg/PowerState.html
    
    int8 chargeState
    float32 batteryPercentage
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatteryState(null);
    if (msg.chargeState !== undefined) {
      resolved.chargeState = msg.chargeState;
    }
    else {
      resolved.chargeState = 0
    }

    if (msg.batteryPercentage !== undefined) {
      resolved.batteryPercentage = msg.batteryPercentage;
    }
    else {
      resolved.batteryPercentage = 0.0
    }

    return resolved;
    }
};

// Constants for message
BatteryState.Constants = {
  FULL: 5,
  HIGH: 4,
  MEDIUM: 3,
  LOW: 2,
  CRITICAL_LOW: 1,
}

module.exports = BatteryState;
