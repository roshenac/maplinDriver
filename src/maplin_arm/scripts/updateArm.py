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
        dataBuffer = ((data.gripper & 0x3) << 6) | ((data.wrist & 0x3) << 4) | (
                 (data.elbow & 0x3) << 2) | (data.shoulder & 0x3)

        move_array = [dataBuffer, data.base,data.light]

        self.rctl.ctrl_transfer(0x40, 6, 0x100, 0, move_array, 1000)
        
        if(data.timer == 0):
            rospy.sleep(1)
        else: 
            rospy.sleep(data.timer)

        move_array = [0, 0 , data.light]
        self.rctl.ctrl_transfer(0x40, 6, 0x100, 0, move_array, 1000)
        self.calculateNewStates(data)

   
    def calculateNewStates(self, data):
        #BASE
        if(data.base == 1):
            self.baseState += data.timer
        elif(data.base == 2):
            self.baseState -= data.timer
        #SHOULDER
        if(data.shoulder == 1):
            self.shoulderState += data.timer
        elif(data.shoulder == 2):
            self.shoulderState -= data.timer
        #ELBOW
        if(data.elbow == 1):
            self.elbowState += data.timer
        elif(data.elbow == 2):
            self.elbowState -= data.timer
        #WRIST
        if(data.wrist == 1):
            self.wristState += data.timer
        elif(data.wrist == 2):
            self.wristState -= data.timer
        #GRIPPER
        if(data.gripper == 1):
            self.gripperState += data.timer
        elif(data.gripper == 2):
            self.gripperState -= data.timer

        text_file = open("/home/roshenac/Desktop/makeitmove/src/maplin_arm/scripts/sam.txt","w")
        text_file.write("base:" + str(self.baseState) + "\n")
        text_file.write("shoulder:" + str(self.shoulderState) + "\n")
        text_file.write("elbow:" + str(self.elbowState) + "\n")
        text_file.write("wrist:" + str(self.wristState) + "\n")
        text_file.write("gripper:" + str(self.gripperState) + "\n")
        text_file.close()
   
    def resetToZero(self,data):
        self.updateBase()
        self.updateShoulder()
        self.updateElbow()
        self.updateWrist()
        self.updateGripper()

    def updateGripper(self):
        if(self.gripperState > 0):
            movejoint = MoveJoint(gripper=2, timer=abs(self.gripperState))
            self.pub.publish(movejoint)
        elif(self.gripperState < 0 ):
            movejoint = MoveJoint(gripper=1, timer=abs(self.gripperState))
            self.pub.publish(movejoint)     

    def updateBase(self):
        if(self.baseState > 0):
            movejoint = MoveJoint(base=2, timer=abs(self.baseState))
            self.pub.publish(movejoint)
        elif(self.baseState < 0 ):
            movejoint = MoveJoint(base=1, timer=abs(self.baseState))
            self.pub.publish(movejoint)

    def updateShoulder(self):
        if(self.shoulderState > 0):
            movejoint = MoveJoint(shoulder=2, timer=abs(self.shoulderState))
            self.pub.publish(movejoint)
        elif(self.shoulderState < 0 ):
            movejoint = MoveJoint(shoulder=1, timer=abs(self.shoulderState))
            self.pub.publish(movejoint)

    def updateElbow(self):
        if(self.elbowState > 0):
            movejoint = MoveJoint(elbow=2, timer=abs(self.elbowState))
            self.pub.publish(movejoint)
        elif(self.elbowState < 0 ):
            movejoint = MoveJoint(elbow=1, timer=abs(self.elbowState))
            self.pub.publish(movejoint)

    def updateWrist(self):
        if(self.wristState > 0):
            movejoint = MoveJoint(wrist=2, timer=abs(self.wristState))
            self.pub.publish(movejoint)
        elif(self.wristState < 0 ):
            movejoint = MoveJoint(wrist=1, timer=abs(self.wristState))
            self.pub.publish(movejoint)

    def uploadCurrentPositions(self):
        rospy.loginfo("Trying to read current states")
        file = open("/home/roshenac/Desktop/makeitmove/src/maplin_arm/scripts/sam.txt" , "r")
        file_info = file.read().splitlines()
        self.baseState = float(file_info[0].split(":")[1])
        self.shoulderState = float(file_info[1].split(":")[1])
        self.elbowState = float(file_info[2].split(":")[1])
        self.wristState = float(file_info[3].split(":")[1])
        self.gripperState = float(file_info[4].split(":")[1])


    def listener(self):
        rospy.init_node('movejoint', anonymous=True)
        self.uploadCurrentPositions()

        ARM_ID_VENDOR = 0x1267
        ARM_ID_PRODUCT = 0x0000

        # Connect to the arm
        self.rctl = usb.core.find(idVendor=ARM_ID_VENDOR, idProduct=ARM_ID_PRODUCT)

        if self.rctl == None:
            raise Exception("Unable to find USB arm")

        self.rctl.reset()

        rospy.Subscriber("chatter", MoveJoint, self.callback)
        rospy.Subscriber("reset", String, self.resetToZero)
        self.pub = rospy.Publisher('chatter', MoveJoint, queue_size=10)

        rospy.spin()


if __name__ == '__main__':
    try:
        driver = updateArm()
        driver.listener()
    except rospy.ROSInterruptException:
        pass

