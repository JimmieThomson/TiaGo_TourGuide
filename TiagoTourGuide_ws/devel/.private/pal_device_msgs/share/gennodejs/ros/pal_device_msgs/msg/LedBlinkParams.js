// Auto-generated. Do not edit!

// (in-package pal_device_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LedBlinkParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.first_color = null;
      this.second_color = null;
      this.first_color_duration = null;
      this.second_color_duration = null;
    }
    else {
      if (initObj.hasOwnProperty('first_color')) {
        this.first_color = initObj.first_color
      }
      else {
        this.first_color = new std_msgs.msg.ColorRGBA();
      }
      if (initObj.hasOwnProperty('second_color')) {
        this.second_color = initObj.second_color
      }
      else {
        this.second_color = new std_msgs.msg.ColorRGBA();
      }
      if (initObj.hasOwnProperty('first_color_duration')) {
        this.first_color_duration = initObj.first_color_duration
      }
      else {
        this.first_color_duration = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('second_color_duration')) {
        this.second_color_duration = initObj.second_color_duration
      }
      else {
        this.second_color_duration = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedBlinkParams
    // Serialize message field [first_color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.first_color, buffer, bufferOffset);
    // Serialize message field [second_color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.second_color, buffer, bufferOffset);
    // Serialize message field [first_color_duration]
    bufferOffset = _serializer.duration(obj.first_color_duration, buffer, bufferOffset);
    // Serialize message field [second_color_duration]
    bufferOffset = _serializer.duration(obj.second_color_duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedBlinkParams
    let len;
    let data = new LedBlinkParams(null);
    // Deserialize message field [first_color]
    data.first_color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [second_color]
    data.second_color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [first_color_duration]
    data.first_color_duration = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [second_color_duration]
    data.second_color_duration = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_device_msgs/LedBlinkParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b26c0fa483854105ff61f62de102ca5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RGBA of color, alpha will be used as intensity if supported by the led
    std_msgs/ColorRGBA first_color
    std_msgs/ColorRGBA second_color
    
    duration first_color_duration
    duration second_color_duration
    
    
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedBlinkParams(null);
    if (msg.first_color !== undefined) {
      resolved.first_color = std_msgs.msg.ColorRGBA.Resolve(msg.first_color)
    }
    else {
      resolved.first_color = new std_msgs.msg.ColorRGBA()
    }

    if (msg.second_color !== undefined) {
      resolved.second_color = std_msgs.msg.ColorRGBA.Resolve(msg.second_color)
    }
    else {
      resolved.second_color = new std_msgs.msg.ColorRGBA()
    }

    if (msg.first_color_duration !== undefined) {
      resolved.first_color_duration = msg.first_color_duration;
    }
    else {
      resolved.first_color_duration = {secs: 0, nsecs: 0}
    }

    if (msg.second_color_duration !== undefined) {
      resolved.second_color_duration = msg.second_color_duration;
    }
    else {
      resolved.second_color_duration = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = LedBlinkParams;
