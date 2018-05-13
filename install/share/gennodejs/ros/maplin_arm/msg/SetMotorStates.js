// Auto-generated. Do not edit!

// (in-package maplin_arm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorState = require('./MotorState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SetMotorStates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.motorStates = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('motorStates')) {
        this.motorStates = initObj.motorStates
      }
      else {
        this.motorStates = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetMotorStates
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [motorStates]
    // Serialize the length for message field [motorStates]
    bufferOffset = _serializer.uint32(obj.motorStates.length, buffer, bufferOffset);
    obj.motorStates.forEach((val) => {
      bufferOffset = MotorState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMotorStates
    let len;
    let data = new SetMotorStates(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [motorStates]
    // Deserialize array length for message field [motorStates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.motorStates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.motorStates[i] = MotorState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.motorStates.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'maplin_arm/SetMotorStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '56722fcd842fbf3dbe76bd48941f870f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    MotorState[] motorStates
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: maplin_arm/MotorState
    int32 motorIdx
    int32 motorState
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetMotorStates(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.motorStates !== undefined) {
      resolved.motorStates = new Array(msg.motorStates.length);
      for (let i = 0; i < resolved.motorStates.length; ++i) {
        resolved.motorStates[i] = MotorState.Resolve(msg.motorStates[i]);
      }
    }
    else {
      resolved.motorStates = []
    }

    return resolved;
    }
};

module.exports = SetMotorStates;
