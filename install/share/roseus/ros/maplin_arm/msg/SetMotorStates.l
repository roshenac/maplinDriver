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
  :slots (_header _motorStates ))

(defmethod maplin_arm::SetMotorStates
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:motorStates __motorStates) (let (r) (dotimes (i 0) (push (instance maplin_arm::MotorState :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _motorStates __motorStates)
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; maplin_arm/MotorState[] _motorStates
    (apply #'+ (send-all _motorStates :serialization-length)) 4
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
   ;;
   self)
  )

(setf (get maplin_arm::SetMotorStates :md5sum-) "56722fcd842fbf3dbe76bd48941f870f")
(setf (get maplin_arm::SetMotorStates :datatype-) "maplin_arm/SetMotorStates")
(setf (get maplin_arm::SetMotorStates :definition-)
      "Header header
MotorState[] motorStates
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
int32 motorIdx
int32 motorState

")



(provide :maplin_arm/SetMotorStates "56722fcd842fbf3dbe76bd48941f870f")


