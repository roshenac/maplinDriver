#! /usr/bin/python
# ROS imports
import rospy

from maplin_arm.msg import *

import time
import math

from ArmDriver import ArmDriver

#-------------------------------------------------------------------------------
class ArmServer():
  def listener(self):

      # In ROS, nodes are uniquely named. If two nodes with the same
      # name are launched, the previous one is kicked off. The
      # anonymous=True flag means that rospy will choose a unique
      # name for our 'listener' node so that multiple listeners can
      # run simultaneously.
      rospy.init_node( 'listener', anonymous=True )
      self.armDriver = ArmDriver()
      self.armDriver.setMotorTimeout(MotorState.GRIPPER,2)
      self.armDriver.setMotorTimeout(MotorState.WRIST,2)
      self.armDriver.setMotorTimeout(MotorState.ELBOW,3)
      self.armDriver.setMotorTimeout(MotorState.SHOULDER,3)
      self.armDriver.setMotorTimeout(MotorState.BASE,2)
      self.armDriver.setMotorTimeout(MotorState.LIGHT,4)

      rospy.Subscriber('setArmMotorStates', SetMotorStates, self.setArmMotorStatesCallback)

      rospy.Timer(rospy.Duration(2), self.my_callback)
      rospy.spin()
            
  def my_callback(self,event):
      self.update()

    #---------------------------------------------------------------------------
  def update( self ):
      rospy.loginfo("Updating driver")
      self.armDriver.update()
            
    #---------------------------------------------------------------------------
  def setArmMotorStatesCallback(self ,request ):  
      for stateRequest in request.motorStates:
          if stateRequest.motorIdx >= 0 and stateRequest.motorIdx < ArmDriver.NUM_MOTORS:
              rospy.loginfo("heard topic")
              self.armDriver.setMotorState( stateRequest.motorIdx, stateRequest.motorState )
              self.update() 
          else:
              rospy.logerr( "Command sent to invalid motorIdx ({0})".format( stateRequest.motorIdx ) )
     
#-------------------------------------------------------------------------------
if __name__ == '__main__':
    server = ArmServer()
    listener =server.listener()


