// Auto-generated. Do not edit!

// (in-package pal_device_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LedPreProgrammedParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.preprogrammed_id = null;
    }
    else {
      if (initObj.hasOwnProperty('preprogrammed_id')) {
        this.preprogrammed_id = initObj.preprogrammed_id
      }
      else {
        this.preprogrammed_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedPreProgrammedParams
    // Serialize message field [preprogrammed_id]
    bufferOffset = _serializer.uint8(obj.preprogrammed_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedPreProgrammedParams
    let len;
    let data = new LedPreProgrammedParams(null);
    // Deserialize message field [preprogrammed_id]
    data.preprogrammed_id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_device_msgs/LedPreProgrammedParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '269ccb5728503bb2fd4261e5b289d3c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Id of pre-programmed effect, most likely device specific
    uint8 preprogrammed_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedPreProgrammedParams(null);
    if (msg.preprogrammed_id !== undefined) {
      resolved.preprogrammed_id = msg.preprogrammed_id;
    }
    else {
      resolved.preprogrammed_id = 0
    }

    return resolved;
    }
};

module.exports = LedPreProgrammedParams;
