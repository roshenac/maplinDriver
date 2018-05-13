; Auto-generated. Do not edit!


(cl:in-package maplin_arm-msg)


;//! \htmlinclude SetMotorStates.msg.html

(cl:defclass <SetMotorStates> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (motorStates
    :reader motorStates
    :initarg :motorStates
    :type (cl:vector maplin_arm-msg:MotorState)
   :initform (cl:make-array 0 :element-type 'maplin_arm-msg:MotorState :initial-element (cl:make-instance 'maplin_arm-msg:MotorState)))
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass SetMotorStates (<SetMotorStates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotorStates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotorStates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name maplin_arm-msg:<SetMotorStates> is deprecated: use maplin_arm-msg:SetMotorStates instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SetMotorStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maplin_arm-msg:header-val is deprecated.  Use maplin_arm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'motorStates-val :lambda-list '(m))
(cl:defmethod motorStates-val ((m <SetMotorStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maplin_arm-msg:motorStates-val is deprecated.  Use maplin_arm-msg:motorStates instead.")
  (motorStates m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SetMotorStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maplin_arm-msg:command-val is deprecated.  Use maplin_arm-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotorStates>) ostream)
  "Serializes a message object of type '<SetMotorStates>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motorStates))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'motorStates))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotorStates>) istream)
  "Deserializes a message object of type '<SetMotorStates>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motorStates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motorStates)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'maplin_arm-msg:MotorState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotorStates>)))
  "Returns string type for a message object of type '<SetMotorStates>"
  "maplin_arm/SetMotorStates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorStates)))
  "Returns string type for a message object of type 'SetMotorStates"
  "maplin_arm/SetMotorStates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotorStates>)))
  "Returns md5sum for a message object of type '<SetMotorStates>"
  "d69a444bd7c491a9948f3ea063d83389")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotorStates)))
  "Returns md5sum for a message object of type 'SetMotorStates"
  "d69a444bd7c491a9948f3ea063d83389")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotorStates>)))
  "Returns full string definition for message of type '<SetMotorStates>"
  (cl:format cl:nil "Header header~%MotorState[] motorStates~%string command~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: maplin_arm/MotorState~%int32 SHOULDER=0~%int32 ELBOW=1~%int32 WRIST=2~%int32 GRIPPER=3~%int32 BASE=4~%int32 LIGHT=5~%~%int32 STOP=0~%int32 DOWN=1~%int32 UP=2~%~%int32 motorIdx~%int32 motorState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotorStates)))
  "Returns full string definition for message of type 'SetMotorStates"
  (cl:format cl:nil "Header header~%MotorState[] motorStates~%string command~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: maplin_arm/MotorState~%int32 SHOULDER=0~%int32 ELBOW=1~%int32 WRIST=2~%int32 GRIPPER=3~%int32 BASE=4~%int32 LIGHT=5~%~%int32 STOP=0~%int32 DOWN=1~%int32 UP=2~%~%int32 motorIdx~%int32 motorState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotorStates>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motorStates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotorStates>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotorStates
    (cl:cons ':header (header msg))
    (cl:cons ':motorStates (motorStates msg))
    (cl:cons ':command (command msg))
))
