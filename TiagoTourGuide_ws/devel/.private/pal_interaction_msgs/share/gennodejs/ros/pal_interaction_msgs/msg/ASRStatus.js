// Auto-generated. Do not edit!

// (in-package pal_interaction_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AudioDeviceDescription = require('./AudioDeviceDescription.js');

//-----------------------------------------------------------

class ASRStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.active = null;
      this.language = null;
      this.enabled_grammar = null;
      this.acoustic_env = null;
      this.device = null;
    }
    else {
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = false;
      }
      if (initObj.hasOwnProperty('language')) {
        this.language = initObj.language
      }
      else {
        this.language = '';
      }
      if (initObj.hasOwnProperty('enabled_grammar')) {
        this.enabled_grammar = initObj.enabled_grammar
      }
      else {
        this.enabled_grammar = '';
      }
      if (initObj.hasOwnProperty('acoustic_env')) {
        this.acoustic_env = initObj.acoustic_env
      }
      else {
        this.acoustic_env = '';
      }
      if (initObj.hasOwnProperty('device')) {
        this.device = initObj.device
      }
      else {
        this.device = new AudioDeviceDescription();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ASRStatus
    // Serialize message field [active]
    bufferOffset = _serializer.bool(obj.active, buffer, bufferOffset);
    // Serialize message field [language]
    bufferOffset = _serializer.string(obj.language, buffer, bufferOffset);
    // Serialize message field [enabled_grammar]
    bufferOffset = _serializer.string(obj.enabled_grammar, buffer, bufferOffset);
    // Serialize message field [acoustic_env]
    bufferOffset = _serializer.string(obj.acoustic_env, buffer, bufferOffset);
    // Serialize message field [device]
    bufferOffset = AudioDeviceDescription.serialize(obj.device, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ASRStatus
    let len;
    let data = new ASRStatus(null);
    // Deserialize message field [active]
    data.active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [language]
    data.language = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [enabled_grammar]
    data.enabled_grammar = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [acoustic_env]
    data.acoustic_env = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [device]
    data.device = AudioDeviceDescription.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.language);
    length += _getByteLength(object.enabled_grammar);
    length += _getByteLength(object.acoustic_env);
    length += AudioDeviceDescription.getMessageSize(object.device);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/ASRStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b05e32d6465a052804ec3f6d853dbe61';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The status of the ASR
    # if it is active then active=true
    bool active
    
    # the current language 
    string language
    
    # the current enabled grammar
    string enabled_grammar
    
    # the current acoustic models
    string acoustic_env
    
    # A description of the audio device the 
    # recognizer is taking audio from.
    AudioDeviceDescription device
    
    ================================================================================
    MSG: pal_interaction_msgs/AudioDeviceDescription
    # Description of an audio device.
    
    int8 SIGNED = 0
    int8 UNSIGNED = 1
    
    
    # name of the device (usually a portaudio name)
    string device_name
    
    # sample rate of the acquired audio signal
    uint32 sample_rate
    
    # sample size in bits
    int8 sample_size
    
    # format can be SIGNED or UNSIGNED
    int8 format
    
    # buffer size used to acquire data.
    uint16 buffer_size
    
    # number of recorded channels
    int8 number_of_channels
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ASRStatus(null);
    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = false
    }

    if (msg.language !== undefined) {
      resolved.language = msg.language;
    }
    else {
      resolved.language = ''
    }

    if (msg.enabled_grammar !== undefined) {
      resolved.enabled_grammar = msg.enabled_grammar;
    }
    else {
      resolved.enabled_grammar = ''
    }

    if (msg.acoustic_env !== undefined) {
      resolved.acoustic_env = msg.acoustic_env;
    }
    else {
      resolved.acoustic_env = ''
    }

    if (msg.device !== undefined) {
      resolved.device = AudioDeviceDescription.Resolve(msg.device)
    }
    else {
      resolved.device = new AudioDeviceDescription()
    }

    return resolved;
    }
};

module.exports = ASRStatus;
