; Auto-generated. Do not edit!


(cl:in-package scara_pd_controller-srv)


;//! \htmlinclude JointControlReference-request.msg.html

(cl:defclass <JointControlReference-request> (roslisp-msg-protocol:ros-message)
  ((th1_des
    :reader th1_des
    :initarg :th1_des
    :type cl:float
    :initform 0.0)
   (th2_des
    :reader th2_des
    :initarg :th2_des
    :type cl:float
    :initform 0.0)
   (d3_des
    :reader d3_des
    :initarg :d3_des
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointControlReference-request (<JointControlReference-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointControlReference-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointControlReference-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_pd_controller-srv:<JointControlReference-request> is deprecated: use scara_pd_controller-srv:JointControlReference-request instead.")))

(cl:ensure-generic-function 'th1_des-val :lambda-list '(m))
(cl:defmethod th1_des-val ((m <JointControlReference-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_pd_controller-srv:th1_des-val is deprecated.  Use scara_pd_controller-srv:th1_des instead.")
  (th1_des m))

(cl:ensure-generic-function 'th2_des-val :lambda-list '(m))
(cl:defmethod th2_des-val ((m <JointControlReference-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_pd_controller-srv:th2_des-val is deprecated.  Use scara_pd_controller-srv:th2_des instead.")
  (th2_des m))

(cl:ensure-generic-function 'd3_des-val :lambda-list '(m))
(cl:defmethod d3_des-val ((m <JointControlReference-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_pd_controller-srv:d3_des-val is deprecated.  Use scara_pd_controller-srv:d3_des instead.")
  (d3_des m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointControlReference-request>) ostream)
  "Serializes a message object of type '<JointControlReference-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'th1_des))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'th2_des))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'd3_des))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointControlReference-request>) istream)
  "Deserializes a message object of type '<JointControlReference-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th1_des) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th2_des) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd3_des) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointControlReference-request>)))
  "Returns string type for a service object of type '<JointControlReference-request>"
  "scara_pd_controller/JointControlReferenceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointControlReference-request)))
  "Returns string type for a service object of type 'JointControlReference-request"
  "scara_pd_controller/JointControlReferenceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointControlReference-request>)))
  "Returns md5sum for a message object of type '<JointControlReference-request>"
  "b44f6d6dfe052e9be2c71ab5a76c2d68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointControlReference-request)))
  "Returns md5sum for a message object of type 'JointControlReference-request"
  "b44f6d6dfe052e9be2c71ab5a76c2d68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointControlReference-request>)))
  "Returns full string definition for message of type '<JointControlReference-request>"
  (cl:format cl:nil "float64 th1_des~%float64 th2_des~%float64 d3_des~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointControlReference-request)))
  "Returns full string definition for message of type 'JointControlReference-request"
  (cl:format cl:nil "float64 th1_des~%float64 th2_des~%float64 d3_des~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointControlReference-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointControlReference-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JointControlReference-request
    (cl:cons ':th1_des (th1_des msg))
    (cl:cons ':th2_des (th2_des msg))
    (cl:cons ':d3_des (d3_des msg))
))
;//! \htmlinclude JointControlReference-response.msg.html

(cl:defclass <JointControlReference-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointControlReference-response (<JointControlReference-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointControlReference-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointControlReference-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_pd_controller-srv:<JointControlReference-response> is deprecated: use scara_pd_controller-srv:JointControlReference-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <JointControlReference-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_pd_controller-srv:success-val is deprecated.  Use scara_pd_controller-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointControlReference-response>) ostream)
  "Serializes a message object of type '<JointControlReference-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointControlReference-response>) istream)
  "Deserializes a message object of type '<JointControlReference-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointControlReference-response>)))
  "Returns string type for a service object of type '<JointControlReference-response>"
  "scara_pd_controller/JointControlReferenceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointControlReference-response)))
  "Returns string type for a service object of type 'JointControlReference-response"
  "scara_pd_controller/JointControlReferenceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointControlReference-response>)))
  "Returns md5sum for a message object of type '<JointControlReference-response>"
  "b44f6d6dfe052e9be2c71ab5a76c2d68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointControlReference-response)))
  "Returns md5sum for a message object of type 'JointControlReference-response"
  "b44f6d6dfe052e9be2c71ab5a76c2d68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointControlReference-response>)))
  "Returns full string definition for message of type '<JointControlReference-response>"
  (cl:format cl:nil "float64 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointControlReference-response)))
  "Returns full string definition for message of type 'JointControlReference-response"
  (cl:format cl:nil "float64 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointControlReference-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointControlReference-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JointControlReference-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JointControlReference)))
  'JointControlReference-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JointControlReference)))
  'JointControlReference-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointControlReference)))
  "Returns string type for a service object of type '<JointControlReference>"
  "scara_pd_controller/JointControlReference")