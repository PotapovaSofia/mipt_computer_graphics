

set(command "/usr/local/Cellar/cmake/3.8.2/bin/cmake;-P;/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/Assimp/test/gtest/tmp/gtest-gitclone.cmake")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/Assimp/test/gtest/src/gtest-stamp/gtest-download-out.log"
  ERROR_FILE "/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/Assimp/test/gtest/src/gtest-stamp/gtest-download-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/Assimp/test/gtest/src/gtest-stamp/gtest-download-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "gtest download command succeeded.  See also /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/Assimp/test/gtest/src/gtest-stamp/gtest-download-*.log")
  message(STATUS "${msg}")
endif()
