// Auto-generated. Do not edit!

// (in-package pal_detection_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Detection2d = require('./Detection2d.js');
let FaceDetection = require('./FaceDetection.js');
let LegDetections = require('./LegDetections.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PersonDetection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.full_body = null;
      this.face = null;
      this.legs = null;
      this.position3D = null;
    }
    else {
      if (initObj.hasOwnProperty('full_body')) {
        this.full_body = initObj.full_body
      }
      else {
        this.full_body = new Detection2d();
      }
      if (initObj.hasOwnProperty('face')) {
        this.face = initObj.face
      }
      else {
        this.face = new FaceDetection();
      }
      if (initObj.hasOwnProperty('legs')) {
        this.legs = initObj.legs
      }
      else {
        this.legs = new LegDetections();
      }
      if (initObj.hasOwnProperty('position3D')) {
        this.position3D = initObj.position3D
      }
      else {
        this.position3D = new geometry_msgs.msg.PointStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PersonDetection
    // Serialize message field [full_body]
    bufferOffset = Detection2d.serialize(obj.full_body, buffer, bufferOffset);
    // Serialize message field [face]
    bufferOffset = FaceDetection.serialize(obj.face, buffer, bufferOffset);
    // Serialize message field [legs]
    bufferOffset = LegDetections.serialize(obj.legs, buffer, bufferOffset);
    // Serialize message field [position3D]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.position3D, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PersonDetection
    let len;
    let data = new PersonDetection(null);
    // Deserialize message field [full_body]
    data.full_body = Detection2d.deserialize(buffer, bufferOffset);
    // Deserialize message field [face]
    data.face = FaceDetection.deserialize(buffer, bufferOffset);
    // Deserialize message field [legs]
    data.legs = LegDetections.deserialize(buffer, bufferOffset);
    // Deserialize message field [position3D]
    data.position3D = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += FaceDetection.getMessageSize(object.face);
    length += LegDetections.getMessageSize(object.legs);
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.position3D);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_detection_msgs/PersonDetection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e36e1ffebbbf48f74bd26f2521fb377f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Contains detection correspondences among the different person detectors available
    
    # full body image detection. If width == height == 0 then no full body detection is available
    pal_detection_msgs/Detection2d full_body
    
    # face image detection. If width == height == 0 then the face has not been detected
    pal_detection_msgs/FaceDetection face
    
    # leg detection in laser scan. If Point is (0,0,0) then no legs have been detected
    pal_detection_msgs/LegDetections legs
    
    # 3D position of the person with respect to a given frame specified in the header of the PointStamped.
    # If the position is not available then (0,0,0) is set.
    geometry_msgs/PointStamped position3D 
    
    
    ================================================================================
    MSG: pal_detection_msgs/Detection2d
    ## Rectangle defined by a point, its width and height
    # corresponds to the openCV struct : CvRect
    
    # coordinates of the top left corner of the box
    int64 x
    int64 y
    
    # width of the box
    int64 width
    
    # height of the box
    int64 height
    
    
    ================================================================================
    MSG: pal_detection_msgs/FaceDetection
    
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
    ================================================================================
    MSG: pal_detection_msgs/LegDetections
    ## Contains data relative to the detection of the legs of persons in a laser scan
    
    Header header
    
    geometry_msgs/Point[]  position3D    # 3D position of the persons' legs in a given frame
    
    # Optional transformation between the laser frame and a certain parent frame
    geometry_msgs/TransformStamped laser_pose
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/TransformStamped
    # This expresses a transform from coordinate frame header.frame_id
    # to the coordinate frame child_frame_id
    #
    # This message is mostly used by the 
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/PointStamped
    # This represents a Point with reference coordinate frame and timestamp
    Header header
    Point point
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PersonDetection(null);
    if (msg.full_body !== undefined) {
      resolved.full_body = Detection2d.Resolve(msg.full_body)
    }
    else {
      resolved.full_body = new Detection2d()
    }

    if (msg.face !== undefined) {
      resolved.face = FaceDetection.Resolve(msg.face)
    }
    else {
      resolved.face = new FaceDetection()
    }

    if (msg.legs !== undefined) {
      resolved.legs = LegDetections.Resolve(msg.legs)
    }
    else {
      resolved.legs = new LegDetections()
    }

    if (msg.position3D !== undefined) {
      resolved.position3D = geometry_msgs.msg.PointStamped.Resolve(msg.position3D)
    }
    else {
      resolved.position3D = new geometry_msgs.msg.PointStamped()
    }

    return resolved;
    }
};

module.exports = PersonDetection;
