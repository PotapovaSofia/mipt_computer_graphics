# Install script for directory: /Users/spotapova/mipt-comp-graph/repo/seminar9

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
   "/Users/spotapova/mipt-comp-graph/install/Sample_09_1_Instancing")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar9/Sample_09_1_Instancing")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_09_1_Instancing" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_09_1_Instancing")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_09_1_Instancing")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_09_1_Instancing")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_09_2_Particles")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar9/Sample_09_2_Particles")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_09_2_Particles" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_09_2_Particles")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_09_2_Particles")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_09_2_Particles")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_09_3_TransformFeedback")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar9/Sample_09_3_TransformFeedback")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_09_3_TransformFeedback" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_09_3_TransformFeedback")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_09_3_TransformFeedback")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_09_3_TransformFeedback")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_09_4_GeometryShader")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar9/Sample_09_4_GeometryShader")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_09_4_GeometryShader" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_09_4_GeometryShader")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_09_4_GeometryShader")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_09_4_GeometryShader")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/shaders9")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE DIRECTORY FILES "/Users/spotapova/mipt-comp-graph/repo/seminar9/shaders9")
endif()

