// Auto-generated. Do not edit!

// (in-package maplin_arm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MotorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motorIdx = null;
      this.motorState = null;
    }
    else {
      if (initObj.hasOwnProperty('motorIdx')) {
        this.motorIdx = initObj.motorIdx
      }
      else {
        this.motorIdx = 0;
      }
      if (initObj.hasOwnProperty('motorState')) {
        this.motorState = initObj.motorState
      }
      else {
        this.motorState = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorState
    // Serialize message field [motorIdx]
    bufferOffset = _serializer.int32(obj.motorIdx, buffer, bufferOffset);
    // Serialize message field [motorState]
    bufferOffset = _serializer.int32(obj.motorState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorState
    let len;
    let data = new MotorState(null);
    // Deserialize message field [motorIdx]
    data.motorIdx = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motorState]
    data.motorState = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'maplin_arm/MotorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '085905ab1b5f55cc67e41ee7e021e374';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MotorState(null);
    if (msg.motorIdx !== undefined) {
      resolved.motorIdx = msg.motorIdx;
    }
    else {
      resolved.motorIdx = 0
    }

    if (msg.motorState !== undefined) {
      resolved.motorState = msg.motorState;
    }
    else {
      resolved.motorState = 0
    }

    return resolved;
    }
};

// Constants for message
MotorState.Constants = {
  SHOULDER: 0,
  ELBOW: 1,
  WRIST: 2,
  GRIPPER: 3,
  BASE: 4,
  LIGHT: 5,
  STOP: 0,
  DOWN: 1,
  UP: 2,
}

module.exports = MotorState;
