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

class POIGroup {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.group_name = null;
      this.poi_names = null;
    }
    else {
      if (initObj.hasOwnProperty('group_name')) {
        this.group_name = initObj.group_name
      }
      else {
        this.group_name = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('poi_names')) {
        this.poi_names = initObj.poi_names
      }
      else {
        this.poi_names = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type POIGroup
    // Serialize message field [group_name]
    bufferOffset = std_msgs.msg.String.serialize(obj.group_name, buffer, bufferOffset);
    // Serialize message field [poi_names]
    // Serialize the length for message field [poi_names]
    bufferOffset = _serializer.uint32(obj.poi_names.length, buffer, bufferOffset);
    obj.poi_names.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type POIGroup
    let len;
    let data = new POIGroup(null);
    // Deserialize message field [group_name]
    data.group_name = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [poi_names]
    // Deserialize array length for message field [poi_names]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.poi_names = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.poi_names[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.group_name);
    object.poi_names.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_navigation_msgs/POIGroup';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b26e4f03643dc943e8e2917c6c6e5767';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String group_name
    std_msgs/String[] poi_names
    
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
    const resolved = new POIGroup(null);
    if (msg.group_name !== undefined) {
      resolved.group_name = std_msgs.msg.String.Resolve(msg.group_name)
    }
    else {
      resolved.group_name = new std_msgs.msg.String()
    }

    if (msg.poi_names !== undefined) {
      resolved.poi_names = new Array(msg.poi_names.length);
      for (let i = 0; i < resolved.poi_names.length; ++i) {
        resolved.poi_names[i] = std_msgs.msg.String.Resolve(msg.poi_names[i]);
      }
    }
    else {
      resolved.poi_names = []
    }

    return resolved;
    }
};

module.exports = POIGroup;
