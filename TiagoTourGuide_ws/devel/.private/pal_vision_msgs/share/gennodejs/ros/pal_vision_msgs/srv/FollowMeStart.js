// Auto-generated. Do not edit!

// (in-package pal_vision_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class FollowMeStartRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.maxSecondsTargetLost = null;
    }
    else {
      if (initObj.hasOwnProperty('maxSecondsTargetLost')) {
        this.maxSecondsTargetLost = initObj.maxSecondsTargetLost
      }
      else {
        this.maxSecondsTargetLost = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FollowMeStartRequest
    // Serialize message field [maxSecondsTargetLost]
    bufferOffset = _serializer.float32(obj.maxSecondsTargetLost, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FollowMeStartRequest
    let len;
    let data = new FollowMeStartRequest(null);
    // Deserialize message field [maxSecondsTargetLost]
    data.maxSecondsTargetLost = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_vision_msgs/FollowMeStartRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87d3dd79b1c6acbd29fa88c4d5b58715';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ##
    ## ROS service to start followMeServer functionality. The service is named /followMeServer/start
    
    float32 maxSecondsTargetLost 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FollowMeStartRequest(null);
    if (msg.maxSecondsTargetLost !== undefined) {
      resolved.maxSecondsTargetLost = msg.maxSecondsTargetLost;
    }
    else {
      resolved.maxSecondsTargetLost = 0.0
    }

    return resolved;
    }
};

class FollowMeStartResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FollowMeStartResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FollowMeStartResponse
    let len;
    let data = new FollowMeStartResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_vision_msgs/FollowMeStartResponse';
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
    const resolved = new FollowMeStartResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: FollowMeStartRequest,
  Response: FollowMeStartResponse,
  md5sum() { return '87d3dd79b1c6acbd29fa88c4d5b58715'; },
  datatype() { return 'pal_vision_msgs/FollowMeStart'; }
};
