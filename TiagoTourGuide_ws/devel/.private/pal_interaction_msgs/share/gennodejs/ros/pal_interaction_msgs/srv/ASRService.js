// Auto-generated. Do not edit!

// (in-package pal_interaction_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ASRSrvRequest = require('../msg/ASRSrvRequest.js');

//-----------------------------------------------------------

let ASRSrvResponse = require('../msg/ASRSrvResponse.js');

//-----------------------------------------------------------

class ASRServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request = null;
    }
    else {
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = new ASRSrvRequest();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ASRServiceRequest
    // Serialize message field [request]
    bufferOffset = ASRSrvRequest.serialize(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ASRServiceRequest
    let len;
    let data = new ASRServiceRequest(null);
    // Deserialize message field [request]
    data.request = ASRSrvRequest.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ASRSrvRequest.getMessageSize(object.request);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_interaction_msgs/ASRServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf3afdb7a9717c398d58f3a78181472c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pal_interaction_msgs/ASRSrvRequest request
    
    ================================================================================
    MSG: pal_interaction_msgs/ASRSrvRequest
    # Request messages for the recognizer service.
    # It is possible to request and activate task, 
    # a grammar management task and language change or just
    # request the current status.
    
    # Type of request list
    int8 ACTIVATION = 1
    int8 GRAMMAR = 2
    int8 LANGUAGE = 3
    int8 STATUS = 4
    int8 KWSPOTTING = 5
    
    # Message variables
    # list of requests types (several requests can be send in one single message)
    int8[] requests
    
    # Information related to each possible request
    # except for status that does not need any additional info.
    ASRActivation activation
    ASRLangModelMngmt model
    ASRLanguage lang
    
    ================================================================================
    MSG: pal_interaction_msgs/ASRActivation
    # Message that can be used to send activation commands to the speech recognizer.
    # It is possible to activate/deactivate or pause/resume the recognizer with these commands.
    # action list
    int8 ACTIVATE = 1
    int8 DEACTIVATE = 2
    int8 PAUSE = 3
    int8 RESUME = 4
    int8 CALIBRATE = 5
    
    # Message variables
    int8 action
    
    
    ================================================================================
    MSG: pal_interaction_msgs/ASRLangModelMngmt
    # This message is to be used in the ASR service to manage the grammars
    # makes possible to enable/disable, load/unload grammars.
    
    
    # Types of action
    int8 ENABLE = 1
    int8 DISABLE = 2
    int8 LOAD = 3
    int8 UNLOAD = 4
    
    # Message variables
    # Type of action requested
    int8 action
    
    # Name of the grammar to actuate on.
    string modelName
    
    ================================================================================
    MSG: pal_interaction_msgs/ASRLanguage
    # This message is to indicate the language
    # that has to be set in the speech recognizer
    string language
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ASRServiceRequest(null);
    if (msg.request !== undefined) {
      resolved.request = ASRSrvRequest.Resolve(msg.request)
    }
    else {
      resolved.request = new ASRSrvRequest()
    }

    return resolved;
    }
};

class ASRServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response = null;
    }
    else {
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = new ASRSrvResponse();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ASRServiceResponse
    // Serialize message field [response]
    bufferOffset = ASRSrvResponse.serialize(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ASRServiceResponse
    let len;
    let data = new ASRServiceResponse(null);
    // Deserialize message field [response]
    data.response = ASRSrvResponse.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ASRSrvResponse.getMessageSize(object.response);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_interaction_msgs/ASRServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea637128b99766dfe061d621936cbd13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pal_interaction_msgs/ASRSrvResponse response
    
    
    ================================================================================
    MSG: pal_interaction_msgs/ASRSrvResponse
    # The status of the ASR with additional error or warning information
    ASRStatus status
    string error_msg
    string warn_msg
    
    ================================================================================
    MSG: pal_interaction_msgs/ASRStatus
    # The status of the ASR
    # if it is active then active=true
    bool active
    
    # the current language 
    string language
    
    # the current enabled grammar
    string enabled_grammar
    
    # the current acoustic models
    string acoustic_env
    
    # A description of the audio device the 
    # recognizer is taking audio from.
    AudioDeviceDescription device
    
    ================================================================================
    MSG: pal_interaction_msgs/AudioDeviceDescription
    # Description of an audio device.
    
    int8 SIGNED = 0
    int8 UNSIGNED = 1
    
    
    # name of the device (usually a portaudio name)
    string device_name
    
    # sample rate of the acquired audio signal
    uint32 sample_rate
    
    # sample size in bits
    int8 sample_size
    
    # format can be SIGNED or UNSIGNED
    int8 format
    
    # buffer size used to acquire data.
    uint16 buffer_size
    
    # number of recorded channels
    int8 number_of_channels
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ASRServiceResponse(null);
    if (msg.response !== undefined) {
      resolved.response = ASRSrvResponse.Resolve(msg.response)
    }
    else {
      resolved.response = new ASRSrvResponse()
    }

    return resolved;
    }
};

module.exports = {
  Request: ASRServiceRequest,
  Response: ASRServiceResponse,
  md5sum() { return 'f43b49712181a29a41dc6f7687806c53'; },
  datatype() { return 'pal_interaction_msgs/ASRService'; }
};
