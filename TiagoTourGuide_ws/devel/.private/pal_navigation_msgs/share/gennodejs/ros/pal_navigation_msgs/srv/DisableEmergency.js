// Auto-generated. Do not edit!

// (in-package pal_navigation_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class DisableEmergencyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.second = null;
      this.useLEDs = null;
    }
    else {
      if (initObj.hasOwnProperty('second')) {
        this.second = initObj.second
      }
      else {
        this.second = 0.0;
      }
      if (initObj.hasOwnProperty('useLEDs')) {
        this.useLEDs = initObj.useLEDs
      }
      else {
        this.useLEDs = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DisableEmergencyRequest
    // Serialize message field [second]
    bufferOffset = _serializer.float64(obj.second, buffer, bufferOffset);
    // Serialize message field [useLEDs]
    bufferOffset = _serializer.bool(obj.useLEDs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DisableEmergencyRequest
    let len;
    let data = new DisableEmergencyRequest(null);
    // Deserialize message field [second]
    data.second = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [useLEDs]
    data.useLEDs = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_navigation_msgs/DisableEmergencyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fbef0837e8a0d26d59ce6c877c970c68';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Disable emergency 
    float64 second
    bool useLEDs
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DisableEmergencyRequest(null);
    if (msg.second !== undefined) {
      resolved.second = msg.second;
    }
    else {
      resolved.second = 0.0
    }

    if (msg.useLEDs !== undefined) {
      resolved.useLEDs = msg.useLEDs;
    }
    else {
      resolved.useLEDs = false
    }

    return resolved;
    }
};

class DisableEmergencyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DisableEmergencyResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DisableEmergencyResponse
    let len;
    let data = new DisableEmergencyResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_navigation_msgs/DisableEmergencyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DisableEmergencyResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: DisableEmergencyRequest,
  Response: DisableEmergencyResponse,
  md5sum() { return 'c70010f49615fec47be4f92cf8bc5f87'; },
  datatype() { return 'pal_navigation_msgs/DisableEmergency'; }
};
