// Auto-generated. Do not edit!

// (in-package pal_interaction_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let InputArgument = require('./InputArgument.js');

//-----------------------------------------------------------

class Input {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.args = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = '';
      }
      if (initObj.hasOwnProperty('args')) {
        this.args = initObj.args
      }
      else {
        this.args = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Input
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    // Serialize message field [args]
    // Serialize the length for message field [args]
    bufferOffset = _serializer.uint32(obj.args.length, buffer, bufferOffset);
    obj.args.forEach((val) => {
      bufferOffset = InputArgument.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Input
    let len;
    let data = new Input(null);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [args]
    // Deserialize array length for message field [args]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.args = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.args[i] = InputArgument.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.action);
    object.args.forEach((val) => {
      length += InputArgument.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/Input';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c45da4349e5b4eb0f54025571ad69bd7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #action to perform
    string INPUT_ACCEPT = INPUT_ACCEPT
    string INPUT_REJECT = INPUT_REJECT
    string INPUT_CANCEL = INPUT_CANCEL
    
    # Deprecated in favor of the INPUT_* above. Will be removed in a future message
    string OK = ok
    string YES = yes
    string NO = no
    string CANCEL = cancel
    string ABORT = abort
    
    # Can be any of the above, and additionally any custom action you want
    string action
    
    InputArgument[] args
    
    ================================================================================
    MSG: pal_interaction_msgs/InputArgument
    string key
    string value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Input(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = ''
    }

    if (msg.args !== undefined) {
      resolved.args = new Array(msg.args.length);
      for (let i = 0; i < resolved.args.length; ++i) {
        resolved.args[i] = InputArgument.Resolve(msg.args[i]);
      }
    }
    else {
      resolved.args = []
    }

    return resolved;
    }
};

// Constants for message
Input.Constants = {
  INPUT_ACCEPT: 'INPUT_ACCEPT',
  INPUT_REJECT: 'INPUT_REJECT',
  INPUT_CANCEL: 'INPUT_CANCEL',
  OK: 'ok',
  YES: 'yes',
  NO: 'no',
  CANCEL: 'cancel',
  ABORT: 'abort',
}

module.exports = Input;
