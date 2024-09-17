// Auto-generated. Do not edit!

// (in-package pal_tablet_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FunctionalityStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.errMessage = null;
      this.errStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('errMessage')) {
        this.errMessage = initObj.errMessage
      }
      else {
        this.errMessage = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('errStatus')) {
        this.errStatus = initObj.errStatus
      }
      else {
        this.errStatus = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FunctionalityStatus
    // Serialize message field [errMessage]
    bufferOffset = std_msgs.msg.String.serialize(obj.errMessage, buffer, bufferOffset);
    // Serialize message field [errStatus]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.errStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FunctionalityStatus
    let len;
    let data = new FunctionalityStatus(null);
    // Deserialize message field [errMessage]
    data.errMessage = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [errStatus]
    data.errStatus = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.errMessage);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_tablet_msgs/FunctionalityStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a8da27b7dcd09b29d33e708966ece31';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new FunctionalityStatus(null);
    if (msg.errMessage !== undefined) {
      resolved.errMessage = std_msgs.msg.String.Resolve(msg.errMessage)
    }
    else {
      resolved.errMessage = new std_msgs.msg.String()
    }

    if (msg.errStatus !== undefined) {
      resolved.errStatus = std_msgs.msg.Bool.Resolve(msg.errStatus)
    }
    else {
      resolved.errStatus = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

module.exports = FunctionalityStatus;
