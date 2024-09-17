// Auto-generated. Do not edit!

// (in-package pal_motion_model_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MotionModel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.heading_mean = null;
      this.heading_std_dev = null;
      this.linear_speed_mean = null;
      this.linear_speed_std_dev = null;
      this.angular_speed_mean = null;
      this.angular_speed_std_dev = null;
    }
    else {
      if (initObj.hasOwnProperty('heading_mean')) {
        this.heading_mean = initObj.heading_mean
      }
      else {
        this.heading_mean = 0.0;
      }
      if (initObj.hasOwnProperty('heading_std_dev')) {
        this.heading_std_dev = initObj.heading_std_dev
      }
      else {
        this.heading_std_dev = 0.0;
      }
      if (initObj.hasOwnProperty('linear_speed_mean')) {
        this.linear_speed_mean = initObj.linear_speed_mean
      }
      else {
        this.linear_speed_mean = 0.0;
      }
      if (initObj.hasOwnProperty('linear_speed_std_dev')) {
        this.linear_speed_std_dev = initObj.linear_speed_std_dev
      }
      else {
        this.linear_speed_std_dev = 0.0;
      }
      if (initObj.hasOwnProperty('angular_speed_mean')) {
        this.angular_speed_mean = initObj.angular_speed_mean
      }
      else {
        this.angular_speed_mean = 0.0;
      }
      if (initObj.hasOwnProperty('angular_speed_std_dev')) {
        this.angular_speed_std_dev = initObj.angular_speed_std_dev
      }
      else {
        this.angular_speed_std_dev = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotionModel
    // Serialize message field [heading_mean]
    bufferOffset = _serializer.float32(obj.heading_mean, buffer, bufferOffset);
    // Serialize message field [heading_std_dev]
    bufferOffset = _serializer.float32(obj.heading_std_dev, buffer, bufferOffset);
    // Serialize message field [linear_speed_mean]
    bufferOffset = _serializer.float32(obj.linear_speed_mean, buffer, bufferOffset);
    // Serialize message field [linear_speed_std_dev]
    bufferOffset = _serializer.float32(obj.linear_speed_std_dev, buffer, bufferOffset);
    // Serialize message field [angular_speed_mean]
    bufferOffset = _serializer.float32(obj.angular_speed_mean, buffer, bufferOffset);
    // Serialize message field [angular_speed_std_dev]
    bufferOffset = _serializer.float32(obj.angular_speed_std_dev, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotionModel
    let len;
    let data = new MotionModel(null);
    // Deserialize message field [heading_mean]
    data.heading_mean = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heading_std_dev]
    data.heading_std_dev = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [linear_speed_mean]
    data.linear_speed_mean = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [linear_speed_std_dev]
    data.linear_speed_std_dev = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_speed_mean]
    data.angular_speed_mean = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_speed_std_dev]
    data.angular_speed_std_dev = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_motion_model_msgs/MotionModel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe7c341575e9287349aa5851bafdbb40';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Contains the 2D motion model of a robot at a specific location
    
    #Heading direction is represented through a gaussian pdf.
    float32  heading_mean
    float32  heading_std_dev
    
    #For statistics we store a pdf over the robot speeds
    float32  linear_speed_mean
    float32  linear_speed_std_dev
    float32  angular_speed_mean
    float32  angular_speed_std_dev
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotionModel(null);
    if (msg.heading_mean !== undefined) {
      resolved.heading_mean = msg.heading_mean;
    }
    else {
      resolved.heading_mean = 0.0
    }

    if (msg.heading_std_dev !== undefined) {
      resolved.heading_std_dev = msg.heading_std_dev;
    }
    else {
      resolved.heading_std_dev = 0.0
    }

    if (msg.linear_speed_mean !== undefined) {
      resolved.linear_speed_mean = msg.linear_speed_mean;
    }
    else {
      resolved.linear_speed_mean = 0.0
    }

    if (msg.linear_speed_std_dev !== undefined) {
      resolved.linear_speed_std_dev = msg.linear_speed_std_dev;
    }
    else {
      resolved.linear_speed_std_dev = 0.0
    }

    if (msg.angular_speed_mean !== undefined) {
      resolved.angular_speed_mean = msg.angular_speed_mean;
    }
    else {
      resolved.angular_speed_mean = 0.0
    }

    if (msg.angular_speed_std_dev !== undefined) {
      resolved.angular_speed_std_dev = msg.angular_speed_std_dev;
    }
    else {
      resolved.angular_speed_std_dev = 0.0
    }

    return resolved;
    }
};

module.exports = MotionModel;
