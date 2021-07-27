; Auto-generated. Do not edit!


(cl:in-package scara_velocity_kinematics-srv)


;//! \htmlinclude ee_to_joint_velocity-request.msg.html

(cl:defclass <ee_to_joint_velocity-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (th1
    :reader th1
    :initarg :th1
    :type cl:float
    :initform 0.0)
   (th2
    :reader th2
    :initarg :th2
    :type cl:float
    :initform 0.0)
   (d3
    :reader d3
    :initarg :d3
    :type cl:float
    :initform 0.0))
)

(cl:defclass ee_to_joint_velocity-request (<ee_to_joint_velocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ee_to_joint_velocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ee_to_joint_velocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_velocity_kinematics-srv:<ee_to_joint_velocity-request> is deprecated: use scara_velocity_kinematics-srv:ee_to_joint_velocity-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <ee_to_joint_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_velocity_kinematics-srv:x-val is deprecated.  Use scara_velocity_kinematics-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <ee_to_joint_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_velocity_kinematics-srv:y-val is deprecated.  Use scara_velocity_kinematics-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <ee_to_joint_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_velocity_kinematics-srv:z-val is deprecated.  Use scara_velocity_kinematics-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'th1-val :lambda-list '(m))
(cl:defmethod th1-val ((m <ee_to_joint_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_velocity_kinematics-srv:th1-val is deprecated.  Use scara_velocity_kinematics-srv:th1 instead.")
  (th1 m))

(cl:ensure-generic-function 'th2-val :lambda-list '(m))
(cl:defmethod th2-val ((m <ee_to_joint_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_velocity_kinematics-srv:th2-val is deprecated.  Use scara_velocity_kinematics-srv:th2 instead.")
  (th2 m))

(cl:ensure-generic-function 'd3-val :lambda-list '(m))
(cl:defmethod d3-val ((m <ee_to_joint_velocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_velocity_kinematics-srv:d3-val is deprecated.  Use scara_velocity_kinematics-srv:d3 instead.")
  (d3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ee_to_joint_velocity-request>) ostream)
  "Serializes a message object of type '<ee_to_joint_velocity-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'th1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'th2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'd3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ee_to_joint_velocity-request>) istream)
  "Deserializes a message object of type '<ee_to_joint_velocity-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd3) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ee_to_joint_velocity-request>)))
  "Returns string type for a service object of type '<ee_to_joint_velocity-request>"
  "scara_velocity_kinematics/ee_to_joint_velocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ee_to_joint_velocity-request)))
  "Returns string type for a service object of type 'ee_to_joint_velocity-request"
  "scara_velocity_kinematics/ee_to_joint_velocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ee_to_joint_velocity-request>)))
  "Returns md5sum for a message object of type '<ee_to_joint_velocity-request>"
  "f7f9e62736547771aaa406fc9f3bb3cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ee_to_joint_velocity-request)))
  "Returns md5sum for a message object of type 'ee_to_joint_velocity-request"
  "f7f9e62736547771aaa406fc9f3bb3cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ee_to_joint_velocity-request>)))
  "Returns full string definition for message of type '<ee_to_joint_velocity-request>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 z~%float64 th1~%float64 th2~%float64 d3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ee_to_joint_velocity-request)))
  "Returns full string definition for message of type 'ee_to_joint_velocity-request"
  (cl:format cl:nil "float64 x~%float64 y~%float64 z~%float64 th1~%float64 th2~%float64 d3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ee_to_joint_velocity-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ee_to_joint_velocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ee_to_joint_velocity-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':th1 (th1 msg))
    (cl:cons ':th2 (th2 msg))
    (cl:cons ':d3 (d3 msg))
))
;//! \htmlinclude ee_to_joint_velocity-response.msg.html

(cl:defclass <ee_to_joint_velocity-response> (roslisp-msg-protocol:ros-message)
  ((th1_dot
    :reader th1_dot
    :initarg :th1_dot
    :type cl:float
    :initform 0.0)
   (th2_dot
    :reader th2_dot
    :initarg :th2_dot
    :type cl:float
    :initform 0.0)
   (d3_dot
    :reader d3_dot
    :initarg :d3_dot
    :type cl:float
    :initform 0.0))
)

(cl:defclass ee_to_joint_velocity-response (<ee_to_joint_velocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ee_to_joint_velocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ee_to_joint_velocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_velocity_kinematics-srv:<ee_to_joint_velocity-response> is deprecated: use scara_velocity_kinematics-srv:ee_to_joint_velocity-response instead.")))

(cl:ensure-generic-function 'th1_dot-val :lambda-list '(m))
(cl:defmethod th1_dot-val ((m <ee_to_joint_velocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_velocity_kinematics-srv:th1_dot-val is deprecated.  Use scara_velocity_kinematics-srv:th1_dot instead.")
  (th1_dot m))

(cl:ensure-generic-function 'th2_dot-val :lambda-list '(m))
(cl:defmethod th2_dot-val ((m <ee_to_joint_velocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_velocity_kinematics-srv:th2_dot-val is deprecated.  Use scara_velocity_kinematics-srv:th2_dot instead.")
  (th2_dot m))

(cl:ensure-generic-function 'd3_dot-val :lambda-list '(m))
(cl:defmethod d3_dot-val ((m <ee_to_joint_velocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_velocity_kinematics-srv:d3_dot-val is deprecated.  Use scara_velocity_kinematics-srv:d3_dot instead.")
  (d3_dot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ee_to_joint_velocity-response>) ostream)
  "Serializes a message object of type '<ee_to_joint_velocity-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'th1_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'th2_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'd3_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ee_to_joint_velocity-response>) istream)
  "Deserializes a message object of type '<ee_to_joint_velocity-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th1_dot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th2_dot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd3_dot) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ee_to_joint_velocity-response>)))
  "Returns string type for a service object of type '<ee_to_joint_velocity-response>"
  "scara_velocity_kinematics/ee_to_joint_velocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ee_to_joint_velocity-response)))
  "Returns string type for a service object of type 'ee_to_joint_velocity-response"
  "scara_velocity_kinematics/ee_to_joint_velocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ee_to_joint_velocity-response>)))
  "Returns md5sum for a message object of type '<ee_to_joint_velocity-response>"
  "f7f9e62736547771aaa406fc9f3bb3cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ee_to_joint_velocity-response)))
  "Returns md5sum for a message object of type 'ee_to_joint_velocity-response"
  "f7f9e62736547771aaa406fc9f3bb3cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ee_to_joint_velocity-response>)))
  "Returns full string definition for message of type '<ee_to_joint_velocity-response>"
  (cl:format cl:nil "float64 th1_dot~%float64 th2_dot~%float64 d3_dot~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ee_to_joint_velocity-response)))
  "Returns full string definition for message of type 'ee_to_joint_velocity-response"
  (cl:format cl:nil "float64 th1_dot~%float64 th2_dot~%float64 d3_dot~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ee_to_joint_velocity-response>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ee_to_joint_velocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ee_to_joint_velocity-response
    (cl:cons ':th1_dot (th1_dot msg))
    (cl:cons ':th2_dot (th2_dot msg))
    (cl:cons ':d3_dot (d3_dot msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ee_to_joint_velocity)))
  'ee_to_joint_velocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ee_to_joint_velocity)))
  'ee_to_joint_velocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ee_to_joint_velocity)))
  "Returns string type for a service object of type '<ee_to_joint_velocity>"
  "scara_velocity_kinematics/ee_to_joint_velocity")