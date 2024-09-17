// Auto-generated. Do not edit!

// (in-package pal_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Highways {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.points = null;
      this.directional = null;
      this.line_width = null;
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('directional')) {
        this.directional = initObj.directional
      }
      else {
        this.directional = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('line_width')) {
        this.line_width = initObj.line_width
      }
      else {
        this.line_width = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Highways
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [directional]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.directional, buffer, bufferOffset);
    // Serialize message field [line_width]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.line_width, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = std_msgs.msg.String.serialize(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Highways
    let len;
    let data = new Highways(null);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [directional]
    data.directional = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [line_width]
    data.line_width = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.points.length;
    length += std_msgs.msg.String.getMessageSize(object.name);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_navigation_msgs/Highways';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea8a17a2c3e3e85a215276d3571fb184';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Poi (Point of interest)
    
    geometry_msgs/Point[] points
    
    std_msgs/Bool         directional
    
    std_msgs/Float32      line_width
    
    std_msgs/String       name
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Highways(null);
    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = geometry_msgs.msg.Point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.directional !== undefined) {
      resolved.directional = std_msgs.msg.Bool.Resolve(msg.directional)
    }
    else {
      resolved.directional = new std_msgs.msg.Bool()
    }

    if (msg.line_width !== undefined) {
      resolved.line_width = std_msgs.msg.Float32.Resolve(msg.line_width)
    }
    else {
      resolved.line_width = new std_msgs.msg.Float32()
    }

    if (msg.name !== undefined) {
      resolved.name = std_msgs.msg.String.Resolve(msg.name)
    }
    else {
      resolved.name = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = Highways;
