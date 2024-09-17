// Auto-generated. Do not edit!

// (in-package pal_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ServiceStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.serviceName = null;
      this.is_running = null;
      this.update_frequency = null;
      this.latest_run_time = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('serviceName')) {
        this.serviceName = initObj.serviceName
      }
      else {
        this.serviceName = '';
      }
      if (initObj.hasOwnProperty('is_running')) {
        this.is_running = initObj.is_running
      }
      else {
        this.is_running = false;
      }
      if (initObj.hasOwnProperty('update_frequency')) {
        this.update_frequency = initObj.update_frequency
      }
      else {
        this.update_frequency = 0.0;
      }
      if (initObj.hasOwnProperty('latest_run_time')) {
        this.latest_run_time = initObj.latest_run_time
      }
      else {
        this.latest_run_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServiceStatus
    // Serialize message field [serviceName]
    bufferOffset = _serializer.string(obj.serviceName, buffer, bufferOffset);
    // Serialize message field [is_running]
    bufferOffset = _serializer.bool(obj.is_running, buffer, bufferOffset);
    // Serialize message field [update_frequency]
    bufferOffset = _serializer.float32(obj.update_frequency, buffer, bufferOffset);
    // Serialize message field [latest_run_time]
    bufferOffset = _serializer.time(obj.latest_run_time, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceStatus
    let len;
    let data = new ServiceStatus(null);
    // Deserialize message field [serviceName]
    data.serviceName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_running]
    data.is_running = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [update_frequency]
    data.update_frequency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [latest_run_time]
    data.latest_run_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.serviceName);
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_navigation_msgs/ServiceStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b734cea5bf73c81e5fb0d99553451daa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Navigation ServiceStatus msg 
    string serviceName
    
    #true if the service has been started
    bool    is_running
    
    #expected frequency of control loop (in hertz)
    float32 update_frequency
    
    #Timestamp of the latest loop cycle execution
    time    latest_run_time
    
    #true if the service is running and working fine
    bool    status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServiceStatus(null);
    if (msg.serviceName !== undefined) {
      resolved.serviceName = msg.serviceName;
    }
    else {
      resolved.serviceName = ''
    }

    if (msg.is_running !== undefined) {
      resolved.is_running = msg.is_running;
    }
    else {
      resolved.is_running = false
    }

    if (msg.update_frequency !== undefined) {
      resolved.update_frequency = msg.update_frequency;
    }
    else {
      resolved.update_frequency = 0.0
    }

    if (msg.latest_run_time !== undefined) {
      resolved.latest_run_time = msg.latest_run_time;
    }
    else {
      resolved.latest_run_time = {secs: 0, nsecs: 0}
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    return resolved;
    }
};

module.exports = ServiceStatus;
