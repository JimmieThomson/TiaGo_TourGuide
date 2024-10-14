import actionlib.simple_action_client
import rospy
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from pal_interaction_msgs.msg import TtsAction, TtsGoal
from std_msgs.msg import String, Bool
from std_srvs.srv import Empty
import subprocess
from tiago_common.open_ai_utils import OpenAIUtils
import simpleaudio as sa
import os

class MoveAmcl:
    _open_ai_util = OpenAIUtils(
        api_key=os.environ.get('openAPI')
    )
    _inlab = True
    _iswaitingforcommand = True
    _headingintolab = False
    _insideGov = False

    def __init__(self) -> None:
        nav_state = ('/navigation/state/')
        self.depth_sub = rospy.Subscriber('/navigation/command', String, self.command_callback)
        self.navigation_state = rospy.Publisher('/navigation/state/', Bool, queue_size=1)
        self.navigation_state = rospy.Publisher('/navigation/audio/', Bool, queue_size=1)

        self.way_points ={
            'tiago': (-0.9690887667535986, 4.491719290018725, 0.8905017709427894, -0.4549797753172726),
            'rosie light saber video': (-0.9690887667535986, 4.491719290018725, 0.8905017709427894, -0.4549797753172726),
            'rosie': (1.0769031826760034, -1.3750888189462591, 0.9019906796760765, 0.43175550231292903),
            'hologram' : (-3.9044286421116974, 4.46773100861912, -0.7763283629630859, 0.6303287022332518),
            'space lab' : (0.46463863934007055, 6.123572761448525, 0.9007536676838358, -0.43433032377916925),
            'nova sphere' : (-6.286233556310757, -0.6055555236850694, 0.03416462838721118, 0.999416218683269),
            'cobot arm' : (-6.727017108784814, -2.346226327422133, 0.31028891519085766, 0.9506423034505044),
            'race lab' : (-4.339239255318095, 12.32558081924776, -0.7703818748845104, 0.6375827529422565),
            'inside lab' : (-5.801460388606932, 6.834873215522094, 0.9054828939471474, 0.4243827621017365),
            'outside lab' : (-7.0511282632596055, 8.333373974054947, 0.9391037274693308, 0.3436338008013894),
            "complete" : (-0.9690887667535986, 4.491719290018725, 0.8905017709427894, -0.4549797753172726)
        }
    
    def go_to_door(self):
        client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        if self._inlab == True:
            x,y,z,w = self.way_points['inside lab']
            result = self.send_goal(x,y,z,w, client)
        else:
            x,y,z,w = self.way_points['outside lab']
            result = self.send_goal(x,y,-0.4035080992474188,0.9149760728247134, client)
    
    def go_through_door(self):
        client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        if self._inlab == False:
            x,y,z,w = self.way_points['inside lab']
            result = self.send_goal(x,y,-0.4035080992474188,0.9149760728247134, client)
            self._inlab = True
        else:
            x,y,z,w = self.way_points['outside lab']
            result = self.send_goal(x,y,z,w, client)
            self._inlab = False

    def update_nav_state(self, nav_state: Bool):
        state = Bool()
        state.data = nav_state
        self.navigation_state.publish(state)
    
    def speak(self, tts):
        state = Bool()
        state.data = True
        self.navigation_state.publish(state)
        self._open_ai_util.speechTest(tts)
        state.data = False
        self.navigation_state.publish(state)

    def command_callback(self, data):
        destination = str(data).split(":")[1].strip().strip('"').lower()
        print(data)
        if destination == 'go through door':
            self.go_through_door()
            self._iswaitingforcommand = False
            if self._inlab == False:
                self.navigate('race lab')
            if self._inlab == True:
                self.navigate('inside lab')
        else:
            self.navigate(destination)
        
        

    def send_goal(self, x, y , z, w, client):
        goal = MoveBaseGoal()

        goal.target_pose.header.frame_id = "map"
        goal.target_pose.header.stamp = rospy.Time.now()
        goal.target_pose.pose.position.x = x
        goal.target_pose.pose.position.y = y

        # q = tf.transformations.quaternion_from_euler(0, 0 , theta)
        goal.target_pose.pose.orientation.x = 0.0
        goal.target_pose.pose.orientation.y = 0.0
        goal.target_pose.pose.orientation.z = z
        goal.target_pose.pose.orientation.w = w
        
        costmaps = rospy.ServiceProxy('move_base/clear_costmaps', Empty)
        costResponse = costmaps()
        
        client.send_goal(goal)

        wait = client.wait_for_result()
        if wait:
            rospy.loginfo("Goal reached")
            costmaps = rospy.ServiceProxy('move_base/clear_costmaps', Empty)
            return client.get_result()

    def send_tts(self, text, tts_client):
        goal = TtsGoal()
        goal.rawtext.text = text
        goal.rawtext.lang_id = "en_GB"
        # Send the goal and wait
        tts_client.send_goal_and_wait(goal)
    
    def navigate(self, destination):
        print(destination)
        if destination in self.way_points.keys():
            print("In")
            self.update_nav_state(True)
            cords = self.way_points.get(destination)
            client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
            client.wait_for_server()
            tts_client =  actionlib.SimpleActionClient('/tts', TtsAction)
            tts_client.wait_for_server()
            x, y, z, w = cords
            
            if str(destination) == "race lab" and self._iswaitingforcommand == True and self._inlab == True:
                x,y,z,w = self.way_points.get('inside lab')
                self.go_to_door()
                self._open_ai_util.speechTest("Please tell me when the door is open")
                print(self._iswaitingforcommand)
            elif "space lab" == str(destination) and self._insideGov == False:
                result = self.send_goal(-1.5864529001816754, 3.6419035337185486, 0.4080311711544541, 0.9129679969014931, client)
                result = self.send_goal(x, y, z, w, client)
                self._insideGov = True
                print(result)
            elif "space lab" != str(destination) and self._insideGov == True:
                result = self.send_goal(-1.5864529001816754, 3.6419035337185486, 0.9452171727588227, -0.32644217914022367, client)
                result = self.send_goal(x, y, z, w, client)
                self._insideGov = False
                print(result)
            elif "inside lab" != str(destination):
                result = self.send_goal(x, y, z, w, client)
                print(result)
            
            if str(destination) == "rosie":
                self.speak(f"Hey everyone meet rosie, rosie was created in the Virtual Experiences Laboratory in 2017. She is an integration of two-armed Baxter robot from rethink robotics and an omnidirectional dataspeed mobility base. Thank you.")
            elif str(destination) == "hologram":
                self.speak(f"Meet {str(destination)} a high resolution display that enables multiple users to view and interact with 3D content simultaneously. Thank you.")
            elif str(destination) == "cobot arm":
                self.speak(f"Hey everyone, meet {str(destination)} designed to work alonside humans in shared workspaces. With a payload capaciy of 5 kg, a reach of 850 mm and 6 degrees of freedom. This robot offers verstaility, precision and user-friendly programing for various industrial applications.  Thank you.")
            elif str(destination) == "space lab":
                self.speak(f"TO INFIINITY AND BEYOND!! Hey everyone, meet {str(destination)}, designed and developed in R. M. I. T. University, this facility provides immersive introduction to space weather and it impact to technology. The lab gives students a hands-on experience in analysing and interpreting space weather data. Thank you.")
            elif str(destination) == "tiago":
                self.speak(f"Sit back and enjoy the video!")
            elif str(destination) == "nova sphere":
                self.speak(f"The NOVA Simulator is the first of its kind at a Victorian university and only the second in Australia. The two metre wide sphere simulator is operated by a single person in a VR headset. It tricks the brain with its ability to quickly rotate in any direction, while audio, visual and physical sensations make it feel truly real. With its unique 360 motion replication capability, it goes step beyond other simulators to provide a much closer simulation of real life. It also captures biometric data, such as eye-tracking that can be used in conjunction with flight data from RMIT’s physical fleet to conduct deeper research and analysis. The simulator will allow RMIT researchers to conduct more detailed scenario testing and investigation around pilot performance and open up a range of new possibilities for aviation research that drives innovation and improved safety and performance.")
            elif str(destination) == "rosie light saber video":
                self.speak(f"Sit back and enjoy the video!")
                subprocess.call(['sh', '/home/pal/TiaGo_TourGuide/TiagoTourGuide_ws/shellcom/rosie.sh'])
            elif str(destination) == "race lab" and self._iswaitingforcommand == False:
                result = self.send_goal(x, y, z, w, client)
                self.speak(f"With existing supercomputing infrastructure in high demand and complexity hindering the use of cloud services, the RACE Hub will allow researchers to be to access a self-serve portal and very high speed connectivity to meet demand across the organisation and the ability to simulate their supercomputing in a cost effective, accessible platform. By offering pre-configured options with cost estimates in a browsable service catalogue, cloud computing will be simpler and easier for researchers. It will transform collaborative and research opportunities for academic, industry partners.")
                self.speak(f"Lets head back to the lab, I'm going to head to the door, so please watch out")
                self._iswaitingforcommand == True
                self.go_to_door()
                self.speak("Please tell me when the door is open")
                print(self._iswaitingforcommand)
            elif str(destination) == 'inside lab' and self._iswaitingforcommand == False:
                x,y,z,w = self.way_points.get('rosie')
                result = self.send_goal(x, y, z, w, client)
            elif str(destination) == "complete":
                self.speak("Thanks everyone, It's been a pleasure to guide you around today, please make sure to give us your feedback about todays tour through our QR code, Thanks again!")
                wave_obj = sa.WaveObject.from_wave_file('/home/pal/TiaGo_TourGuide/TiagoTourGuide_ws/src/par_a3/sound/trumpet.wav').play().wait_done()
                
                
                
            #TODO: elif str(destination) == "inside vx lab":
            #TODO: elif str(destination) == "outside vx lab":
            self.update_nav_state(False)
    
if __name__ == "__main__":
    try:
        rospy.init_node('move_amcl')  
        move = MoveAmcl()      
        rospy.spin()

    except rospy.ROSInterruptException:
        pass