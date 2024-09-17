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

class LedFadeParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.first_color = null;
      this.second_color = null;
      this.transition_duration = null;
      this.reverse_fade = null;
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
      if (initObj.hasOwnProperty('transition_duration')) {
        this.transition_duration = initObj.transition_duration
      }
      else {
        this.transition_duration = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('reverse_fade')) {
        this.reverse_fade = initObj.reverse_fade
      }
      else {
        this.reverse_fade = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedFadeParams
    // Serialize message field [first_color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.first_color, buffer, bufferOffset);
    // Serialize message field [second_color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.second_color, buffer, bufferOffset);
    // Serialize message field [transition_duration]
    bufferOffset = _serializer.duration(obj.transition_duration, buffer, bufferOffset);
    // Serialize message field [reverse_fade]
    bufferOffset = _serializer.bool(obj.reverse_fade, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedFadeParams
    let len;
    let data = new LedFadeParams(null);
    // Deserialize message field [first_color]
    data.first_color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [second_color]
    data.second_color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [transition_duration]
    data.transition_duration = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [reverse_fade]
    data.reverse_fade = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_device_msgs/LedFadeParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '21c3c0f93882d55f24f14be673a6ceb6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RGBA of color, alpha will be used as intensity if supported by the led
    std_msgs/ColorRGBA first_color
    std_msgs/ColorRGBA second_color
    
    #Duration of the transition from one color to the other
    duration transition_duration
    
    #Perform a fade when going from secondColor to firstColor
    bool reverse_fade
    
    
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
    const resolved = new LedFadeParams(null);
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

    if (msg.transition_duration !== undefined) {
      resolved.transition_duration = msg.transition_duration;
    }
    else {
      resolved.transition_duration = {secs: 0, nsecs: 0}
    }

    if (msg.reverse_fade !== undefined) {
      resolved.reverse_fade = msg.reverse_fade;
    }
    else {
      resolved.reverse_fade = false
    }

    return resolved;
    }
};

module.exports = LedFadeParams;
