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

class ASRActivation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ASRActivation
    // Serialize message field [action]
    bufferOffset = _serializer.int8(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ASRActivation
    let len;
    let data = new ASRActivation(null);
    // Deserialize message field [action]
    data.action = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/ASRActivation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbd42ef6448061151159fe3a848b2553';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ASRActivation(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    return resolved;
    }
};

// Constants for message
ASRActivation.Constants = {
  ACTIVATE: 1,
  DEACTIVATE: 2,
  PAUSE: 3,
  RESUME: 4,
  CALIBRATE: 5,
}

module.exports = ASRActivation;
