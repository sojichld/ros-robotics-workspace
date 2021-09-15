; Auto-generated. Do not edit!


(cl:in-package pcr-msg)


;//! \htmlinclude MyMsg.msg.html

(cl:defclass <MyMsg> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0))
)

(cl:defclass MyMsg (<MyMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MyMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MyMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pcr-msg:<MyMsg> is deprecated: use pcr-msg:MyMsg instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MyMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pcr-msg:message-val is deprecated.  Use pcr-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <MyMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pcr-msg:num-val is deprecated.  Use pcr-msg:num instead.")
  (num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MyMsg>) ostream)
  "Serializes a message object of type '<MyMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MyMsg>) istream)
  "Deserializes a message object of type '<MyMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MyMsg>)))
  "Returns string type for a message object of type '<MyMsg>"
  "pcr/MyMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MyMsg)))
  "Returns string type for a message object of type 'MyMsg"
  "pcr/MyMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MyMsg>)))
  "Returns md5sum for a message object of type '<MyMsg>"
  "055a6f49e56601a803d9072993ade75d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MyMsg)))
  "Returns md5sum for a message object of type 'MyMsg"
  "055a6f49e56601a803d9072993ade75d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MyMsg>)))
  "Returns full string definition for message of type '<MyMsg>"
  (cl:format cl:nil "string message~%int64 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MyMsg)))
  "Returns full string definition for message of type 'MyMsg"
  (cl:format cl:nil "string message~%int64 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MyMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MyMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'MyMsg
    (cl:cons ':message (message msg))
    (cl:cons ':num (num msg))
))
