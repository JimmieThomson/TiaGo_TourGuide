// Auto-generated. Do not edit!

// (in-package pal_interaction_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EnablingSoundLocalisation = require('../msg/EnablingSoundLocalisation.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SoundLocalisationServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enabling = null;
    }
    else {
      if (initObj.hasOwnProperty('enabling')) {
        this.enabling = initObj.enabling
      }
      else {
        this.enabling = new EnablingSoundLocalisation();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SoundLocalisationServiceRequest
    // Serialize message field [enabling]
    bufferOffset = EnablingSoundLocalisation.serialize(obj.enabling, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SoundLocalisationServiceRequest
    let len;
    let data = new SoundLocalisationServiceRequest(null);
    // Deserialize message field [enabling]
    data.enabling = EnablingSoundLocalisation.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_interaction_msgs/SoundLocalisationServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc68fffb4060073f9a9cee5375c725ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pal_interaction_msgs/EnablingSoundLocalisation enabling
    
    ================================================================================
    MSG: pal_interaction_msgs/EnablingSoundLocalisation
    bool enable
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SoundLocalisationServiceRequest(null);
    if (msg.enabling !== undefined) {
      resolved.enabling = EnablingSoundLocalisation.Resolve(msg.enabling)
    }
    else {
      resolved.enabling = new EnablingSoundLocalisation()
    }

    return resolved;
    }
};

class SoundLocalisationServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SoundLocalisationServiceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SoundLocalisationServiceResponse
    let len;
    let data = new SoundLocalisationServiceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_interaction_msgs/SoundLocalisationServiceResponse';
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
    const resolved = new SoundLocalisationServiceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SoundLocalisationServiceRequest,
  Response: SoundLocalisationServiceResponse,
  md5sum() { return 'cc68fffb4060073f9a9cee5375c725ea'; },
  datatype() { return 'pal_interaction_msgs/SoundLocalisationService'; }
};
