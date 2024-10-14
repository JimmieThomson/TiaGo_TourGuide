// Auto-generated. Do not edit!

// (in-package pal_interaction_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let asrresult = require('./asrresult.js');

//-----------------------------------------------------------

class ASREvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.event_id = null;
      this.listen_state = null;
      this.recognized_utterance = null;
      this.active = null;
    }
    else {
      if (initObj.hasOwnProperty('event_id')) {
        this.event_id = initObj.event_id
      }
      else {
        this.event_id = 0;
      }
      if (initObj.hasOwnProperty('listen_state')) {
        this.listen_state = initObj.listen_state
      }
      else {
        this.listen_state = 0;
      }
      if (initObj.hasOwnProperty('recognized_utterance')) {
        this.recognized_utterance = initObj.recognized_utterance
      }
      else {
        this.recognized_utterance = new asrresult();
      }
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ASREvent
    // Serialize message field [event_id]
    bufferOffset = _serializer.int8(obj.event_id, buffer, bufferOffset);
    // Serialize message field [listen_state]
    bufferOffset = _serializer.int8(obj.listen_state, buffer, bufferOffset);
    // Serialize message field [recognized_utterance]
    bufferOffset = asrresult.serialize(obj.recognized_utterance, buffer, bufferOffset);
    // Serialize message field [active]
    bufferOffset = _serializer.bool(obj.active, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ASREvent
    let len;
    let data = new ASREvent(null);
    // Deserialize message field [event_id]
    data.event_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [listen_state]
    data.listen_state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [recognized_utterance]
    data.recognized_utterance = asrresult.deserialize(buffer, bufferOffset);
    // Deserialize message field [active]
    data.active = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += asrresult.getMessageSize(object.recognized_utterance);
    return length + 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_interaction_msgs/ASREvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e26dacd12290ffb6af0944d5b6ae9ffd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ASR result messages used by RosRecognizerServer
    # This message are published in the ASR event topic.
    # The kind of events that are published are the following ones:
    ## Event types to be published.
    int8 EVENT_UNDEFINED          = -1
    int8 EVENT_LISTEN_STATE       = 1
    int8 EVENT_RECOGNIZED_UTT     = 2
    int8 EVENT_ASR_ACTIVATION     = 3
    int8 EVENT_FAILED_DECODING    = 4
    
    # 1-> The ASR changed its listening state.
    # 2-> The ASR recognized a full uterance and published the result
    # 3-> The ASR has been activated/deactivated
    # 4-> The ASR tried to regcognise an utterance unsuccesfuly
    
    # These are the possible listening states published when event_id = LISTENING_STATE
    
    ## Listen states
    int8 LISTEN_UNDEFINED = 20
    int8 LISTEN_CALIBRATION = 21
    int8 LISTEN_WAITING_FOR_SPEECH = 22
    int8 LISTEN_SPEECH_DETECTED = 23
    int8 LISTEN_END_OF_SPEECH = 24
    
    # 21-> Audio calibration is taking place
    # 22-> Some speech has been detected.
    # 23-> The ASR is waiting for someone to start speaking.
    # 24-> The end of an utterance has been found, and will start decoding it.
    
    ##  Message variables
    
    # The event type published.
    int8 event_id
    
    # The listening state of the ASR
    int8 listen_state
    
    # The recognized result in case of event_id = EVENT_RECOGNIZED_UTT
    # Also it contains a best-guess in case of event_id = EVENT_FAILED_DECODING
    asrresult recognized_utterance
    
    
    # The current state of the recognizer (activated/deactivated)
    bool active
    
    ================================================================================
    MSG: pal_interaction_msgs/asrresult
    ## Message that containes the recognized utterance.
    ## Confidence values
    int8 CONFIDENCE_UNDEFINED = -1
    int8 CONFIDENCE_POOR = 1
    int8 CONFIDENCE_LOW  = 2
    int8 CONFIDENCE_GOOD = 3
    int8 CONFIDENCE_MAX  = 4
    
    # ASR result messages used by RosRecognizerServer
    
    # text recognized
    string text
    
    # confidence with values from POOR to MAX
    int8 confidence
    
    # start and end of the recognizer uterance.
    time start
    time end
    
    # list of recognized tags
    # key value pairs of strings extracted from the text
    # given the action tags placed in the grammar.
    actiontag[] tags
    
    ================================================================================
    MSG: pal_interaction_msgs/actiontag
    # Action tag contaings the key/value information genertated by parsing the recognised text with a JSGF grammar 
    
    string key
    string value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ASREvent(null);
    if (msg.event_id !== undefined) {
      resolved.event_id = msg.event_id;
    }
    else {
      resolved.event_id = 0
    }

    if (msg.listen_state !== undefined) {
      resolved.listen_state = msg.listen_state;
    }
    else {
      resolved.listen_state = 0
    }

    if (msg.recognized_utterance !== undefined) {
      resolved.recognized_utterance = asrresult.Resolve(msg.recognized_utterance)
    }
    else {
      resolved.recognized_utterance = new asrresult()
    }

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = false
    }

    return resolved;
    }
};

// Constants for message
ASREvent.Constants = {
  EVENT_UNDEFINED: -1,
  EVENT_LISTEN_STATE: 1,
  EVENT_RECOGNIZED_UTT: 2,
  EVENT_ASR_ACTIVATION: 3,
  EVENT_FAILED_DECODING: 4,
  LISTEN_UNDEFINED: 20,
  LISTEN_CALIBRATION: 21,
  LISTEN_WAITING_FOR_SPEECH: 22,
  LISTEN_SPEECH_DETECTED: 23,
  LISTEN_END_OF_SPEECH: 24,
}

module.exports = ASREvent;
