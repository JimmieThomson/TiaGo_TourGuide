// Auto-generated. Do not edit!

// (in-package pal_vision_msgs.msg)


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

class LegDetections {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.position3D = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('position3D')) {
        this.position3D = initObj.position3D
      }
      else {
        this.position3D = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LegDetections
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [position3D]
    // Serialize the length for message field [position3D]
    bufferOffset = _serializer.uint32(obj.position3D.length, buffer, bufferOffset);
    obj.position3D.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LegDetections
    let len;
    let data = new LegDetections(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [position3D]
    // Deserialize array length for message field [position3D]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.position3D = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.position3D[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.position3D.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_vision_msgs/LegDetections';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '817c989208cff6eff51aae475bf50d0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Contains data relative to the detection of the legs of persons in a laser scan
    
    Header header
    
    geometry_msgs/Point[]  position3D    # 3D position of the persons' legs projected on the ground plane, expressed in the robot frame /base_link
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LegDetections(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.position3D !== undefined) {
      resolved.position3D = new Array(msg.position3D.length);
      for (let i = 0; i < resolved.position3D.length; ++i) {
        resolved.position3D[i] = geometry_msgs.msg.Point.Resolve(msg.position3D[i]);
      }
    }
    else {
      resolved.position3D = []
    }

    return resolved;
    }
};

module.exports = LegDetections;
