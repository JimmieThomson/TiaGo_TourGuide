import actionlib.simple_action_client
import rospy
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal

def send_goal(x, y , z, w, client):
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

 
if __name__ == "__main__":
    try:
        rospy.init_node('move_amcl')

        way_points ={
            'rosie': (0.22714882931690594, -2.2935523491247007, -0.25751580931528695,0.9662740853157),
            'hologram' : (-1.8591409809509583, 4.796225934850886, 0.405315164713835, 0.9141770163666317),
            #'helicopter' : (-4.308114908215293, 1.4818411173072477, 0.9968803278384971, -0.07892789094236934),
            # 'arm' : (-5.763274299762083, -1.74115678056596, 0.9944623942008255, -0.10509303744950009)
        }

        client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        client.wait_for_server()

        for way_point, cords  in way_points.items():
            x, y, z, w = cords
            result = send_goal(x, y, z, w, client)
    except rospy.ROSInterruptException:
        pass