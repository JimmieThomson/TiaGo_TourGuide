// Auto-generated. Do not edit!

// (in-package pal_interaction_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ASRLangModelMngmt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.modelName = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('modelName')) {
        this.modelName = initObj.modelName
      }
      else {
        this.modelName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ASRLangModelMngmt
    // Serialize message field [action]
    bufferOffset = _serializer.int8(obj.action, buffer, bufferOffset);
    // Serialize message field [modelName]
    bufferOffset = _serializer.string(obj.modelName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ASRLangModelMngmt
    let len;
    let data = new ASRLangModelMngmt(null);
    // Deserialize message field [action]
    data.action = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [modelName]
    data.modelName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.modelName);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/ASRLangModelMngmt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b14d87d721997c14475b6bf74e854ad8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ASRLangModelMngmt(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.modelName !== undefined) {
      resolved.modelName = msg.modelName;
    }
    else {
      resolved.modelName = ''
    }

    return resolved;
    }
};

// Constants for message
ASRLangModelMngmt.Constants = {
  ENABLE: 1,
  DISABLE: 2,
  LOAD: 3,
  UNLOAD: 4,
}

module.exports = ASRLangModelMngmt;
