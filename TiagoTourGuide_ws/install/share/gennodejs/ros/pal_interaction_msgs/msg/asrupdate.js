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

class asrupdate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.language = null;
      this.enable_grammar = null;
      this.disable_grammar = null;
      this.acousticenv = null;
      this.active = null;
    }
    else {
      if (initObj.hasOwnProperty('language')) {
        this.language = initObj.language
      }
      else {
        this.language = '';
      }
      if (initObj.hasOwnProperty('enable_grammar')) {
        this.enable_grammar = initObj.enable_grammar
      }
      else {
        this.enable_grammar = '';
      }
      if (initObj.hasOwnProperty('disable_grammar')) {
        this.disable_grammar = initObj.disable_grammar
      }
      else {
        this.disable_grammar = '';
      }
      if (initObj.hasOwnProperty('acousticenv')) {
        this.acousticenv = initObj.acousticenv
      }
      else {
        this.acousticenv = '';
      }
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type asrupdate
    // Serialize message field [language]
    bufferOffset = _serializer.string(obj.language, buffer, bufferOffset);
    // Serialize message field [enable_grammar]
    bufferOffset = _serializer.string(obj.enable_grammar, buffer, bufferOffset);
    // Serialize message field [disable_grammar]
    bufferOffset = _serializer.string(obj.disable_grammar, buffer, bufferOffset);
    // Serialize message field [acousticenv]
    bufferOffset = _serializer.string(obj.acousticenv, buffer, bufferOffset);
    // Serialize message field [active]
    bufferOffset = _serializer.bool(obj.active, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type asrupdate
    let len;
    let data = new asrupdate(null);
    // Deserialize message field [language]
    data.language = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [enable_grammar]
    data.enable_grammar = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [disable_grammar]
    data.disable_grammar = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [acousticenv]
    data.acousticenv = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [active]
    data.active = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.language);
    length += _getByteLength(object.enable_grammar);
    length += _getByteLength(object.disable_grammar);
    length += _getByteLength(object.acousticenv);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/asrupdate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f28e753977d8fe335d6b968a649f1ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # V.1.0 of the ASR ROS API for the servie.
    # just has the language and grammar to enable, the acoustic models to be used,
    # and whether we want to activate or deactivate the recognizer.
    string language
    string enable_grammar
    string disable_grammar
    string acousticenv
    bool active
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new asrupdate(null);
    if (msg.language !== undefined) {
      resolved.language = msg.language;
    }
    else {
      resolved.language = ''
    }

    if (msg.enable_grammar !== undefined) {
      resolved.enable_grammar = msg.enable_grammar;
    }
    else {
      resolved.enable_grammar = ''
    }

    if (msg.disable_grammar !== undefined) {
      resolved.disable_grammar = msg.disable_grammar;
    }
    else {
      resolved.disable_grammar = ''
    }

    if (msg.acousticenv !== undefined) {
      resolved.acousticenv = msg.acousticenv;
    }
    else {
      resolved.acousticenv = ''
    }

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = false
    }

    return resolved;
    }
};

module.exports = asrupdate;
