import rospy 
from geometry_msgs.msg import Twist

def cmd_publiher():
    rospy.init_node('audio')

    pub = rospy.Publisher('/mobile_base_controller/cmd_vel', Twist, queue_size=10)
    rate = rospy.Rate(10)

    twist = Twist()
    twist.linear.x = 0.3
    twist.angular.z = 0.0

    while not rospy.is_shutdown():
        pub.publish(twist)
        rate.sleep()

if __name__ == '__main__':
    try:
        cmd_publiher()
    except rospy.ROSInterruptException:
        pass
