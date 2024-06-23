local_costmap_plugins_omni.yaml: We added the pointcloud to laser as ObstacleLayer
- name: pointcloud_layer
type: 'costmap_2d::ObstacleLayer'
local_costmap_omni.yaml: We configured the definition of the pointcloud_layer as follows:
sensor_frame: xtion_rgb_optical_frame (the frame ID of the source)
data_type: LaserScan (type of the laser data)
topic: /camera/scan (topic of the pointcloud data)

We also enabled the inflation layer in the local costmap to inflate obstacles with an inflation_radius of 1.5 meters. This is because the point cloud only helps us recognize part of the obstacles (e.g., back of the chair) and misses the rest (e.g., wheels). The inflation makes the obstacles appear larger in the costmap.

To update the costmap with the new config run this script as root user after launch the amcl and pointcloud 2 laserscan node 
/home/pal/par_2024/ros_ws/update_cost_map_config.sh 

To run the chat agent node: rosrun stt stt_ros

The api keys are revoked so user need to update the script with the new key.

our workspace on Tiago located at /home/pal/par_2024/ros_ws

We have map on Tiago, this is how we activate it: rosservice call /pal_map_manager/change_map "input: 'vxlab'"
Path to VX-lab map on Tiago: "/home/pal/.pal/tiago_maps/configurations/vxlab"


Command to run Rviz: rosrun rviz rviz -d /root/tiago_public_ws/src/omni_base_navigation/omni_base_2dnav/config/rviz/advanced_navigation.rviz