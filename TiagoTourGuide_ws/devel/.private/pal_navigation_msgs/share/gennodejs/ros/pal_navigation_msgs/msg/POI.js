// Auto-generated. Do not edit!

// (in-package pal_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class POI {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.points = null;
      this.ids = null;
      this.map_id = null;
    }
    else {
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = new sensor_msgs.msg.PointCloud();
      }
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('map_id')) {
        this.map_id = initObj.map_id
      }
      else {
        this.map_id = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type POI
    // Serialize message field [points]
    bufferOffset = sensor_msgs.msg.PointCloud.serialize(obj.points, buffer, bufferOffset);
    // Serialize message field [ids]
    // Serialize the length for message field [ids]
    bufferOffset = _serializer.uint32(obj.ids.length, buffer, bufferOffset);
    obj.ids.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [map_id]
    bufferOffset = std_msgs.msg.String.serialize(obj.map_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type POI
    let len;
    let data = new POI(null);
    // Deserialize message field [points]
    data.points = sensor_msgs.msg.PointCloud.deserialize(buffer, bufferOffset);
    // Deserialize message field [ids]
    // Deserialize array length for message field [ids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ids[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [map_id]
    data.map_id = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud.getMessageSize(object.points);
    object.ids.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    length += std_msgs.msg.String.getMessageSize(object.map_id);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_navigation_msgs/POI';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'accd8dd07484c01aa4180821c83d7d4f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Poi (Point of interest)
    
    sensor_msgs/PointCloud points
    
    std_msgs/String[]      ids
    
    std_msgs/String        map_id
    
    ================================================================================
    MSG: sensor_msgs/PointCloud
    # This message holds a collection of 3d points, plus optional additional
    # information about each point.
    
    # Time of sensor data acquisition, coordinate frame ID.
    Header header
    
    # Array of 3d points. Each Point32 should be interpreted as a 3d point
    # in the frame given in the header.
    geometry_msgs/Point32[] points
    
    # Each channel should have the same number of elements as points array,
    # and the data in each channel should correspond 1:1 with each point.
    # Channel names in common practice are listed in ChannelFloat32.msg.
    ChannelFloat32[] channels
    
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
    MSG: sensor_msgs/ChannelFloat32
    # This message is used by the PointCloud message to hold optional data
    # associated with each point in the cloud. The length of the values
    # array should be the same as the length of the points array in the
    # PointCloud, and each value should be associated with the corresponding
    # point.
    
    # Channel names in existing practice include:
    #   "u", "v" - row and column (respectively) in the left stereo image.
    #              This is opposite to usual conventions but remains for
    #              historical reasons. The newer PointCloud2 message has no
    #              such problem.
    #   "rgb" - For point clouds produced by color stereo cameras. uint8
    #           (R,G,B) values packed into the least significant 24 bits,
    #           in order.
    #   "intensity" - laser or pixel intensity.
    #   "distance"
    
    # The channel name should give semantics of the channel (e.g.
    # "intensity" instead of "value").
    string name
    
    # The values array should be 1-1 with the elements of the associated
    # PointCloud.
    float32[] values
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new POI(null);
    if (msg.points !== undefined) {
      resolved.points = sensor_msgs.msg.PointCloud.Resolve(msg.points)
    }
    else {
      resolved.points = new sensor_msgs.msg.PointCloud()
    }

    if (msg.ids !== undefined) {
      resolved.ids = new Array(msg.ids.length);
      for (let i = 0; i < resolved.ids.length; ++i) {
        resolved.ids[i] = std_msgs.msg.String.Resolve(msg.ids[i]);
      }
    }
    else {
      resolved.ids = []
    }

    if (msg.map_id !== undefined) {
      resolved.map_id = std_msgs.msg.String.Resolve(msg.map_id)
    }
    else {
      resolved.map_id = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = POI;
