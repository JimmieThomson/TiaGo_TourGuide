import actionlib.simple_action_client
import rospy
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from pal_interaction_msgs.msg import TtsAction, TtsGoal

def send_goal(x, y , z, w, client):
    """ Send a goal to move_base 

    Args:
        x: x coordinate of the goal
        y: y coordinate of the goal
        z: z coordinate of the goal
        w: w coordinate of the goal
        client: actionlib.SimpleActionClient object

    Returns:
        The result of the action
    """
    goal = MoveBaseGoal()

    goal.target_pose.header.frame_id = "map"
    goal.target_pose.header.stamp = rospy.Time.now()
    goal.target_pose.pose.position.x = x
    goal.target_pose.pose.position.y = y

    goal.target_pose.pose.orientation.x = 0.0
    goal.target_pose.pose.orientation.y = 0.0
    goal.target_pose.pose.orientation.z = z
    goal.target_pose.pose.orientation.w = w

    client.send_goal(goal)
    # Wait for the action to return
    wait = client.wait_for_result()
    # If the result doesn't arrive, assume the Server is not available
    if wait:
        rospy.loginfo("Goal reached")
        return client.get_result()

def send_tts(text, tts_client):
    """ Send a goal to text to speech

    Args:
        text: text to be spoken
        client: actionlib.SimpleActionClient object
    """
    goal = TtsGoal()
    goal.rawtext.text = text
    goal.rawtext.lang_id = "en_GB"
    # Send the goal and wait
    tts_client.send_goal_and_wait(goal)
 
if __name__ == "__main__":
    try:
        rospy.init_node('move_amcl')
        # dict of way points
        way_points ={
            'rosie': (0.22714882931690594, -2.2935523491247007, -0.25751580931528695,0.9662740853157),
            'hologram' : (-1.8591409809509583, 4.796225934850886, 0.405315164713835, 0.9141770163666317),
            #'helicopter' : (-4.308114908215293, 1.4818411173072477, 0.9968803278384971, -0.07892789094236934),
            # 'arm' : (-5.763274299762083, -1.74115678056596, 0.9944623942008255, -0.10509303744950009)
        }

        # client for move_base
        client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        client.wait_for_server()
        # client for text to speech
        tts_client =  actionlib.SimpleActionClient('/tts', TtsAction)
        tts_client.wait_for_server()

        # send goals to move_base and text to speech
        for way_point, cords  in way_points.items():
            x, y, z, w = cords
            result = send_goal(x, y, z, w, client)
            send_tts(f"Hi {way_point}", tts_client)

    except rospy.ROSInterruptException:
        pass