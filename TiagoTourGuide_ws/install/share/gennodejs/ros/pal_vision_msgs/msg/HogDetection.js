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
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HogDetection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.imageBoundingBox = null;
      this.direction = null;
      this.hog = null;
      this.principalEigenVectorRGB = null;
      this.rgbClusterCenters = null;
      this.rgbDescriptor1 = null;
      this.rgbDescriptor2 = null;
    }
    else {
      if (initObj.hasOwnProperty('imageBoundingBox')) {
        this.imageBoundingBox = initObj.imageBoundingBox
      }
      else {
        this.imageBoundingBox = new Rectangle();
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('hog')) {
        this.hog = initObj.hog
      }
      else {
        this.hog = [];
      }
      if (initObj.hasOwnProperty('principalEigenVectorRGB')) {
        this.principalEigenVectorRGB = initObj.principalEigenVectorRGB
      }
      else {
        this.principalEigenVectorRGB = new std_msgs.msg.ColorRGBA();
      }
      if (initObj.hasOwnProperty('rgbClusterCenters')) {
        this.rgbClusterCenters = initObj.rgbClusterCenters
      }
      else {
        this.rgbClusterCenters = [];
      }
      if (initObj.hasOwnProperty('rgbDescriptor1')) {
        this.rgbDescriptor1 = initObj.rgbDescriptor1
      }
      else {
        this.rgbDescriptor1 = [];
      }
      if (initObj.hasOwnProperty('rgbDescriptor2')) {
        this.rgbDescriptor2 = initObj.rgbDescriptor2
      }
      else {
        this.rgbDescriptor2 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HogDetection
    // Serialize message field [imageBoundingBox]
    bufferOffset = Rectangle.serialize(obj.imageBoundingBox, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.direction, buffer, bufferOffset);
    // Serialize message field [hog]
    bufferOffset = _arraySerializer.float32(obj.hog, buffer, bufferOffset, null);
    // Serialize message field [principalEigenVectorRGB]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.principalEigenVectorRGB, buffer, bufferOffset);
    // Serialize message field [rgbClusterCenters]
    // Serialize the length for message field [rgbClusterCenters]
    bufferOffset = _serializer.uint32(obj.rgbClusterCenters.length, buffer, bufferOffset);
    obj.rgbClusterCenters.forEach((val) => {
      bufferOffset = std_msgs.msg.ColorRGBA.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [rgbDescriptor1]
    bufferOffset = _arraySerializer.uint32(obj.rgbDescriptor1, buffer, bufferOffset, null);
    // Serialize message field [rgbDescriptor2]
    bufferOffset = _arraySerializer.uint32(obj.rgbDescriptor2, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HogDetection
    let len;
    let data = new HogDetection(null);
    // Deserialize message field [imageBoundingBox]
    data.imageBoundingBox = Rectangle.deserialize(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [hog]
    data.hog = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [principalEigenVectorRGB]
    data.principalEigenVectorRGB = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [rgbClusterCenters]
    // Deserialize array length for message field [rgbClusterCenters]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.rgbClusterCenters = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.rgbClusterCenters[i] = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [rgbDescriptor1]
    data.rgbDescriptor1 = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [rgbDescriptor2]
    data.rgbDescriptor2 = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.hog.length;
    length += 16 * object.rgbClusterCenters.length;
    length += 4 * object.rgbDescriptor1.length;
    length += 4 * object.rgbDescriptor2.length;
    return length + 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_vision_msgs/HogDetection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33e1731149b6e078eff6e4b55c75f260';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new HogDetection(null);
    if (msg.imageBoundingBox !== undefined) {
      resolved.imageBoundingBox = Rectangle.Resolve(msg.imageBoundingBox)
    }
    else {
      resolved.imageBoundingBox = new Rectangle()
    }

    if (msg.direction !== undefined) {
      resolved.direction = geometry_msgs.msg.Vector3.Resolve(msg.direction)
    }
    else {
      resolved.direction = new geometry_msgs.msg.Vector3()
    }

    if (msg.hog !== undefined) {
      resolved.hog = msg.hog;
    }
    else {
      resolved.hog = []
    }

    if (msg.principalEigenVectorRGB !== undefined) {
      resolved.principalEigenVectorRGB = std_msgs.msg.ColorRGBA.Resolve(msg.principalEigenVectorRGB)
    }
    else {
      resolved.principalEigenVectorRGB = new std_msgs.msg.ColorRGBA()
    }

    if (msg.rgbClusterCenters !== undefined) {
      resolved.rgbClusterCenters = new Array(msg.rgbClusterCenters.length);
      for (let i = 0; i < resolved.rgbClusterCenters.length; ++i) {
        resolved.rgbClusterCenters[i] = std_msgs.msg.ColorRGBA.Resolve(msg.rgbClusterCenters[i]);
      }
    }
    else {
      resolved.rgbClusterCenters = []
    }

    if (msg.rgbDescriptor1 !== undefined) {
      resolved.rgbDescriptor1 = msg.rgbDescriptor1;
    }
    else {
      resolved.rgbDescriptor1 = []
    }

    if (msg.rgbDescriptor2 !== undefined) {
      resolved.rgbDescriptor2 = msg.rgbDescriptor2;
    }
    else {
      resolved.rgbDescriptor2 = []
    }

    return resolved;
    }
};

module.exports = HogDetection;
