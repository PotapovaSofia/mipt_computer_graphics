# Install script for directory: /Users/spotapova/mipt-comp-graph/repo/seminar3

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
   "/Users/spotapova/mipt-comp-graph/install/Sample_03_1_DirectionalLight")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar3/Sample_03_1_DirectionalLight")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_1_DirectionalLight" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_1_DirectionalLight")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_1_DirectionalLight")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_1_DirectionalLight")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_03_2_PointLight")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar3/Sample_03_2_PointLight")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_2_PointLight" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_2_PointLight")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_2_PointLight")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_2_PointLight")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_03_3_PerFragment")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar3/Sample_03_3_PerFragment")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_3_PerFragment" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_3_PerFragment")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_3_PerFragment")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_3_PerFragment")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_03_4_Attenuation")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar3/Sample_03_4_Attenuation")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_4_Attenuation" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_4_Attenuation")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_4_Attenuation")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_4_Attenuation")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_03_5_CookTorrance")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar3/Sample_03_5_CookTorrance")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_5_CookTorrance" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_5_CookTorrance")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_5_CookTorrance")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_5_CookTorrance")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_03_6_MultiLights")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar3/Sample_03_6_MultiLights")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_6_MultiLights" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_6_MultiLights")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_6_MultiLights")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_6_MultiLights")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/Sample_03_7_LightingUBO")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE EXECUTABLE FILES "/Users/spotapova/mipt-comp-graph/build/seminar3/Sample_03_7_LightingUBO")
  if(EXISTS "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_7_LightingUBO" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_7_LightingUBO")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/Users/spotapova/mipt-comp-graph/dependencies-install/lib"
      "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_7_LightingUBO")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}/Users/spotapova/mipt-comp-graph/install/Sample_03_7_LightingUBO")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/spotapova/mipt-comp-graph/install/shaders3")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/spotapova/mipt-comp-graph/install" TYPE DIRECTORY FILES "/Users/spotapova/mipt-comp-graph/repo/seminar3/shaders3")
endif()

