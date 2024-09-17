// Auto-generated. Do not edit!

// (in-package pal_device_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LedGroup = require('../msg/LedGroup.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class TimedFadeEffectRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leds = null;
      this.firstColor = null;
      this.secondColor = null;
      this.colorChangeDuration = null;
      this.reverseFade = null;
      this.effectDuration = null;
      this.priority = null;
    }
    else {
      if (initObj.hasOwnProperty('leds')) {
        this.leds = initObj.leds
      }
      else {
        this.leds = new LedGroup();
      }
      if (initObj.hasOwnProperty('firstColor')) {
        this.firstColor = initObj.firstColor
      }
      else {
        this.firstColor = new std_msgs.msg.ColorRGBA();
      }
      if (initObj.hasOwnProperty('secondColor')) {
        this.secondColor = initObj.secondColor
      }
      else {
        this.secondColor = new std_msgs.msg.ColorRGBA();
      }
      if (initObj.hasOwnProperty('colorChangeDuration')) {
        this.colorChangeDuration = initObj.colorChangeDuration
      }
      else {
        this.colorChangeDuration = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('reverseFade')) {
        this.reverseFade = initObj.reverseFade
      }
      else {
        this.reverseFade = false;
      }
      if (initObj.hasOwnProperty('effectDuration')) {
        this.effectDuration = initObj.effectDuration
      }
      else {
        this.effectDuration = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimedFadeEffectRequest
    // Serialize message field [leds]
    bufferOffset = LedGroup.serialize(obj.leds, buffer, bufferOffset);
    // Serialize message field [firstColor]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.firstColor, buffer, bufferOffset);
    // Serialize message field [secondColor]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.secondColor, buffer, bufferOffset);
    // Serialize message field [colorChangeDuration]
    bufferOffset = _serializer.duration(obj.colorChangeDuration, buffer, bufferOffset);
    // Serialize message field [reverseFade]
    bufferOffset = _serializer.bool(obj.reverseFade, buffer, bufferOffset);
    // Serialize message field [effectDuration]
    bufferOffset = _serializer.duration(obj.effectDuration, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.uint8(obj.priority, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimedFadeEffectRequest
    let len;
    let data = new TimedFadeEffectRequest(null);
    // Deserialize message field [leds]
    data.leds = LedGroup.deserialize(buffer, bufferOffset);
    // Deserialize message field [firstColor]
    data.firstColor = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [secondColor]
    data.secondColor = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [colorChangeDuration]
    data.colorChangeDuration = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [reverseFade]
    data.reverseFade = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [effectDuration]
    data.effectDuration = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 54;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_device_msgs/TimedFadeEffectRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b26fa459195deaf5bbcf5309bfe3b62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Sets led fade effect. Displays firstColor during firstColorDuration time, and then secondColor during secondColorDuration time with a fade between them
    
    LedGroup leds
    
    # RGBA of color, transparency is not available in leds, so alpha will be ignored
    std_msgs/ColorRGBA firstColor
    std_msgs/ColorRGBA secondColor
    
    #Duration of the transition from one color to the other
    duration colorChangeDuration
    
    #Perform a fade when going from secondColor to firstColor
    bool reverseFade
    
    #Duration of the effect, when the time is over the previous effect will be restored. 0 will make it display forever
    duration effectDuration
    
    #priority of the effect, 0 is no priority, 255 is max priority
    uint8 priority
    
    
    ================================================================================
    MSG: pal_device_msgs/LedGroup
    byte LEFT_EAR = 1
    byte RIGHT_EAR = 2
    
    #OR-mask of the selected leds
    uint32 ledMask
    
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
    const resolved = new TimedFadeEffectRequest(null);
    if (msg.leds !== undefined) {
      resolved.leds = LedGroup.Resolve(msg.leds)
    }
    else {
      resolved.leds = new LedGroup()
    }

    if (msg.firstColor !== undefined) {
      resolved.firstColor = std_msgs.msg.ColorRGBA.Resolve(msg.firstColor)
    }
    else {
      resolved.firstColor = new std_msgs.msg.ColorRGBA()
    }

    if (msg.secondColor !== undefined) {
      resolved.secondColor = std_msgs.msg.ColorRGBA.Resolve(msg.secondColor)
    }
    else {
      resolved.secondColor = new std_msgs.msg.ColorRGBA()
    }

    if (msg.colorChangeDuration !== undefined) {
      resolved.colorChangeDuration = msg.colorChangeDuration;
    }
    else {
      resolved.colorChangeDuration = {secs: 0, nsecs: 0}
    }

    if (msg.reverseFade !== undefined) {
      resolved.reverseFade = msg.reverseFade;
    }
    else {
      resolved.reverseFade = false
    }

    if (msg.effectDuration !== undefined) {
      resolved.effectDuration = msg.effectDuration;
    }
    else {
      resolved.effectDuration = {secs: 0, nsecs: 0}
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    return resolved;
    }
};

class TimedFadeEffectResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.effectId = null;
    }
    else {
      if (initObj.hasOwnProperty('effectId')) {
        this.effectId = initObj.effectId
      }
      else {
        this.effectId = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimedFadeEffectResponse
    // Serialize message field [effectId]
    bufferOffset = _serializer.uint32(obj.effectId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimedFadeEffectResponse
    let len;
    let data = new TimedFadeEffectResponse(null);
    // Deserialize message field [effectId]
    data.effectId = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_device_msgs/TimedFadeEffectResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6602e24c29b84632fa113b15b20645d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Id of the effect, used to cancel an effect
    uint32 effectId
    
    # True if no errors
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimedFadeEffectResponse(null);
    if (msg.effectId !== undefined) {
      resolved.effectId = msg.effectId;
    }
    else {
      resolved.effectId = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: TimedFadeEffectRequest,
  Response: TimedFadeEffectResponse,
  md5sum() { return '1603cab1f4c5a65749eacb96def5fe41'; },
  datatype() { return 'pal_device_msgs/TimedFadeEffect'; }
};
