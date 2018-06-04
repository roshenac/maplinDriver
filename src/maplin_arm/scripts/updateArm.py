#!/usr/bin/env python
import usb
import inspect
import time
import struct
import rospy
from enum import Enum
from std_msgs.msg import String
from maplin_arm.msg import *


class updateArm():

    def callback(self, data):
        # dataBuffer = ((self.motorStates[MotorState.GRIPPER] & 0x3) << 6) | ((self.motorStates[MotorState.WRIST] & 0x3) << 4) | (
        #         (self.motorStates[MotorState.ELBOW] & 0x3) << 2) | (self.motorStates[MotorState.SHOULDER] & 0x3)

        move_array = [0, data.base,data.light]

        self.rctl.ctrl_transfer(0x40, 6, 0x100, 0, move_array, 1000)

        rospy.sleep(data.timer)
        move_array = [0, 0 , data.light]
        self.rctl.ctrl_transfer(0x40, 6, 0x100, 0, move_array, 1000)

        self.lastUpdateTime = rospy.get_rostime().to_sec()


    def listener(self):
        rospy.init_node('listener', anonymous=True)

        ARM_ID_VENDOR = 0x1267
        ARM_ID_PRODUCT = 0x0000

        # Connect to the arm
        self.rctl = usb.core.find(idVendor=ARM_ID_VENDOR, idProduct=ARM_ID_PRODUCT)

        if self.rctl == None:
            raise Exception("Unable to find USB arm")

        self.rctl.reset()

        rospy.Subscriber("chatter", MoveJoint, self.callback)

        rospy.spin()


if __name__ == '__main__':
    try:
        driver = updateArm()
        driver.listener()
    except rospy.ROSInterruptException:
        pass

