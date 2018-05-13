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
      this.command = null;
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
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
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
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
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
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.motorStates.length;
    length += object.command.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'maplin_arm/SetMotorStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd69a444bd7c491a9948f3ea063d83389';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    MotorState[] motorStates
    string command
    
    
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
    int32 SHOULDER=0
    int32 ELBOW=1
    int32 WRIST=2
    int32 GRIPPER=3
    int32 BASE=4
    int32 LIGHT=5
    
    int32 STOP=0
    int32 DOWN=1
    int32 UP=2
    
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

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    return resolved;
    }
};

module.exports = SetMotorStates;
