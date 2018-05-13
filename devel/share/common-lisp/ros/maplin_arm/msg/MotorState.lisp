; Auto-generated. Do not edit!


(cl:in-package maplin_arm-msg)


;//! \htmlinclude MotorState.msg.html

(cl:defclass <MotorState> (roslisp-msg-protocol:ros-message)
  ((motorIdx
    :reader motorIdx
    :initarg :motorIdx
    :type cl:integer
    :initform 0)
   (motorState
    :reader motorState
    :initarg :motorState
    :type cl:integer
    :initform 0))
)

(cl:defclass MotorState (<MotorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name maplin_arm-msg:<MotorState> is deprecated: use maplin_arm-msg:MotorState instead.")))

(cl:ensure-generic-function 'motorIdx-val :lambda-list '(m))
(cl:defmethod motorIdx-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maplin_arm-msg:motorIdx-val is deprecated.  Use maplin_arm-msg:motorIdx instead.")
  (motorIdx m))

(cl:ensure-generic-function 'motorState-val :lambda-list '(m))
(cl:defmethod motorState-val ((m <MotorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maplin_arm-msg:motorState-val is deprecated.  Use maplin_arm-msg:motorState instead.")
  (motorState m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MotorState>)))
    "Constants for message type '<MotorState>"
  '((:SHOULDER . 0)
    (:ELBOW . 1)
    (:WRIST . 2)
    (:GRIPPER . 3)
    (:BASE . 4)
    (:LIGHT . 5)
    (:STOP . 0)
    (:DOWN . 1)
    (:UP . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MotorState)))
    "Constants for message type 'MotorState"
  '((:SHOULDER . 0)
    (:ELBOW . 1)
    (:WRIST . 2)
    (:GRIPPER . 3)
    (:BASE . 4)
    (:LIGHT . 5)
    (:STOP . 0)
    (:DOWN . 1)
    (:UP . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorState>) ostream)
  "Serializes a message object of type '<MotorState>"
  (cl:let* ((signed (cl:slot-value msg 'motorIdx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motorState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorState>) istream)
  "Deserializes a message object of type '<MotorState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motorIdx) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motorState) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorState>)))
  "Returns string type for a message object of type '<MotorState>"
  "maplin_arm/MotorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorState)))
  "Returns string type for a message object of type 'MotorState"
  "maplin_arm/MotorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorState>)))
  "Returns md5sum for a message object of type '<MotorState>"
  "085905ab1b5f55cc67e41ee7e021e374")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorState)))
  "Returns md5sum for a message object of type 'MotorState"
  "085905ab1b5f55cc67e41ee7e021e374")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorState>)))
  "Returns full string definition for message of type '<MotorState>"
  (cl:format cl:nil "int32 SHOULDER=0~%int32 ELBOW=1~%int32 WRIST=2~%int32 GRIPPER=3~%int32 BASE=4~%int32 LIGHT=5~%~%int32 STOP=0~%int32 DOWN=1~%int32 UP=2~%~%int32 motorIdx~%int32 motorState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorState)))
  "Returns full string definition for message of type 'MotorState"
  (cl:format cl:nil "int32 SHOULDER=0~%int32 ELBOW=1~%int32 WRIST=2~%int32 GRIPPER=3~%int32 BASE=4~%int32 LIGHT=5~%~%int32 STOP=0~%int32 DOWN=1~%int32 UP=2~%~%int32 motorIdx~%int32 motorState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorState>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorState>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorState
    (cl:cons ':motorIdx (motorIdx msg))
    (cl:cons ':motorState (motorState msg))
))
