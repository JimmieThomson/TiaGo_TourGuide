// Auto-generated. Do not edit!

// (in-package pal_detection_msgs.msg)


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

class Gesture {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gestureId = null;
      this.position3D = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('gestureId')) {
        this.gestureId = initObj.gestureId
      }
      else {
        this.gestureId = '';
      }
      if (initObj.hasOwnProperty('position3D')) {
        this.position3D = initObj.position3D
      }
      else {
        this.position3D = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gesture
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gestureId]
    bufferOffset = _serializer.string(obj.gestureId, buffer, bufferOffset);
    // Serialize message field [position3D]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position3D, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gesture
    let len;
    let data = new Gesture(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gestureId]
    data.gestureId = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [position3D]
    data.position3D = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.gestureId);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_detection_msgs/Gesture';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1bc7e8240ed437c7df9ff2c69342d63a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Contains data relative to recognized gestures
    
    Header header
    
    # Gesture identifier
    string gestureId
    
    # Position of the hand when the gesture was recognized in the camera frame in m
    geometry_msgs/Point  position3D
    
    
    
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
    const resolved = new Gesture(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.gestureId !== undefined) {
      resolved.gestureId = msg.gestureId;
    }
    else {
      resolved.gestureId = ''
    }

    if (msg.position3D !== undefined) {
      resolved.position3D = geometry_msgs.msg.Point.Resolve(msg.position3D)
    }
    else {
      resolved.position3D = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = Gesture;
