// Auto-generated. Do not edit!

// (in-package pal_interaction_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let I18nArgument = require('./I18nArgument.js');

//-----------------------------------------------------------

class I18nText {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.section = null;
      this.key = null;
      this.lang_id = null;
      this.arguments = null;
    }
    else {
      if (initObj.hasOwnProperty('section')) {
        this.section = initObj.section
      }
      else {
        this.section = '';
      }
      if (initObj.hasOwnProperty('key')) {
        this.key = initObj.key
      }
      else {
        this.key = '';
      }
      if (initObj.hasOwnProperty('lang_id')) {
        this.lang_id = initObj.lang_id
      }
      else {
        this.lang_id = '';
      }
      if (initObj.hasOwnProperty('arguments')) {
        this.arguments = initObj.arguments
      }
      else {
        this.arguments = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type I18nText
    // Serialize message field [section]
    bufferOffset = _serializer.string(obj.section, buffer, bufferOffset);
    // Serialize message field [key]
    bufferOffset = _serializer.string(obj.key, buffer, bufferOffset);
    // Serialize message field [lang_id]
    bufferOffset = _serializer.string(obj.lang_id, buffer, bufferOffset);
    // Serialize message field [arguments]
    // Serialize the length for message field [arguments]
    bufferOffset = _serializer.uint32(obj.arguments.length, buffer, bufferOffset);
    obj.arguments.forEach((val) => {
      bufferOffset = I18nArgument.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type I18nText
    let len;
    let data = new I18nText(null);
    // Deserialize message field [section]
    data.section = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [key]
    data.key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lang_id]
    data.lang_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [arguments]
    // Deserialize array length for message field [arguments]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.arguments = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.arguments[i] = I18nArgument.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.section);
    length += _getByteLength(object.key);
    length += _getByteLength(object.lang_id);
    object.arguments.forEach((val) => {
      length += I18nArgument.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/I18nText';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '855c0cd82eb6837b039ea45087975cc2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # section/key is used as in examples in the pal_tts_cfg pkg.
    string section
    string key
    
    # language id, must be speficied using RFC 3066
    string lang_id
    
    # arguments contain the values by which 
    # occurrences of '%s' will be replaced in the 
    # main text.
    # This only supports up to 2 arguments and no recursion.
    # However, recursion and more argumnents are
    # planned to be supported in the future.
    I18nArgument[] arguments
    
    ================================================================================
    MSG: pal_interaction_msgs/I18nArgument
    # section key, override the value in expanded.
    # Use expanded for text that do not need expansion.
    # Please note that expanded here will not be translated 
    # to any language.
    
    string section
    string key
    string expanded
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new I18nText(null);
    if (msg.section !== undefined) {
      resolved.section = msg.section;
    }
    else {
      resolved.section = ''
    }

    if (msg.key !== undefined) {
      resolved.key = msg.key;
    }
    else {
      resolved.key = ''
    }

    if (msg.lang_id !== undefined) {
      resolved.lang_id = msg.lang_id;
    }
    else {
      resolved.lang_id = ''
    }

    if (msg.arguments !== undefined) {
      resolved.arguments = new Array(msg.arguments.length);
      for (let i = 0; i < resolved.arguments.length; ++i) {
        resolved.arguments[i] = I18nArgument.Resolve(msg.arguments[i]);
      }
    }
    else {
      resolved.arguments = []
    }

    return resolved;
    }
};

module.exports = I18nText;
