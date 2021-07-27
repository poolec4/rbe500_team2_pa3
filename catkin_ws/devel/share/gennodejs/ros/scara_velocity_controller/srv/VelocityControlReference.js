// Auto-generated. Do not edit!

// (in-package scara_velocity_controller.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class VelocityControlReferenceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_dot = null;
      this.y_dot = null;
      this.z_dot = null;
    }
    else {
      if (initObj.hasOwnProperty('x_dot')) {
        this.x_dot = initObj.x_dot
      }
      else {
        this.x_dot = 0.0;
      }
      if (initObj.hasOwnProperty('y_dot')) {
        this.y_dot = initObj.y_dot
      }
      else {
        this.y_dot = 0.0;
      }
      if (initObj.hasOwnProperty('z_dot')) {
        this.z_dot = initObj.z_dot
      }
      else {
        this.z_dot = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VelocityControlReferenceRequest
    // Serialize message field [x_dot]
    bufferOffset = _serializer.float64(obj.x_dot, buffer, bufferOffset);
    // Serialize message field [y_dot]
    bufferOffset = _serializer.float64(obj.y_dot, buffer, bufferOffset);
    // Serialize message field [z_dot]
    bufferOffset = _serializer.float64(obj.z_dot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelocityControlReferenceRequest
    let len;
    let data = new VelocityControlReferenceRequest(null);
    // Deserialize message field [x_dot]
    data.x_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_dot]
    data.y_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_dot]
    data.z_dot = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_velocity_controller/VelocityControlReferenceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '758a76377157281c429e71afe42fbfe1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x_dot
    float64 y_dot
    float64 z_dot
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VelocityControlReferenceRequest(null);
    if (msg.x_dot !== undefined) {
      resolved.x_dot = msg.x_dot;
    }
    else {
      resolved.x_dot = 0.0
    }

    if (msg.y_dot !== undefined) {
      resolved.y_dot = msg.y_dot;
    }
    else {
      resolved.y_dot = 0.0
    }

    if (msg.z_dot !== undefined) {
      resolved.z_dot = msg.z_dot;
    }
    else {
      resolved.z_dot = 0.0
    }

    return resolved;
    }
};

class VelocityControlReferenceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VelocityControlReferenceResponse
    // Serialize message field [success]
    bufferOffset = _serializer.float64(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelocityControlReferenceResponse
    let len;
    let data = new VelocityControlReferenceResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_velocity_controller/VelocityControlReferenceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4af43e792493e358c51b0904556e73b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VelocityControlReferenceResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: VelocityControlReferenceRequest,
  Response: VelocityControlReferenceResponse,
  md5sum() { return 'a2dcd12186fef25175dd209ccf6b3de3'; },
  datatype() { return 'scara_velocity_controller/VelocityControlReference'; }
};
