execute_process(COMMAND "/home/pal/TiaGo_TourGuide/TiagoTourGuide_ws/build/tiago_common/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/pal/TiaGo_TourGuide/TiagoTourGuide_ws/build/tiago_common/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
