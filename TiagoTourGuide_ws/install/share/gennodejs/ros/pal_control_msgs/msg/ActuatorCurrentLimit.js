// Auto-generated. Do not edit!

// (in-package pal_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ActuatorCurrentLimit {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actuator_names = null;
      this.current_limits = null;
    }
    else {
      if (initObj.hasOwnProperty('actuator_names')) {
        this.actuator_names = initObj.actuator_names
      }
      else {
        this.actuator_names = [];
      }
      if (initObj.hasOwnProperty('current_limits')) {
        this.current_limits = initObj.current_limits
      }
      else {
        this.current_limits = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActuatorCurrentLimit
    // Serialize message field [actuator_names]
    bufferOffset = _arraySerializer.string(obj.actuator_names, buffer, bufferOffset, null);
    // Serialize message field [current_limits]
    bufferOffset = _arraySerializer.float64(obj.current_limits, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActuatorCurrentLimit
    let len;
    let data = new ActuatorCurrentLimit(null);
    // Deserialize message field [actuator_names]
    data.actuator_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [current_limits]
    data.current_limits = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.actuator_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.current_limits.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_control_msgs/ActuatorCurrentLimit';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '974a1b5c83bb8df5691c27dbd5b363bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Names of the actuators whose current limit is being set
    string[] actuator_names
    
    # Actuator current limits. Values belong to the [0, 1] interval, are
    # non-dimensional and represent the fraction of an actuator's maximum allowed
    # current, e.g., 0.5 would set an actuator's current limit to half its
    # maximum value.
    float64[] current_limits
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActuatorCurrentLimit(null);
    if (msg.actuator_names !== undefined) {
      resolved.actuator_names = msg.actuator_names;
    }
    else {
      resolved.actuator_names = []
    }

    if (msg.current_limits !== undefined) {
      resolved.current_limits = msg.current_limits;
    }
    else {
      resolved.current_limits = []
    }

    return resolved;
    }
};

module.exports = ActuatorCurrentLimit;
