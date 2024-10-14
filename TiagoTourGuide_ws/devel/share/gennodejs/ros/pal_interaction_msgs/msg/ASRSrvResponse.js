// Auto-generated. Do not edit!

// (in-package pal_interaction_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ASRStatus = require('./ASRStatus.js');

//-----------------------------------------------------------

class ASRSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.error_msg = null;
      this.warn_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new ASRStatus();
      }
      if (initObj.hasOwnProperty('error_msg')) {
        this.error_msg = initObj.error_msg
      }
      else {
        this.error_msg = '';
      }
      if (initObj.hasOwnProperty('warn_msg')) {
        this.warn_msg = initObj.warn_msg
      }
      else {
        this.warn_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ASRSrvResponse
    // Serialize message field [status]
    bufferOffset = ASRStatus.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [error_msg]
    bufferOffset = _serializer.string(obj.error_msg, buffer, bufferOffset);
    // Serialize message field [warn_msg]
    bufferOffset = _serializer.string(obj.warn_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ASRSrvResponse
    let len;
    let data = new ASRSrvResponse(null);
    // Deserialize message field [status]
    data.status = ASRStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_msg]
    data.error_msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [warn_msg]
    data.warn_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ASRStatus.getMessageSize(object.status);
    length += _getByteLength(object.error_msg);
    length += _getByteLength(object.warn_msg);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/ASRSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae96a6a28fb96b873d0b448b3cf2c80c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The status of the ASR with additional error or warning information
    ASRStatus status
    string error_msg
    string warn_msg
    
    ================================================================================
    MSG: pal_interaction_msgs/ASRStatus
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
    const resolved = new ASRSrvResponse(null);
    if (msg.status !== undefined) {
      resolved.status = ASRStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new ASRStatus()
    }

    if (msg.error_msg !== undefined) {
      resolved.error_msg = msg.error_msg;
    }
    else {
      resolved.error_msg = ''
    }

    if (msg.warn_msg !== undefined) {
      resolved.warn_msg = msg.warn_msg;
    }
    else {
      resolved.warn_msg = ''
    }

    return resolved;
    }
};

module.exports = ASRSrvResponse;
