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
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class FaceDetection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position3D = null;
      this.imageBoundingBox = null;
      this.hog = null;
    }
    else {
      if (initObj.hasOwnProperty('position3D')) {
        this.position3D = initObj.position3D
      }
      else {
        this.position3D = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('imageBoundingBox')) {
        this.imageBoundingBox = initObj.imageBoundingBox
      }
      else {
        this.imageBoundingBox = new Rectangle();
      }
      if (initObj.hasOwnProperty('hog')) {
        this.hog = initObj.hog
      }
      else {
        this.hog = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FaceDetection
    // Serialize message field [position3D]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position3D, buffer, bufferOffset);
    // Serialize message field [imageBoundingBox]
    bufferOffset = Rectangle.serialize(obj.imageBoundingBox, buffer, bufferOffset);
    // Serialize message field [hog]
    bufferOffset = _arraySerializer.float32(obj.hog, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FaceDetection
    let len;
    let data = new FaceDetection(null);
    // Deserialize message field [position3D]
    data.position3D = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [imageBoundingBox]
    data.imageBoundingBox = Rectangle.deserialize(buffer, bufferOffset);
    // Deserialize message field [hog]
    data.hog = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.hog.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_vision_msgs/FaceDetection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf1d543fd0ed58f92521046e9c5f942a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Contains data relative to the detection of the face of a person
    
    geometry_msgs/Point        position3D         # 3D position of the person face projected on the ground plane, expressed in the robot frame /base_link
    pal_vision_msgs/Rectangle  imageBoundingBox   # bounding box of the face in the image
    float32[]                  hog                # HOG descriptor of the face
    
    
    
    
    
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
    const resolved = new FaceDetection(null);
    if (msg.position3D !== undefined) {
      resolved.position3D = geometry_msgs.msg.Point.Resolve(msg.position3D)
    }
    else {
      resolved.position3D = new geometry_msgs.msg.Point()
    }

    if (msg.imageBoundingBox !== undefined) {
      resolved.imageBoundingBox = Rectangle.Resolve(msg.imageBoundingBox)
    }
    else {
      resolved.imageBoundingBox = new Rectangle()
    }

    if (msg.hog !== undefined) {
      resolved.hog = msg.hog;
    }
    else {
      resolved.hog = []
    }

    return resolved;
    }
};

module.exports = FaceDetection;
