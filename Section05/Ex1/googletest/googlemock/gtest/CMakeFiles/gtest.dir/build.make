# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jegan/MasteringC++/Chapter7/googletest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jegan/MasteringC++/Chapter7/googletest

# Include any dependencies generated for this target.
include googlemock/gtest/CMakeFiles/gtest.dir/depend.make

# Include the progress variables for this target.
include googlemock/gtest/CMakeFiles/gtest.dir/progress.make

# Include the compile flags for this target's objects.
include googlemock/gtest/CMakeFiles/gtest.dir/flags.make

googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: googlemock/gtest/CMakeFiles/gtest.dir/flags.make
googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: googletest/src/gtest-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jegan/MasteringC++/Chapter7/googletest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o"
	cd /home/jegan/MasteringC++/Chapter7/googletest/googlemock/gtest && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest.dir/src/gtest-all.cc.o -c /home/jegan/MasteringC++/Chapter7/googletest/googletest/src/gtest-all.cc

googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest.dir/src/gtest-all.cc.i"
	cd /home/jegan/MasteringC++/Chapter7/googletest/googlemock/gtest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jegan/MasteringC++/Chapter7/googletest/googletest/src/gtest-all.cc > CMakeFiles/gtest.dir/src/gtest-all.cc.i

googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest.dir/src/gtest-all.cc.s"
	cd /home/jegan/MasteringC++/Chapter7/googletest/googlemock/gtest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jegan/MasteringC++/Chapter7/googletest/googletest/src/gtest-all.cc -o CMakeFiles/gtest.dir/src/gtest-all.cc.s

googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o.requires:

.PHONY : googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o.requires

googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o.provides: googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o.requires
	$(MAKE) -f googlemock/gtest/CMakeFiles/gtest.dir/build.make googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o.provides.build
.PHONY : googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o.provides

googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o.provides.build: googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o


# Object files for target gtest
gtest_OBJECTS = \
"CMakeFiles/gtest.dir/src/gtest-all.cc.o"

# External object files for target gtest
gtest_EXTERNAL_OBJECTS =

googlemock/gtest/libgtest.a: googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o
googlemock/gtest/libgtest.a: googlemock/gtest/CMakeFiles/gtest.dir/build.make
googlemock/gtest/libgtest.a: googlemock/gtest/CMakeFiles/gtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jegan/MasteringC++/Chapter7/googletest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgtest.a"
	cd /home/jegan/MasteringC++/Chapter7/googletest/googlemock/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean_target.cmake
	cd /home/jegan/MasteringC++/Chapter7/googletest/googlemock/gtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
googlemock/gtest/CMakeFiles/gtest.dir/build: googlemock/gtest/libgtest.a

.PHONY : googlemock/gtest/CMakeFiles/gtest.dir/build

googlemock/gtest/CMakeFiles/gtest.dir/requires: googlemock/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o.requires

.PHONY : googlemock/gtest/CMakeFiles/gtest.dir/requires

googlemock/gtest/CMakeFiles/gtest.dir/clean:
	cd /home/jegan/MasteringC++/Chapter7/googletest/googlemock/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean.cmake
.PHONY : googlemock/gtest/CMakeFiles/gtest.dir/clean

googlemock/gtest/CMakeFiles/gtest.dir/depend:
	cd /home/jegan/MasteringC++/Chapter7/googletest && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jegan/MasteringC++/Chapter7/googletest /home/jegan/MasteringC++/Chapter7/googletest/googletest /home/jegan/MasteringC++/Chapter7/googletest /home/jegan/MasteringC++/Chapter7/googletest/googlemock/gtest /home/jegan/MasteringC++/Chapter7/googletest/googlemock/gtest/CMakeFiles/gtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : googlemock/gtest/CMakeFiles/gtest.dir/depend

