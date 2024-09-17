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

class Emergency {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
      this.forward = null;
      this.backward = null;
      this.msgs = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = false;
      }
      if (initObj.hasOwnProperty('forward')) {
        this.forward = initObj.forward
      }
      else {
        this.forward = false;
      }
      if (initObj.hasOwnProperty('backward')) {
        this.backward = initObj.backward
      }
      else {
        this.backward = false;
      }
      if (initObj.hasOwnProperty('msgs')) {
        this.msgs = initObj.msgs
      }
      else {
        this.msgs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Emergency
    // Serialize message field [data]
    bufferOffset = _serializer.bool(obj.data, buffer, bufferOffset);
    // Serialize message field [forward]
    bufferOffset = _serializer.bool(obj.forward, buffer, bufferOffset);
    // Serialize message field [backward]
    bufferOffset = _serializer.bool(obj.backward, buffer, bufferOffset);
    // Serialize message field [msgs]
    // Serialize the length for message field [msgs]
    bufferOffset = _serializer.uint32(obj.msgs.length, buffer, bufferOffset);
    obj.msgs.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Emergency
    let len;
    let data = new Emergency(null);
    // Deserialize message field [data]
    data.data = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [forward]
    data.forward = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [backward]
    data.backward = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [msgs]
    // Deserialize array length for message field [msgs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.msgs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.msgs[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.msgs.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_navigation_msgs/Emergency';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a23e1ed551a213a5d03f1cf6db037717';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Emergency stop msg
    bool data
    bool forward
    bool backward
    std_msgs/String[] msgs
    
    
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
    const resolved = new Emergency(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = false
    }

    if (msg.forward !== undefined) {
      resolved.forward = msg.forward;
    }
    else {
      resolved.forward = false
    }

    if (msg.backward !== undefined) {
      resolved.backward = msg.backward;
    }
    else {
      resolved.backward = false
    }

    if (msg.msgs !== undefined) {
      resolved.msgs = new Array(msg.msgs.length);
      for (let i = 0; i < resolved.msgs.length; ++i) {
        resolved.msgs[i] = std_msgs.msg.String.Resolve(msg.msgs[i]);
      }
    }
    else {
      resolved.msgs = []
    }

    return resolved;
    }
};

module.exports = Emergency;
