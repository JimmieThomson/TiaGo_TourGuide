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

class CancelEffectRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.effectId = null;
    }
    else {
      if (initObj.hasOwnProperty('effectId')) {
        this.effectId = initObj.effectId
      }
      else {
        this.effectId = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CancelEffectRequest
    // Serialize message field [effectId]
    bufferOffset = _serializer.uint32(obj.effectId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CancelEffectRequest
    let len;
    let data = new CancelEffectRequest(null);
    // Deserialize message field [effectId]
    data.effectId = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_device_msgs/CancelEffectRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6602e24c29b84632fa113b15b20645d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Id of the effect, used to cancel an effect
    uint32 effectId
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CancelEffectRequest(null);
    if (msg.effectId !== undefined) {
      resolved.effectId = msg.effectId;
    }
    else {
      resolved.effectId = 0
    }

    return resolved;
    }
};

class CancelEffectResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CancelEffectResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CancelEffectResponse
    let len;
    let data = new CancelEffectResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_device_msgs/CancelEffectResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # True if effect was canceled, false if effectId doesn't exist or has already been canceled
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CancelEffectResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: CancelEffectRequest,
  Response: CancelEffectResponse,
  md5sum() { return 'f6602e24c29b84632fa113b15b20645d'; },
  datatype() { return 'pal_device_msgs/CancelEffect'; }
};
