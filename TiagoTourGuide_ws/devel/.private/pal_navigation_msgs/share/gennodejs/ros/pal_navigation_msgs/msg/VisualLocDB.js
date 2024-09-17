// Auto-generated. Do not edit!

// (in-package pal_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VisualLocDB {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.documents = null;
      this.tree = null;
      this.weights = null;
    }
    else {
      if (initObj.hasOwnProperty('documents')) {
        this.documents = initObj.documents
      }
      else {
        this.documents = [];
      }
      if (initObj.hasOwnProperty('tree')) {
        this.tree = initObj.tree
      }
      else {
        this.tree = [];
      }
      if (initObj.hasOwnProperty('weights')) {
        this.weights = initObj.weights
      }
      else {
        this.weights = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisualLocDB
    // Serialize message field [documents]
    bufferOffset = _arraySerializer.uint8(obj.documents, buffer, bufferOffset, null);
    // Serialize message field [tree]
    bufferOffset = _arraySerializer.uint8(obj.tree, buffer, bufferOffset, null);
    // Serialize message field [weights]
    bufferOffset = _arraySerializer.uint8(obj.weights, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisualLocDB
    let len;
    let data = new VisualLocDB(null);
    // Deserialize message field [documents]
    data.documents = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [tree]
    data.tree = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [weights]
    data.weights = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.documents.length;
    length += object.tree.length;
    length += object.weights.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_navigation_msgs/VisualLocDB';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ecd1514e0345ae95252fcd0c3269725c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Contents of the 3 binary files that contain the visual localization DB
    
    uint8[] documents
    uint8[] tree
    uint8[] weights
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisualLocDB(null);
    if (msg.documents !== undefined) {
      resolved.documents = msg.documents;
    }
    else {
      resolved.documents = []
    }

    if (msg.tree !== undefined) {
      resolved.tree = msg.tree;
    }
    else {
      resolved.tree = []
    }

    if (msg.weights !== undefined) {
      resolved.weights = msg.weights;
    }
    else {
      resolved.weights = []
    }

    return resolved;
    }
};

module.exports = VisualLocDB;
