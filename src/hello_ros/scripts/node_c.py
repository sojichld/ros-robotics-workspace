#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from std_msgs.msg import UInt32

def synthesize(data):
    print(data.data)

def synthesize2(data):
    print(data.data)

#MAIN
def main():
    init()
    transcribe()
#    translate()

#INITIALIZER
def init():
    # Initialize Node
    rospy.init_node('node_c', anonymous=False)

    rospy.sleep(0.5) # (-_-) zzZZZ
    
#LISTENER
def transcribe():
    #start subscription
    rospy.Subscriber('topic_b', UInt32, synthesize)
    rospy.Subscriber('topic_a', String, synthesize2)
    rospy.spin()  #omit if translate is active

#PUBLISHER
def translate():
   # Create Publisher 
    pub = rospy.Publisher('topic_a', String, queue_size=10) 

    #pub string
    wow  = String()
    wow.data = ('It is great to be on planet A...')
    pub.publish(wow)

    rate = rospy.Rate(10) # ROS  Rate at 10Hz

    while not rospy.is_shutdown():
        pub.publish(wow)
        rate.sleep()

main()
