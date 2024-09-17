# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pal_navigation_msgs: 67 messages, 19 services")

set(MSG_I_FLAGS "-Ipal_navigation_msgs:/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg;-Ipal_navigation_msgs:/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pal_navigation_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingAction.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingAction.msg" "pal_navigation_msgs/ExecuteParkingGoal:pal_navigation_msgs/ExecuteParkingActionGoal:pal_navigation_msgs/ExecuteParkingFeedback:pal_navigation_msgs/ExecuteParkingActionFeedback:pal_navigation_msgs/ExecuteParkingResult:actionlib_msgs/GoalStatus:pal_navigation_msgs/ExecuteParkingActionResult:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg" "pal_navigation_msgs/ExecuteParkingGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg" "pal_navigation_msgs/ExecuteParkingResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg" "actionlib_msgs/GoalID:pal_navigation_msgs/ExecuteParkingFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsAction.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsAction.msg" "pal_navigation_msgs/Waypoint:pal_navigation_msgs/FollowWaypointsFeedback:geometry_msgs/Pose:geometry_msgs/Quaternion:pal_navigation_msgs/FollowWaypointsGoal:pal_navigation_msgs/FollowWaypointsActionFeedback:geometry_msgs/Point:pal_navigation_msgs/FollowWaypointsActionResult:actionlib_msgs/GoalStatus:geometry_msgs/PoseStamped:pal_navigation_msgs/FollowWaypointsActionGoal:pal_navigation_msgs/MissedWaypoint:actionlib_msgs/GoalID:std_msgs/Header:pal_navigation_msgs/FollowWaypointsResult"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg" "pal_navigation_msgs/Waypoint:geometry_msgs/Pose:geometry_msgs/Quaternion:pal_navigation_msgs/FollowWaypointsGoal:geometry_msgs/Point:geometry_msgs/PoseStamped:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:actionlib_msgs/GoalStatus:geometry_msgs/Point:geometry_msgs/PoseStamped:actionlib_msgs/GoalID:pal_navigation_msgs/MissedWaypoint:pal_navigation_msgs/FollowWaypointsResult"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg" "pal_navigation_msgs/FollowWaypointsFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg" "pal_navigation_msgs/Waypoint:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:pal_navigation_msgs/MissedWaypoint:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityAction.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityAction.msg" "pal_navigation_msgs/JoyPriorityFeedback:std_msgs/Header:pal_navigation_msgs/JoyPriorityActionFeedback:pal_navigation_msgs/JoyPriorityActionGoal:pal_navigation_msgs/JoyPriorityResult:actionlib_msgs/GoalStatus:pal_navigation_msgs/JoyPriorityActionResult:actionlib_msgs/GoalID:pal_navigation_msgs/JoyPriorityGoal"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg" "actionlib_msgs/GoalID:pal_navigation_msgs/JoyPriorityGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg" "actionlib_msgs/GoalID:pal_navigation_msgs/JoyPriorityResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg" "actionlib_msgs/GoalID:pal_navigation_msgs/JoyPriorityFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboAction.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboAction.msg" "std_msgs/Header:actionlib_msgs/GoalStatus:pal_navigation_msgs/JoyTurboGoal:pal_navigation_msgs/JoyTurboResult:pal_navigation_msgs/JoyTurboActionFeedback:pal_navigation_msgs/JoyTurboFeedback:actionlib_msgs/GoalID:pal_navigation_msgs/JoyTurboActionGoal:pal_navigation_msgs/JoyTurboActionResult"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg" "pal_navigation_msgs/JoyTurboGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg" "pal_navigation_msgs/JoyTurboResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg" "actionlib_msgs/GoalID:pal_navigation_msgs/JoyTurboFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIAction.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIAction.msg" "geometry_msgs/Pose:pal_navigation_msgs/GoToPOIActionResult:pal_navigation_msgs/GoToPOIGoal:geometry_msgs/Quaternion:actionlib_msgs/GoalStatus:std_msgs/String:pal_navigation_msgs/GoToPOIActionFeedback:geometry_msgs/Point:geometry_msgs/PoseStamped:pal_navigation_msgs/GoToPOIFeedback:pal_navigation_msgs/GoToPOIResult:actionlib_msgs/GoalID:std_msgs/Header:pal_navigation_msgs/GoToPOIActionGoal"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg" "std_msgs/String:actionlib_msgs/GoalID:std_msgs/Header:pal_navigation_msgs/GoToPOIGoal"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg" "pal_navigation_msgs/GoToPOIResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:actionlib_msgs/GoalStatus:geometry_msgs/Point:geometry_msgs/PoseStamped:pal_navigation_msgs/GoToPOIFeedback:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg" "std_msgs/String"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToAction.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToAction.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:pal_navigation_msgs/GoToGoal:pal_navigation_msgs/GoToActionGoal:geometry_msgs/Point:actionlib_msgs/GoalStatus:geometry_msgs/PoseStamped:pal_navigation_msgs/GoToActionFeedback:pal_navigation_msgs/GoToResult:pal_navigation_msgs/GoToFeedback:actionlib_msgs/GoalID:pal_navigation_msgs/GoToActionResult:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:pal_navigation_msgs/GoToGoal:geometry_msgs/Point:geometry_msgs/PoseStamped:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg" "actionlib_msgs/GoalID:pal_navigation_msgs/GoToResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:actionlib_msgs/GoalStatus:geometry_msgs/Point:geometry_msgs/PoseStamped:pal_navigation_msgs/GoToFeedback:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingAction.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingAction.msg" "pal_navigation_msgs/VisualTrainingActionFeedback:pal_navigation_msgs/VisualTrainingActionGoal:pal_navigation_msgs/VisualTrainingActionResult:pal_navigation_msgs/VisualTrainingResult:pal_navigation_msgs/VisualTrainingFeedback:actionlib_msgs/GoalStatus:pal_navigation_msgs/VisualTrainingGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg" "pal_navigation_msgs/VisualTrainingGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg" "actionlib_msgs/GoalID:pal_navigation_msgs/VisualTrainingResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg" "pal_navigation_msgs/VisualTrainingFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/AvailableMaps.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/AvailableMaps.msg" "std_msgs/String"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Emergency.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Emergency.msg" "std_msgs/String"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAnglesStamped.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAnglesStamped.msg" "pal_navigation_msgs/EulerAngles:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:sensor_msgs/Image:pal_navigation_msgs/POI:pal_navigation_msgs/POIGroup:pal_navigation_msgs/VisualLocDB:sensor_msgs/ChannelFloat32:pal_navigation_msgs/NiceMapTransformation:geometry_msgs/Point32:geometry_msgs/Point:std_msgs/String:sensor_msgs/PointCloud:std_msgs/Float32:nav_msgs/MapMetaData:nav_msgs/OccupancyGrid:pal_navigation_msgs/Highways:std_msgs/Bool:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NavigationStatus.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NavigationStatus.msg" "std_msgs/String"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg" "sensor_msgs/ChannelFloat32:geometry_msgs/Point32:std_msgs/String:sensor_msgs/PointCloud:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg" "std_msgs/String"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReadingScan.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReadingScan.msg" "pal_navigation_msgs/PolarReading:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/ServiceStatus.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/ServiceStatus.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/TabletPOI.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/TabletPOI.msg" "std_msgs/String:geometry_msgs/Point"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg" "std_msgs/String:std_msgs/Float32:std_msgs/Bool:geometry_msgs/Point"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/LaserImage.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/LaserImage.msg" "sensor_msgs/CompressedImage:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/Acknowledgment.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/Acknowledgment.srv" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeBuilding.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeBuilding.srv" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeMap.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeMap.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:nav_msgs/MapMetaData:nav_msgs/OccupancyGrid:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeSyncMap.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeSyncMap.srv" "geometry_msgs/Quaternion:pal_navigation_msgs/POI:pal_navigation_msgs/POIGroup:pal_navigation_msgs/VisualLocDB:geometry_msgs/Point:nav_msgs/OccupancyGrid:pal_navigation_msgs/MapConfiguration:pal_navigation_msgs/Highways:geometry_msgs/Pose:std_msgs/String:sensor_msgs/PointCloud:sensor_msgs/Image:geometry_msgs/Point32:nav_msgs/MapMetaData:pal_navigation_msgs/NiceMapTransformation:sensor_msgs/ChannelFloat32:std_msgs/Float32:std_msgs/Bool:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/DisableEmergency.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/DisableEmergency.srv" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/FinalApproachPose.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/FinalApproachPose.srv" "std_msgs/Bool:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ListMaps.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ListMaps.srv" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetMapConfiguration.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetMapConfiguration.srv" "geometry_msgs/Quaternion:pal_navigation_msgs/POI:pal_navigation_msgs/POIGroup:pal_navigation_msgs/VisualLocDB:geometry_msgs/Point:nav_msgs/OccupancyGrid:pal_navigation_msgs/MapConfiguration:pal_navigation_msgs/Highways:geometry_msgs/Pose:std_msgs/String:sensor_msgs/PointCloud:sensor_msgs/Image:geometry_msgs/Point32:nav_msgs/MapMetaData:pal_navigation_msgs/NiceMapTransformation:sensor_msgs/ChannelFloat32:std_msgs/Float32:std_msgs/Bool:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetNodes.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetNodes.srv" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetPOI.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetPOI.srv" "pal_navigation_msgs/POI:sensor_msgs/ChannelFloat32:geometry_msgs/Point32:std_msgs/String:sensor_msgs/PointCloud:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetSubMap.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetSubMap.srv" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RegisterSync.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RegisterSync.srv" "geometry_msgs/Quaternion:pal_navigation_msgs/POI:pal_navigation_msgs/POIGroup:pal_navigation_msgs/VisualLocDB:geometry_msgs/Point:nav_msgs/OccupancyGrid:pal_navigation_msgs/MapConfiguration:pal_navigation_msgs/Highways:geometry_msgs/Pose:std_msgs/String:sensor_msgs/PointCloud:sensor_msgs/Image:geometry_msgs/Point32:nav_msgs/MapMetaData:pal_navigation_msgs/NiceMapTransformation:sensor_msgs/ChannelFloat32:std_msgs/Float32:std_msgs/Bool:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SafetyZone.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SafetyZone.srv" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SaveMap.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SaveMap.srv" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetMapConfiguration.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetMapConfiguration.srv" "geometry_msgs/Quaternion:pal_navigation_msgs/POI:pal_navigation_msgs/POIGroup:pal_navigation_msgs/VisualLocDB:geometry_msgs/Point:nav_msgs/OccupancyGrid:pal_navigation_msgs/MapConfiguration:pal_navigation_msgs/Highways:geometry_msgs/Pose:std_msgs/String:sensor_msgs/PointCloud:sensor_msgs/Image:geometry_msgs/Point32:nav_msgs/MapMetaData:pal_navigation_msgs/NiceMapTransformation:sensor_msgs/ChannelFloat32:std_msgs/Float32:std_msgs/Bool:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetPOI.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetPOI.srv" "pal_navigation_msgs/POI:sensor_msgs/ChannelFloat32:geometry_msgs/Point32:std_msgs/String:sensor_msgs/PointCloud:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetSubMapFloor.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetSubMapFloor.srv" ""
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/VisualLocRecognize.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/VisualLocRecognize.srv" "geometry_msgs/PoseWithCovariance:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RenameMap.srv" NAME_WE)
add_custom_target(_pal_navigation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_navigation_msgs" "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RenameMap.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/AvailableMaps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Emergency.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAnglesStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NavigationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReadingScan.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/ServiceStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/TabletPOI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/LaserImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)

### Generating Services
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/Acknowledgment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeBuilding.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeSyncMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/DisableEmergency.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/FinalApproachPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ListMaps.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetMapConfiguration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetNodes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetPOI.srv"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetSubMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RegisterSync.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SafetyZone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetMapConfiguration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetPOI.srv"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetSubMapFloor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/VisualLocRecognize.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_cpp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RenameMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
)

