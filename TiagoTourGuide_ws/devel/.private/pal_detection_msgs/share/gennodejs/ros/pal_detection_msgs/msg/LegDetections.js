// Auto-generated. Do not edit!

// (in-package pal_detection_msgs.msg)


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
      this.laser_pose = null;
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
      if (initObj.hasOwnProperty('laser_pose')) {
        this.laser_pose = initObj.laser_pose
      }
      else {
        this.laser_pose = new geometry_msgs.msg.TransformStamped();
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
    // Serialize message field [laser_pose]
    bufferOffset = geometry_msgs.msg.TransformStamped.serialize(obj.laser_pose, buffer, bufferOffset);
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
    // Deserialize message field [laser_pose]
    data.laser_pose = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.position3D.length;
    length += geometry_msgs.msg.TransformStamped.getMessageSize(object.laser_pose);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_detection_msgs/LegDetections';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '052a7b604b63598ea38a2198b4b59909';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Contains data relative to the detection of the legs of persons in a laser scan
    
    Header header
    
    geometry_msgs/Point[]  position3D    # 3D position of the persons' legs in a given frame
    
    # Optional transformation between the laser frame and a certain parent frame
    geometry_msgs/TransformStamped laser_pose
    
    
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
    
    ================================================================================
    MSG: geometry_msgs/TransformStamped
    # This expresses a transform from coordinate frame header.frame_id
    # to the coordinate frame child_frame_id
    #
    # This message is mostly used by the 
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
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
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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

    if (msg.laser_pose !== undefined) {
      resolved.laser_pose = geometry_msgs.msg.TransformStamped.Resolve(msg.laser_pose)
    }
    else {
      resolved.laser_pose = new geometry_msgs.msg.TransformStamped()
    }

    return resolved;
    }
};

module.exports = LegDetections;
