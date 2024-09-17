import actionlib.simple_action_client
import rospy
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from pal_interaction_msgs.msg import TtsAction, TtsGoal
import tf
import tf.transformations
from std_msgs.msg import String, Bool
from sensor_msgs.msg import LaserScan

class MoveAmcl:

    def __init__(self) -> None:
        nav_state = ('/navigation/state/')
        self.depth_sub = rospy.Subscriber('/navigation/command', String, self.command_callback)
        self.navigation_state = rospy.Publisher(nav_state, Bool, queue_size=1)
        # self.cam_scan = rospy.Subscriber('/camera/scan', LaserScan, self.cam_callback)

        # TODO: These are hardcoded. Maybe revisit the waypoints
        self.way_points ={
            # 'rosie': (0.18519474901728605, -2.2356853581408322, 0.9259165806602949,0.3777280578118966),
            'rosie': (-0.6208850458870878, -2.0182972522257687, 0.8507834050078982, 0.525516505700028)
            # 'hologram' : (-0.8488466036242936, 4.667336795377766, 0.8707926737262685, -0.4916504036250318),
            # 'space lab' : (0.9817208755577691, 2.0704576967361357, 0.9082750125061685, -0.4183736388169306),
            # 'nova sphere' : (-4.5508354522532795, 1.9354516999752547, -0.035740348950100184, 0.9993611096380152),
            # 'cobot arm' : (-5.191268433954116, -1.6734314070166887, 0.18685527839192473, 0.9823874515368548)
        }

    def update_nav_state(self, nav_state: Bool):
        state = Bool()
        state.data = nav_state
        self.navigation_state.publish(state)

    # def cam_callback(self, data):
    #     print(min(data.ranges))

    def command_callback(self, data):
        destination = str(data).split(":")[1].strip().strip('"').lower()
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

        client.send_goal(goal)

        wait = client.wait_for_result()
        if wait:
            rospy.loginfo("Goal reached")
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
            result = self.send_goal(x, y, z, w, client)
            print(result)
            if str(destination) == "rosie":
                self.send_tts(f"Hey everyone meet rosie, rosie was created in the Virtual Experiences Laboratory in 2017. She is an integration of two-armed Baxter robot from rethink robotics and an omnidirectional dataspeed mobility base. Thank you.", tts_client)
            elif str(destination) == "hologram":
                self.send_tts(f"Meet {str(destination)} a high resolution display that enables multiple users to view and interact with 3D content simultaneously. Thank you.", tts_client)
            elif str(destination) == "cobot arm":
                self.send_tts(f"Hey everyone, meet {str(destination)} designed to work alonside humans in shared workspaces. With a payload capaciy of 5 kg, a reach of 850 mm and 6 degrees of freedom. This robot offers verstaility, precision and user-friendly programing for various industrial applications.  Thank you.", tts_client)
            elif str(destination) == "space lab":
                self.send_tts(f"TO INFIINITY AND BEYOND!! Hey everyone, meet {str(destination)}, designed and developed in R. M. I. T. University, this facility provides immersive introduction to space weather and it impact to technology. The lab gives students a hands-on experience in analysing and interpreting space weather data. Thank you.", tts_client)
            # elif str(destination) == "nova sphere":
            #     self.send_tts(f"Hey everyone, meet {str(destination)}, which provides a immersive experience to user seated inside, with potential applications in entertainment, training and education.  Thank you.", tts_client)
            self.update_nav_state(False)
    
if __name__ == "__main__":
    try:
        rospy.init_node('move_amcl')  
        move = MoveAmcl()      
        rospy.spin()

    except rospy.ROSInterruptException:
        pass