// Auto-generated. Do not edit!

// (in-package pal_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class TabletPOI {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.POIs = null;
      this.IDs = null;
      this.map_id = null;
    }
    else {
      if (initObj.hasOwnProperty('POIs')) {
        this.POIs = initObj.POIs
      }
      else {
        this.POIs = [];
      }
      if (initObj.hasOwnProperty('IDs')) {
        this.IDs = initObj.IDs
      }
      else {
        this.IDs = [];
      }
      if (initObj.hasOwnProperty('map_id')) {
        this.map_id = initObj.map_id
      }
      else {
        this.map_id = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TabletPOI
    // Serialize message field [POIs]
    // Serialize the length for message field [POIs]
    bufferOffset = _serializer.uint32(obj.POIs.length, buffer, bufferOffset);
    obj.POIs.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [IDs]
    // Serialize the length for message field [IDs]
    bufferOffset = _serializer.uint32(obj.IDs.length, buffer, bufferOffset);
    obj.IDs.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [map_id]
    bufferOffset = std_msgs.msg.String.serialize(obj.map_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TabletPOI
    let len;
    let data = new TabletPOI(null);
    // Deserialize message field [POIs]
    // Deserialize array length for message field [POIs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.POIs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.POIs[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [IDs]
    // Deserialize array length for message field [IDs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.IDs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.IDs[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [map_id]
    data.map_id = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.POIs.length;
    object.IDs.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    length += std_msgs.msg.String.getMessageSize(object.map_id);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_navigation_msgs/TabletPOI';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ec4b22e981d882e9e77e8562cb8c5fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] POIs
    
    std_msgs/String[] IDs
    
    std_msgs/String map_id
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    const resolved = new TabletPOI(null);
    if (msg.POIs !== undefined) {
      resolved.POIs = new Array(msg.POIs.length);
      for (let i = 0; i < resolved.POIs.length; ++i) {
        resolved.POIs[i] = geometry_msgs.msg.Point.Resolve(msg.POIs[i]);
      }
    }
    else {
      resolved.POIs = []
    }

    if (msg.IDs !== undefined) {
      resolved.IDs = new Array(msg.IDs.length);
      for (let i = 0; i < resolved.IDs.length; ++i) {
        resolved.IDs[i] = std_msgs.msg.String.Resolve(msg.IDs[i]);
      }
    }
    else {
      resolved.IDs = []
    }

    if (msg.map_id !== undefined) {
      resolved.map_id = std_msgs.msg.String.Resolve(msg.map_id)
    }
    else {
      resolved.map_id = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = TabletPOI;
