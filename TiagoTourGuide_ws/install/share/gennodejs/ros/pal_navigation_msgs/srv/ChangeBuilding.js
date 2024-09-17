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

class ChangeBuildingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.building_name = null;
      this.floor_name = null;
    }
    else {
      if (initObj.hasOwnProperty('building_name')) {
        this.building_name = initObj.building_name
      }
      else {
        this.building_name = '';
      }
      if (initObj.hasOwnProperty('floor_name')) {
        this.floor_name = initObj.floor_name
      }
      else {
        this.floor_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeBuildingRequest
    // Serialize message field [building_name]
    bufferOffset = _serializer.string(obj.building_name, buffer, bufferOffset);
    // Serialize message field [floor_name]
    bufferOffset = _serializer.string(obj.floor_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeBuildingRequest
    let len;
    let data = new ChangeBuildingRequest(null);
    // Deserialize message field [building_name]
    data.building_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [floor_name]
    data.floor_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.building_name);
    length += _getByteLength(object.floor_name);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_navigation_msgs/ChangeBuildingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cd21d3150f8ada4b997571625fab346';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Action for changing the current building and/or the current floor
    string building_name # should correspond to a building description file in ~/.pal/maps/buildings
    string floor_name # should correspond to a floor name within the building description file
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeBuildingRequest(null);
    if (msg.building_name !== undefined) {
      resolved.building_name = msg.building_name;
    }
    else {
      resolved.building_name = ''
    }

    if (msg.floor_name !== undefined) {
      resolved.floor_name = msg.floor_name;
    }
    else {
      resolved.floor_name = ''
    }

    return resolved;
    }
};

class ChangeBuildingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeBuildingResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeBuildingResponse
    let len;
    let data = new ChangeBuildingResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_navigation_msgs/ChangeBuildingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeBuildingResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ChangeBuildingRequest,
  Response: ChangeBuildingResponse,
  md5sum() { return 'f26c9152216ed3be6558d7ed27b2ae57'; },
  datatype() { return 'pal_navigation_msgs/ChangeBuilding'; }
};
