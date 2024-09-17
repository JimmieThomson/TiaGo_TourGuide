// Auto-generated. Do not edit!

// (in-package pal_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JointCurrent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joints = null;
      this.current_limit = null;
    }
    else {
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = '';
      }
      if (initObj.hasOwnProperty('current_limit')) {
        this.current_limit = initObj.current_limit
      }
      else {
        this.current_limit = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointCurrent
    // Serialize message field [joints]
    bufferOffset = _serializer.string(obj.joints, buffer, bufferOffset);
    // Serialize message field [current_limit]
    bufferOffset = _serializer.float32(obj.current_limit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointCurrent
    let len;
    let data = new JointCurrent(null);
    // Deserialize message field [joints]
    data.joints = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_limit]
    data.current_limit = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.joints);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_common_msgs/JointCurrent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa38356f1b4f7b710d0060415affb648';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Joints or group name of joints to activate or deactivate
    string joints
    
    # From 0.0 to 1.0 max current to aply to the joint
    float32 current_limit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointCurrent(null);
    if (msg.joints !== undefined) {
      resolved.joints = msg.joints;
    }
    else {
      resolved.joints = ''
    }

    if (msg.current_limit !== undefined) {
      resolved.current_limit = msg.current_limit;
    }
    else {
      resolved.current_limit = 0.0
    }

    return resolved;
    }
};

module.exports = JointCurrent;
