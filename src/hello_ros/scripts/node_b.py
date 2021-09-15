#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from std_msgs.msg import UInt32
def synthesize(data):
    print(data.data)

#MAIN
def main():
    init()
    transcribe()
    translate()

#INITIALIZE
def init():
    # Initialize Node
    rospy.init_node('node_b', anonymous=False)

    rospy.sleep(0.5) # (-_-) zzZZZ
    
#LISTENER
def transcribe():
    #start subscription
    rospy.Subscriber('topic_a', String, synthesize)
    #rospy.spin()  #omit if translate is active

#PUBLISHER
def translate():
   # Create Publisher 
    pub = rospy.Publisher('topic_b', UInt32, queue_size=10) 

    #pub string
    figure = UInt32()
    figure.data = (50)
    pub.publish(figure)

    rate = rospy.Rate(10) # ROS  Rate at 10Hz

    while not rospy.is_shutdown():
        pub.publish(figure)
        rate.sleep()

main()
