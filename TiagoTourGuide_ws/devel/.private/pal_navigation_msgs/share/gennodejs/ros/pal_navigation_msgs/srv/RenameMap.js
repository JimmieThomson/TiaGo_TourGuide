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

class RenameMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_map_name = null;
      this.new_map_name = null;
    }
    else {
      if (initObj.hasOwnProperty('current_map_name')) {
        this.current_map_name = initObj.current_map_name
      }
      else {
        this.current_map_name = '';
      }
      if (initObj.hasOwnProperty('new_map_name')) {
        this.new_map_name = initObj.new_map_name
      }
      else {
        this.new_map_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RenameMapRequest
    // Serialize message field [current_map_name]
    bufferOffset = _serializer.string(obj.current_map_name, buffer, bufferOffset);
    // Serialize message field [new_map_name]
    bufferOffset = _serializer.string(obj.new_map_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RenameMapRequest
    let len;
    let data = new RenameMapRequest(null);
    // Deserialize message field [current_map_name]
    data.current_map_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [new_map_name]
    data.new_map_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.current_map_name);
    length += _getByteLength(object.new_map_name);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_navigation_msgs/RenameMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18e17ff8673092bf2b0ad3d839b9943d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Service to change the name of an existing map
    
    string current_map_name
    string new_map_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RenameMapRequest(null);
    if (msg.current_map_name !== undefined) {
      resolved.current_map_name = msg.current_map_name;
    }
    else {
      resolved.current_map_name = ''
    }

    if (msg.new_map_name !== undefined) {
      resolved.new_map_name = msg.new_map_name;
    }
    else {
      resolved.new_map_name = ''
    }

    return resolved;
    }
};

class RenameMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RenameMapResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RenameMapResponse
    let len;
    let data = new RenameMapResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_navigation_msgs/RenameMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RenameMapResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: RenameMapRequest,
  Response: RenameMapResponse,
  md5sum() { return '31cf40e688b10ff9fb9ee4663b8a4012'; },
  datatype() { return 'pal_navigation_msgs/RenameMap'; }
};
