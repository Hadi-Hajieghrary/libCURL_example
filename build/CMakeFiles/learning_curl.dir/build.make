# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/hadi/WorkSpace/cpp_ws/learning-CURL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hadi/WorkSpace/cpp_ws/learning-CURL/build

# Include any dependencies generated for this target.
include CMakeFiles/learning_curl.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/learning_curl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/learning_curl.dir/flags.make

CMakeFiles/learning_curl.dir/main.cpp.o: CMakeFiles/learning_curl.dir/flags.make
CMakeFiles/learning_curl.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hadi/WorkSpace/cpp_ws/learning-CURL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/learning_curl.dir/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/learning_curl.dir/main.cpp.o -c /home/hadi/WorkSpace/cpp_ws/learning-CURL/main.cpp

CMakeFiles/learning_curl.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/learning_curl.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hadi/WorkSpace/cpp_ws/learning-CURL/main.cpp > CMakeFiles/learning_curl.dir/main.cpp.i

CMakeFiles/learning_curl.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/learning_curl.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hadi/WorkSpace/cpp_ws/learning-CURL/main.cpp -o CMakeFiles/learning_curl.dir/main.cpp.s

# Object files for target learning_curl
learning_curl_OBJECTS = \
"CMakeFiles/learning_curl.dir/main.cpp.o"

# External object files for target learning_curl
learning_curl_EXTERNAL_OBJECTS =

learning_curl: CMakeFiles/learning_curl.dir/main.cpp.o
learning_curl: CMakeFiles/learning_curl.dir/build.make
learning_curl: CMakeFiles/learning_curl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hadi/WorkSpace/cpp_ws/learning-CURL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable learning_curl"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/learning_curl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/learning_curl.dir/build: learning_curl

.PHONY : CMakeFiles/learning_curl.dir/build

CMakeFiles/learning_curl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/learning_curl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/learning_curl.dir/clean

CMakeFiles/learning_curl.dir/depend:
	cd /home/hadi/WorkSpace/cpp_ws/learning-CURL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hadi/WorkSpace/cpp_ws/learning-CURL /home/hadi/WorkSpace/cpp_ws/learning-CURL /home/hadi/WorkSpace/cpp_ws/learning-CURL/build /home/hadi/WorkSpace/cpp_ws/learning-CURL/build /home/hadi/WorkSpace/cpp_ws/learning-CURL/build/CMakeFiles/learning_curl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/learning_curl.dir/depend
