# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.8.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.8.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/spotapova/graphics/tasks

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/spotapova/graphics/tasks-build

# Utility rule file for 394Potapova1_Data.

# Include the progress variables for this target.
include task1/394Potapova/CMakeFiles/394Potapova1_Data.dir/progress.make

task1/394Potapova/CMakeFiles/394Potapova1_Data: task1/394Potapova/394PotapovaData


task1/394Potapova/394PotapovaData: /Users/spotapova/graphics/tasks/task1/394Potapova/394PotapovaData
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/graphics/tasks-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating 394PotapovaData"
	cd /Users/spotapova/graphics/tasks-build/task1/394Potapova && /usr/local/Cellar/cmake/3.8.2/bin/cmake -E copy_directory /Users/spotapova/graphics/tasks/task1/394Potapova/394PotapovaData /Users/spotapova/graphics/tasks-build/task1/394Potapova/394PotapovaData

394Potapova1_Data: task1/394Potapova/CMakeFiles/394Potapova1_Data
394Potapova1_Data: task1/394Potapova/394PotapovaData
394Potapova1_Data: task1/394Potapova/CMakeFiles/394Potapova1_Data.dir/build.make

.PHONY : 394Potapova1_Data

# Rule to build all files generated by this target.
task1/394Potapova/CMakeFiles/394Potapova1_Data.dir/build: 394Potapova1_Data

.PHONY : task1/394Potapova/CMakeFiles/394Potapova1_Data.dir/build

task1/394Potapova/CMakeFiles/394Potapova1_Data.dir/clean:
	cd /Users/spotapova/graphics/tasks-build/task1/394Potapova && $(CMAKE_COMMAND) -P CMakeFiles/394Potapova1_Data.dir/cmake_clean.cmake
.PHONY : task1/394Potapova/CMakeFiles/394Potapova1_Data.dir/clean

task1/394Potapova/CMakeFiles/394Potapova1_Data.dir/depend:
	cd /Users/spotapova/graphics/tasks-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/spotapova/graphics/tasks /Users/spotapova/graphics/tasks/task1/394Potapova /Users/spotapova/graphics/tasks-build /Users/spotapova/graphics/tasks-build/task1/394Potapova /Users/spotapova/graphics/tasks-build/task1/394Potapova/CMakeFiles/394Potapova1_Data.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : task1/394Potapova/CMakeFiles/394Potapova1_Data.dir/depend

