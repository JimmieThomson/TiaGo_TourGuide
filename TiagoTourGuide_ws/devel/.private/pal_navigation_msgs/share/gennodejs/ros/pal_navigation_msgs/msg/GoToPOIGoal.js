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

class GoToPOIGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.poi = null;
    }
    else {
      if (initObj.hasOwnProperty('poi')) {
        this.poi = initObj.poi
      }
      else {
        this.poi = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoToPOIGoal
    // Serialize message field [poi]
    bufferOffset = std_msgs.msg.String.serialize(obj.poi, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoToPOIGoal
    let len;
    let data = new GoToPOIGoal(null);
    // Deserialize message field [poi]
    data.poi = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.poi);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_navigation_msgs/GoToPOIGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '538be845cb53d7d128987a020f2801b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    std_msgs/String poi
    
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
    const resolved = new GoToPOIGoal(null);
    if (msg.poi !== undefined) {
      resolved.poi = std_msgs.msg.String.Resolve(msg.poi)
    }
    else {
      resolved.poi = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = GoToPOIGoal;
