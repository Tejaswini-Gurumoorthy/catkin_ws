// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class hello {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.helloo = null;
    }
    else {
      if (initObj.hasOwnProperty('helloo')) {
        this.helloo = initObj.helloo
      }
      else {
        this.helloo = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type hello
    // Serialize message field [helloo]
    bufferOffset = _serializer.string(obj.helloo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type hello
    let len;
    let data = new hello(null);
    // Deserialize message field [helloo]
    data.helloo = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.helloo);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/hello';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79c61f44b47be5109868ef063497ba56';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string helloo
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new hello(null);
    if (msg.helloo !== undefined) {
      resolved.helloo = msg.helloo;
    }
    else {
      resolved.helloo = ''
    }

    return resolved;
    }
};

module.exports = hello;
