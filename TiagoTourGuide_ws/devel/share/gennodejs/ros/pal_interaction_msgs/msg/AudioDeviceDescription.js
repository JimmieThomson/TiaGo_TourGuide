// Auto-generated. Do not edit!

// (in-package pal_interaction_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AudioDeviceDescription {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.device_name = null;
      this.sample_rate = null;
      this.sample_size = null;
      this.format = null;
      this.buffer_size = null;
      this.number_of_channels = null;
    }
    else {
      if (initObj.hasOwnProperty('device_name')) {
        this.device_name = initObj.device_name
      }
      else {
        this.device_name = '';
      }
      if (initObj.hasOwnProperty('sample_rate')) {
        this.sample_rate = initObj.sample_rate
      }
      else {
        this.sample_rate = 0;
      }
      if (initObj.hasOwnProperty('sample_size')) {
        this.sample_size = initObj.sample_size
      }
      else {
        this.sample_size = 0;
      }
      if (initObj.hasOwnProperty('format')) {
        this.format = initObj.format
      }
      else {
        this.format = 0;
      }
      if (initObj.hasOwnProperty('buffer_size')) {
        this.buffer_size = initObj.buffer_size
      }
      else {
        this.buffer_size = 0;
      }
      if (initObj.hasOwnProperty('number_of_channels')) {
        this.number_of_channels = initObj.number_of_channels
      }
      else {
        this.number_of_channels = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AudioDeviceDescription
    // Serialize message field [device_name]
    bufferOffset = _serializer.string(obj.device_name, buffer, bufferOffset);
    // Serialize message field [sample_rate]
    bufferOffset = _serializer.uint32(obj.sample_rate, buffer, bufferOffset);
    // Serialize message field [sample_size]
    bufferOffset = _serializer.int8(obj.sample_size, buffer, bufferOffset);
    // Serialize message field [format]
    bufferOffset = _serializer.int8(obj.format, buffer, bufferOffset);
    // Serialize message field [buffer_size]
    bufferOffset = _serializer.uint16(obj.buffer_size, buffer, bufferOffset);
    // Serialize message field [number_of_channels]
    bufferOffset = _serializer.int8(obj.number_of_channels, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AudioDeviceDescription
    let len;
    let data = new AudioDeviceDescription(null);
    // Deserialize message field [device_name]
    data.device_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sample_rate]
    data.sample_rate = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sample_size]
    data.sample_size = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [format]
    data.format = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [buffer_size]
    data.buffer_size = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [number_of_channels]
    data.number_of_channels = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.device_name);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/AudioDeviceDescription';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e55171ed98aeb49e34453bc5efb47184';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new AudioDeviceDescription(null);
    if (msg.device_name !== undefined) {
      resolved.device_name = msg.device_name;
    }
    else {
      resolved.device_name = ''
    }

    if (msg.sample_rate !== undefined) {
      resolved.sample_rate = msg.sample_rate;
    }
    else {
      resolved.sample_rate = 0
    }

    if (msg.sample_size !== undefined) {
      resolved.sample_size = msg.sample_size;
    }
    else {
      resolved.sample_size = 0
    }

    if (msg.format !== undefined) {
      resolved.format = msg.format;
    }
    else {
      resolved.format = 0
    }

    if (msg.buffer_size !== undefined) {
      resolved.buffer_size = msg.buffer_size;
    }
    else {
      resolved.buffer_size = 0
    }

    if (msg.number_of_channels !== undefined) {
      resolved.number_of_channels = msg.number_of_channels;
    }
    else {
      resolved.number_of_channels = 0
    }

    return resolved;
    }
};

// Constants for message
AudioDeviceDescription.Constants = {
  SIGNED: 0,
  UNSIGNED: 1,
}

module.exports = AudioDeviceDescription;
