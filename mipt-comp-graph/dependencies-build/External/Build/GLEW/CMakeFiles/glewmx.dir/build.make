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
CMAKE_SOURCE_DIR = /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/build/cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLEW

# Include any dependencies generated for this target.
include CMakeFiles/glewmx.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/glewmx.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/glewmx.dir/flags.make

CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.o: CMakeFiles/glewmx.dir/flags.make
CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.o: /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLEW/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.o   -c /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.c

CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.c > CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.i

CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.c -o CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.s

CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.o.requires:

.PHONY : CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.o.requires

CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.o.provides: CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.o.requires
	$(MAKE) -f CMakeFiles/glewmx.dir/build.make CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.o.provides.build
.PHONY : CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.o.provides

CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.o.provides.build: CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.o


# Object files for target glewmx
glewmx_OBJECTS = \
"CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.o"

# External object files for target glewmx
glewmx_EXTERNAL_OBJECTS =

lib/libGLEWmx.dylib: CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.o
lib/libGLEWmx.dylib: CMakeFiles/glewmx.dir/build.make
lib/libGLEWmx.dylib: CMakeFiles/glewmx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLEW/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library lib/libGLEWmx.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glewmx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/glewmx.dir/build: lib/libGLEWmx.dylib

.PHONY : CMakeFiles/glewmx.dir/build

CMakeFiles/glewmx.dir/requires: CMakeFiles/glewmx.dir/Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/src/glew.o.requires

.PHONY : CMakeFiles/glewmx.dir/requires

CMakeFiles/glewmx.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/glewmx.dir/cmake_clean.cmake
.PHONY : CMakeFiles/glewmx.dir/clean

CMakeFiles/glewmx.dir/depend:
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLEW && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/build/cmake /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/build/cmake /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLEW /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLEW /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLEW/CMakeFiles/glewmx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/glewmx.dir/depend

