// Auto-generated. Do not edit!

// (in-package scara_pd_controller.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class JointControlReferenceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.th1_des = null;
      this.th2_des = null;
      this.d3_des = null;
    }
    else {
      if (initObj.hasOwnProperty('th1_des')) {
        this.th1_des = initObj.th1_des
      }
      else {
        this.th1_des = 0.0;
      }
      if (initObj.hasOwnProperty('th2_des')) {
        this.th2_des = initObj.th2_des
      }
      else {
        this.th2_des = 0.0;
      }
      if (initObj.hasOwnProperty('d3_des')) {
        this.d3_des = initObj.d3_des
      }
      else {
        this.d3_des = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointControlReferenceRequest
    // Serialize message field [th1_des]
    bufferOffset = _serializer.float64(obj.th1_des, buffer, bufferOffset);
    // Serialize message field [th2_des]
    bufferOffset = _serializer.float64(obj.th2_des, buffer, bufferOffset);
    // Serialize message field [d3_des]
    bufferOffset = _serializer.float64(obj.d3_des, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointControlReferenceRequest
    let len;
    let data = new JointControlReferenceRequest(null);
    // Deserialize message field [th1_des]
    data.th1_des = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [th2_des]
    data.th2_des = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d3_des]
    data.d3_des = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_pd_controller/JointControlReferenceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58000253bbd0172bbf3d9685de903072';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 th1_des
    float64 th2_des
    float64 d3_des
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointControlReferenceRequest(null);
    if (msg.th1_des !== undefined) {
      resolved.th1_des = msg.th1_des;
    }
    else {
      resolved.th1_des = 0.0
    }

    if (msg.th2_des !== undefined) {
      resolved.th2_des = msg.th2_des;
    }
    else {
      resolved.th2_des = 0.0
    }

    if (msg.d3_des !== undefined) {
      resolved.d3_des = msg.d3_des;
    }
    else {
      resolved.d3_des = 0.0
    }

    return resolved;
    }
};

class JointControlReferenceResponse {
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
    // Serializes a message object of type JointControlReferenceResponse
    // Serialize message field [success]
    bufferOffset = _serializer.float64(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointControlReferenceResponse
    let len;
    let data = new JointControlReferenceResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_pd_controller/JointControlReferenceResponse';
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
    const resolved = new JointControlReferenceResponse(null);
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
  Request: JointControlReferenceRequest,
  Response: JointControlReferenceResponse,
  md5sum() { return 'b44f6d6dfe052e9be2c71ab5a76c2d68'; },
  datatype() { return 'scara_pd_controller/JointControlReference'; }
};
