; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude Eli.msg.html

(cl:defclass <Eli> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (eli
    :reader eli
    :initarg :eli
    :type cl:string
    :initform ""))
)

(cl:defclass Eli (<Eli>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Eli>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Eli)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<Eli> is deprecated: use beginner_tutorials-msg:Eli instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Eli>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:name-val is deprecated.  Use beginner_tutorials-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'eli-val :lambda-list '(m))
(cl:defmethod eli-val ((m <Eli>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:eli-val is deprecated.  Use beginner_tutorials-msg:eli instead.")
  (eli m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Eli>) ostream)
  "Serializes a message object of type '<Eli>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'eli))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'eli))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Eli>) istream)
  "Deserializes a message object of type '<Eli>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'eli) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'eli) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Eli>)))
  "Returns string type for a message object of type '<Eli>"
  "beginner_tutorials/Eli")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Eli)))
  "Returns string type for a message object of type 'Eli"
  "beginner_tutorials/Eli")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Eli>)))
  "Returns md5sum for a message object of type '<Eli>"
  "ec098ac8c9a478cf0c042931a2dbdf90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Eli)))
  "Returns md5sum for a message object of type 'Eli"
  "ec098ac8c9a478cf0c042931a2dbdf90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Eli>)))
  "Returns full string definition for message of type '<Eli>"
  (cl:format cl:nil "string name~%string eli~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Eli)))
  "Returns full string definition for message of type 'Eli"
  (cl:format cl:nil "string name~%string eli~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Eli>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'eli))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Eli>))
  "Converts a ROS message object to a list"
  (cl:list 'Eli
    (cl:cons ':name (name msg))
    (cl:cons ':eli (eli msg))
))
