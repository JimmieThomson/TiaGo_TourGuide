// Auto-generated. Do not edit!

// (in-package pal_interaction_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let I18nText = require('../msg/I18nText.js');
let TtsText = require('../msg/TtsText.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetSpeechDurationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.text = null;
      this.rawtext = null;
    }
    else {
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = new I18nText();
      }
      if (initObj.hasOwnProperty('rawtext')) {
        this.rawtext = initObj.rawtext
      }
      else {
        this.rawtext = new TtsText();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSpeechDurationRequest
    // Serialize message field [text]
    bufferOffset = I18nText.serialize(obj.text, buffer, bufferOffset);
    // Serialize message field [rawtext]
    bufferOffset = TtsText.serialize(obj.rawtext, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSpeechDurationRequest
    let len;
    let data = new GetSpeechDurationRequest(null);
    // Deserialize message field [text]
    data.text = I18nText.deserialize(buffer, bufferOffset);
    // Deserialize message field [rawtext]
    data.rawtext = TtsText.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += I18nText.getMessageSize(object.text);
    length += TtsText.getMessageSize(object.rawtext);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_interaction_msgs/GetSpeechDurationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a70a8e0c0fed08a7e75df37fef4c4d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Same logic as Tts.action goal
    # If text is specified with section and key, it will be used for computing the duration
    # otherwise rawtext will be used  (even if empty)
    I18nText text
    TtsText rawtext
    
    ================================================================================
    MSG: pal_interaction_msgs/I18nText
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
    
    
    ================================================================================
    MSG: pal_interaction_msgs/TtsText
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
    const resolved = new GetSpeechDurationRequest(null);
    if (msg.text !== undefined) {
      resolved.text = I18nText.Resolve(msg.text)
    }
    else {
      resolved.text = new I18nText()
    }

    if (msg.rawtext !== undefined) {
      resolved.rawtext = TtsText.Resolve(msg.rawtext)
    }
    else {
      resolved.rawtext = new TtsText()
    }

    return resolved;
    }
};

class GetSpeechDurationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
      this.words = null;
      this.word_durations = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = false;
      }
      if (initObj.hasOwnProperty('words')) {
        this.words = initObj.words
      }
      else {
        this.words = [];
      }
      if (initObj.hasOwnProperty('word_durations')) {
        this.word_durations = initObj.word_durations
      }
      else {
        this.word_durations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSpeechDurationResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    // Serialize message field [words]
    bufferOffset = _arraySerializer.string(obj.words, buffer, bufferOffset, null);
    // Serialize message field [word_durations]
    bufferOffset = _arraySerializer.duration(obj.word_durations, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSpeechDurationResponse
    let len;
    let data = new GetSpeechDurationResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [words]
    data.words = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [word_durations]
    data.word_durations = _arrayDeserializer.duration(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.words.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.word_durations.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_interaction_msgs/GetSpeechDurationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edc431670f4af519297f5c0254583cfb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ok
    string[] words
    duration[] word_durations
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSpeechDurationResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = false
    }

    if (msg.words !== undefined) {
      resolved.words = msg.words;
    }
    else {
      resolved.words = []
    }

    if (msg.word_durations !== undefined) {
      resolved.word_durations = msg.word_durations;
    }
    else {
      resolved.word_durations = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetSpeechDurationRequest,
  Response: GetSpeechDurationResponse,
  md5sum() { return 'd04aea620ba3493798f087eca950ddd3'; },
  datatype() { return 'pal_interaction_msgs/GetSpeechDuration'; }
};
