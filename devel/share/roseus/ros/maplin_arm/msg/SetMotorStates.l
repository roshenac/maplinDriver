;; Auto-generated. Do not edit!


(when (boundp 'maplin_arm::SetMotorStates)
  (if (not (find-package "MAPLIN_ARM"))
    (make-package "MAPLIN_ARM"))
  (shadow 'SetMotorStates (find-package "MAPLIN_ARM")))
(unless (find-package "MAPLIN_ARM::SETMOTORSTATES")
  (make-package "MAPLIN_ARM::SETMOTORSTATES"))

(in-package "ROS")
;;//! \htmlinclude SetMotorStates.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass maplin_arm::SetMotorStates
  :super ros::object
  :slots (_header _motorStates _command ))

(defmethod maplin_arm::SetMotorStates
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:motorStates __motorStates) (let (r) (dotimes (i 0) (push (instance maplin_arm::MotorState :init) r)) r))
    ((:command __command) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _motorStates __motorStates)
   (setq _command (string __command))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:motorStates
   (&rest __motorStates)
   (if (keywordp (car __motorStates))
       (send* _motorStates __motorStates)
     (progn
       (if __motorStates (setq _motorStates (car __motorStates)))
       _motorStates)))
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; maplin_arm/MotorState[] _motorStates
    (apply #'+ (send-all _motorStates :serialization-length)) 4
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; maplin_arm/MotorState[] _motorStates
     (write-long (length _motorStates) s)
     (dolist (elem _motorStates)
       (send elem :serialize s)
       )
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; maplin_arm/MotorState[] _motorStates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motorStates (let (r) (dotimes (i n) (push (instance maplin_arm::MotorState :init) r)) r))
     (dolist (elem- _motorStates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get maplin_arm::SetMotorStates :md5sum-) "d69a444bd7c491a9948f3ea063d83389")
(setf (get maplin_arm::SetMotorStates :datatype-) "maplin_arm/SetMotorStates")
(setf (get maplin_arm::SetMotorStates :definition-)
      "Header header
MotorState[] motorStates
string command


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: maplin_arm/MotorState
int32 SHOULDER=0
int32 ELBOW=1
int32 WRIST=2
int32 GRIPPER=3
int32 BASE=4
int32 LIGHT=5

int32 STOP=0
int32 DOWN=1
int32 UP=2

int32 motorIdx
int32 motorState

")



(provide :maplin_arm/SetMotorStates "d69a444bd7c491a9948f3ea063d83389")


