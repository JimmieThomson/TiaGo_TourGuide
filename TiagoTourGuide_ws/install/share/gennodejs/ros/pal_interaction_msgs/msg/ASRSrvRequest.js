// Auto-generated. Do not edit!

// (in-package pal_interaction_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ASRActivation = require('./ASRActivation.js');
let ASRLangModelMngmt = require('./ASRLangModelMngmt.js');
let ASRLanguage = require('./ASRLanguage.js');

//-----------------------------------------------------------

class ASRSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.requests = null;
      this.activation = null;
      this.model = null;
      this.lang = null;
    }
    else {
      if (initObj.hasOwnProperty('requests')) {
        this.requests = initObj.requests
      }
      else {
        this.requests = [];
      }
      if (initObj.hasOwnProperty('activation')) {
        this.activation = initObj.activation
      }
      else {
        this.activation = new ASRActivation();
      }
      if (initObj.hasOwnProperty('model')) {
        this.model = initObj.model
      }
      else {
        this.model = new ASRLangModelMngmt();
      }
      if (initObj.hasOwnProperty('lang')) {
        this.lang = initObj.lang
      }
      else {
        this.lang = new ASRLanguage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ASRSrvRequest
    // Serialize message field [requests]
    bufferOffset = _arraySerializer.int8(obj.requests, buffer, bufferOffset, null);
    // Serialize message field [activation]
    bufferOffset = ASRActivation.serialize(obj.activation, buffer, bufferOffset);
    // Serialize message field [model]
    bufferOffset = ASRLangModelMngmt.serialize(obj.model, buffer, bufferOffset);
    // Serialize message field [lang]
    bufferOffset = ASRLanguage.serialize(obj.lang, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ASRSrvRequest
    let len;
    let data = new ASRSrvRequest(null);
    // Deserialize message field [requests]
    data.requests = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [activation]
    data.activation = ASRActivation.deserialize(buffer, bufferOffset);
    // Deserialize message field [model]
    data.model = ASRLangModelMngmt.deserialize(buffer, bufferOffset);
    // Deserialize message field [lang]
    data.lang = ASRLanguage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.requests.length;
    length += ASRLangModelMngmt.getMessageSize(object.model);
    length += ASRLanguage.getMessageSize(object.lang);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/ASRSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18340721947db95a89c5d69f8dcbb2cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request messages for the recognizer service.
    # It is possible to request and activate task, 
    # a grammar management task and language change or just
    # request the current status.
    
    # Type of request list
    int8 ACTIVATION = 1
    int8 GRAMMAR = 2
    int8 LANGUAGE = 3
    int8 STATUS = 4
    int8 KWSPOTTING = 5
    
    # Message variables
    # list of requests types (several requests can be send in one single message)
    int8[] requests
    
    # Information related to each possible request
    # except for status that does not need any additional info.
    ASRActivation activation
    ASRLangModelMngmt model
    ASRLanguage lang
    
    ================================================================================
    MSG: pal_interaction_msgs/ASRActivation
    # Message that can be used to send activation commands to the speech recognizer.
    # It is possible to activate/deactivate or pause/resume the recognizer with these commands.
    # action list
    int8 ACTIVATE = 1
    int8 DEACTIVATE = 2
    int8 PAUSE = 3
    int8 RESUME = 4
    int8 CALIBRATE = 5
    
    # Message variables
    int8 action
    
    
    ================================================================================
    MSG: pal_interaction_msgs/ASRLangModelMngmt
    # This message is to be used in the ASR service to manage the grammars
    # makes possible to enable/disable, load/unload grammars.
    
    
    # Types of action
    int8 ENABLE = 1
    int8 DISABLE = 2
    int8 LOAD = 3
    int8 UNLOAD = 4
    
    # Message variables
    # Type of action requested
    int8 action
    
    # Name of the grammar to actuate on.
    string modelName
    
    ================================================================================
    MSG: pal_interaction_msgs/ASRLanguage
    # This message is to indicate the language
    # that has to be set in the speech recognizer
    string language
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ASRSrvRequest(null);
    if (msg.requests !== undefined) {
      resolved.requests = msg.requests;
    }
    else {
      resolved.requests = []
    }

    if (msg.activation !== undefined) {
      resolved.activation = ASRActivation.Resolve(msg.activation)
    }
    else {
      resolved.activation = new ASRActivation()
    }

    if (msg.model !== undefined) {
      resolved.model = ASRLangModelMngmt.Resolve(msg.model)
    }
    else {
      resolved.model = new ASRLangModelMngmt()
    }

    if (msg.lang !== undefined) {
      resolved.lang = ASRLanguage.Resolve(msg.lang)
    }
    else {
      resolved.lang = new ASRLanguage()
    }

    return resolved;
    }
};

// Constants for message
ASRSrvRequest.Constants = {
  ACTIVATION: 1,
  GRAMMAR: 2,
  LANGUAGE: 3,
  STATUS: 4,
  KWSPOTTING: 5,
}

module.exports = ASRSrvRequest;
