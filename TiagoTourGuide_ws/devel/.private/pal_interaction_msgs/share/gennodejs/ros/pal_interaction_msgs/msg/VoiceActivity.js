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

class VoiceActivity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isSpeech = null;
    }
    else {
      if (initObj.hasOwnProperty('isSpeech')) {
        this.isSpeech = initObj.isSpeech
      }
      else {
        this.isSpeech = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VoiceActivity
    // Serialize message field [isSpeech]
    bufferOffset = _serializer.bool(obj.isSpeech, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VoiceActivity
    let len;
    let data = new VoiceActivity(null);
    // Deserialize message field [isSpeech]
    data.isSpeech = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/VoiceActivity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ec045a05170c3f88f25da9af745836f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isSpeech
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VoiceActivity(null);
    if (msg.isSpeech !== undefined) {
      resolved.isSpeech = msg.isSpeech;
    }
    else {
      resolved.isSpeech = false
    }

    return resolved;
    }
};

module.exports = VoiceActivity;
