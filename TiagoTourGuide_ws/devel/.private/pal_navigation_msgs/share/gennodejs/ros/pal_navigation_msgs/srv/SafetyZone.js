// Auto-generated. Do not edit!

// (in-package pal_navigation_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SafetyZoneRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
      this.leftAngleRad = null;
      this.rightAngleRad = null;
      this.sensorMask = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('leftAngleRad')) {
        this.leftAngleRad = initObj.leftAngleRad
      }
      else {
        this.leftAngleRad = 0.0;
      }
      if (initObj.hasOwnProperty('rightAngleRad')) {
        this.rightAngleRad = initObj.rightAngleRad
      }
      else {
        this.rightAngleRad = 0.0;
      }
      if (initObj.hasOwnProperty('sensorMask')) {
        this.sensorMask = initObj.sensorMask
      }
      else {
        this.sensorMask = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SafetyZoneRequest
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [leftAngleRad]
    bufferOffset = _serializer.float64(obj.leftAngleRad, buffer, bufferOffset);
    // Serialize message field [rightAngleRad]
    bufferOffset = _serializer.float64(obj.rightAngleRad, buffer, bufferOffset);
    // Serialize message field [sensorMask]
    bufferOffset = _serializer.uint32(obj.sensorMask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SafetyZoneRequest
    let len;
    let data = new SafetyZoneRequest(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [leftAngleRad]
    data.leftAngleRad = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rightAngleRad]
    data.rightAngleRad = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sensorMask]
    data.sensorMask = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_navigation_msgs/SafetyZoneRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '269cbb74525b0bd07e71e2ec943affd4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Binary sensor mask o select sensors used to check safety_zone
    byte NO_SENSORS = 0
    byte ALL_SENSORS = 127 
    #sonar sensors
    byte FRONT_SONARS = 1
    byte LEFT_SONARS = 2
    byte RIGHT_SONARS = 4
    byte BACK_SONARS = 8
    byte TORSO_SONARS = 16
    byte ONLY_SONARS = 31
    #lasers
    byte BASE_LASER = 32
    byte TORSO_LASER = 64
    byte ONLY_LASERS = 96
    
    # Request Safety Zone
    
    # Distance to take into account for obstacle detection
    float64 distance
    
    # Angles that specify the zone to check for safety
    float64 leftAngleRad
    float64 rightAngleRad
    
    uint32 sensorMask
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SafetyZoneRequest(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.leftAngleRad !== undefined) {
      resolved.leftAngleRad = msg.leftAngleRad;
    }
    else {
      resolved.leftAngleRad = 0.0
    }

    if (msg.rightAngleRad !== undefined) {
      resolved.rightAngleRad = msg.rightAngleRad;
    }
    else {
      resolved.rightAngleRad = 0.0
    }

    if (msg.sensorMask !== undefined) {
      resolved.sensorMask = msg.sensorMask;
    }
    else {
      resolved.sensorMask = 0
    }

    return resolved;
    }
};

// Constants for message
SafetyZoneRequest.Constants = {
  NO_SENSORS: 0,
  ALL_SENSORS: 127,
  FRONT_SONARS: 1,
  LEFT_SONARS: 2,
  RIGHT_SONARS: 4,
  BACK_SONARS: 8,
  TORSO_SONARS: 16,
  ONLY_SONARS: 31,
  BASE_LASER: 32,
  TORSO_LASER: 64,
  ONLY_LASERS: 96,
}

class SafetyZoneResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leftSafe = null;
      this.leftMinDist = null;
      this.leftMinDistAngleRad = null;
      this.rightSafe = null;
      this.rightMinDist = null;
      this.rightMinDistAngleRad = null;
    }
    else {
      if (initObj.hasOwnProperty('leftSafe')) {
        this.leftSafe = initObj.leftSafe
      }
      else {
        this.leftSafe = false;
      }
      if (initObj.hasOwnProperty('leftMinDist')) {
        this.leftMinDist = initObj.leftMinDist
      }
      else {
        this.leftMinDist = 0.0;
      }
      if (initObj.hasOwnProperty('leftMinDistAngleRad')) {
        this.leftMinDistAngleRad = initObj.leftMinDistAngleRad
      }
      else {
        this.leftMinDistAngleRad = 0.0;
      }
      if (initObj.hasOwnProperty('rightSafe')) {
        this.rightSafe = initObj.rightSafe
      }
      else {
        this.rightSafe = false;
      }
      if (initObj.hasOwnProperty('rightMinDist')) {
        this.rightMinDist = initObj.rightMinDist
      }
      else {
        this.rightMinDist = 0.0;
      }
      if (initObj.hasOwnProperty('rightMinDistAngleRad')) {
        this.rightMinDistAngleRad = initObj.rightMinDistAngleRad
      }
      else {
        this.rightMinDistAngleRad = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SafetyZoneResponse
    // Serialize message field [leftSafe]
    bufferOffset = _serializer.bool(obj.leftSafe, buffer, bufferOffset);
    // Serialize message field [leftMinDist]
    bufferOffset = _serializer.float64(obj.leftMinDist, buffer, bufferOffset);
    // Serialize message field [leftMinDistAngleRad]
    bufferOffset = _serializer.float64(obj.leftMinDistAngleRad, buffer, bufferOffset);
    // Serialize message field [rightSafe]
    bufferOffset = _serializer.bool(obj.rightSafe, buffer, bufferOffset);
    // Serialize message field [rightMinDist]
    bufferOffset = _serializer.float64(obj.rightMinDist, buffer, bufferOffset);
    // Serialize message field [rightMinDistAngleRad]
    bufferOffset = _serializer.float64(obj.rightMinDistAngleRad, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SafetyZoneResponse
    let len;
    let data = new SafetyZoneResponse(null);
    // Deserialize message field [leftSafe]
    data.leftSafe = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [leftMinDist]
    data.leftMinDist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [leftMinDistAngleRad]
    data.leftMinDistAngleRad = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rightSafe]
    data.rightSafe = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rightMinDist]
    data.rightMinDist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rightMinDistAngleRad]
    data.rightMinDistAngleRad = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 34;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_navigation_msgs/SafetyZoneResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2ae1feeb09d43547ad602b6e1dca6d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    #True if the specified side is safe, false otherwise. 
    #It returns the min distance and at which angle has been measured for each side.
    
    bool leftSafe
    float64 leftMinDist
    float64 leftMinDistAngleRad
    
    bool rightSafe 
    float64 rightMinDist
    float64 rightMinDistAngleRad
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SafetyZoneResponse(null);
    if (msg.leftSafe !== undefined) {
      resolved.leftSafe = msg.leftSafe;
    }
    else {
      resolved.leftSafe = false
    }

    if (msg.leftMinDist !== undefined) {
      resolved.leftMinDist = msg.leftMinDist;
    }
    else {
      resolved.leftMinDist = 0.0
    }

    if (msg.leftMinDistAngleRad !== undefined) {
      resolved.leftMinDistAngleRad = msg.leftMinDistAngleRad;
    }
    else {
      resolved.leftMinDistAngleRad = 0.0
    }

    if (msg.rightSafe !== undefined) {
      resolved.rightSafe = msg.rightSafe;
    }
    else {
      resolved.rightSafe = false
    }

    if (msg.rightMinDist !== undefined) {
      resolved.rightMinDist = msg.rightMinDist;
    }
    else {
      resolved.rightMinDist = 0.0
    }

    if (msg.rightMinDistAngleRad !== undefined) {
      resolved.rightMinDistAngleRad = msg.rightMinDistAngleRad;
    }
    else {
      resolved.rightMinDistAngleRad = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SafetyZoneRequest,
  Response: SafetyZoneResponse,
  md5sum() { return '19f798f566629d71a0a37495aba033fe'; },
  datatype() { return 'pal_navigation_msgs/SafetyZone'; }
};
