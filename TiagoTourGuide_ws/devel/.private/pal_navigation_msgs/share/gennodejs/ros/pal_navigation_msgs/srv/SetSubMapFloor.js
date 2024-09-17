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

class SetSubMapFloorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.floor = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('floor')) {
        this.floor = initObj.floor
      }
      else {
        this.floor = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetSubMapFloorRequest
    // Serialize message field [index]
    bufferOffset = _serializer.int8(obj.index, buffer, bufferOffset);
    // Serialize message field [floor]
    bufferOffset = _serializer.int8(obj.floor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetSubMapFloorRequest
    let len;
    let data = new SetSubMapFloorRequest(null);
    // Deserialize message field [index]
    data.index = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [floor]
    data.floor = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_navigation_msgs/SetSubMapFloorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7bc38a6f54d12ca287533bb3a693ed06';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Send Floor of SubMap at index i
    int8 index
    int8 floor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetSubMapFloorRequest(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.floor !== undefined) {
      resolved.floor = msg.floor;
    }
    else {
      resolved.floor = 0
    }

    return resolved;
    }
};

class SetSubMapFloorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetSubMapFloorResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetSubMapFloorResponse
    let len;
    let data = new SetSubMapFloorResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_navigation_msgs/SetSubMapFloorResponse';
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
    const resolved = new SetSubMapFloorResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetSubMapFloorRequest,
  Response: SetSubMapFloorResponse,
  md5sum() { return '7bc38a6f54d12ca287533bb3a693ed06'; },
  datatype() { return 'pal_navigation_msgs/SetSubMapFloor'; }
};
