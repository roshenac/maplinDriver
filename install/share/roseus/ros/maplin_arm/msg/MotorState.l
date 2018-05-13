;; Auto-generated. Do not edit!


(when (boundp 'maplin_arm::MotorState)
  (if (not (find-package "MAPLIN_ARM"))
    (make-package "MAPLIN_ARM"))
  (shadow 'MotorState (find-package "MAPLIN_ARM")))
(unless (find-package "MAPLIN_ARM::MOTORSTATE")
  (make-package "MAPLIN_ARM::MOTORSTATE"))

(in-package "ROS")
;;//! \htmlinclude MotorState.msg.html


(defclass maplin_arm::MotorState
  :super ros::object
  :slots (_motorIdx _motorState ))

(defmethod maplin_arm::MotorState
  (:init
   (&key
    ((:motorIdx __motorIdx) 0)
    ((:motorState __motorState) 0)
    )
   (send-super :init)
   (setq _motorIdx (round __motorIdx))
   (setq _motorState (round __motorState))
   self)
  (:motorIdx
   (&optional __motorIdx)
   (if __motorIdx (setq _motorIdx __motorIdx)) _motorIdx)
  (:motorState
   (&optional __motorState)
   (if __motorState (setq _motorState __motorState)) _motorState)
  (:serialization-length
   ()
   (+
    ;; int32 _motorIdx
    4
    ;; int32 _motorState
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _motorIdx
       (write-long _motorIdx s)
     ;; int32 _motorState
       (write-long _motorState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _motorIdx
     (setq _motorIdx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motorState
     (setq _motorState (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get maplin_arm::MotorState :md5sum-) "1bf503c86341bd1bc89b93762b377cea")
(setf (get maplin_arm::MotorState :datatype-) "maplin_arm/MotorState")
(setf (get maplin_arm::MotorState :definition-)
      "int32 motorIdx
int32 motorState

")



(provide :maplin_arm/MotorState "1bf503c86341bd1bc89b93762b377cea")


