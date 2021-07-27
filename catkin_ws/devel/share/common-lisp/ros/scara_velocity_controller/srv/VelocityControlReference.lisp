; Auto-generated. Do not edit!


(cl:in-package scara_velocity_controller-srv)


;//! \htmlinclude VelocityControlReference-request.msg.html

(cl:defclass <VelocityControlReference-request> (roslisp-msg-protocol:ros-message)
  ((x_dot
    :reader x_dot
    :initarg :x_dot
    :type cl:float
    :initform 0.0)
   (y_dot
    :reader y_dot
    :initarg :y_dot
    :type cl:float
    :initform 0.0)
   (z_dot
    :reader z_dot
    :initarg :z_dot
    :type cl:float
    :initform 0.0))
)

(cl:defclass VelocityControlReference-request (<VelocityControlReference-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityControlReference-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityControlReference-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_velocity_controller-srv:<VelocityControlReference-request> is deprecated: use scara_velocity_controller-srv:VelocityControlReference-request instead.")))

(cl:ensure-generic-function 'x_dot-val :lambda-list '(m))
(cl:defmethod x_dot-val ((m <VelocityControlReference-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_velocity_controller-srv:x_dot-val is deprecated.  Use scara_velocity_controller-srv:x_dot instead.")
  (x_dot m))

(cl:ensure-generic-function 'y_dot-val :lambda-list '(m))
(cl:defmethod y_dot-val ((m <VelocityControlReference-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_velocity_controller-srv:y_dot-val is deprecated.  Use scara_velocity_controller-srv:y_dot instead.")
  (y_dot m))

(cl:ensure-generic-function 'z_dot-val :lambda-list '(m))
(cl:defmethod z_dot-val ((m <VelocityControlReference-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_velocity_controller-srv:z_dot-val is deprecated.  Use scara_velocity_controller-srv:z_dot instead.")
  (z_dot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityControlReference-request>) ostream)
  "Serializes a message object of type '<VelocityControlReference-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityControlReference-request>) istream)
  "Deserializes a message object of type '<VelocityControlReference-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_dot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_dot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_dot) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityControlReference-request>)))
  "Returns string type for a service object of type '<VelocityControlReference-request>"
  "scara_velocity_controller/VelocityControlReferenceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityControlReference-request)))
  "Returns string type for a service object of type 'VelocityControlReference-request"
  "scara_velocity_controller/VelocityControlReferenceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityControlReference-request>)))
  "Returns md5sum for a message object of type '<VelocityControlReference-request>"
  "a2dcd12186fef25175dd209ccf6b3de3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityControlReference-request)))
  "Returns md5sum for a message object of type 'VelocityControlReference-request"
  "a2dcd12186fef25175dd209ccf6b3de3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityControlReference-request>)))
  "Returns full string definition for message of type '<VelocityControlReference-request>"
  (cl:format cl:nil "float64 x_dot~%float64 y_dot~%float64 z_dot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityControlReference-request)))
  "Returns full string definition for message of type 'VelocityControlReference-request"
  (cl:format cl:nil "float64 x_dot~%float64 y_dot~%float64 z_dot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityControlReference-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityControlReference-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityControlReference-request
    (cl:cons ':x_dot (x_dot msg))
    (cl:cons ':y_dot (y_dot msg))
    (cl:cons ':z_dot (z_dot msg))
))
;//! \htmlinclude VelocityControlReference-response.msg.html

(cl:defclass <VelocityControlReference-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:float
    :initform 0.0))
)

(cl:defclass VelocityControlReference-response (<VelocityControlReference-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityControlReference-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityControlReference-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_velocity_controller-srv:<VelocityControlReference-response> is deprecated: use scara_velocity_controller-srv:VelocityControlReference-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <VelocityControlReference-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_velocity_controller-srv:success-val is deprecated.  Use scara_velocity_controller-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityControlReference-response>) ostream)
  "Serializes a message object of type '<VelocityControlReference-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'success))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityControlReference-response>) istream)
  "Deserializes a message object of type '<VelocityControlReference-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'success) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityControlReference-response>)))
  "Returns string type for a service object of type '<VelocityControlReference-response>"
  "scara_velocity_controller/VelocityControlReferenceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityControlReference-response)))
  "Returns string type for a service object of type 'VelocityControlReference-response"
  "scara_velocity_controller/VelocityControlReferenceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityControlReference-response>)))
  "Returns md5sum for a message object of type '<VelocityControlReference-response>"
  "a2dcd12186fef25175dd209ccf6b3de3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityControlReference-response)))
  "Returns md5sum for a message object of type 'VelocityControlReference-response"
  "a2dcd12186fef25175dd209ccf6b3de3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityControlReference-response>)))
  "Returns full string definition for message of type '<VelocityControlReference-response>"
  (cl:format cl:nil "float64 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityControlReference-response)))
  "Returns full string definition for message of type 'VelocityControlReference-response"
  (cl:format cl:nil "float64 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityControlReference-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityControlReference-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityControlReference-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VelocityControlReference)))
  'VelocityControlReference-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VelocityControlReference)))
  'VelocityControlReference-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityControlReference)))
  "Returns string type for a service object of type '<VelocityControlReference>"
  "scara_velocity_controller/VelocityControlReference")