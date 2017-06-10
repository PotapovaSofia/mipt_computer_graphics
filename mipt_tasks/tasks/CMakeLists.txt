cmake_minimum_required(VERSION 3.0)

project(StudentTasks2017 VERSION 3.0)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set_property(GLOBAL PROPERTY PREDEFINED_TARGETS_FOLDER "CMake Targets")

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")

option(USE_CORE_PROFILE "Enable to use core profile" ON)

include(MacroUtils)

set(SELECTED_STUDENT CACHE STRING "The only student to build")

FIND_DEPENDENCIES()

if(UNIX)
    set(CMAKE_INSTALL_RPATH "${DEPENDENCIES_ROOT}/lib")
endif()

if(WIN32)
    COPY_DEPENDENCIES(task1)
    COPY_DEPENDENCIES(task2)
    COPY_DEPENDENCIES(task3)
endif(WIN32)

ADD_TASKS(task1)
ADD_TASKS(task2)
ADD_TASKS(task3)