### Generating Module File
_generate_module_cpp(pal_navigation_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pal_navigation_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pal_navigation_msgs_generate_messages pal_navigation_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/AvailableMaps.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Emergency.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAnglesStamped.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NavigationStatus.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReadingScan.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/ServiceStatus.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/TabletPOI.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/LaserImage.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/Acknowledgment.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeBuilding.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeSyncMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/DisableEmergency.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/FinalApproachPose.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ListMaps.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetMapConfiguration.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetNodes.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetPOI.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetSubMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RegisterSync.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SafetyZone.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetMapConfiguration.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetPOI.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetSubMapFloor.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/VisualLocRecognize.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RenameMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_cpp _pal_navigation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_navigation_msgs_gencpp)
add_dependencies(pal_navigation_msgs_gencpp pal_navigation_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_navigation_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/AvailableMaps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Emergency.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAnglesStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NavigationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReadingScan.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/ServiceStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/TabletPOI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/LaserImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)

### Generating Services
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/Acknowledgment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeBuilding.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeSyncMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/DisableEmergency.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/FinalApproachPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ListMaps.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetMapConfiguration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetNodes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetPOI.srv"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetSubMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RegisterSync.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SafetyZone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetMapConfiguration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetPOI.srv"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetSubMapFloor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/VisualLocRecognize.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_eus(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RenameMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
)

