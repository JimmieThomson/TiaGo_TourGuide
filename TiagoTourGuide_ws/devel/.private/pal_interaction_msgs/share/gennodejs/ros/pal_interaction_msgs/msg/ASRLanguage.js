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

class ASRLanguage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.language = null;
    }
    else {
      if (initObj.hasOwnProperty('language')) {
        this.language = initObj.language
      }
      else {
        this.language = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ASRLanguage
    // Serialize message field [language]
    bufferOffset = _serializer.string(obj.language, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ASRLanguage
    let len;
    let data = new ASRLanguage(null);
    // Deserialize message field [language]
    data.language = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.language);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/ASRLanguage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9264c5bffd188939e827e658af68a0d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is to indicate the language
    # that has to be set in the speech recognizer
    string language
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ASRLanguage(null);
    if (msg.language !== undefined) {
      resolved.language = msg.language;
    }
    else {
      resolved.language = ''
    }

    return resolved;
    }
};

module.exports = ASRLanguage;
