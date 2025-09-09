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
# Author: Tiago Team
# Description: This Node is for Tiago's movement. It will keep POI's in the lab and call them to allow Tiago to navigate throughout
# The lab. Please read the docs to get a better understanding :)

class MoveAmcl:
    # Calling Environment Variable openAPI 
    _open_ai_util = OpenAIUtils(
        api_key=os.environ.get('openAPI')
    )
    _in_lab = True
    _is_waiting_for_command = True
    _heading_into_lab = False
    _insideGov = False

    def __init__(self) -> None:
        """Init will start up what Tiago needs to navigate like subscribers and open AI's speech"""
        nav_state = ('/navigation/state/')
        self.depth_sub = rospy.Subscriber('/navigation/command', String, self.command_callback)
        self.navigation_state = rospy.Publisher('/navigation/state/', Bool, queue_size=1)
        self.navigation_audio = rospy.Publisher('/navigation/audio/', Bool, queue_size=1)

        # Place the coordinates in here for navigation, use robot_pose for the topic
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
        """Method when called will force Tiago to head towards the lab Doors
        """
        client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        if self._in_lab == True:
            x,y,z,w = self.way_points['inside lab']
            result = self.send_goal(x,y,z,w, client)
        else:
            x,y,z,w = self.way_points['outside lab']
            result = self.send_goal(x,y,-0.4035080992474188,0.9149760728247134, client)
    
    def go_through_door(self):
        """Method when called will force Tiago to go through the door, wether it's open or not!
        """
        client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        if self._in_lab == False:
            x,y,z,w = self.way_points['inside lab']
            result = self.send_goal(x,y,-0.4035080992474188,0.9149760728247134, client)
            self._in_lab = True
        else:
            x,y,z,w = self.way_points['outside lab']
            result = self.send_goal(x,y,z,w, client)
            self._in_lab = False

    def update_nav_state(self, nav_state: Bool):
        """Method is a publisher, it will publish the state wether Tiago is moving or not

        Args:
            nav_state (Bool): _description_
        """
        state = Bool()
        state.data = nav_state
        # Publishing the state
        self.navigation_state.publish(state)
    
    def speak(self, tts):
        """Method is used to make Tiago speak using TTS

        Args:
            tts (string): tts is the text Tiago will speak
        """
        state = Bool()
        state.data = True
        self.navigation_audio.publish(state)
        self._open_ai_util.speechTest(tts)
        state.data = False
        self.navigation_audio.publish(state)

    def command_callback(self, data):
        """Callback used when listening to the sst package, for commands given by text

        Args:
            data (string): Data given by the stt in string
        """
        # Splitting the state and state
        destination = str(data).split(":")[1].strip().strip('"').lower()
        print(data)
        if destination == 'go through door':
            self.go_through_door()
            self._is_waiting_for_command = False
            if self._in_lab == False:
                self.navigate('race lab')
            if self._in_lab == True:
                self.navigate('inside lab')
        else:
            self.navigate(destination)
        
        

    def send_goal(self, x, y , z, w, client):
        """Takes an input of coordinates from robot_pose and sends it Tiago's nav stack

        Args:
            x (float): x coordinate
            y (float): y coordinate
            z (float): z coordinate
            w (float): w coordinate
            client (actionlib.SimpleActionClient): client of the nav_stack

        Returns:
            Boolean: Return of the state of the nav_stack
        """
        # initializing the MoveBase nav stack
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
        
        # cleaning the costmaps before navigation
        cost_maps = rospy.ServiceProxy('move_base/clear_costmaps', Empty)
        costResponse = cost_maps()
        
        client.send_goal(goal)

        wait = client.wait_for_result()
        # Waiting for response from nav stack
        if wait:
            rospy.loginfo("Goal reached")
            cost_maps = rospy.ServiceProxy('move_base/clear_costmaps', Empty)
            self.update_nav_state(False)
            return client.get_result()

    def send_tts(self, text, tts_client):
        """deprecated method for Tiago's voice box

        Args:
            text (string): string that will be used to speak
            tts_client (client): the Tts client
        """
        goal = TtsGoal()
        goal.rawtext.text = text
        goal.rawtext.lang_id = "en_GB"
        # Send the goal and wait
        tts_client.send_goal_and_wait(goal)
    
    def navigate(self, destination):
        """Main method used for all the navigation commands given by the stt callback, will send Tiago to the POI and talk

        Args:
            destination (string): String must be in the OpenAI docs and the coordinates for a valid response
        """        
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
            
            if str(destination) == "race lab" and self._is_waiting_for_command == True and self._in_lab == True:
                x,y,z,w = self.way_points.get('inside lab')
                self.go_to_door()
                self._open_ai_util.speechTest("Please tell me when the door is open")
                print(self._is_waiting_for_command)
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
                self.speak(f"Hey everyone meet rosie, rosie was created in the Virtual Experiences Laboratory in 2017. She is an integration of two-armed Baxter robot from rethink robotics and an omnidirectional data speed mobility base. Thank you.")
            elif str(destination) == "hologram":
                self.speak(f"Meet {str(destination)} a high resolution display that enables multiple users to view and interact with 3D content simultaneously. Thank you.")
            elif str(destination) == "cobot arm":
                self.speak(f"Hey everyone, meet {str(destination)} designed to work alongside humans in shared workspaces. With a payload capacity of 5 kg, a reach of 850 mm and 6 degrees of freedom. This robot offers versatility, precision and user-friendly programming for various industrial applications.  Thank you.")
            elif str(destination) == "space lab":
                self.speak(f"TO INFINITY AND BEYOND!! Hey everyone, meet {str(destination)}, designed and developed in R. M. I. T. University, this facility provides immersive introduction to space weather and it impact to technology. The lab gives students a hands-on experience in analyzing and interpreting space weather data. Thank you.")
            elif str(destination) == "tiago":
                self.speak(f"Sit back and enjoy the video!")
            elif str(destination) == "nova sphere":
                self.speak(f"The NOVA Simulator is the first of its kind at a Victorian university and only the second in Australia. The two metre wide sphere simulator is operated by a single person in a VR headset. It tricks the brain with its ability to quickly rotate in any direction, while audio, visual and physical sensations make it feel truly real. With its unique 360 motion replication capability, it goes step beyond other simulators to provide a much closer simulation of real life. It also captures biometric data, such as eye-tracking that can be used in conjunction with flight data from RMIT’s physical fleet to conduct deeper research and analysis. The simulator will allow RMIT researchers to conduct more detailed scenario testing and investigation around pilot performance and open up a range of new possibilities for aviation research that drives innovation and improved safety and performance.")
            elif str(destination) == "rosie light saber video":
                self.speak(f"Sit back and enjoy the video!")
                subprocess.call(['sh', '/home/pal/TiaGo_TourGuide/TiagoTourGuide_ws/shellcom/rosie.sh'])
            elif str(destination) == "race lab" and self._is_waiting_for_command == False:
                result = self.send_goal(x, y, z, w, client)
                self.speak(f"With existing supercomputing infrastructure in high demand and complexity hindering the use of cloud services, the RACE Hub will allow researchers to be to access a self-serve portal and very high speed connectivity to meet demand across the organization and the ability to simulate their supercomputing in a cost effective, accessible platform. By offering pre-configured options with cost estimates in a browsable service catalogue, cloud computing will be simpler and easier for researchers. It will transform collaborative and research opportunities for academic, industry partners.")
                self.speak(f"Lets head back to the lab, I'm going to head to the door, so please watch out")
                self._is_waiting_for_command == True
                self.update_nav_state(True)
                self.go_to_door()
                self.speak("Please tell me when the door is open")
                print(self._is_waiting_for_command)
            elif str(destination) == 'inside lab' and self._is_waiting_for_command == False:
                x,y,z,w = self.way_points.get('rosie')
                result = self.send_goal(x, y, z, w, client)
            elif str(destination) == "complete":
                self.speak("Thanks everyone, It's been a pleasure to guide you around today, please make sure to give us your feedback about todays tour through our QR code, Thanks again!")
                wave_obj = sa.WaveObject.from_wave_file('/home/pal/TiaGo_TourGuide/TiagoTourGuide_ws/src/par_a3/sound/trumpet.wav').play().wait_done()
                
            
    
if __name__ == "__main__":
    try:
        rospy.init_node('move_amcl')  
        move = MoveAmcl()      
        rospy.spin()

    except rospy.ROSInterruptException:
        pass