#!/usr/bin/env python3

import rospy
from turtlebot3_msgs.msg import SensorState

#CALLBACK
def synthesize(data):
    print(f'Left Encoder: {data.left_encoder}\nRight Encoder: {data.right_encoder}')
    rospy.loginfo('Printing left and right wheel encoders...')

#MAIN
def main():
    init()
    translate()

#INITIALIZE
def init():
    rospy.init_node('sensor_test', anonymous=False)
    rospy.sleep(0.5) #(-_-) zzZZZ
    rospy.loginfo('Initiating node sensor test...')

#SUBSCRIBE
def translate():
    rospy.Subscriber('sensor_state', SensorState, synthesize) 
    rospy.loginfo('Subscribing to sensorstate...')
    rospy.spin()

main()
