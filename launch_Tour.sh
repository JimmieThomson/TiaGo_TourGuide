#!/bin/bash

# Update package index
sudo apt-get update
sudo apt-get install ros-noetic-pointcloud-to-laserscan
pip install simpleaudio
pal-stop move_base
# Remove the existing directory
sudo rm -rf /opt/pal/gallium/share/pal_navigation_cfg_tiago/
# Copy the new directory
sudo cp -r /home/pal/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_navigation_cfg_tiago /opt/pal/gallium/share/
# TODO: Please change this file to represent the local files stored in this repo. Otherwise if there is an error later Tiago will not have the ability to see object infront
sudo cp ~/.pal/pal_navigation_cfg_tiago/config/base/common/local_costmap_omni.yaml /opt/pal/gallium/share/pal_navigation_cfg_tiago/config/base/common/local_costmap.yaml
sudo cp ~/.pal/pal_navigation_cfg_tiago/config/base/common/local_costmap_plugins_omni.yaml /opt/pal/gallium/share/pal_navigation_cfg_tiago/config/base/common/local_costmap_plugins.yaml 
sudo cp ~/.pal/pal_navigation_cfg_tiago/config/base/common/local_costmap_omni.yaml /opt/pal/gallium/share/pal_navigation_cfg_tiago/config/base/common/local_costmap_omni.yaml
sudo cp ~/.pal/pal_navigation_cfg_tiago/config/base/common/local_costmap_plugins_omni.yaml /opt/pal/gallium/share/pal_navigation_cfg_tiago/config/base/common/local_costmap_plugins_omni.yaml 
sudo cp ~/.pal/pal_navigation_cfg_tiago/config/base/common/recovery_behaviors.yaml /opt/pal/gallium/share/pal_navigation_cfg_tiago/config/base/common/recovery_behaviors.yaml
pal-start move_base
cd TiaGo_TourGuide/TiagoTourGuide_ws/
catkin clean -y
catkin build
source ./devel/setup.bash
roslaunch par_a3 run_all_nodes.launch