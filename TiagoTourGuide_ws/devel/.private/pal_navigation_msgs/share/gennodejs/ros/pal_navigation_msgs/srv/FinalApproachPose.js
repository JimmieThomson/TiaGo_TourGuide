// Auto-generated. Do not edit!

// (in-package pal_navigation_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FinalApproachPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FinalApproachPoseRequest
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FinalApproachPoseRequest
    let len;
    let data = new FinalApproachPoseRequest(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_navigation_msgs/FinalApproachPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f192399f711a48924df9a394d37edd67';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # pose: desired robot pose (referenced to base_link)
    # Note: maximun distance allowed with this service call is 1 meter. Use only for final approach
    geometry_msgs/Pose pose
    
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new FinalApproachPoseRequest(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class FinalApproachPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.done = null;
    }
    else {
      if (initObj.hasOwnProperty('done')) {
        this.done = initObj.done
      }
      else {
        this.done = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FinalApproachPoseResponse
    // Serialize message field [done]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.done, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FinalApproachPoseResponse
    let len;
    let data = new FinalApproachPoseResponse(null);
    // Deserialize message field [done]
    data.done = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_navigation_msgs/FinalApproachPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c236c9790b7f5f3c3164ceb3563eae0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Returns true if final pose was achieved 
    std_msgs/Bool done
    
    
    
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FinalApproachPoseResponse(null);
    if (msg.done !== undefined) {
      resolved.done = std_msgs.msg.Bool.Resolve(msg.done)
    }
    else {
      resolved.done = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

module.exports = {
  Request: FinalApproachPoseRequest,
  Response: FinalApproachPoseResponse,
  md5sum() { return '798f73d56e5c8c9c501d7329ddd80106'; },
  datatype() { return 'pal_navigation_msgs/FinalApproachPose'; }
};
