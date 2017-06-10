if("default" STREQUAL "")
  message(FATAL_ERROR "Tag for hg checkout should not be empty.")
endif()

set(run 0)

if("/Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/SOIL/SOIL-hginfo.txt" IS_NEWER_THAN "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/SOIL/SOIL-hgclone-lastrun.txt")
  set(run 1)
endif()

if(NOT run)
  message(STATUS "Avoiding repeated hg clone, stamp file is up to date: '/Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/SOIL/SOIL-hgclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/SOIL"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/SOIL'")
endif()

execute_process(
  COMMAND "/usr/local/bin/hg" clone -U "https://bitbucket.org/AlexBobkov/soil2" "SOIL"
  WORKING_DIRECTORY "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://bitbucket.org/AlexBobkov/soil2'")
endif()

execute_process(
  COMMAND "/usr/local/bin/hg" update default
  WORKING_DIRECTORY "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/SOIL"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'default'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/SOIL/SOIL-hginfo.txt"
    "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/SOIL/SOIL-hgclone-lastrun.txt"
  WORKING_DIRECTORY "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/SOIL"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/SOIL/SOIL-hgclone-lastrun.txt'")
endif()

