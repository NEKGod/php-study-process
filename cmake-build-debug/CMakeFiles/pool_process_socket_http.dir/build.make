# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /tmp/study-socket

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/study-socket/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/pool_process_socket_http.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/pool_process_socket_http.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/pool_process_socket_http.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pool_process_socket_http.dir/flags.make

CMakeFiles/pool_process_socket_http.dir/pool_process_socket_http/main.c.o: CMakeFiles/pool_process_socket_http.dir/flags.make
CMakeFiles/pool_process_socket_http.dir/pool_process_socket_http/main.c.o: ../pool_process_socket_http/main.c
CMakeFiles/pool_process_socket_http.dir/pool_process_socket_http/main.c.o: CMakeFiles/pool_process_socket_http.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/study-socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/pool_process_socket_http.dir/pool_process_socket_http/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/pool_process_socket_http.dir/pool_process_socket_http/main.c.o -MF CMakeFiles/pool_process_socket_http.dir/pool_process_socket_http/main.c.o.d -o CMakeFiles/pool_process_socket_http.dir/pool_process_socket_http/main.c.o -c /tmp/study-socket/pool_process_socket_http/main.c

CMakeFiles/pool_process_socket_http.dir/pool_process_socket_http/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pool_process_socket_http.dir/pool_process_socket_http/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/study-socket/pool_process_socket_http/main.c > CMakeFiles/pool_process_socket_http.dir/pool_process_socket_http/main.c.i

CMakeFiles/pool_process_socket_http.dir/pool_process_socket_http/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pool_process_socket_http.dir/pool_process_socket_http/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/study-socket/pool_process_socket_http/main.c -o CMakeFiles/pool_process_socket_http.dir/pool_process_socket_http/main.c.s

# Object files for target pool_process_socket_http
pool_process_socket_http_OBJECTS = \
"CMakeFiles/pool_process_socket_http.dir/pool_process_socket_http/main.c.o"

# External object files for target pool_process_socket_http
pool_process_socket_http_EXTERNAL_OBJECTS =

pool_process_socket_http: CMakeFiles/pool_process_socket_http.dir/pool_process_socket_http/main.c.o
pool_process_socket_http: CMakeFiles/pool_process_socket_http.dir/build.make
pool_process_socket_http: CMakeFiles/pool_process_socket_http.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/study-socket/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pool_process_socket_http"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pool_process_socket_http.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pool_process_socket_http.dir/build: pool_process_socket_http
.PHONY : CMakeFiles/pool_process_socket_http.dir/build

CMakeFiles/pool_process_socket_http.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pool_process_socket_http.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pool_process_socket_http.dir/clean

CMakeFiles/pool_process_socket_http.dir/depend:
	cd /tmp/study-socket/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/study-socket /tmp/study-socket /tmp/study-socket/cmake-build-debug /tmp/study-socket/cmake-build-debug /tmp/study-socket/cmake-build-debug/CMakeFiles/pool_process_socket_http.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pool_process_socket_http.dir/depend

