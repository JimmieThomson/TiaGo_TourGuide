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

class ChangeObjectRecognizerModelRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_name = null;
      this.reset_desired_classes_param = null;
    }
    else {
      if (initObj.hasOwnProperty('model_name')) {
        this.model_name = initObj.model_name
      }
      else {
        this.model_name = '';
      }
      if (initObj.hasOwnProperty('reset_desired_classes_param')) {
        this.reset_desired_classes_param = initObj.reset_desired_classes_param
      }
      else {
        this.reset_desired_classes_param = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeObjectRecognizerModelRequest
    // Serialize message field [model_name]
    bufferOffset = _serializer.string(obj.model_name, buffer, bufferOffset);
    // Serialize message field [reset_desired_classes_param]
    bufferOffset = _serializer.bool(obj.reset_desired_classes_param, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeObjectRecognizerModelRequest
    let len;
    let data = new ChangeObjectRecognizerModelRequest(null);
    // Deserialize message field [model_name]
    data.model_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reset_desired_classes_param]
    data.reset_desired_classes_param = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.model_name);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_detection_msgs/ChangeObjectRecognizerModelRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c46978b1fa0abe1a947f524717b449fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This service allows to change the object recognizer model
    
    # model_name: New object recognizer model name 
    string model_name
    
    # reset_desired_classes_param: reset the desired classes params for the new model
    bool reset_desired_classes_param
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeObjectRecognizerModelRequest(null);
    if (msg.model_name !== undefined) {
      resolved.model_name = msg.model_name;
    }
    else {
      resolved.model_name = ''
    }

    if (msg.reset_desired_classes_param !== undefined) {
      resolved.reset_desired_classes_param = msg.reset_desired_classes_param;
    }
    else {
      resolved.reset_desired_classes_param = false
    }

    return resolved;
    }
};

class ChangeObjectRecognizerModelResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeObjectRecognizerModelResponse
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeObjectRecognizerModelResponse
    let len;
    let data = new ChangeObjectRecognizerModelResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_detection_msgs/ChangeObjectRecognizerModelResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a1255d4d998bd4d6585c64639b5ee9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # status: provides the status info of the service call
    bool status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeObjectRecognizerModelResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ChangeObjectRecognizerModelRequest,
  Response: ChangeObjectRecognizerModelResponse,
  md5sum() { return '772f7a8423ea945bf501239102bf9c1e'; },
  datatype() { return 'pal_detection_msgs/ChangeObjectRecognizerModel'; }
};
