# Install script for directory: /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/GLM/test

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/spotapova/mipt-comp-graph/dependencies-install")
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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLM/test/bug/cmake_install.cmake")
  include("/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLM/test/core/cmake_install.cmake")
  include("/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLM/test/gtc/cmake_install.cmake")
  include("/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLM/test/gtx/cmake_install.cmake")

endif()
