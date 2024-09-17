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

class LedFlowParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.first_color = null;
      this.second_color = null;
      this.percentage = null;
      this.velocity = null;
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
      if (initObj.hasOwnProperty('percentage')) {
        this.percentage = initObj.percentage
      }
      else {
        this.percentage = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedFlowParams
    // Serialize message field [first_color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.first_color, buffer, bufferOffset);
    // Serialize message field [second_color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.second_color, buffer, bufferOffset);
    // Serialize message field [percentage]
    bufferOffset = _serializer.float32(obj.percentage, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float32(obj.velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedFlowParams
    let len;
    let data = new LedFlowParams(null);
    // Deserialize message field [first_color]
    data.first_color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [second_color]
    data.second_color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [percentage]
    data.percentage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_device_msgs/LedFlowParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '21979ceeb94ec6f60e9114651282150e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RGBA of color, alpha will be used as intensity if supported by the led
    std_msgs/ColorRGBA first_color
    std_msgs/ColorRGBA second_color
    
    # Percentage of pixels painted with the first color
    float32 percentage
    # Flow velocity
    float32 velocity
    
    
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
    const resolved = new LedFlowParams(null);
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

    if (msg.percentage !== undefined) {
      resolved.percentage = msg.percentage;
    }
    else {
      resolved.percentage = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    return resolved;
    }
};

module.exports = LedFlowParams;
