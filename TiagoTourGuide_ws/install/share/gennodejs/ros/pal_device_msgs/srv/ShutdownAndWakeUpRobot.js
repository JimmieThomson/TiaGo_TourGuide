// Auto-generated. Do not edit!

// (in-package pal_device_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ShutdownAndWakeUpRobotRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.shutdown_duration = null;
    }
    else {
      if (initObj.hasOwnProperty('shutdown_duration')) {
        this.shutdown_duration = initObj.shutdown_duration
      }
      else {
        this.shutdown_duration = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShutdownAndWakeUpRobotRequest
    // Serialize message field [shutdown_duration]
    bufferOffset = _serializer.duration(obj.shutdown_duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShutdownAndWakeUpRobotRequest
    let len;
    let data = new ShutdownAndWakeUpRobotRequest(null);
    // Deserialize message field [shutdown_duration]
    data.shutdown_duration = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_device_msgs/ShutdownAndWakeUpRobotRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f8f568ec4dc499fbd0dce4b139875f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    duration shutdown_duration
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShutdownAndWakeUpRobotRequest(null);
    if (msg.shutdown_duration !== undefined) {
      resolved.shutdown_duration = msg.shutdown_duration;
    }
    else {
      resolved.shutdown_duration = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

class ShutdownAndWakeUpRobotResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShutdownAndWakeUpRobotResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShutdownAndWakeUpRobotResponse
    let len;
    let data = new ShutdownAndWakeUpRobotResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_device_msgs/ShutdownAndWakeUpRobotResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShutdownAndWakeUpRobotResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ShutdownAndWakeUpRobotRequest,
  Response: ShutdownAndWakeUpRobotResponse,
  md5sum() { return '1f8f568ec4dc499fbd0dce4b139875f5'; },
  datatype() { return 'pal_device_msgs/ShutdownAndWakeUpRobot'; }
};
