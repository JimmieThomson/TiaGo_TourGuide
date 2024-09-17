// Auto-generated. Do not edit!

// (in-package pal_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class CurrentLimitRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actuator_name = null;
      this.current_limit = null;
    }
    else {
      if (initObj.hasOwnProperty('actuator_name')) {
        this.actuator_name = initObj.actuator_name
      }
      else {
        this.actuator_name = '';
      }
      if (initObj.hasOwnProperty('current_limit')) {
        this.current_limit = initObj.current_limit
      }
      else {
        this.current_limit = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentLimitRequest
    // Serialize message field [actuator_name]
    bufferOffset = _serializer.string(obj.actuator_name, buffer, bufferOffset);
    // Serialize message field [current_limit]
    bufferOffset = _serializer.float64(obj.current_limit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentLimitRequest
    let len;
    let data = new CurrentLimitRequest(null);
    // Deserialize message field [actuator_name]
    data.actuator_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_limit]
    data.current_limit = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.actuator_name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_control_msgs/CurrentLimitRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d1326759cec3fceb10a88d2834f6fba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #This service requests to change the current limit of a motor 
    # to a new value. 
    # Admissible values are between 0 (zero current)  and 1 (nominal current).
    
    string    actuator_name
    float64   current_limit
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CurrentLimitRequest(null);
    if (msg.actuator_name !== undefined) {
      resolved.actuator_name = msg.actuator_name;
    }
    else {
      resolved.actuator_name = ''
    }

    if (msg.current_limit !== undefined) {
      resolved.current_limit = msg.current_limit;
    }
    else {
      resolved.current_limit = 0.0
    }

    return resolved;
    }
};

class CurrentLimitResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentLimitResponse
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentLimitResponse
    let len;
    let data = new CurrentLimitResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.status);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_control_msgs/CurrentLimitResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4fe5af303955c287688e7347e9b00278';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string   status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CurrentLimitResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: CurrentLimitRequest,
  Response: CurrentLimitResponse,
  md5sum() { return '8a87b11fb09397e3869b9fb3a4ea940b'; },
  datatype() { return 'pal_control_msgs/CurrentLimit'; }
};
