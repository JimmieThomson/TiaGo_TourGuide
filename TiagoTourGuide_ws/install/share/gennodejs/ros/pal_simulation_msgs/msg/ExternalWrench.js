// Auto-generated. Do not edit!

// (in-package pal_simulation_msgs.msg)


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

class ExternalWrench {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.link_name = null;
      this.wrench = null;
      this.application_point = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('link_name')) {
        this.link_name = initObj.link_name
      }
      else {
        this.link_name = '';
      }
      if (initObj.hasOwnProperty('wrench')) {
        this.wrench = initObj.wrench
      }
      else {
        this.wrench = new geometry_msgs.msg.Wrench();
      }
      if (initObj.hasOwnProperty('application_point')) {
        this.application_point = initObj.application_point
      }
      else {
        this.application_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExternalWrench
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [link_name]
    bufferOffset = _serializer.string(obj.link_name, buffer, bufferOffset);
    // Serialize message field [wrench]
    bufferOffset = geometry_msgs.msg.Wrench.serialize(obj.wrench, buffer, bufferOffset);
    // Serialize message field [application_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.application_point, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.duration(obj.duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExternalWrench
    let len;
    let data = new ExternalWrench(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [link_name]
    data.link_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wrench]
    data.wrench = geometry_msgs.msg.Wrench.deserialize(buffer, bufferOffset);
    // Deserialize message field [application_point]
    data.application_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.link_name);
    return length + 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_simulation_msgs/ExternalWrench';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '336010778c1866e3bca3bc8a7913851f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header                  header
    
    string                  link_name
    geometry_msgs/Wrench    wrench
    geometry_msgs/Point     application_point
    duration                duration
    
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
    MSG: geometry_msgs/Wrench
    # This represents force in free space, separated into
    # its linear and angular parts.
    Vector3  force
    Vector3  torque
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
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
    const resolved = new ExternalWrench(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.link_name !== undefined) {
      resolved.link_name = msg.link_name;
    }
    else {
      resolved.link_name = ''
    }

    if (msg.wrench !== undefined) {
      resolved.wrench = geometry_msgs.msg.Wrench.Resolve(msg.wrench)
    }
    else {
      resolved.wrench = new geometry_msgs.msg.Wrench()
    }

    if (msg.application_point !== undefined) {
      resolved.application_point = geometry_msgs.msg.Point.Resolve(msg.application_point)
    }
    else {
      resolved.application_point = new geometry_msgs.msg.Point()
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = ExternalWrench;
