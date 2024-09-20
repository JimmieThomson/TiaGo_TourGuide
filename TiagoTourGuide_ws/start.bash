export ROS_MASTER_URI=http://172.21.232.247:11311
export ROS_IP=172.21.232.247
#! /bin/bash
echo "-------- Launching Navigation Stack --------"
source ./devel/setup.bash
roslaunch par_a3 move_with_pc2l.launch