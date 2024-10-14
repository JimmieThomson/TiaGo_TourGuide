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

class SetDatabaseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.databaseName = null;
      this.purgeAll = null;
    }
    else {
      if (initObj.hasOwnProperty('databaseName')) {
        this.databaseName = initObj.databaseName
      }
      else {
        this.databaseName = '';
      }
      if (initObj.hasOwnProperty('purgeAll')) {
        this.purgeAll = initObj.purgeAll
      }
      else {
        this.purgeAll = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDatabaseRequest
    // Serialize message field [databaseName]
    bufferOffset = _serializer.string(obj.databaseName, buffer, bufferOffset);
    // Serialize message field [purgeAll]
    bufferOffset = _serializer.bool(obj.purgeAll, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDatabaseRequest
    let len;
    let data = new SetDatabaseRequest(null);
    // Deserialize message field [databaseName]
    data.databaseName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [purgeAll]
    data.purgeAll = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.databaseName);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_detection_msgs/SetDatabaseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cf0b9bc147e7ba402d13d5645c217d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string databaseName
    bool purgeAll
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetDatabaseRequest(null);
    if (msg.databaseName !== undefined) {
      resolved.databaseName = msg.databaseName;
    }
    else {
      resolved.databaseName = ''
    }

    if (msg.purgeAll !== undefined) {
      resolved.purgeAll = msg.purgeAll;
    }
    else {
      resolved.purgeAll = false
    }

    return resolved;
    }
};

class SetDatabaseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDatabaseResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDatabaseResponse
    let len;
    let data = new SetDatabaseResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_detection_msgs/SetDatabaseResponse';
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
    const resolved = new SetDatabaseResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetDatabaseRequest,
  Response: SetDatabaseResponse,
  md5sum() { return '1cf0b9bc147e7ba402d13d5645c217d7'; },
  datatype() { return 'pal_detection_msgs/SetDatabase'; }
};
