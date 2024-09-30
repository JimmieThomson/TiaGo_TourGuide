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

class TTSstate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isSpeaking = null;
      this.text = null;
    }
    else {
      if (initObj.hasOwnProperty('isSpeaking')) {
        this.isSpeaking = initObj.isSpeaking
      }
      else {
        this.isSpeaking = false;
      }
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TTSstate
    // Serialize message field [isSpeaking]
    bufferOffset = _serializer.bool(obj.isSpeaking, buffer, bufferOffset);
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TTSstate
    let len;
    let data = new TTSstate(null);
    // Deserialize message field [isSpeaking]
    data.isSpeaking = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.text);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/TTSstate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3b6b5f485986278e907e9bb4f658e3d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isSpeaking
    string text
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TTSstate(null);
    if (msg.isSpeaking !== undefined) {
      resolved.isSpeaking = msg.isSpeaking;
    }
    else {
      resolved.isSpeaking = false
    }

    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    return resolved;
    }
};

module.exports = TTSstate;
