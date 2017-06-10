# Install script for directory: /Users/spotapova/mipt-comp-graph/repo/seminar8

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
   "/Users/spotapova/mipt-comp-graph/install/Sample_08_1_Grayscale")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar8/Sample_08_1_Grayscale")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_1_Grayscale" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_1_Grayscale")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_1_Grayscale")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_1_Grayscale")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_08_2_Gamma")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar8/Sample_08_2_Gamma")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_2_Gamma" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_2_Gamma")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_2_Gamma")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_2_Gamma")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_08_3_HDR")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar8/Sample_08_3_HDR")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_3_HDR" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_3_HDR")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_3_HDR")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_3_HDR")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_08_4_SSAO")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar8/Sample_08_4_SSAO")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_4_SSAO" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_4_SSAO")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_4_SSAO")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_4_SSAO")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_08_5_DoF")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar8/Sample_08_5_DoF")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_5_DoF" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_5_DoF")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_5_DoF")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_08_5_DoF")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/shaders8")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE DIRECTORY FILES "/Users/spotapova/mipt-comp-graph/repo/seminar8/shaders8")
endif()

