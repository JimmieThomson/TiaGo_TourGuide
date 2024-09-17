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

class LedGroup {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ledMask = null;
    }
    else {
      if (initObj.hasOwnProperty('ledMask')) {
        this.ledMask = initObj.ledMask
      }
      else {
        this.ledMask = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedGroup
    // Serialize message field [ledMask]
    bufferOffset = _serializer.uint32(obj.ledMask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedGroup
    let len;
    let data = new LedGroup(null);
    // Deserialize message field [ledMask]
    data.ledMask = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_device_msgs/LedGroup';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a87b0156a2b27c0d0853663fb5884fe4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    byte LEFT_EAR = 1
    byte RIGHT_EAR = 2
    
    #OR-mask of the selected leds
    uint32 ledMask
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedGroup(null);
    if (msg.ledMask !== undefined) {
      resolved.ledMask = msg.ledMask;
    }
    else {
      resolved.ledMask = 0
    }

    return resolved;
    }
};

// Constants for message
LedGroup.Constants = {
  LEFT_EAR: 1,
  RIGHT_EAR: 2,
}

module.exports = LedGroup;
