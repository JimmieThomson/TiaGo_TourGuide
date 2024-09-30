// Auto-generated. Do not edit!

// (in-package pal_detection_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SelectTexturedObjectRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.imageFullPathFileName = null;
      this.width = null;
      this.height = null;
    }
    else {
      if (initObj.hasOwnProperty('imageFullPathFileName')) {
        this.imageFullPathFileName = initObj.imageFullPathFileName
      }
      else {
        this.imageFullPathFileName = '';
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SelectTexturedObjectRequest
    // Serialize message field [imageFullPathFileName]
    bufferOffset = _serializer.string(obj.imageFullPathFileName, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SelectTexturedObjectRequest
    let len;
    let data = new SelectTexturedObjectRequest(null);
    // Deserialize message field [imageFullPathFileName]
    data.imageFullPathFileName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.imageFullPathFileName);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_detection_msgs/SelectTexturedObjectRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e19a1b55ded74005b343f07cfe126b1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This service message allows specifying to the texture_detector node
    # which object it must look for.
    #
    
    string imageFullPathFileName # image filename including full path and file extension (always .png)
                                 # The file must exist in the computer where the texture_detector node
                                 # is running. The image must contain a frontal view of a planar textured object.
    float64 width                # width of the planar object in meters. Set to 0 if no pose estimation is required.
    float64 height               # height of the planar object in meters. Set to 0 if no pose estimation is required.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SelectTexturedObjectRequest(null);
    if (msg.imageFullPathFileName !== undefined) {
      resolved.imageFullPathFileName = msg.imageFullPathFileName;
    }
    else {
      resolved.imageFullPathFileName = ''
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    return resolved;
    }
};

class SelectTexturedObjectResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SelectTexturedObjectResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SelectTexturedObjectResponse
    let len;
    let data = new SelectTexturedObjectResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_detection_msgs/SelectTexturedObjectResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result                  # returns true if the texture_detector node has been able to load the given image filename
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SelectTexturedObjectResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SelectTexturedObjectRequest,
  Response: SelectTexturedObjectResponse,
  md5sum() { return 'faf29785b500c6c5f79cbce8786d0710'; },
  datatype() { return 'pal_detection_msgs/SelectTexturedObject'; }
};
