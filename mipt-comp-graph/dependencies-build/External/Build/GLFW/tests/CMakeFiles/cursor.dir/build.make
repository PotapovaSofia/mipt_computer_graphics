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
CMAKE_SOURCE_DIR = /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/GLFW

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLFW

# Include any dependencies generated for this target.
include tests/CMakeFiles/cursor.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/cursor.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/cursor.dir/flags.make

tests/CMakeFiles/cursor.dir/cursor.c.o: tests/CMakeFiles/cursor.dir/flags.make
tests/CMakeFiles/cursor.dir/cursor.c.o: /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/GLFW/tests/cursor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLFW/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/cursor.dir/cursor.c.o"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLFW/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cursor.dir/cursor.c.o   -c /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/GLFW/tests/cursor.c

tests/CMakeFiles/cursor.dir/cursor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cursor.dir/cursor.c.i"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLFW/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/GLFW/tests/cursor.c > CMakeFiles/cursor.dir/cursor.c.i

tests/CMakeFiles/cursor.dir/cursor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cursor.dir/cursor.c.s"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLFW/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/GLFW/tests/cursor.c -o CMakeFiles/cursor.dir/cursor.c.s

tests/CMakeFiles/cursor.dir/cursor.c.o.requires:

.PHONY : tests/CMakeFiles/cursor.dir/cursor.c.o.requires

tests/CMakeFiles/cursor.dir/cursor.c.o.provides: tests/CMakeFiles/cursor.dir/cursor.c.o.requires
	$(MAKE) -f tests/CMakeFiles/cursor.dir/build.make tests/CMakeFiles/cursor.dir/cursor.c.o.provides.build
.PHONY : tests/CMakeFiles/cursor.dir/cursor.c.o.provides

tests/CMakeFiles/cursor.dir/cursor.c.o.provides.build: tests/CMakeFiles/cursor.dir/cursor.c.o


tests/CMakeFiles/cursor.dir/__/deps/glad.c.o: tests/CMakeFiles/cursor.dir/flags.make
tests/CMakeFiles/cursor.dir/__/deps/glad.c.o: /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/GLFW/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLFW/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/CMakeFiles/cursor.dir/__/deps/glad.c.o"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLFW/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cursor.dir/__/deps/glad.c.o   -c /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/GLFW/deps/glad.c

tests/CMakeFiles/cursor.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cursor.dir/__/deps/glad.c.i"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLFW/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/GLFW/deps/glad.c > CMakeFiles/cursor.dir/__/deps/glad.c.i

tests/CMakeFiles/cursor.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cursor.dir/__/deps/glad.c.s"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLFW/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/GLFW/deps/glad.c -o CMakeFiles/cursor.dir/__/deps/glad.c.s

tests/CMakeFiles/cursor.dir/__/deps/glad.c.o.requires:

.PHONY : tests/CMakeFiles/cursor.dir/__/deps/glad.c.o.requires

tests/CMakeFiles/cursor.dir/__/deps/glad.c.o.provides: tests/CMakeFiles/cursor.dir/__/deps/glad.c.o.requires
	$(MAKE) -f tests/CMakeFiles/cursor.dir/build.make tests/CMakeFiles/cursor.dir/__/deps/glad.c.o.provides.build
.PHONY : tests/CMakeFiles/cursor.dir/__/deps/glad.c.o.provides

tests/CMakeFiles/cursor.dir/__/deps/glad.c.o.provides.build: tests/CMakeFiles/cursor.dir/__/deps/glad.c.o


# Object files for target cursor
cursor_OBJECTS = \
"CMakeFiles/cursor.dir/cursor.c.o" \
"CMakeFiles/cursor.dir/__/deps/glad.c.o"

# External object files for target cursor
cursor_EXTERNAL_OBJECTS =

tests/cursor: tests/CMakeFiles/cursor.dir/cursor.c.o
tests/cursor: tests/CMakeFiles/cursor.dir/__/deps/glad.c.o
tests/cursor: tests/CMakeFiles/cursor.dir/build.make
tests/cursor: src/libglfw.3.2.dylib
tests/cursor: tests/CMakeFiles/cursor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLFW/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable cursor"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLFW/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cursor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/cursor.dir/build: tests/cursor

.PHONY : tests/CMakeFiles/cursor.dir/build

tests/CMakeFiles/cursor.dir/requires: tests/CMakeFiles/cursor.dir/cursor.c.o.requires
tests/CMakeFiles/cursor.dir/requires: tests/CMakeFiles/cursor.dir/__/deps/glad.c.o.requires

.PHONY : tests/CMakeFiles/cursor.dir/requires

tests/CMakeFiles/cursor.dir/clean:
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLFW/tests && $(CMAKE_COMMAND) -P CMakeFiles/cursor.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/cursor.dir/clean

tests/CMakeFiles/cursor.dir/depend:
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLFW && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/GLFW /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/GLFW/tests /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLFW /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLFW/tests /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLFW/tests/CMakeFiles/cursor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/cursor.dir/depend

