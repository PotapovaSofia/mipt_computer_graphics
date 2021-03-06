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

# Utility rule file for Assimp.

# Include the progress variables for this target.
include CMakeFiles/Assimp.dir/progress.make

CMakeFiles/Assimp: CMakeFiles/Assimp-complete


CMakeFiles/Assimp-complete: External/Stamp/Assimp/Assimp-install
CMakeFiles/Assimp-complete: External/Stamp/Assimp/Assimp-mkdir
CMakeFiles/Assimp-complete: External/Stamp/Assimp/Assimp-download
CMakeFiles/Assimp-complete: External/Stamp/Assimp/Assimp-update
CMakeFiles/Assimp-complete: External/Stamp/Assimp/Assimp-patch
CMakeFiles/Assimp-complete: External/Stamp/Assimp/Assimp-configure
CMakeFiles/Assimp-complete: External/Stamp/Assimp/Assimp-build
CMakeFiles/Assimp-complete: External/Stamp/Assimp/Assimp-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'Assimp'"
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles/Assimp-complete
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/Assimp/Assimp-done

External/Stamp/Assimp/Assimp-install: External/Stamp/Assimp/Assimp-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'Assimp'"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/Assimp && $(MAKE) install
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/Assimp && /usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/Assimp/Assimp-install

External/Stamp/Assimp/Assimp-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'Assimp'"
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/Assimp
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/Install/Assimp
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/tmp/Assimp
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/Assimp
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E make_directory /Users/spotapova/mipt-comp-graph/dependencies-build/External/Download/Assimp
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/Assimp/Assimp-mkdir

External/Stamp/Assimp/Assimp-download: External/Stamp/Assimp/Assimp-gitinfo.txt
External/Stamp/Assimp/Assimp-download: External/Stamp/Assimp/Assimp-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'Assimp'"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source && /usr/local/Cellar/cmake/3.8.2/bin/cmake -P /Users/spotapova/mipt-comp-graph/dependencies-build/External/tmp/Assimp/Assimp-gitclone.cmake
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source && /usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/Assimp/Assimp-download

External/Stamp/Assimp/Assimp-update: External/Stamp/Assimp/Assimp-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'Assimp'"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp && /usr/local/Cellar/cmake/3.8.2/bin/cmake -P /Users/spotapova/mipt-comp-graph/dependencies-build/External/tmp/Assimp/Assimp-gitupdate.cmake

External/Stamp/Assimp/Assimp-patch: External/Stamp/Assimp/Assimp-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'Assimp'"
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E echo_append
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/Assimp/Assimp-patch

External/Stamp/Assimp/Assimp-configure: External/tmp/Assimp/Assimp-cfgcmd.txt
External/Stamp/Assimp/Assimp-configure: External/Stamp/Assimp/Assimp-update
External/Stamp/Assimp/Assimp-configure: External/Stamp/Assimp/Assimp-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'Assimp'"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/Assimp && /usr/local/Cellar/cmake/3.8.2/bin/cmake "-DCMAKE_GENERATOR=Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=/Users/spotapova/mipt-comp-graph/dependencies-install -DCMAKE_INSTALL_NAME_DIR=/Users/spotapova/mipt-comp-graph/dependencies-install/lib -DCMAKE_DEBUG_POSTFIX:STRING=d -DASSIMP_ENABLE_BOOST_WORKAROUND:BOOL=ON -DCMAKE_C_FLAGS=-fPIC -DCMAKE_CXX_FLAGS=-fPIC -DASSIMP_BUILD_ZLIB:BOOL=ON "-GUnix Makefiles" /Users/spotapova/mipt-comp-graph/dependencies-build/External/Source/Assimp
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/Assimp && /usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/Assimp/Assimp-configure

External/Stamp/Assimp/Assimp-build: External/Stamp/Assimp/Assimp-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'Assimp'"
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/Assimp && $(MAKE)
	cd /Users/spotapova/mipt-comp-graph/dependencies-build/External/Build/Assimp && /usr/local/Cellar/cmake/3.8.2/bin/cmake -E touch /Users/spotapova/mipt-comp-graph/dependencies-build/External/Stamp/Assimp/Assimp-build

Assimp: CMakeFiles/Assimp
Assimp: CMakeFiles/Assimp-complete
Assimp: External/Stamp/Assimp/Assimp-install
Assimp: External/Stamp/Assimp/Assimp-mkdir
Assimp: External/Stamp/Assimp/Assimp-download
Assimp: External/Stamp/Assimp/Assimp-update
Assimp: External/Stamp/Assimp/Assimp-patch
Assimp: External/Stamp/Assimp/Assimp-configure
Assimp: External/Stamp/Assimp/Assimp-build
Assimp: CMakeFiles/Assimp.dir/build.make

.PHONY : Assimp

# Rule to build all files generated by this target.
CMakeFiles/Assimp.dir/build: Assimp

.PHONY : CMakeFiles/Assimp.dir/build

CMakeFiles/Assimp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Assimp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Assimp.dir/clean

CMakeFiles/Assimp.dir/depend:
	cd /Users/spotapova/mipt-comp-graph/dependencies-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/spotapova/mipt-comp-graph/repo/dependencies /Users/spotapova/mipt-comp-graph/repo/dependencies /Users/spotapova/mipt-comp-graph/dependencies-build /Users/spotapova/mipt-comp-graph/dependencies-build /Users/spotapova/mipt-comp-graph/dependencies-build/CMakeFiles/Assimp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Assimp.dir/depend

