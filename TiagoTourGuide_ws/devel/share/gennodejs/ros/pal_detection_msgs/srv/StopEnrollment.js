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

class StopEnrollmentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopEnrollmentRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopEnrollmentRequest
    let len;
    let data = new StopEnrollmentRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_detection_msgs/StopEnrollmentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopEnrollmentRequest(null);
    return resolved;
    }
};

class StopEnrollmentResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enrollment_ok = null;
      this.numFacesEnrolled = null;
      this.error_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('enrollment_ok')) {
        this.enrollment_ok = initObj.enrollment_ok
      }
      else {
        this.enrollment_ok = false;
      }
      if (initObj.hasOwnProperty('numFacesEnrolled')) {
        this.numFacesEnrolled = initObj.numFacesEnrolled
      }
      else {
        this.numFacesEnrolled = 0;
      }
      if (initObj.hasOwnProperty('error_msg')) {
        this.error_msg = initObj.error_msg
      }
      else {
        this.error_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopEnrollmentResponse
    // Serialize message field [enrollment_ok]
    bufferOffset = _serializer.bool(obj.enrollment_ok, buffer, bufferOffset);
    // Serialize message field [numFacesEnrolled]
    bufferOffset = _serializer.int32(obj.numFacesEnrolled, buffer, bufferOffset);
    // Serialize message field [error_msg]
    bufferOffset = _serializer.string(obj.error_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopEnrollmentResponse
    let len;
    let data = new StopEnrollmentResponse(null);
    // Deserialize message field [enrollment_ok]
    data.enrollment_ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [numFacesEnrolled]
    data.numFacesEnrolled = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error_msg]
    data.error_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.error_msg);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_detection_msgs/StopEnrollmentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb84ca50753c7bbc7737a1c5095dac61';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool enrollment_ok
    int32 numFacesEnrolled
    string error_msg
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopEnrollmentResponse(null);
    if (msg.enrollment_ok !== undefined) {
      resolved.enrollment_ok = msg.enrollment_ok;
    }
    else {
      resolved.enrollment_ok = false
    }

    if (msg.numFacesEnrolled !== undefined) {
      resolved.numFacesEnrolled = msg.numFacesEnrolled;
    }
    else {
      resolved.numFacesEnrolled = 0
    }

    if (msg.error_msg !== undefined) {
      resolved.error_msg = msg.error_msg;
    }
    else {
      resolved.error_msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: StopEnrollmentRequest,
  Response: StopEnrollmentResponse,
  md5sum() { return 'fb84ca50753c7bbc7737a1c5095dac61'; },
  datatype() { return 'pal_detection_msgs/StopEnrollment'; }
};
