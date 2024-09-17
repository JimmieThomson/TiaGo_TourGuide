// Auto-generated. Do not edit!

// (in-package pal_tablet_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FunctionalityStatus = require('./FunctionalityStatus.js');

//-----------------------------------------------------------

class RobotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.messages = null;
    }
    else {
      if (initObj.hasOwnProperty('messages')) {
        this.messages = initObj.messages
      }
      else {
        this.messages = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStatus
    // Serialize message field [messages]
    // Serialize the length for message field [messages]
    bufferOffset = _serializer.uint32(obj.messages.length, buffer, bufferOffset);
    obj.messages.forEach((val) => {
      bufferOffset = FunctionalityStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStatus
    let len;
    let data = new RobotStatus(null);
    // Deserialize message field [messages]
    // Deserialize array length for message field [messages]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.messages = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.messages[i] = FunctionalityStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.messages.forEach((val) => {
      length += FunctionalityStatus.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_tablet_msgs/RobotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3495bf9d81b79deaa82f3652871818c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Robot status msgs for tablet
    
    pal_tablet_msgs/FunctionalityStatus[] messages 
    
    ================================================================================
    MSG: pal_tablet_msgs/FunctionalityStatus
    # Functionality status message
    
    std_msgs/String   errMessage
    std_msgs/Bool     errStatus
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotStatus(null);
    if (msg.messages !== undefined) {
      resolved.messages = new Array(msg.messages.length);
      for (let i = 0; i < resolved.messages.length; ++i) {
        resolved.messages[i] = FunctionalityStatus.Resolve(msg.messages[i]);
      }
    }
    else {
      resolved.messages = []
    }

    return resolved;
    }
};

module.exports = RobotStatus;
