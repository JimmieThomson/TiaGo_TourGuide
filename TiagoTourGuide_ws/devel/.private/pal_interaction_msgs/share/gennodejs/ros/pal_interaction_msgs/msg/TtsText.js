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

class TtsText {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.text = null;
      this.lang_id = null;
    }
    else {
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
      if (initObj.hasOwnProperty('lang_id')) {
        this.lang_id = initObj.lang_id
      }
      else {
        this.lang_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TtsText
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    // Serialize message field [lang_id]
    bufferOffset = _serializer.string(obj.lang_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TtsText
    let len;
    let data = new TtsText(null);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lang_id]
    data.lang_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.text);
    length += _getByteLength(object.lang_id);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/TtsText';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a42001bb3ccbf1a914b618f34087dc37';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # this message is to specify 
    # raw text to the TTS server. 
    
    string text
    
    # Language id in RFC 3066 format
    # This field is mandatory
    string lang_id
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TtsText(null);
    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    if (msg.lang_id !== undefined) {
      resolved.lang_id = msg.lang_id;
    }
    else {
      resolved.lang_id = ''
    }

    return resolved;
    }
};

module.exports = TtsText;
