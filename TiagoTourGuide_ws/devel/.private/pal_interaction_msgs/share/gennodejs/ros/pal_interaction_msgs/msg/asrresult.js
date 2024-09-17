// Auto-generated. Do not edit!

// (in-package pal_interaction_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let actiontag = require('./actiontag.js');

//-----------------------------------------------------------

class asrresult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.text = null;
      this.confidence = null;
      this.start = null;
      this.end = null;
      this.tags = null;
    }
    else {
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0;
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('tags')) {
        this.tags = initObj.tags
      }
      else {
        this.tags = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type asrresult
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.int8(obj.confidence, buffer, bufferOffset);
    // Serialize message field [start]
    bufferOffset = _serializer.time(obj.start, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = _serializer.time(obj.end, buffer, bufferOffset);
    // Serialize message field [tags]
    // Serialize the length for message field [tags]
    bufferOffset = _serializer.uint32(obj.tags.length, buffer, bufferOffset);
    obj.tags.forEach((val) => {
      bufferOffset = actiontag.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type asrresult
    let len;
    let data = new asrresult(null);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [tags]
    // Deserialize array length for message field [tags]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tags = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tags[i] = actiontag.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.text);
    object.tags.forEach((val) => {
      length += actiontag.getMessageSize(val);
    });
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/asrresult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a6ebae90936a20cef967166ff7e96f64';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Message that containes the recognized utterance.
    ## Confidence values
    int8 CONFIDENCE_UNDEFINED = -1
    int8 CONFIDENCE_POOR = 1
    int8 CONFIDENCE_LOW  = 2
    int8 CONFIDENCE_GOOD = 3
    int8 CONFIDENCE_MAX  = 4
    
    # ASR result messages used by RosRecognizerServer
    
    # text recognized
    string text
    
    # confidence with values from POOR to MAX
    int8 confidence
    
    # start and end of the recognizer uterance.
    time start
    time end
    
    # list of recognized tags
    # key value pairs of strings extracted from the text
    # given the action tags placed in the grammar.
    actiontag[] tags
    
    ================================================================================
    MSG: pal_interaction_msgs/actiontag
    # Action tag contaings the key/value information genertated by parsing the recognised text with a JSGF grammar 
    
    string key
    string value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new asrresult(null);
    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0
    }

    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = {secs: 0, nsecs: 0}
    }

    if (msg.end !== undefined) {
      resolved.end = msg.end;
    }
    else {
      resolved.end = {secs: 0, nsecs: 0}
    }

    if (msg.tags !== undefined) {
      resolved.tags = new Array(msg.tags.length);
      for (let i = 0; i < resolved.tags.length; ++i) {
        resolved.tags[i] = actiontag.Resolve(msg.tags[i]);
      }
    }
    else {
      resolved.tags = []
    }

    return resolved;
    }
};

// Constants for message
asrresult.Constants = {
  CONFIDENCE_UNDEFINED: -1,
  CONFIDENCE_POOR: 1,
  CONFIDENCE_LOW: 2,
  CONFIDENCE_GOOD: 3,
  CONFIDENCE_MAX: 4,
}

module.exports = asrresult;
