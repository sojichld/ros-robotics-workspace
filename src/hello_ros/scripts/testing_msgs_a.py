#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Point
from pcr.msg import MyMsg

def synthesize(data):
    print('x:' + str(data.x), 'y:' + str(data.y), 'z:' + str(data.z))

#MAIN
def main():
    init()
    transcribe()
    translate()

#INITIALIZE
def init():
    # Initialize Node
    rospy.init_node('testing_a', anonymous=False)

    rospy.sleep(0.5) # (-_-) zzZZZ
    
#LISTENER
def transcribe():
    #start subscription
    rospy.Subscriber('my_points', Point, synthesize)
    #rospy.spin()  #omit if translate is active

#PUBLISHER
def translate():
   # Create Publisher 
    pub = rospy.Publisher('mymsg_a', MyMsg, queue_size=10) 

    #pub msg
    figure = MyMsg()
    figure.message = ('fifty')
    figure.num = 50
    pub.publish(figure)
    #pub string
#    note = String()
#    note.data = 'fifty'
#    pub.publish(note)

    rate = rospy.Rate(10) # ROS  Rate at 10Hz

    while not rospy.is_shutdown():
        pub.publish(figure)
#        pub.publish(note)
        rate.sleep()

main()
