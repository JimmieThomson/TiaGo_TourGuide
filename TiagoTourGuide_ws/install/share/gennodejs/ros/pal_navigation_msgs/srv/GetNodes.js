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

class GetNodesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNodesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNodesRequest
    let len;
    let data = new GetNodesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_navigation_msgs/GetNodesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request number of submaps when datas are loaded 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetNodesRequest(null);
    return resolved;
    }
};

class GetNodesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
      this.totPOI = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = 0;
      }
      if (initObj.hasOwnProperty('totPOI')) {
        this.totPOI = initObj.totPOI
      }
      else {
        this.totPOI = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNodesResponse
    // Serialize message field [node]
    bufferOffset = _serializer.int8(obj.node, buffer, bufferOffset);
    // Serialize message field [totPOI]
    bufferOffset = _serializer.int8(obj.totPOI, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNodesResponse
    let len;
    let data = new GetNodesResponse(null);
    // Deserialize message field [node]
    data.node = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [totPOI]
    data.totPOI = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_navigation_msgs/GetNodesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6466ea7c9ababd4e7ce8d08d651a271';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 node
    int8 totPOI
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetNodesResponse(null);
    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = 0
    }

    if (msg.totPOI !== undefined) {
      resolved.totPOI = msg.totPOI;
    }
    else {
      resolved.totPOI = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetNodesRequest,
  Response: GetNodesResponse,
  md5sum() { return 'b6466ea7c9ababd4e7ce8d08d651a271'; },
  datatype() { return 'pal_navigation_msgs/GetNodes'; }
};
