#!/usr/bin/env python3

import rospy
import math
from odom_state import State
import tf.transformations
from turtlebot3_msgs.msg import SensorState
from nav_msgs.msg import Odometry

    
def wheelsensor(data):
    rospy.loginfo('Wheel Change')  
        
    global current_l 
    global current_r
    
    left_wheel_change = ((data.left_encoder - current_l) / 4096.0) * 0.2073
    right_wheel_change = ((data.right_encoder - current_r) / 4096.0) * 0.2073
    
    u  = [left_wheel_change, right_wheel_change]
    rospy.loginfo(f'Left:{u[0]}, Right:{u[0]}')

#update current tick 
    current_l = data.left_encoder
    current_r = data.right_encoder

#return control vector
    return u

def main():
#vars

    init()
    subscribe()

def init():    

#INTIALIZE NODE
    rospy.init_node('odom_compute', anonymous=False)
    rospy.sleep(0.5)  # sleeping (-_-)zzzZZ
#PRINT --> stdout
    rospy.loginfo('initiating node odom_compute...') 

def subscribe():    
    rospy.Subscriber('sensor_state', SensorState, wheelsensor)
    rospy.loginfo('Subscribing to sensor_state...')
    rospy.spin()

def transitionModel(x, u):
    ctheta = (u[1] - u[0]) / (2 * 0.1435)
   return x



def findDistanceBetweenAngles(a, b):
    '''
    Get the smallest orientation difference in range [-pi,pi] between two angles 
    Parameters:
        a (double): an angle
        b (double): an angle
    
    Returns:
        double: smallest orientation difference in range [-pi,pi]
    '''
    result = 0
    difference = b - a
    
    if difference > math.pi:
      difference = math.fmod(difference, math.pi)
      result = difference - math.pi

    elif(difference < -math.pi):
      result = difference + (2*math.pi)

    else:
      result = difference

    return result



def displaceAngle(a1, a2):
    '''
    Displace an orientation by an angle and stay within [-pi,pi] range
    Parameters:
        a1 (double): an angle
        a2 (double): an angle
    
    Returns:
        double: The resulting angle in range [-pi,pi] after displacing a1 by a2
    '''
    a2 = a2 % (2.0*math.pi)

    if a2 > math.pi:
        a2 = (a2 % math.pi) - math.pi

    return findDistanceBetweenAngles(-a1,a2)    


current_l = 0
current_r = 0
p1 = State(1, 2, 3, 4, 5, 6)

main()

