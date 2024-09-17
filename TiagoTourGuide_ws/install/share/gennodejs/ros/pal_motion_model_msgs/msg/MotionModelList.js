// Auto-generated. Do not edit!

// (in-package pal_motion_model_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotionModel = require('./MotionModel.js');

//-----------------------------------------------------------

class MotionModelList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.models = null;
    }
    else {
      if (initObj.hasOwnProperty('models')) {
        this.models = initObj.models
      }
      else {
        this.models = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotionModelList
    // Serialize message field [models]
    // Serialize the length for message field [models]
    bufferOffset = _serializer.uint32(obj.models.length, buffer, bufferOffset);
    obj.models.forEach((val) => {
      bufferOffset = MotionModel.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotionModelList
    let len;
    let data = new MotionModelList(null);
    // Deserialize message field [models]
    // Deserialize array length for message field [models]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.models = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.models[i] = MotionModel.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.models.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_motion_model_msgs/MotionModelList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f24b8d6d6a0a1542de28f172c2da67ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #list of motion models learnt in a specific place
    
    MotionModel[] models
    
    
    
    
    ================================================================================
    MSG: pal_motion_model_msgs/MotionModel
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
    const resolved = new MotionModelList(null);
    if (msg.models !== undefined) {
      resolved.models = new Array(msg.models.length);
      for (let i = 0; i < resolved.models.length; ++i) {
        resolved.models[i] = MotionModel.Resolve(msg.models[i]);
      }
    }
    else {
      resolved.models = []
    }

    return resolved;
    }
};

module.exports = MotionModelList;
