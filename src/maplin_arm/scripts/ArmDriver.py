#!/usr/bin/env python
# Software License Agreement (BSD License)
#
# Copyright (c) 2008, Willow Garage, Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
#  * Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#  * Redistributions in binary form must reproduce the above
#    copyright notice, this list of conditions and the following
#    disclaimer in the documentation and/or other materials provided
#    with the distribution.
#  * Neither the name of Willow Garage, Inc. nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# Revision $Id$

## Simple talker demo that published std_msgs/Strings messages
## to the 'chatter' topic

import usb
import inspect
import time
import struct
import rospy
from enum import Enum
from std_msgs.msg import String
from maplin_arm.msg import *


class MotorStates(): 
    OFF = 0
    FORWARD = 1
    BACKWARD = 2

class ArmDriver():
    NUM_MOTORS = 6
    DEFAULT_MOTOR_TIMEOUT = 0.5
    # Probably not good to spam the arm so limit the updates
    MAX_UPDATE_RATE = 10.0  # Updates per second
    # Valid motor states
    VALID_MOTOR_STATES = [ MotorStates.OFF, MotorStates.FORWARD, MotorStates.BACKWARD ]  
    # USB constants
    ARM_ID_VENDOR = 0x1267
    ARM_ID_PRODUCT = 0x0000
    CONFIG_IDX = 0
    INTERFACE_IDX = 0
    


    #---------------------------------------------------------------------------
    def __init__( self ):
        
        self.motorTimeouts = [ self.DEFAULT_MOTOR_TIMEOUT for i in range( self.NUM_MOTORS ) ]
        self.motorStates = [ MotorStates.OFF for i in range( self.NUM_MOTORS ) ]
        self.motorStartTimes = [ 0.0 for i in range( self.NUM_MOTORS ) ]
        self.lastUpdateTime = 0.0
        self.startTime = rospy.get_rostime().to_sec()
        
        # Connect to the arm
        self.rctl = usb.core.find(idVendor=self.ARM_ID_VENDOR, idProduct=self.ARM_ID_PRODUCT)

        if self.rctl == None:
            raise Exception( "Unable to find USB arm" )
      
        self.rctl.reset()

        
    #---------------------------------------------------------------------------
    def setMotorTimeout( self, motorIdx, timeout ):
        self.motorTimeouts[ motorIdx ] = timeout
        
    #---------------------------------------------------------------------------
    def setMotorState( self, motorIdx, state ):
        if state in self.VALID_MOTOR_STATES:
            self.motorStates[ motorIdx ] = state
            self.motorStartTimes[ motorIdx ] = rospy.get_rostime().to_sec()

    #---------------------------------------------------------------------------
    def update( self ):

        curTime = rospy.get_rostime().to_sec()
        if curTime - self.lastUpdateTime > 1.0/self.MAX_UPDATE_RATE:
            # Turn off motors which have run for too long without another command
            for motorIdx in range( self.NUM_MOTORS ):
                if self.motorStates[ motorIdx ] != MotorStates.OFF \
                    and curTime - self.motorStartTimes[ motorIdx ] >= self.motorTimeouts[ motorIdx ] and motorIdx != maplin_arm.msg.MotorState.LIGHT :
                    self.motorStates[ motorIdx ] = MotorStates.OFF
           

            dataBuffer = ((self.motorStates[MotorState.GRIPPER ]&0x3) << 6) |  ((self.motorStates[MotorState.WRIST ]&0x3) << 4) | ((self.motorStates[MotorState.ELBOW]&0x3) << 2) | (self.motorStates[MotorState.SHOULDER ]&0x3)


	    self.move_array = [dataBuffer ,self.motorStates[maplin_arm.msg.MotorState.BASE], bool(self.motorStates[ maplin_arm.msg.MotorState.LIGHT ])]
 
            self.rctl.ctrl_transfer(0x40,6,0x100,0,self.move_array,1000)

            # Store the update time
            self.lastUpdateTime = rospy.get_rostime().to_sec()


if __name__ == '__main__':
    try:
        driver = ArmDriver()
    except rospy.ROSInterruptException:
        pass
