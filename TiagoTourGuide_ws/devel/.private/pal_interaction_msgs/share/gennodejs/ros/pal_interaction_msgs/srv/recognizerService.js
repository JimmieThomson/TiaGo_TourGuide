// Auto-generated. Do not edit!

// (in-package pal_interaction_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let asrupdate = require('../msg/asrupdate.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class recognizerServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.asrupdate = null;
    }
    else {
      if (initObj.hasOwnProperty('asrupdate')) {
        this.asrupdate = initObj.asrupdate
      }
      else {
        this.asrupdate = new asrupdate();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type recognizerServiceRequest
    // Serialize message field [asrupdate]
    bufferOffset = asrupdate.serialize(obj.asrupdate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type recognizerServiceRequest
    let len;
    let data = new recognizerServiceRequest(null);
    // Deserialize message field [asrupdate]
    data.asrupdate = asrupdate.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += asrupdate.getMessageSize(object.asrupdate);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_interaction_msgs/recognizerServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cfe4314795c9fe304282fdbecf5be6ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pal_interaction_msgs/asrupdate asrupdate
    
    ================================================================================
    MSG: pal_interaction_msgs/asrupdate
    # V.1.0 of the ASR ROS API for the servie.
    # just has the language and grammar to enable, the acoustic models to be used,
    # and whether we want to activate or deactivate the recognizer.
    string language
    string enable_grammar
    string disable_grammar
    string acousticenv
    bool active
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new recognizerServiceRequest(null);
    if (msg.asrupdate !== undefined) {
      resolved.asrupdate = asrupdate.Resolve(msg.asrupdate)
    }
    else {
      resolved.asrupdate = new asrupdate()
    }

    return resolved;
    }
};

class recognizerServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type recognizerServiceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type recognizerServiceResponse
    let len;
    let data = new recognizerServiceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_interaction_msgs/recognizerServiceResponse';
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
    const resolved = new recognizerServiceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: recognizerServiceRequest,
  Response: recognizerServiceResponse,
  md5sum() { return 'cfe4314795c9fe304282fdbecf5be6ec'; },
  datatype() { return 'pal_interaction_msgs/recognizerService'; }
};