### Generating Module File
_generate_module_eus(pal_navigation_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pal_navigation_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pal_navigation_msgs_generate_messages pal_navigation_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/AvailableMaps.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Emergency.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAnglesStamped.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NavigationStatus.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReadingScan.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/ServiceStatus.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/TabletPOI.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/LaserImage.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/Acknowledgment.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeBuilding.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeSyncMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/DisableEmergency.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/FinalApproachPose.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ListMaps.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetMapConfiguration.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetNodes.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetPOI.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetSubMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RegisterSync.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SafetyZone.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetMapConfiguration.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetPOI.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetSubMapFloor.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/VisualLocRecognize.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RenameMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_eus _pal_navigation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_navigation_msgs_geneus)
add_dependencies(pal_navigation_msgs_geneus pal_navigation_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_navigation_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/AvailableMaps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Emergency.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAnglesStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NavigationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReadingScan.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/ServiceStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/TabletPOI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/LaserImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)

### Generating Services
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/Acknowledgment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeBuilding.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeSyncMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/DisableEmergency.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/FinalApproachPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ListMaps.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetMapConfiguration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetNodes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetPOI.srv"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetSubMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RegisterSync.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SafetyZone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetMapConfiguration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetPOI.srv"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetSubMapFloor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/VisualLocRecognize.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_lisp(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RenameMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
)

