// Auto-generated. Do not edit!

// (in-package pal_vision_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Rectangle = require('./Rectangle.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class DetectedPerson {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.objectId = null;
      this.boxColour = null;
      this.confidence = null;
      this.position3D = null;
      this.box = null;
      this.faceBox = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('objectId')) {
        this.objectId = initObj.objectId
      }
      else {
        this.objectId = 0;
      }
      if (initObj.hasOwnProperty('boxColour')) {
        this.boxColour = initObj.boxColour
      }
      else {
        this.boxColour = new std_msgs.msg.ColorRGBA();
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('position3D')) {
        this.position3D = initObj.position3D
      }
      else {
        this.position3D = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('box')) {
        this.box = initObj.box
      }
      else {
        this.box = new Rectangle();
      }
      if (initObj.hasOwnProperty('faceBox')) {
        this.faceBox = initObj.faceBox
      }
      else {
        this.faceBox = new Rectangle();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectedPerson
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [objectId]
    bufferOffset = _serializer.int64(obj.objectId, buffer, bufferOffset);
    // Serialize message field [boxColour]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.boxColour, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    // Serialize message field [position3D]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position3D, buffer, bufferOffset);
    // Serialize message field [box]
    bufferOffset = Rectangle.serialize(obj.box, buffer, bufferOffset);
    // Serialize message field [faceBox]
    bufferOffset = Rectangle.serialize(obj.faceBox, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectedPerson
    let len;
    let data = new DetectedPerson(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [objectId]
    data.objectId = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [boxColour]
    data.boxColour = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position3D]
    data.position3D = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [box]
    data.box = Rectangle.deserialize(buffer, bufferOffset);
    // Deserialize message field [faceBox]
    data.faceBox = Rectangle.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_vision_msgs/DetectedPerson';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5d598391f8f6fb6645fe7d38b2e7101';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Contains data relative to the detection of a person
    
    Header header
    
    # ID associated to a detected person by the personServer
    int64 objectId
    
    # colour associated to the detected person by the personServer
    # values from the personServer are in [0-255]
    std_msgs/ColorRGBA boxColour
    
    # detection confidence
    float64 confidence
    
    # 3D position of the person projected on the ground plane, expressed in the world frame
    geometry_msgs/Point  position3D
    
    # rectangular zone of the image that contains the person detected
    pal_vision_msgs/Rectangle box
    
    # rectangular zone of the image that may contain the face of the person detected
    # if no face has been detected, faceBox = Rectangle(0, 0, 0, 0)
    pal_vision_msgs/Rectangle faceBox
    
    
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
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: pal_vision_msgs/Rectangle
    ## Rectangle defined by a point, its width and height
    # corresponds to the openCV struct : CvRect
    
    # coordinates of the top left corner of the box
    int64 x
    int64 y
    
    # wigth of the box
    int64 width
    
    # height of the box
    int64 height
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectedPerson(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.objectId !== undefined) {
      resolved.objectId = msg.objectId;
    }
    else {
      resolved.objectId = 0
    }

    if (msg.boxColour !== undefined) {
      resolved.boxColour = std_msgs.msg.ColorRGBA.Resolve(msg.boxColour)
    }
    else {
      resolved.boxColour = new std_msgs.msg.ColorRGBA()
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.position3D !== undefined) {
      resolved.position3D = geometry_msgs.msg.Point.Resolve(msg.position3D)
    }
    else {
      resolved.position3D = new geometry_msgs.msg.Point()
    }

    if (msg.box !== undefined) {
      resolved.box = Rectangle.Resolve(msg.box)
    }
    else {
      resolved.box = new Rectangle()
    }

    if (msg.faceBox !== undefined) {
      resolved.faceBox = Rectangle.Resolve(msg.faceBox)
    }
    else {
      resolved.faceBox = new Rectangle()
    }

    return resolved;
    }
};

module.exports = DetectedPerson;
