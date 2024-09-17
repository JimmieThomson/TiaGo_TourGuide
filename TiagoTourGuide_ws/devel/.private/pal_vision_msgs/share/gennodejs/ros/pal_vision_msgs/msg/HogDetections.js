// Auto-generated. Do not edit!

// (in-package pal_vision_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HogDetection = require('./HogDetection.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HogDetections {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.imgID = null;
      this.persons = null;
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
      if (initObj.hasOwnProperty('persons')) {
        this.persons = initObj.persons
      }
      else {
        this.persons = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HogDetections
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [imgID]
    bufferOffset = _serializer.uint32(obj.imgID, buffer, bufferOffset);
    // Serialize message field [persons]
    // Serialize the length for message field [persons]
    bufferOffset = _serializer.uint32(obj.persons.length, buffer, bufferOffset);
    obj.persons.forEach((val) => {
      bufferOffset = HogDetection.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HogDetections
    let len;
    let data = new HogDetections(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [imgID]
    data.imgID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [persons]
    // Deserialize array length for message field [persons]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.persons = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.persons[i] = HogDetection.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.persons.forEach((val) => {
      length += HogDetection.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_vision_msgs/HogDetections';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a2b9c8c4c785ae7eec19468d16ba3c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Contains data relative to the detection of person in an image using the HOG descriptor
    
    Header header
    
    uint32                           imgID    #image sequence ID in which the faces have been detected. Images are published in /person/image
    pal_vision_msgs/HogDetection[]   persons  #vector of HOG detections
    
    
    
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
    MSG: pal_vision_msgs/HogDetection
    ## Contains data relative to the detection of a person using the HOG descriptor
    
    pal_vision_msgs/Rectangle  imageBoundingBox         # bounding box of image region in which the person has been detected
    geometry_msgs/Vector3      direction                # unitary vector expressing in what direction wrt the robot base frame the person is
    float32[]                  hog                      # HOG descriptor of the person region
    std_msgs/ColorRGBA         principalEigenVectorRGB  # Eigen vector (remember this is an unitary vector) corresponding to the maximum eigen value of all the RGB values in the person region. 
    std_msgs/ColorRGBA[]       rgbClusterCenters        # RGB cluster centers of the person region in the image obtained using k-means. The rgb components are expressed in [0..1]
    uint32[]                   rgbDescriptor1           # Descriptor based on binarized RGB gradients between adjacent image blocks (version 1)
    uint32[]                   rgbDescriptor2           # Descriptor based on binarized RGB gradients between adjacent image blocks (version 2)
    
    
    
    
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
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HogDetections(null);
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

    if (msg.persons !== undefined) {
      resolved.persons = new Array(msg.persons.length);
      for (let i = 0; i < resolved.persons.length; ++i) {
        resolved.persons[i] = HogDetection.Resolve(msg.persons[i]);
      }
    }
    else {
      resolved.persons = []
    }

    return resolved;
    }
};

module.exports = HogDetections;
