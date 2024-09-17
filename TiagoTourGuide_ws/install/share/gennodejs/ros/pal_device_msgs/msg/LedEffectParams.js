// Auto-generated. Do not edit!

// (in-package pal_device_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LedFixedColorParams = require('./LedFixedColorParams.js');
let LedRainbowParams = require('./LedRainbowParams.js');
let LedFadeParams = require('./LedFadeParams.js');
let LedBlinkParams = require('./LedBlinkParams.js');
let LedProgressParams = require('./LedProgressParams.js');
let LedFlowParams = require('./LedFlowParams.js');
let LedPreProgrammedParams = require('./LedPreProgrammedParams.js');
let LedEffectViaTopicParams = require('./LedEffectViaTopicParams.js');
let LedDataArrayParams = require('./LedDataArrayParams.js');

//-----------------------------------------------------------

class LedEffectParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.effectType = null;
      this.fixed_color = null;
      this.rainbow = null;
      this.fade = null;
      this.blink = null;
      this.progress = null;
      this.flow = null;
      this.preprogrammed = null;
      this.effect_via_topic = null;
      this.data_array = null;
    }
    else {
      if (initObj.hasOwnProperty('effectType')) {
        this.effectType = initObj.effectType
      }
      else {
        this.effectType = 0;
      }
      if (initObj.hasOwnProperty('fixed_color')) {
        this.fixed_color = initObj.fixed_color
      }
      else {
        this.fixed_color = new LedFixedColorParams();
      }
      if (initObj.hasOwnProperty('rainbow')) {
        this.rainbow = initObj.rainbow
      }
      else {
        this.rainbow = new LedRainbowParams();
      }
      if (initObj.hasOwnProperty('fade')) {
        this.fade = initObj.fade
      }
      else {
        this.fade = new LedFadeParams();
      }
      if (initObj.hasOwnProperty('blink')) {
        this.blink = initObj.blink
      }
      else {
        this.blink = new LedBlinkParams();
      }
      if (initObj.hasOwnProperty('progress')) {
        this.progress = initObj.progress
      }
      else {
        this.progress = new LedProgressParams();
      }
      if (initObj.hasOwnProperty('flow')) {
        this.flow = initObj.flow
      }
      else {
        this.flow = new LedFlowParams();
      }
      if (initObj.hasOwnProperty('preprogrammed')) {
        this.preprogrammed = initObj.preprogrammed
      }
      else {
        this.preprogrammed = new LedPreProgrammedParams();
      }
      if (initObj.hasOwnProperty('effect_via_topic')) {
        this.effect_via_topic = initObj.effect_via_topic
      }
      else {
        this.effect_via_topic = new LedEffectViaTopicParams();
      }
      if (initObj.hasOwnProperty('data_array')) {
        this.data_array = initObj.data_array
      }
      else {
        this.data_array = new LedDataArrayParams();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedEffectParams
    // Serialize message field [effectType]
    bufferOffset = _serializer.uint8(obj.effectType, buffer, bufferOffset);
    // Serialize message field [fixed_color]
    bufferOffset = LedFixedColorParams.serialize(obj.fixed_color, buffer, bufferOffset);
    // Serialize message field [rainbow]
    bufferOffset = LedRainbowParams.serialize(obj.rainbow, buffer, bufferOffset);
    // Serialize message field [fade]
    bufferOffset = LedFadeParams.serialize(obj.fade, buffer, bufferOffset);
    // Serialize message field [blink]
    bufferOffset = LedBlinkParams.serialize(obj.blink, buffer, bufferOffset);
    // Serialize message field [progress]
    bufferOffset = LedProgressParams.serialize(obj.progress, buffer, bufferOffset);
    // Serialize message field [flow]
    bufferOffset = LedFlowParams.serialize(obj.flow, buffer, bufferOffset);
    // Serialize message field [preprogrammed]
    bufferOffset = LedPreProgrammedParams.serialize(obj.preprogrammed, buffer, bufferOffset);
    // Serialize message field [effect_via_topic]
    bufferOffset = LedEffectViaTopicParams.serialize(obj.effect_via_topic, buffer, bufferOffset);
    // Serialize message field [data_array]
    bufferOffset = LedDataArrayParams.serialize(obj.data_array, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedEffectParams
    let len;
    let data = new LedEffectParams(null);
    // Deserialize message field [effectType]
    data.effectType = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fixed_color]
    data.fixed_color = LedFixedColorParams.deserialize(buffer, bufferOffset);
    // Deserialize message field [rainbow]
    data.rainbow = LedRainbowParams.deserialize(buffer, bufferOffset);
    // Deserialize message field [fade]
    data.fade = LedFadeParams.deserialize(buffer, bufferOffset);
    // Deserialize message field [blink]
    data.blink = LedBlinkParams.deserialize(buffer, bufferOffset);
    // Deserialize message field [progress]
    data.progress = LedProgressParams.deserialize(buffer, bufferOffset);
    // Deserialize message field [flow]
    data.flow = LedFlowParams.deserialize(buffer, bufferOffset);
    // Deserialize message field [preprogrammed]
    data.preprogrammed = LedPreProgrammedParams.deserialize(buffer, bufferOffset);
    // Deserialize message field [effect_via_topic]
    data.effect_via_topic = LedEffectViaTopicParams.deserialize(buffer, bufferOffset);
    // Deserialize message field [data_array]
    data.data_array = LedDataArrayParams.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += LedEffectViaTopicParams.getMessageSize(object.effect_via_topic);
    length += LedDataArrayParams.getMessageSize(object.data_array);
    return length + 195;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_device_msgs/LedEffectParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf78e4edf6ae7c6ce024d091a1a3c19a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FIXED_COLOR=0
    uint8 RAINBOW=1
    uint8 FADE=2
    uint8 BLINK=3
    uint8 PROGRESS=4
    uint8 FLOW=5
    uint8 PREPROGRAMMED_EFFECT=6
    uint8 EFFECT_VIA_TOPIC=7
    uint8 DATA_ARRAY=8
    
    uint8 effectType
    
    # RGBA of color, alpha will be used as intensity if supported by the led
    pal_device_msgs/LedFixedColorParams fixed_color
    pal_device_msgs/LedRainbowParams rainbow
    pal_device_msgs/LedFadeParams fade
    pal_device_msgs/LedBlinkParams blink
    pal_device_msgs/LedProgressParams progress
    pal_device_msgs/LedFlowParams flow
    #Below are device specific, avoid them if you can
    pal_device_msgs/LedPreProgrammedParams preprogrammed
    pal_device_msgs/LedEffectViaTopicParams effect_via_topic
    pal_device_msgs/LedDataArrayParams data_array
    
    ================================================================================
    MSG: pal_device_msgs/LedFixedColorParams
    # RGBA of color, alpha will be used as intensity if supported by the led
    std_msgs/ColorRGBA color
    
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    ================================================================================
    MSG: pal_device_msgs/LedRainbowParams
    # Time to perform rainbow
    duration transition_duration
    
    ================================================================================
    MSG: pal_device_msgs/LedFadeParams
    # RGBA of color, alpha will be used as intensity if supported by the led
    std_msgs/ColorRGBA first_color
    std_msgs/ColorRGBA second_color
    
    #Duration of the transition from one color to the other
    duration transition_duration
    
    #Perform a fade when going from secondColor to firstColor
    bool reverse_fade
    
    
    ================================================================================
    MSG: pal_device_msgs/LedBlinkParams
    # RGBA of color, alpha will be used as intensity if supported by the led
    std_msgs/ColorRGBA first_color
    std_msgs/ColorRGBA second_color
    
    duration first_color_duration
    duration second_color_duration
    
    
    ================================================================================
    MSG: pal_device_msgs/LedProgressParams
    # RGBA of color, alpha will be used as intensity if supported by the led
    std_msgs/ColorRGBA first_color
    std_msgs/ColorRGBA second_color
    
    #Percentage of pixels painted with the first color
    float32 percentage
    #Offset to begin painting the first color
    float32 led_offset 
    
    
    ================================================================================
    MSG: pal_device_msgs/LedFlowParams
    # RGBA of color, alpha will be used as intensity if supported by the led
    std_msgs/ColorRGBA first_color
    std_msgs/ColorRGBA second_color
    
    # Percentage of pixels painted with the first color
    float32 percentage
    # Flow velocity
    float32 velocity
    
    
    ================================================================================
    MSG: pal_device_msgs/LedPreProgrammedParams
    #Id of pre-programmed effect, most likely device specific
    uint8 preprogrammed_id
    
    ================================================================================
    MSG: pal_device_msgs/LedEffectViaTopicParams
    #Topic name, must be of type pal_device_msgs/LedDataArray
    string topic_name
    
    ================================================================================
    MSG: pal_device_msgs/LedDataArrayParams
    #Data of the effect, each element in the array represents a led, 
    #length should match device led count
    #For devices with no RGB option, just the alpha channel will be used
    std_msgs/ColorRGBA[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedEffectParams(null);
    if (msg.effectType !== undefined) {
      resolved.effectType = msg.effectType;
    }
    else {
      resolved.effectType = 0
    }

    if (msg.fixed_color !== undefined) {
      resolved.fixed_color = LedFixedColorParams.Resolve(msg.fixed_color)
    }
    else {
      resolved.fixed_color = new LedFixedColorParams()
    }

    if (msg.rainbow !== undefined) {
      resolved.rainbow = LedRainbowParams.Resolve(msg.rainbow)
    }
    else {
      resolved.rainbow = new LedRainbowParams()
    }

    if (msg.fade !== undefined) {
      resolved.fade = LedFadeParams.Resolve(msg.fade)
    }
    else {
      resolved.fade = new LedFadeParams()
    }

    if (msg.blink !== undefined) {
      resolved.blink = LedBlinkParams.Resolve(msg.blink)
    }
    else {
      resolved.blink = new LedBlinkParams()
    }

    if (msg.progress !== undefined) {
      resolved.progress = LedProgressParams.Resolve(msg.progress)
    }
    else {
      resolved.progress = new LedProgressParams()
    }

    if (msg.flow !== undefined) {
      resolved.flow = LedFlowParams.Resolve(msg.flow)
    }
    else {
      resolved.flow = new LedFlowParams()
    }

    if (msg.preprogrammed !== undefined) {
      resolved.preprogrammed = LedPreProgrammedParams.Resolve(msg.preprogrammed)
    }
    else {
      resolved.preprogrammed = new LedPreProgrammedParams()
    }

    if (msg.effect_via_topic !== undefined) {
      resolved.effect_via_topic = LedEffectViaTopicParams.Resolve(msg.effect_via_topic)
    }
    else {
      resolved.effect_via_topic = new LedEffectViaTopicParams()
    }

    if (msg.data_array !== undefined) {
      resolved.data_array = LedDataArrayParams.Resolve(msg.data_array)
    }
    else {
      resolved.data_array = new LedDataArrayParams()
    }

    return resolved;
    }
};

// Constants for message
LedEffectParams.Constants = {
  FIXED_COLOR: 0,
  RAINBOW: 1,
  FADE: 2,
  BLINK: 3,
  PROGRESS: 4,
  FLOW: 5,
  PREPROGRAMMED_EFFECT: 6,
  EFFECT_VIA_TOPIC: 7,
  DATA_ARRAY: 8,
}

module.exports = LedEffectParams;
