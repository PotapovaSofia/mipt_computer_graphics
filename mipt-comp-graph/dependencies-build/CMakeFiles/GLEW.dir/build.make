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
CMAKE_SOURCE_DIR = /Users/spotapova/mipt-comp-graph/repo/dependencies

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/spotapova/mipt-comp-graph/dependencies-build

# Utility rule file for GLEW.

# Include the progress variables for this target.
include CMakeFiles/GLEW.dir/progress.make

CMakeFiles/GLEW: CMakeFiles/GLEW-complete


CMakeFiles/GLEW-complete: External/Stamp/GLEW/GLEW-install
CMakeFiles/GLEW-complete: External/Stamp/GLEW/GLEW-mkdir
CMakeFiles/GLEW-complete: External/Stamp/GLEW/GLEW-download
CMakeFiles/GLEW-complete: External/Stamp/GLEW/GLEW-update
CMakeFiles/GLEW-complete: External/Stamp/GLEW/GLEW-patch
CMakeFiles/GLEW-complete: External/Stamp/GLEW/GLEW-configure
CMakeFiles/GLEW-complete: External/Stamp/GLEW/GLEW-build
CMakeFiles/GLEW-complete: External/Stamp/GLEW/GLEW-install
CMakeFiles/GLEW-complete: External/Stamp/GLEW/GLEW-extract
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'GLEW'"
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles/GLEW-complete
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLEW/GLEW-done

External/Stamp/GLEW/GLEW-install: External/Stamp/GLEW/GLEW-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'GLEW'"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLEW && $(MAKE) install
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLEW && /usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLEW/GLEW-install

External/Stamp/GLEW/GLEW-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'GLEW'"
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/GLEW
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLEW
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/Install/GLEW
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/tmp/GLEW
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLEW
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/Download/GLEW
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLEW/GLEW-mkdir

External/Stamp/GLEW/GLEW-download: External/Stamp/GLEW/GLEW-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step for 'GLEW'"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Download/GLEW && wget https://sourceforge.net/projects/glew/files/glew/1.13.0/glew-1.13.0.zip
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Download/GLEW && /usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLEW/GLEW-download

External/Stamp/GLEW/GLEW-update: External/Stamp/GLEW/GLEW-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'GLEW'"
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E echo_append
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLEW/GLEW-update

External/Stamp/GLEW/GLEW-patch: External/Stamp/GLEW/GLEW-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'GLEW'"
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E echo_append
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLEW/GLEW-patch

External/Stamp/GLEW/GLEW-configure: External/tmp/GLEW/GLEW-cfgcmd.txt
External/Stamp/GLEW/GLEW-configure: External/Stamp/GLEW/GLEW-update
External/Stamp/GLEW/GLEW-configure: External/Stamp/GLEW/GLEW-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'GLEW'"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLEW && /usr/local/Cellar/cmake/3.8.2/bin/cmake /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/glew-1.13.0/build/cmake "-DCMAKE_GENERATOR=Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=/Users/spotapova/mipt-comp-graph/dependencies-install -DCMAKE_INSTALL_NAME_DIR=/Users/spotapova/mipt-comp-graph/dependencies-install/lib -DBUILD_UTILS:BOOL=OFF
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLEW && /usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLEW/GLEW-configure

External/Stamp/GLEW/GLEW-build: External/Stamp/GLEW/GLEW-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'GLEW'"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLEW && $(MAKE)
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLEW && /usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLEW/GLEW-build

External/Stamp/GLEW/GLEW-extract: External/Stamp/GLEW/GLEW-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Performing extract step for 'GLEW'"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source && /usr/local/Cellar/cmake/3.8.2/bin/cmake -E tar xfz /Users/spotapova/mipt-comp-graph/dependencies-build/External/Download/GLEW/glew-1.13.0.zip
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source && /usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLEW/GLEW-extract

GLEW: CMakeFiles/GLEW
GLEW: CMakeFiles/GLEW-complete
GLEW: External/Stamp/GLEW/GLEW-install
GLEW: External/Stamp/GLEW/GLEW-mkdir
GLEW: External/Stamp/GLEW/GLEW-download
GLEW: External/Stamp/GLEW/GLEW-update
GLEW: External/Stamp/GLEW/GLEW-patch
GLEW: External/Stamp/GLEW/GLEW-configure
GLEW: External/Stamp/GLEW/GLEW-build
GLEW: External/Stamp/GLEW/GLEW-extract
GLEW: CMakeFiles/GLEW.dir/build.make

.PHONY : GLEW

# Rule to build all files generated by this target.
CMakeFiles/GLEW.dir/build: GLEW

.PHONY : CMakeFiles/GLEW.dir/build

CMakeFiles/GLEW.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GLEW.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GLEW.dir/clean

CMakeFiles/GLEW.dir/depend:
	cd /Users/spotapova/mipt-comp-graph/dependencies-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/spotapova/mipt-comp-graph/repo/dependencies /Users/spotapova/mipt-comp-graph/repo/dependencies /Users/spotapova/mipt-comp-graph/dependencies-build /Users/spotapova/mipt-comp-graph/dependencies-build /Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles/GLEW.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/GLEW.dir/depend
