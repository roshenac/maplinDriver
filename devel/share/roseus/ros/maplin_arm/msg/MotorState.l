;; Auto-generated. Do not edit!


(when (boundp 'maplin_arm::MotorState)
  (if (not (find-package "MAPLIN_ARM"))
    (make-package "MAPLIN_ARM"))
  (shadow 'MotorState (find-package "MAPLIN_ARM")))
(unless (find-package "MAPLIN_ARM::MOTORSTATE")
  (make-package "MAPLIN_ARM::MOTORSTATE"))

(in-package "ROS")
;;//! \htmlinclude MotorState.msg.html


(intern "*SHOULDER*" (find-package "MAPLIN_ARM::MOTORSTATE"))
(shadow '*SHOULDER* (find-package "MAPLIN_ARM::MOTORSTATE"))
(defconstant maplin_arm::MotorState::*SHOULDER* 0)
(intern "*ELBOW*" (find-package "MAPLIN_ARM::MOTORSTATE"))
(shadow '*ELBOW* (find-package "MAPLIN_ARM::MOTORSTATE"))
(defconstant maplin_arm::MotorState::*ELBOW* 1)
(intern "*WRIST*" (find-package "MAPLIN_ARM::MOTORSTATE"))
(shadow '*WRIST* (find-package "MAPLIN_ARM::MOTORSTATE"))
(defconstant maplin_arm::MotorState::*WRIST* 2)
(intern "*GRIPPER*" (find-package "MAPLIN_ARM::MOTORSTATE"))
(shadow '*GRIPPER* (find-package "MAPLIN_ARM::MOTORSTATE"))
(defconstant maplin_arm::MotorState::*GRIPPER* 3)
(intern "*BASE*" (find-package "MAPLIN_ARM::MOTORSTATE"))
(shadow '*BASE* (find-package "MAPLIN_ARM::MOTORSTATE"))
(defconstant maplin_arm::MotorState::*BASE* 4)
(intern "*LIGHT*" (find-package "MAPLIN_ARM::MOTORSTATE"))
(shadow '*LIGHT* (find-package "MAPLIN_ARM::MOTORSTATE"))
(defconstant maplin_arm::MotorState::*LIGHT* 5)
(intern "*STOP*" (find-package "MAPLIN_ARM::MOTORSTATE"))
(shadow '*STOP* (find-package "MAPLIN_ARM::MOTORSTATE"))
(defconstant maplin_arm::MotorState::*STOP* 0)
(intern "*DOWN*" (find-package "MAPLIN_ARM::MOTORSTATE"))
(shadow '*DOWN* (find-package "MAPLIN_ARM::MOTORSTATE"))
(defconstant maplin_arm::MotorState::*DOWN* 1)
(intern "*UP*" (find-package "MAPLIN_ARM::MOTORSTATE"))
(shadow '*UP* (find-package "MAPLIN_ARM::MOTORSTATE"))
(defconstant maplin_arm::MotorState::*UP* 2)
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

(setf (get maplin_arm::MotorState :md5sum-) "085905ab1b5f55cc67e41ee7e021e374")
(setf (get maplin_arm::MotorState :datatype-) "maplin_arm/MotorState")
(setf (get maplin_arm::MotorState :definition-)
      "int32 SHOULDER=0
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



(provide :maplin_arm/MotorState "085905ab1b5f55cc67e41ee7e021e374")


