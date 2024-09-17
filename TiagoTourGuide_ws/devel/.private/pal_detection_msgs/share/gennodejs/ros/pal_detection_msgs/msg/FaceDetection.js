// Auto-generated. Do not edit!

// (in-package pal_detection_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class FaceDetection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.width = null;
      this.height = null;
      this.eyesLocated = null;
      this.leftEyeX = null;
      this.leftEyeY = null;
      this.rightEyeX = null;
      this.rightEyeY = null;
      this.position = null;
      this.name = null;
      this.confidence = null;
      this.gender = null;
      this.genderConfidence = null;
      this.expression = null;
      this.expression_confidence = null;
      this.emotion_anger_confidence = null;
      this.emotion_disgust_confidence = null;
      this.emotion_fear_confidence = null;
      this.emotion_happiness_confidence = null;
      this.emotion_neutral_confidence = null;
      this.emotion_sadness_confidence = null;
      this.emotion_surprise_confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('eyesLocated')) {
        this.eyesLocated = initObj.eyesLocated
      }
      else {
        this.eyesLocated = false;
      }
      if (initObj.hasOwnProperty('leftEyeX')) {
        this.leftEyeX = initObj.leftEyeX
      }
      else {
        this.leftEyeX = 0;
      }
      if (initObj.hasOwnProperty('leftEyeY')) {
        this.leftEyeY = initObj.leftEyeY
      }
      else {
        this.leftEyeY = 0;
      }
      if (initObj.hasOwnProperty('rightEyeX')) {
        this.rightEyeX = initObj.rightEyeX
      }
      else {
        this.rightEyeX = 0;
      }
      if (initObj.hasOwnProperty('rightEyeY')) {
        this.rightEyeY = initObj.rightEyeY
      }
      else {
        this.rightEyeY = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('gender')) {
        this.gender = initObj.gender
      }
      else {
        this.gender = '';
      }
      if (initObj.hasOwnProperty('genderConfidence')) {
        this.genderConfidence = initObj.genderConfidence
      }
      else {
        this.genderConfidence = 0.0;
      }
      if (initObj.hasOwnProperty('expression')) {
        this.expression = initObj.expression
      }
      else {
        this.expression = '';
      }
      if (initObj.hasOwnProperty('expression_confidence')) {
        this.expression_confidence = initObj.expression_confidence
      }
      else {
        this.expression_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('emotion_anger_confidence')) {
        this.emotion_anger_confidence = initObj.emotion_anger_confidence
      }
      else {
        this.emotion_anger_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('emotion_disgust_confidence')) {
        this.emotion_disgust_confidence = initObj.emotion_disgust_confidence
      }
      else {
        this.emotion_disgust_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('emotion_fear_confidence')) {
        this.emotion_fear_confidence = initObj.emotion_fear_confidence
      }
      else {
        this.emotion_fear_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('emotion_happiness_confidence')) {
        this.emotion_happiness_confidence = initObj.emotion_happiness_confidence
      }
      else {
        this.emotion_happiness_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('emotion_neutral_confidence')) {
        this.emotion_neutral_confidence = initObj.emotion_neutral_confidence
      }
      else {
        this.emotion_neutral_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('emotion_sadness_confidence')) {
        this.emotion_sadness_confidence = initObj.emotion_sadness_confidence
      }
      else {
        this.emotion_sadness_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('emotion_surprise_confidence')) {
        this.emotion_surprise_confidence = initObj.emotion_surprise_confidence
      }
      else {
        this.emotion_surprise_confidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FaceDetection
    // Serialize message field [x]
    bufferOffset = _serializer.int32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.int32(obj.y, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [eyesLocated]
    bufferOffset = _serializer.bool(obj.eyesLocated, buffer, bufferOffset);
    // Serialize message field [leftEyeX]
    bufferOffset = _serializer.int32(obj.leftEyeX, buffer, bufferOffset);
    // Serialize message field [leftEyeY]
    bufferOffset = _serializer.int32(obj.leftEyeY, buffer, bufferOffset);
    // Serialize message field [rightEyeX]
    bufferOffset = _serializer.int32(obj.rightEyeX, buffer, bufferOffset);
    // Serialize message field [rightEyeY]
    bufferOffset = _serializer.int32(obj.rightEyeY, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [gender]
    bufferOffset = _serializer.string(obj.gender, buffer, bufferOffset);
    // Serialize message field [genderConfidence]
    bufferOffset = _serializer.float32(obj.genderConfidence, buffer, bufferOffset);
    // Serialize message field [expression]
    bufferOffset = _serializer.string(obj.expression, buffer, bufferOffset);
    // Serialize message field [expression_confidence]
    bufferOffset = _serializer.float32(obj.expression_confidence, buffer, bufferOffset);
    // Serialize message field [emotion_anger_confidence]
    bufferOffset = _serializer.float32(obj.emotion_anger_confidence, buffer, bufferOffset);
    // Serialize message field [emotion_disgust_confidence]
    bufferOffset = _serializer.float32(obj.emotion_disgust_confidence, buffer, bufferOffset);
    // Serialize message field [emotion_fear_confidence]
    bufferOffset = _serializer.float32(obj.emotion_fear_confidence, buffer, bufferOffset);
    // Serialize message field [emotion_happiness_confidence]
    bufferOffset = _serializer.float32(obj.emotion_happiness_confidence, buffer, bufferOffset);
    // Serialize message field [emotion_neutral_confidence]
    bufferOffset = _serializer.float32(obj.emotion_neutral_confidence, buffer, bufferOffset);
    // Serialize message field [emotion_sadness_confidence]
    bufferOffset = _serializer.float32(obj.emotion_sadness_confidence, buffer, bufferOffset);
    // Serialize message field [emotion_surprise_confidence]
    bufferOffset = _serializer.float32(obj.emotion_surprise_confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FaceDetection
    let len;
    let data = new FaceDetection(null);
    // Deserialize message field [x]
    data.x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [eyesLocated]
    data.eyesLocated = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [leftEyeX]
    data.leftEyeX = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [leftEyeY]
    data.leftEyeY = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rightEyeX]
    data.rightEyeX = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rightEyeY]
    data.rightEyeY = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gender]
    data.gender = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [genderConfidence]
    data.genderConfidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [expression]
    data.expression = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [expression_confidence]
    data.expression_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [emotion_anger_confidence]
    data.emotion_anger_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [emotion_disgust_confidence]
    data.emotion_disgust_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [emotion_fear_confidence]
    data.emotion_fear_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [emotion_happiness_confidence]
    data.emotion_happiness_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [emotion_neutral_confidence]
    data.emotion_neutral_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [emotion_sadness_confidence]
    data.emotion_sadness_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [emotion_surprise_confidence]
    data.emotion_surprise_confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.gender);
    length += _getByteLength(object.expression);
    return length + 97;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_detection_msgs/FaceDetection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6dcee331fa45e6aea891516390b9e96d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    ##########################################
    #
    # Face detection data
    #
    ##########################################
    
    #####################
    # Face bounding box
    #####################
    # coordinates of the top left corner of the box
    int32 x
    int32 y
    
    # width of the box
    int32 width
    
    # height of the box
    int32 height
    
    ############################
    # Eyes position (if found)
    ############################
    
    bool eyesLocated
    
    int32 leftEyeX
    int32 leftEyeY
    int32 rightEyeX
    int32 rightEyeY
    
    #############################
    # Centre of eyes 3D estimate
    #############################
    geometry_msgs/Point32 position
    
    
    ############################
    # Person recognition
    ############################
    
    string name
    float32 confidence
    
    ############################
    # Gender recognition
    ############################
    string gender
    float32 genderConfidence
    
    ############################
    # Facial expression
    ############################
    string EXPRESSION_NEUTRAL="neutral"
    string EXPRESSION_SMILE="smile"
    string EXPRESSION_RAISED_BROWS="raised brows"
    string EXPRESSION_EYES_AWAY="eyes away"
    string EXPRESSION_SQUINTING="squinting"
    string EXPRESSION_FROWNING="frowning"
    string expression
    float32 expression_confidence
    
    ############################
    # Facial emotion
    ############################
    float32 emotion_anger_confidence
    float32 emotion_disgust_confidence
    float32 emotion_fear_confidence
    float32 emotion_happiness_confidence
    float32 emotion_neutral_confidence
    float32 emotion_sadness_confidence
    float32 emotion_surprise_confidence
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FaceDetection(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.eyesLocated !== undefined) {
      resolved.eyesLocated = msg.eyesLocated;
    }
    else {
      resolved.eyesLocated = false
    }

    if (msg.leftEyeX !== undefined) {
      resolved.leftEyeX = msg.leftEyeX;
    }
    else {
      resolved.leftEyeX = 0
    }

    if (msg.leftEyeY !== undefined) {
      resolved.leftEyeY = msg.leftEyeY;
    }
    else {
      resolved.leftEyeY = 0
    }

    if (msg.rightEyeX !== undefined) {
      resolved.rightEyeX = msg.rightEyeX;
    }
    else {
      resolved.rightEyeX = 0
    }

    if (msg.rightEyeY !== undefined) {
      resolved.rightEyeY = msg.rightEyeY;
    }
    else {
      resolved.rightEyeY = 0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point32.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point32()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.gender !== undefined) {
      resolved.gender = msg.gender;
    }
    else {
      resolved.gender = ''
    }

    if (msg.genderConfidence !== undefined) {
      resolved.genderConfidence = msg.genderConfidence;
    }
    else {
      resolved.genderConfidence = 0.0
    }

    if (msg.expression !== undefined) {
      resolved.expression = msg.expression;
    }
    else {
      resolved.expression = ''
    }

    if (msg.expression_confidence !== undefined) {
      resolved.expression_confidence = msg.expression_confidence;
    }
    else {
      resolved.expression_confidence = 0.0
    }

    if (msg.emotion_anger_confidence !== undefined) {
      resolved.emotion_anger_confidence = msg.emotion_anger_confidence;
    }
    else {
      resolved.emotion_anger_confidence = 0.0
    }

    if (msg.emotion_disgust_confidence !== undefined) {
      resolved.emotion_disgust_confidence = msg.emotion_disgust_confidence;
    }
    else {
      resolved.emotion_disgust_confidence = 0.0
    }

    if (msg.emotion_fear_confidence !== undefined) {
      resolved.emotion_fear_confidence = msg.emotion_fear_confidence;
    }
    else {
      resolved.emotion_fear_confidence = 0.0
    }

    if (msg.emotion_happiness_confidence !== undefined) {
      resolved.emotion_happiness_confidence = msg.emotion_happiness_confidence;
    }
    else {
      resolved.emotion_happiness_confidence = 0.0
    }

    if (msg.emotion_neutral_confidence !== undefined) {
      resolved.emotion_neutral_confidence = msg.emotion_neutral_confidence;
    }
    else {
      resolved.emotion_neutral_confidence = 0.0
    }

    if (msg.emotion_sadness_confidence !== undefined) {
      resolved.emotion_sadness_confidence = msg.emotion_sadness_confidence;
    }
    else {
      resolved.emotion_sadness_confidence = 0.0
    }

    if (msg.emotion_surprise_confidence !== undefined) {
      resolved.emotion_surprise_confidence = msg.emotion_surprise_confidence;
    }
    else {
      resolved.emotion_surprise_confidence = 0.0
    }

    return resolved;
    }
};

// Constants for message
FaceDetection.Constants = {
  EXPRESSION_NEUTRAL: '"neutral"',
  EXPRESSION_SMILE: '"smile"',
  EXPRESSION_RAISED_BROWS: '"raised brows"',
  EXPRESSION_EYES_AWAY: '"eyes away"',
  EXPRESSION_SQUINTING: '"squinting"',
  EXPRESSION_FROWNING: '"frowning"',
}

module.exports = FaceDetection;
