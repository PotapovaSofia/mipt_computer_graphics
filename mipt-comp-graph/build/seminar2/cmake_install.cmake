# Install script for directory: /Users/spotapova/mipt-comp-graph/repo/seminar2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/spotapova/mipt-comp-graph/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_02_1_Transformation")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar2/Sample_02_1_Transformation")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_1_Transformation" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_1_Transformation")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_1_Transformation")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_1_Transformation")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_02_2_Shaders")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar2/Sample_02_2_Shaders")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_2_Shaders" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_2_Shaders")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_2_Shaders")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_2_Shaders")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_02_3_Points")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar2/Sample_02_3_Points")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_3_Points" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_3_Points")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_3_Points")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_3_Points")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_02_4_Lines")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar2/Sample_02_4_Lines")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_4_Lines" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_4_Lines")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_4_Lines")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_4_Lines")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_02_5_ScreenSpaceQuad")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar2/Sample_02_5_ScreenSpaceQuad")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_5_ScreenSpaceQuad" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_5_ScreenSpaceQuad")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_5_ScreenSpaceQuad")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_5_ScreenSpaceQuad")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_02_6_UBO")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar2/Sample_02_6_UBO")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_6_UBO" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_6_UBO")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_6_UBO")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_02_6_UBO")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/shaders2")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE DIRECTORY FILES "/Users/spotapova/mipt-comp-graph/repo/seminar2/shaders2")
endif()

