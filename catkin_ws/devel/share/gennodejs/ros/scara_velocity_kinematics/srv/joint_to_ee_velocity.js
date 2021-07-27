// Auto-generated. Do not edit!

// (in-package scara_velocity_kinematics.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class joint_to_ee_velocityRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.th1 = null;
      this.th2 = null;
      this.d3 = null;
      this.th1_dot = null;
      this.th2_dot = null;
      this.d3_dot = null;
    }
    else {
      if (initObj.hasOwnProperty('th1')) {
        this.th1 = initObj.th1
      }
      else {
        this.th1 = 0.0;
      }
      if (initObj.hasOwnProperty('th2')) {
        this.th2 = initObj.th2
      }
      else {
        this.th2 = 0.0;
      }
      if (initObj.hasOwnProperty('d3')) {
        this.d3 = initObj.d3
      }
      else {
        this.d3 = 0.0;
      }
      if (initObj.hasOwnProperty('th1_dot')) {
        this.th1_dot = initObj.th1_dot
      }
      else {
        this.th1_dot = 0.0;
      }
      if (initObj.hasOwnProperty('th2_dot')) {
        this.th2_dot = initObj.th2_dot
      }
      else {
        this.th2_dot = 0.0;
      }
      if (initObj.hasOwnProperty('d3_dot')) {
        this.d3_dot = initObj.d3_dot
      }
      else {
        this.d3_dot = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type joint_to_ee_velocityRequest
    // Serialize message field [th1]
    bufferOffset = _serializer.float64(obj.th1, buffer, bufferOffset);
    // Serialize message field [th2]
    bufferOffset = _serializer.float64(obj.th2, buffer, bufferOffset);
    // Serialize message field [d3]
    bufferOffset = _serializer.float64(obj.d3, buffer, bufferOffset);
    // Serialize message field [th1_dot]
    bufferOffset = _serializer.float64(obj.th1_dot, buffer, bufferOffset);
    // Serialize message field [th2_dot]
    bufferOffset = _serializer.float64(obj.th2_dot, buffer, bufferOffset);
    // Serialize message field [d3_dot]
    bufferOffset = _serializer.float64(obj.d3_dot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type joint_to_ee_velocityRequest
    let len;
    let data = new joint_to_ee_velocityRequest(null);
    // Deserialize message field [th1]
    data.th1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [th2]
    data.th2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d3]
    data.d3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [th1_dot]
    data.th1_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [th2_dot]
    data.th2_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d3_dot]
    data.d3_dot = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_velocity_kinematics/joint_to_ee_velocityRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94c0e53b96ae984787f7b524a794ee48';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 th1
    float64 th2
    float64 d3
    float64 th1_dot
    float64 th2_dot
    float64 d3_dot
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new joint_to_ee_velocityRequest(null);
    if (msg.th1 !== undefined) {
      resolved.th1 = msg.th1;
    }
    else {
      resolved.th1 = 0.0
    }

    if (msg.th2 !== undefined) {
      resolved.th2 = msg.th2;
    }
    else {
      resolved.th2 = 0.0
    }

    if (msg.d3 !== undefined) {
      resolved.d3 = msg.d3;
    }
    else {
      resolved.d3 = 0.0
    }

    if (msg.th1_dot !== undefined) {
      resolved.th1_dot = msg.th1_dot;
    }
    else {
      resolved.th1_dot = 0.0
    }

    if (msg.th2_dot !== undefined) {
      resolved.th2_dot = msg.th2_dot;
    }
    else {
      resolved.th2_dot = 0.0
    }

    if (msg.d3_dot !== undefined) {
      resolved.d3_dot = msg.d3_dot;
    }
    else {
      resolved.d3_dot = 0.0
    }

    return resolved;
    }
};

class joint_to_ee_velocityResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.wx = null;
      this.wy = null;
      this.wz = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('wx')) {
        this.wx = initObj.wx
      }
      else {
        this.wx = 0.0;
      }
      if (initObj.hasOwnProperty('wy')) {
        this.wy = initObj.wy
      }
      else {
        this.wy = 0.0;
      }
      if (initObj.hasOwnProperty('wz')) {
        this.wz = initObj.wz
      }
      else {
        this.wz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type joint_to_ee_velocityResponse
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [wx]
    bufferOffset = _serializer.float64(obj.wx, buffer, bufferOffset);
    // Serialize message field [wy]
    bufferOffset = _serializer.float64(obj.wy, buffer, bufferOffset);
    // Serialize message field [wz]
    bufferOffset = _serializer.float64(obj.wz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type joint_to_ee_velocityResponse
    let len;
    let data = new joint_to_ee_velocityResponse(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wx]
    data.wx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wy]
    data.wy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wz]
    data.wz = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_velocity_kinematics/joint_to_ee_velocityResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b0a1f9128335871daf9429e0c162294';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    float64 z
    float64 wx
    float64 wy
    float64 wz
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new joint_to_ee_velocityResponse(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.wx !== undefined) {
      resolved.wx = msg.wx;
    }
    else {
      resolved.wx = 0.0
    }

    if (msg.wy !== undefined) {
      resolved.wy = msg.wy;
    }
    else {
      resolved.wy = 0.0
    }

    if (msg.wz !== undefined) {
      resolved.wz = msg.wz;
    }
    else {
      resolved.wz = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: joint_to_ee_velocityRequest,
  Response: joint_to_ee_velocityResponse,
  md5sum() { return 'e127c5fbc297814596b68f3ef33853a2'; },
  datatype() { return 'scara_velocity_kinematics/joint_to_ee_velocity'; }
};
