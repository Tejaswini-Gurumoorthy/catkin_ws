; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude AreaRect-request.msg.html

(cl:defclass <AreaRect-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0))
)

(cl:defclass AreaRect-request (<AreaRect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AreaRect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AreaRect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<AreaRect-request> is deprecated: use beginner_tutorials-srv:AreaRect-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <AreaRect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:a-val is deprecated.  Use beginner_tutorials-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <AreaRect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:b-val is deprecated.  Use beginner_tutorials-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AreaRect-request>) ostream)
  "Serializes a message object of type '<AreaRect-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AreaRect-request>) istream)
  "Deserializes a message object of type '<AreaRect-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AreaRect-request>)))
  "Returns string type for a service object of type '<AreaRect-request>"
  "beginner_tutorials/AreaRectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AreaRect-request)))
  "Returns string type for a service object of type 'AreaRect-request"
  "beginner_tutorials/AreaRectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AreaRect-request>)))
  "Returns md5sum for a message object of type '<AreaRect-request>"
  "776367f335c9bf437d261b53f116f71c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AreaRect-request)))
  "Returns md5sum for a message object of type 'AreaRect-request"
  "776367f335c9bf437d261b53f116f71c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AreaRect-request>)))
  "Returns full string definition for message of type '<AreaRect-request>"
  (cl:format cl:nil "float32 a~%float32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AreaRect-request)))
  "Returns full string definition for message of type 'AreaRect-request"
  (cl:format cl:nil "float32 a~%float32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AreaRect-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AreaRect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AreaRect-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude AreaRect-response.msg.html

(cl:defclass <AreaRect-response> (roslisp-msg-protocol:ros-message)
  ((area
    :reader area
    :initarg :area
    :type cl:float
    :initform 0.0))
)

(cl:defclass AreaRect-response (<AreaRect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AreaRect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AreaRect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<AreaRect-response> is deprecated: use beginner_tutorials-srv:AreaRect-response instead.")))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <AreaRect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:area-val is deprecated.  Use beginner_tutorials-srv:area instead.")
  (area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AreaRect-response>) ostream)
  "Serializes a message object of type '<AreaRect-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AreaRect-response>) istream)
  "Deserializes a message object of type '<AreaRect-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'area) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AreaRect-response>)))
  "Returns string type for a service object of type '<AreaRect-response>"
  "beginner_tutorials/AreaRectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AreaRect-response)))
  "Returns string type for a service object of type 'AreaRect-response"
  "beginner_tutorials/AreaRectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AreaRect-response>)))
  "Returns md5sum for a message object of type '<AreaRect-response>"
  "776367f335c9bf437d261b53f116f71c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AreaRect-response)))
  "Returns md5sum for a message object of type 'AreaRect-response"
  "776367f335c9bf437d261b53f116f71c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AreaRect-response>)))
  "Returns full string definition for message of type '<AreaRect-response>"
  (cl:format cl:nil "float32 area~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AreaRect-response)))
  "Returns full string definition for message of type 'AreaRect-response"
  (cl:format cl:nil "float32 area~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AreaRect-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AreaRect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AreaRect-response
    (cl:cons ':area (area msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AreaRect)))
  'AreaRect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AreaRect)))
  'AreaRect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AreaRect)))
  "Returns string type for a service object of type '<AreaRect>"
  "beginner_tutorials/AreaRect")