# Install script for directory: /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code

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
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/Assimp/code/libassimp.3.3.1.dylib"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/Assimp/code/libassimp.3.dylib"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/Assimp/code/libassimp.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.3.3.1.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.3.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      execute_process(COMMAND "/usr/bin/install_name_tool"
        -id "/Users/spotapova/mipt-comp-graph/dependencies-install/lib/libassimp.3.dylib"
        "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "assimp-dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp" TYPE FILE FILES
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/anim.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/ai_assert.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/camera.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/color4.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/color4.inl"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/config.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/defs.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/cfileio.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/light.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/material.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/material.inl"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/matrix3x3.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/matrix3x3.inl"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/matrix4x4.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/matrix4x4.inl"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/mesh.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/postprocess.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/quaternion.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/quaternion.inl"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/scene.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/metadata.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/texture.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/types.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/vector2.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/vector2.inl"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/vector3.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/vector3.inl"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/version.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/cimport.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/importerdesc.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/Importer.hpp"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/DefaultLogger.hpp"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/ProgressHandler.hpp"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/IOStream.hpp"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/IOSystem.hpp"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/Logger.hpp"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/LogStream.hpp"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/NullLogger.hpp"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/cexport.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/Exporter.hpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "assimp-dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp/Compiler" TYPE FILE FILES
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/Compiler/pushpack1.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/Compiler/poppack1.h"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp/code/../include/assimp/Compiler/pstdint.h"
    )
endif()