### Generating Module File
_generate_module_lisp(pal_navigation_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pal_navigation_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pal_navigation_msgs_generate_messages pal_navigation_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/AvailableMaps.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Emergency.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAnglesStamped.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NavigationStatus.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReadingScan.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/ServiceStatus.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/TabletPOI.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/LaserImage.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/Acknowledgment.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeBuilding.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeSyncMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/DisableEmergency.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/FinalApproachPose.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ListMaps.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetMapConfiguration.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetNodes.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetPOI.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetSubMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RegisterSync.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SafetyZone.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetMapConfiguration.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetPOI.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetSubMapFloor.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/VisualLocRecognize.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RenameMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_lisp _pal_navigation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_navigation_msgs_genlisp)
add_dependencies(pal_navigation_msgs_genlisp pal_navigation_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_navigation_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/AvailableMaps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Emergency.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAnglesStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NavigationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReadingScan.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/ServiceStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/TabletPOI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/LaserImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)

### Generating Services
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/Acknowledgment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeBuilding.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeSyncMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/DisableEmergency.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/FinalApproachPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ListMaps.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetMapConfiguration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetNodes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetPOI.srv"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetSubMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RegisterSync.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SafetyZone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetMapConfiguration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetPOI.srv"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetSubMapFloor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/VisualLocRecognize.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_nodejs(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RenameMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
)

### Generating Module File
_generate_module_nodejs(pal_navigation_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pal_navigation_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pal_navigation_msgs_generate_messages pal_navigation_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/AvailableMaps.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Emergency.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAnglesStamped.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NavigationStatus.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReadingScan.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/ServiceStatus.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/TabletPOI.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/LaserImage.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/Acknowledgment.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeBuilding.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeSyncMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/DisableEmergency.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/FinalApproachPose.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ListMaps.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetMapConfiguration.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetNodes.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetPOI.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetSubMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RegisterSync.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SafetyZone.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetMapConfiguration.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetPOI.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetSubMapFloor.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/VisualLocRecognize.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RenameMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_nodejs _pal_navigation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_navigation_msgs_gennodejs)
add_dependencies(pal_navigation_msgs_gennodejs pal_navigation_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_navigation_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/AvailableMaps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Emergency.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAnglesStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NavigationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReadingScan.msg"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/ServiceStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/TabletPOI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/LaserImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_msg_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)

### Generating Services
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/Acknowledgment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeBuilding.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeSyncMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/DisableEmergency.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/FinalApproachPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ListMaps.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetMapConfiguration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetNodes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetPOI.srv"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetSubMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RegisterSync.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SafetyZone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetMapConfiguration.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetPOI.srv"
  "${MSG_I_FLAGS}"
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/ChannelFloat32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetSubMapFloor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/VisualLocRecognize.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)
_generate_srv_py(pal_navigation_msgs
  "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RenameMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
)

### Generating Module File
_generate_module_py(pal_navigation_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pal_navigation_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pal_navigation_msgs_generate_messages pal_navigation_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/GoToFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingAction.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingResult.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_navigation_msgs/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/AvailableMaps.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Emergency.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAnglesStamped.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NavigationStatus.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReadingScan.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/ServiceStatus.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/TabletPOI.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/LaserImage.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/Acknowledgment.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeBuilding.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeSyncMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/DisableEmergency.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/FinalApproachPose.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/ListMaps.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetMapConfiguration.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetNodes.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetPOI.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/GetSubMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RegisterSync.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SafetyZone.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetMapConfiguration.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetPOI.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/SetSubMapFloor.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/VisualLocRecognize.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/james/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_msgs/pal_navigation_msgs/srv/RenameMap.srv" NAME_WE)
add_dependencies(pal_navigation_msgs_generate_messages_py _pal_navigation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_navigation_msgs_genpy)
add_dependencies(pal_navigation_msgs_genpy pal_navigation_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_navigation_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_navigation_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(pal_navigation_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(pal_navigation_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(pal_navigation_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pal_navigation_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_navigation_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(pal_navigation_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(pal_navigation_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(pal_navigation_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(pal_navigation_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_navigation_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(pal_navigation_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(pal_navigation_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(pal_navigation_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pal_navigation_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_navigation_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(pal_navigation_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(pal_navigation_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(pal_navigation_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(pal_navigation_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_navigation_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(pal_navigation_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(pal_navigation_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(pal_navigation_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pal_navigation_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
