#!/usr/bin/env python3

import rospy
from random import uniform
from std_msgs.msg import String
from std_msgs.msg import UInt32
from pcr.msg import MyMsg
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Point

def synthesize(data):
    print(data.data)

def synthesize2(data):
    print(data.data)

def synthesize3(data):
    print(data.message, data.num)

def synthesize4(data):
    print('X Coordinates:' + str(data.pose.pose.position.x), 'Y Coordinates:' + str(data.pose.pose.position.y))

#MAIN
def main():
    init()
    transcribe()
    translate()

#INITIALIZER
def init():
    # Initialize Node
    rospy.init_node('testing_b', anonymous=False)

    rospy.sleep(0.5) # (-_-) zzZZZ
    
#LISTENER
def transcribe():
    #start subscription
    rospy.Subscriber('topic_b', UInt32, synthesize)
    rospy.Subscriber('topic_a', String, synthesize2)
    rospy.Subscriber('mymsg_a', MyMsg, synthesize3)
    rospy.Subscriber('odom', Odometry, synthesize4)
    #rospy.spin()  #omit if translate is active

#PUBLISHER
def translate():
   # Create Publisher 
    pub = rospy.Publisher('my_points', Point, queue_size=10) 

    #pub string
    wow  = Point()
    wow.x = uniform(0,10) 
    wow.y = uniform(0,10) 
    wow.z = uniform(0,10) 

    pub.publish(wow)


    rate = rospy.Rate(30) # ROS  Rate at 10Hdef synthesize2(data):
    #rospy.spin()  #omit if translate is active

#PUB

    while not rospy.is_shutdown():
        pub.publish(wow)
        rate.sleep()

main()
