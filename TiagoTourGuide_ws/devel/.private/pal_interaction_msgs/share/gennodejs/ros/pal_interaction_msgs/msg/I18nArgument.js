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

class I18nArgument {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.section = null;
      this.key = null;
      this.expanded = null;
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
      if (initObj.hasOwnProperty('expanded')) {
        this.expanded = initObj.expanded
      }
      else {
        this.expanded = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type I18nArgument
    // Serialize message field [section]
    bufferOffset = _serializer.string(obj.section, buffer, bufferOffset);
    // Serialize message field [key]
    bufferOffset = _serializer.string(obj.key, buffer, bufferOffset);
    // Serialize message field [expanded]
    bufferOffset = _serializer.string(obj.expanded, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type I18nArgument
    let len;
    let data = new I18nArgument(null);
    // Deserialize message field [section]
    data.section = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [key]
    data.key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [expanded]
    data.expanded = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.section);
    length += _getByteLength(object.key);
    length += _getByteLength(object.expanded);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/I18nArgument';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c584e5b757794e1616ca51692089746';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new I18nArgument(null);
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

    if (msg.expanded !== undefined) {
      resolved.expanded = msg.expanded;
    }
    else {
      resolved.expanded = ''
    }

    return resolved;
    }
};

module.exports = I18nArgument;
