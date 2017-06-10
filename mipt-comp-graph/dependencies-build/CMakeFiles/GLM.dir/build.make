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

# Utility rule file for GLM.

# Include the progress variables for this target.
include CMakeFiles/GLM.dir/progress.make

CMakeFiles/GLM: CMakeFiles/GLM-complete


CMakeFiles/GLM-complete: External/Stamp/GLM/GLM-install
CMakeFiles/GLM-complete: External/Stamp/GLM/GLM-mkdir
CMakeFiles/GLM-complete: External/Stamp/GLM/GLM-download
CMakeFiles/GLM-complete: External/Stamp/GLM/GLM-update
CMakeFiles/GLM-complete: External/Stamp/GLM/GLM-patch
CMakeFiles/GLM-complete: External/Stamp/GLM/GLM-configure
CMakeFiles/GLM-complete: External/Stamp/GLM/GLM-build
CMakeFiles/GLM-complete: External/Stamp/GLM/GLM-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'GLM'"
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles/GLM-complete
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLM/GLM-done

External/Stamp/GLM/GLM-install: External/Stamp/GLM/GLM-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'GLM'"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLM && $(MAKE) install
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLM && /usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLM/GLM-install

External/Stamp/GLM/GLM-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'GLM'"
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/GLM
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLM
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/Install/GLM
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/tmp/GLM
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLM
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/Download/GLM
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLM/GLM-mkdir

External/Stamp/GLM/GLM-download: External/Stamp/GLM/GLM-gitinfo.txt
External/Stamp/GLM/GLM-download: External/Stamp/GLM/GLM-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'GLM'"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source && /usr/local/Cellar/cmake/3.8.2/bin/cmake -P /Users/spotapova/mipt-comp-graph/dependencies-build/External/tmp/GLM/GLM-gitclone.cmake
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source && /usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLM/GLM-download

External/Stamp/GLM/GLM-update: External/Stamp/GLM/GLM-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'GLM'"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/GLM && /usr/local/Cellar/cmake/3.8.2/bin/cmake -P /Users/spotapova/mipt-comp-graph/dependencies-build/External/tmp/GLM/GLM-gitupdate.cmake

External/Stamp/GLM/GLM-patch: External/Stamp/GLM/GLM-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'GLM'"
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E echo_append
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLM/GLM-patch

External/Stamp/GLM/GLM-configure: External/tmp/GLM/GLM-cfgcmd.txt
External/Stamp/GLM/GLM-configure: External/Stamp/GLM/GLM-update
External/Stamp/GLM/GLM-configure: External/Stamp/GLM/GLM-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'GLM'"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLM && /usr/local/Cellar/cmake/3.8.2/bin/cmake -DCMAKE_INSTALL_PREFIX:PATH=/Users/spotapova/mipt-comp-graph/dependencies-install -DCMAKE_INSTALL_NAME_DIR=/Users/spotapova/mipt-comp-graph/dependencies-install/lib -DCMAKE_INSTALL_LIBDIR:STRING=lib "-GUnix Makefiles" /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/GLM
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLM && /usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLM/GLM-configure

External/Stamp/GLM/GLM-build: External/Stamp/GLM/GLM-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'GLM'"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLM && $(MAKE)
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/GLM && /usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/GLM/GLM-build

GLM: CMakeFiles/GLM
GLM: CMakeFiles/GLM-complete
GLM: External/Stamp/GLM/GLM-install
GLM: External/Stamp/GLM/GLM-mkdir
GLM: External/Stamp/GLM/GLM-download
GLM: External/Stamp/GLM/GLM-update
GLM: External/Stamp/GLM/GLM-patch
GLM: External/Stamp/GLM/GLM-configure
GLM: External/Stamp/GLM/GLM-build
GLM: CMakeFiles/GLM.dir/build.make

.PHONY : GLM

# Rule to build all files generated by this target.
CMakeFiles/GLM.dir/build: GLM

.PHONY : CMakeFiles/GLM.dir/build

CMakeFiles/GLM.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GLM.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GLM.dir/clean

CMakeFiles/GLM.dir/depend:
	cd /Users/spotapova/mipt-comp-graph/dependencies-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/spotapova/mipt-comp-graph/repo/dependencies /Users/spotapova/mipt-comp-graph/repo/dependencies /Users/spotapova/mipt-comp-graph/dependencies-build /Users/spotapova/mipt-comp-graph/dependencies-build /Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles/GLM.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/GLM.dir/depend

