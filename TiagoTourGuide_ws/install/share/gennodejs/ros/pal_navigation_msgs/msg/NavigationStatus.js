// Auto-generated. Do not edit!

// (in-package pal_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NavigationStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavigationStatus
    // Serialize message field [status]
    bufferOffset = std_msgs.msg.String.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = std_msgs.msg.String.serialize(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigationStatus
    let len;
    let data = new NavigationStatus(null);
    // Deserialize message field [status]
    data.status = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.status);
    length += std_msgs.msg.String.getMessageSize(object.msg);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_navigation_msgs/NavigationStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '37841f68121395f14fd0a4c8470eb55c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String  status
    std_msgs/String  msg
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavigationStatus(null);
    if (msg.status !== undefined) {
      resolved.status = std_msgs.msg.String.Resolve(msg.status)
    }
    else {
      resolved.status = new std_msgs.msg.String()
    }

    if (msg.msg !== undefined) {
      resolved.msg = std_msgs.msg.String.Resolve(msg.msg)
    }
    else {
      resolved.msg = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = NavigationStatus;
