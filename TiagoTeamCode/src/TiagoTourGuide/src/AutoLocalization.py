#
# Author: Tiago Tour Team
# Description: For Tiago to localize without the need of manual movemnt
# Copyright: This code is not public and cannot be shared to the public
# Student ID: s3947963
# 

import rospy
import sys
from actionlib import SimpleActionClient
import numpy as np
from geometry_msgs.msg import Twist, PoseArray
from std_srvs.srv import Empty
from statistics import mean 
from pal_interaction_msgs.msg import TtsGoal, TtsAction

localized = False
attempts = 0

def calculateIQR(listofNumbers):
    datalist = np.array(listofNumbers)
    q3, q1 = np.percentile(datalist, [75, 25])
    IQR = q3 - q1
    upperFence = q3 + (1.5 * IQR)
    lowerFence = q1 - (1.5 * IQR)

    cleanlist = []
    for numbers in listofNumbers:
        if numbers > lowerFence and numbers < upperFence:
            cleanlist.append(numbers)
    return cleanlist

def getPrecisionCloud(particleCloud):
    global localized
    global attempts
    #Average (Sum of masurements / number of measurements)
    arrayx = [float(poses.position.x) for poses in particleCloud]
    arrayx = calculateIQR(arrayx)
    average = np.mean(arrayx)

    deviationArray = []
    for x in arrayx:
        deviationArray.append(abs(x - average))

    averageDeviation = np.mean(deviationArray)

    precisionX = (averageDeviation / abs(average)) * 100
    
    print("Average is " + str(average))
    print("Average deviation is " + str(averageDeviation))
    print("Precision is " + str(precisionX))

    if (precisionX < 3 and precisionX > 0 and localized == False and attempts > 8):
        TTSAnnounceMent()
        localized = True
    if attempts < 9:
        attempts += 1
    # if len(previousCloud) != 0:
        


def particleCloudCallBack(particleCloud):
    #rospy.loginfo(particleCloud)

    # Getting the precision of x
    getPrecisionCloud(particleCloud.poses)
    #print(sum(particleCloud.poses.position.xo))


# Please make sure that the map "vxlab" is loaded
def initialize():
    # Publisher
    print("-- Starting Localization --")
    pub = rospy.Publisher('/mobile_base_controller/cmd_vel', Twist, queue_size=10)
    # Node Name
    rospy.init_node('Localizer', anonymous=True)
    rate = rospy.Rate(10)

    # Spread the partical cloud
    rospy.wait_for_service('global_localization')
    globalLocal = rospy.ServiceProxy('global_localization', Empty)
    localResponse = globalLocal()
    print("+ Cloud Reset")

    # 
    costmaps = rospy.ServiceProxy('move_base/clear_costmaps', Empty)
    costResponse = costmaps()
    localized = False

# CloudPercentage a combination of all particles to a degree of error
## If the cloud is closer bunched up it will make the confidence go up
def CloudPercentage():
    confidence = 0
    rospy.Subscriber("/particlecloud", PoseArray, particleCloudCallBack) 
    rospy.spin()

def TTSAnnounceMent():
    client = SimpleActionClient('/tts', TtsAction)
    client.wait_for_server()
    tts_msg = TtsGoal()
    tts_msg.rawtext.lang_id = "eng_AUS"
    tts_msg.rawtext.text = "I have finished localizing"
    client.send_goal_and_wait(tts_msg)

# main function to launch the program
if __name__ == '__main__':
    try:
        initialize()
        CloudPercentage()
    except rospy.ROSInterruptException:
        pass