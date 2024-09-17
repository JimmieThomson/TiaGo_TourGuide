// Auto-generated. Do not edit!

// (in-package pal_vision_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FaceDetection = require('./FaceDetection.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FaceDetections {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.imgID = null;
      this.faces = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('imgID')) {
        this.imgID = initObj.imgID
      }
      else {
        this.imgID = 0;
      }
      if (initObj.hasOwnProperty('faces')) {
        this.faces = initObj.faces
      }
      else {
        this.faces = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FaceDetections
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [imgID]
    bufferOffset = _serializer.uint32(obj.imgID, buffer, bufferOffset);
    // Serialize message field [faces]
    // Serialize the length for message field [faces]
    bufferOffset = _serializer.uint32(obj.faces.length, buffer, bufferOffset);
    obj.faces.forEach((val) => {
      bufferOffset = FaceDetection.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FaceDetections
    let len;
    let data = new FaceDetections(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [imgID]
    data.imgID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [faces]
    // Deserialize array length for message field [faces]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.faces = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.faces[i] = FaceDetection.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.faces.forEach((val) => {
      length += FaceDetection.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_vision_msgs/FaceDetections';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5cd88065d95055a47408f1591427874';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Contains data relative to the detection of the faces of persons in an image
    
    Header header
    
    uint32                           imgID    #image sequence ID in which the faces have been detected. Images are published in /person/image
    pal_vision_msgs/FaceDetection[]  faces
    
    
    
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
    MSG: pal_vision_msgs/FaceDetection
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
    const resolved = new FaceDetections(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.imgID !== undefined) {
      resolved.imgID = msg.imgID;
    }
    else {
      resolved.imgID = 0
    }

    if (msg.faces !== undefined) {
      resolved.faces = new Array(msg.faces.length);
      for (let i = 0; i < resolved.faces.length; ++i) {
        resolved.faces[i] = FaceDetection.Resolve(msg.faces[i]);
      }
    }
    else {
      resolved.faces = []
    }

    return resolved;
    }
};

module.exports = FaceDetections;
