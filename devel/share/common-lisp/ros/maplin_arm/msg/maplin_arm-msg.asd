
(cl:in-package :asdf)

(defsystem "maplin_arm-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MotorState" :depends-on ("_package_MotorState"))
    (:file "_package_MotorState" :depends-on ("_package"))
    (:file "MoveJoint" :depends-on ("_package_MoveJoint"))
    (:file "_package_MoveJoint" :depends-on ("_package"))
    (:file "SetMotorStates" :depends-on ("_package_SetMotorStates"))
    (:file "_package_SetMotorStates" :depends-on ("_package"))
  ))