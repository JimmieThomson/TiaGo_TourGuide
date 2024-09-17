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

//-----------------------------------------------------------

class RecognizedActions {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.action_name = null;
      this.u = null;
      this.v = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('action_name')) {
        this.action_name = initObj.action_name
      }
      else {
        this.action_name = [];
      }
      if (initObj.hasOwnProperty('u')) {
        this.u = initObj.u
      }
      else {
        this.u = [];
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecognizedActions
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [action_name]
    bufferOffset = _arraySerializer.string(obj.action_name, buffer, bufferOffset, null);
    // Serialize message field [u]
    bufferOffset = _arraySerializer.int64(obj.u, buffer, bufferOffset, null);
    // Serialize message field [v]
    bufferOffset = _arraySerializer.int64(obj.v, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognizedActions
    let len;
    let data = new RecognizedActions(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_name]
    data.action_name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [u]
    data.u = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [v]
    data.v = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.action_name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.u.length;
    length += 8 * object.v.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_detection_msgs/RecognizedActions';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6c6e85fc615700151c9f88b60277903';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string[] action_name    # name of the recognized actions
    int64[] u                # (u, v) are the pixel coordinates where
    int64[] v                # the actions have been detected
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecognizedActions(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.action_name !== undefined) {
      resolved.action_name = msg.action_name;
    }
    else {
      resolved.action_name = []
    }

    if (msg.u !== undefined) {
      resolved.u = msg.u;
    }
    else {
      resolved.u = []
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = []
    }

    return resolved;
    }
};

module.exports = RecognizedActions;
