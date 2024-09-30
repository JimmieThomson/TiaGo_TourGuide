# Install script for directory: /TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/TiaGo_TourGuide/TiagoTourGuide_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/TiaGo_TourGuide/TiagoTourGuide_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/TiaGo_TourGuide/TiagoTourGuide_ws/install" TYPE PROGRAM FILES "/TiaGo_TourGuide/TiagoTourGuide_ws/build/pal_detection_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/TiaGo_TourGuide/TiagoTourGuide_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/TiaGo_TourGuide/TiagoTourGuide_ws/install" TYPE PROGRAM FILES "/TiaGo_TourGuide/TiagoTourGuide_ws/build/pal_detection_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/TiaGo_TourGuide/TiagoTourGuide_ws/install/setup.bash;/TiaGo_TourGuide/TiagoTourGuide_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/TiaGo_TourGuide/TiagoTourGuide_ws/install" TYPE FILE FILES
    "/TiaGo_TourGuide/TiagoTourGuide_ws/build/pal_detection_msgs/catkin_generated/installspace/setup.bash"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/build/pal_detection_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/TiaGo_TourGuide/TiagoTourGuide_ws/install/setup.sh;/TiaGo_TourGuide/TiagoTourGuide_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/TiaGo_TourGuide/TiagoTourGuide_ws/install" TYPE FILE FILES
    "/TiaGo_TourGuide/TiagoTourGuide_ws/build/pal_detection_msgs/catkin_generated/installspace/setup.sh"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/build/pal_detection_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/TiaGo_TourGuide/TiagoTourGuide_ws/install/setup.zsh;/TiaGo_TourGuide/TiagoTourGuide_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/TiaGo_TourGuide/TiagoTourGuide_ws/install" TYPE FILE FILES
    "/TiaGo_TourGuide/TiagoTourGuide_ws/build/pal_detection_msgs/catkin_generated/installspace/setup.zsh"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/build/pal_detection_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/TiaGo_TourGuide/TiagoTourGuide_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/TiaGo_TourGuide/TiagoTourGuide_ws/install" TYPE FILE FILES "/TiaGo_TourGuide/TiagoTourGuide_ws/build/pal_detection_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_detection_msgs/msg" TYPE FILE FILES
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/Detection2d.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/Detections2d.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/FaceDetection.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/FaceDetections.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/FaceThermalDetections.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/Gesture.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/LegDetections.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/Obstacle.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/Obstacles.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/PersonDetection.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/PersonDetections.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/RecognizedActions.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/RotatedDetection2d.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/TexturedObjectDetection.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/WaveDetection.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/RecognizedObject.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/msg/RecognizedObjectArray.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_detection_msgs/action" TYPE FILE FILES "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/action/RecognizeObjects.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_detection_msgs/msg" TYPE FILE FILES
    "/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_detection_msgs/share/pal_detection_msgs/msg/RecognizeObjectsAction.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_detection_msgs/share/pal_detection_msgs/msg/RecognizeObjectsActionGoal.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_detection_msgs/share/pal_detection_msgs/msg/RecognizeObjectsActionResult.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_detection_msgs/share/pal_detection_msgs/msg/RecognizeObjectsActionFeedback.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_detection_msgs/share/pal_detection_msgs/msg/RecognizeObjectsGoal.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_detection_msgs/share/pal_detection_msgs/msg/RecognizeObjectsResult.msg"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_detection_msgs/share/pal_detection_msgs/msg/RecognizeObjectsFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_detection_msgs/srv" TYPE FILE FILES
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/srv/AddTexturedObject.srv"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/srv/SelectTexturedObject.srv"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/srv/Recognizer.srv"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/srv/SetDatabase.srv"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/srv/StartEnrollment.srv"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/srv/StopEnrollment.srv"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/srv/ChangeObjectRecognizerModel.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_detection_msgs/cmake" TYPE FILE FILES "/TiaGo_TourGuide/TiagoTourGuide_ws/build/pal_detection_msgs/catkin_generated/installspace/pal_detection_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_detection_msgs/include/pal_detection_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_detection_msgs/share/roseus/ros/pal_detection_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_detection_msgs/share/common-lisp/ros/pal_detection_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_detection_msgs/share/gennodejs/ros/pal_detection_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_detection_msgs/lib/python3/dist-packages/pal_detection_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/TiaGo_TourGuide/TiagoTourGuide_ws/devel/.private/pal_detection_msgs/lib/python3/dist-packages/pal_detection_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/TiaGo_TourGuide/TiagoTourGuide_ws/build/pal_detection_msgs/catkin_generated/installspace/pal_detection_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_detection_msgs/cmake" TYPE FILE FILES "/TiaGo_TourGuide/TiagoTourGuide_ws/build/pal_detection_msgs/catkin_generated/installspace/pal_detection_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_detection_msgs/cmake" TYPE FILE FILES
    "/TiaGo_TourGuide/TiagoTourGuide_ws/build/pal_detection_msgs/catkin_generated/installspace/pal_detection_msgsConfig.cmake"
    "/TiaGo_TourGuide/TiagoTourGuide_ws/build/pal_detection_msgs/catkin_generated/installspace/pal_detection_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_detection_msgs" TYPE FILE FILES "/TiaGo_TourGuide/TiagoTourGuide_ws/src/pal_detection_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/TiaGo_TourGuide/TiagoTourGuide_ws/build/pal_detection_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/TiaGo_TourGuide/TiagoTourGuide_ws/build/pal_detection_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
