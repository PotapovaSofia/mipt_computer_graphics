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
CMAKE_SOURCE_DIR = /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/imgui

# Include any dependencies generated for this target.
include CMakeFiles/imgui.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/imgui.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/imgui.dir/flags.make

CMakeFiles/imgui.dir/imgui.cpp.o: CMakeFiles/imgui.dir/flags.make
CMakeFiles/imgui.dir/imgui.cpp.o: /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui/imgui.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/imgui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/imgui.dir/imgui.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/imgui.cpp.o -c /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui/imgui.cpp

CMakeFiles/imgui.dir/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui/imgui.cpp > CMakeFiles/imgui.dir/imgui.cpp.i

CMakeFiles/imgui.dir/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui/imgui.cpp -o CMakeFiles/imgui.dir/imgui.cpp.s

CMakeFiles/imgui.dir/imgui.cpp.o.requires:

.PHONY : CMakeFiles/imgui.dir/imgui.cpp.o.requires

CMakeFiles/imgui.dir/imgui.cpp.o.provides: CMakeFiles/imgui.dir/imgui.cpp.o.requires
	$(MAKE) -f CMakeFiles/imgui.dir/build.make CMakeFiles/imgui.dir/imgui.cpp.o.provides.build
.PHONY : CMakeFiles/imgui.dir/imgui.cpp.o.provides

CMakeFiles/imgui.dir/imgui.cpp.o.provides.build: CMakeFiles/imgui.dir/imgui.cpp.o


CMakeFiles/imgui.dir/imgui_demo.cpp.o: CMakeFiles/imgui.dir/flags.make
CMakeFiles/imgui.dir/imgui_demo.cpp.o: /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui/imgui_demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/imgui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/imgui.dir/imgui_demo.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/imgui_demo.cpp.o -c /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui/imgui_demo.cpp

CMakeFiles/imgui.dir/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_demo.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui/imgui_demo.cpp > CMakeFiles/imgui.dir/imgui_demo.cpp.i

CMakeFiles/imgui.dir/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_demo.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui/imgui_demo.cpp -o CMakeFiles/imgui.dir/imgui_demo.cpp.s

CMakeFiles/imgui.dir/imgui_demo.cpp.o.requires:

.PHONY : CMakeFiles/imgui.dir/imgui_demo.cpp.o.requires

CMakeFiles/imgui.dir/imgui_demo.cpp.o.provides: CMakeFiles/imgui.dir/imgui_demo.cpp.o.requires
	$(MAKE) -f CMakeFiles/imgui.dir/build.make CMakeFiles/imgui.dir/imgui_demo.cpp.o.provides.build
.PHONY : CMakeFiles/imgui.dir/imgui_demo.cpp.o.provides

CMakeFiles/imgui.dir/imgui_demo.cpp.o.provides.build: CMakeFiles/imgui.dir/imgui_demo.cpp.o


CMakeFiles/imgui.dir/imgui_draw.cpp.o: CMakeFiles/imgui.dir/flags.make
CMakeFiles/imgui.dir/imgui_draw.cpp.o: /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui/imgui_draw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/imgui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/imgui.dir/imgui_draw.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/imgui_draw.cpp.o -c /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui/imgui_draw.cpp

CMakeFiles/imgui.dir/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_draw.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui/imgui_draw.cpp > CMakeFiles/imgui.dir/imgui_draw.cpp.i

CMakeFiles/imgui.dir/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_draw.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui/imgui_draw.cpp -o CMakeFiles/imgui.dir/imgui_draw.cpp.s

CMakeFiles/imgui.dir/imgui_draw.cpp.o.requires:

.PHONY : CMakeFiles/imgui.dir/imgui_draw.cpp.o.requires

CMakeFiles/imgui.dir/imgui_draw.cpp.o.provides: CMakeFiles/imgui.dir/imgui_draw.cpp.o.requires
	$(MAKE) -f CMakeFiles/imgui.dir/build.make CMakeFiles/imgui.dir/imgui_draw.cpp.o.provides.build
.PHONY : CMakeFiles/imgui.dir/imgui_draw.cpp.o.provides

CMakeFiles/imgui.dir/imgui_draw.cpp.o.provides.build: CMakeFiles/imgui.dir/imgui_draw.cpp.o


CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o: CMakeFiles/imgui.dir/flags.make
CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o: /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui/imgui_impl_glfw_gl3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/imgui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o -c /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui/imgui_impl_glfw_gl3.cpp

CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui/imgui_impl_glfw_gl3.cpp > CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.i

CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui/imgui_impl_glfw_gl3.cpp -o CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.s

CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o.requires:

.PHONY : CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o.requires

CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o.provides: CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o.requires
	$(MAKE) -f CMakeFiles/imgui.dir/build.make CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o.provides.build
.PHONY : CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o.provides

CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o.provides.build: CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o


# Object files for target imgui
imgui_OBJECTS = \
"CMakeFiles/imgui.dir/imgui.cpp.o" \
"CMakeFiles/imgui.dir/imgui_demo.cpp.o" \
"CMakeFiles/imgui.dir/imgui_draw.cpp.o" \
"CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o"

# External object files for target imgui
imgui_EXTERNAL_OBJECTS =

libimgui.a: CMakeFiles/imgui.dir/imgui.cpp.o
libimgui.a: CMakeFiles/imgui.dir/imgui_demo.cpp.o
libimgui.a: CMakeFiles/imgui.dir/imgui_draw.cpp.o
libimgui.a: CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o
libimgui.a: CMakeFiles/imgui.dir/build.make
libimgui.a: CMakeFiles/imgui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/imgui/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library libimgui.a"
	$(CMAKE_COMMAND) -P CMakeFiles/imgui.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imgui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/imgui.dir/build: libimgui.a

.PHONY : CMakeFiles/imgui.dir/build

CMakeFiles/imgui.dir/requires: CMakeFiles/imgui.dir/imgui.cpp.o.requires
CMakeFiles/imgui.dir/requires: CMakeFiles/imgui.dir/imgui_demo.cpp.o.requires
CMakeFiles/imgui.dir/requires: CMakeFiles/imgui.dir/imgui_draw.cpp.o.requires
CMakeFiles/imgui.dir/requires: CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o.requires

.PHONY : CMakeFiles/imgui.dir/requires

CMakeFiles/imgui.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/imgui.dir/cmake_clean.cmake
.PHONY : CMakeFiles/imgui.dir/clean

CMakeFiles/imgui.dir/depend:
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/imgui && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/imgui /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/imgui /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/imgui /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/imgui/CMakeFiles/imgui.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/imgui.dir/depend
