# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/lzb/clion-2019.1.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/lzb/clion-2019.1.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/socks5_proxy.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/socks5_proxy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/socks5_proxy.dir/flags.make

CMakeFiles/socks5_proxy.dir/client.c.o: CMakeFiles/socks5_proxy.dir/flags.make
CMakeFiles/socks5_proxy.dir/client.c.o: ../client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/socks5_proxy.dir/client.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/socks5_proxy.dir/client.c.o   -c /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/client.c

CMakeFiles/socks5_proxy.dir/client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/socks5_proxy.dir/client.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/client.c > CMakeFiles/socks5_proxy.dir/client.c.i

CMakeFiles/socks5_proxy.dir/client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/socks5_proxy.dir/client.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/client.c -o CMakeFiles/socks5_proxy.dir/client.c.s

CMakeFiles/socks5_proxy.dir/getopt.c.o: CMakeFiles/socks5_proxy.dir/flags.make
CMakeFiles/socks5_proxy.dir/getopt.c.o: ../getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/socks5_proxy.dir/getopt.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/socks5_proxy.dir/getopt.c.o   -c /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/getopt.c

CMakeFiles/socks5_proxy.dir/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/socks5_proxy.dir/getopt.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/getopt.c > CMakeFiles/socks5_proxy.dir/getopt.c.i

CMakeFiles/socks5_proxy.dir/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/socks5_proxy.dir/getopt.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/getopt.c -o CMakeFiles/socks5_proxy.dir/getopt.c.s

CMakeFiles/socks5_proxy.dir/main.c.o: CMakeFiles/socks5_proxy.dir/flags.make
CMakeFiles/socks5_proxy.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/socks5_proxy.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/socks5_proxy.dir/main.c.o   -c /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/main.c

CMakeFiles/socks5_proxy.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/socks5_proxy.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/main.c > CMakeFiles/socks5_proxy.dir/main.c.i

CMakeFiles/socks5_proxy.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/socks5_proxy.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/main.c -o CMakeFiles/socks5_proxy.dir/main.c.s

CMakeFiles/socks5_proxy.dir/s5.c.o: CMakeFiles/socks5_proxy.dir/flags.make
CMakeFiles/socks5_proxy.dir/s5.c.o: ../s5.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/socks5_proxy.dir/s5.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/socks5_proxy.dir/s5.c.o   -c /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/s5.c

CMakeFiles/socks5_proxy.dir/s5.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/socks5_proxy.dir/s5.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/s5.c > CMakeFiles/socks5_proxy.dir/s5.c.i

CMakeFiles/socks5_proxy.dir/s5.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/socks5_proxy.dir/s5.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/s5.c -o CMakeFiles/socks5_proxy.dir/s5.c.s

CMakeFiles/socks5_proxy.dir/server.c.o: CMakeFiles/socks5_proxy.dir/flags.make
CMakeFiles/socks5_proxy.dir/server.c.o: ../server.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/socks5_proxy.dir/server.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/socks5_proxy.dir/server.c.o   -c /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/server.c

CMakeFiles/socks5_proxy.dir/server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/socks5_proxy.dir/server.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/server.c > CMakeFiles/socks5_proxy.dir/server.c.i

CMakeFiles/socks5_proxy.dir/server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/socks5_proxy.dir/server.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/server.c -o CMakeFiles/socks5_proxy.dir/server.c.s

CMakeFiles/socks5_proxy.dir/util.c.o: CMakeFiles/socks5_proxy.dir/flags.make
CMakeFiles/socks5_proxy.dir/util.c.o: ../util.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/socks5_proxy.dir/util.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/socks5_proxy.dir/util.c.o   -c /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/util.c

CMakeFiles/socks5_proxy.dir/util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/socks5_proxy.dir/util.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/util.c > CMakeFiles/socks5_proxy.dir/util.c.i

CMakeFiles/socks5_proxy.dir/util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/socks5_proxy.dir/util.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/util.c -o CMakeFiles/socks5_proxy.dir/util.c.s

# Object files for target socks5_proxy
socks5_proxy_OBJECTS = \
"CMakeFiles/socks5_proxy.dir/client.c.o" \
"CMakeFiles/socks5_proxy.dir/getopt.c.o" \
"CMakeFiles/socks5_proxy.dir/main.c.o" \
"CMakeFiles/socks5_proxy.dir/s5.c.o" \
"CMakeFiles/socks5_proxy.dir/server.c.o" \
"CMakeFiles/socks5_proxy.dir/util.c.o"

# External object files for target socks5_proxy
socks5_proxy_EXTERNAL_OBJECTS =

socks5_proxy: CMakeFiles/socks5_proxy.dir/client.c.o
socks5_proxy: CMakeFiles/socks5_proxy.dir/getopt.c.o
socks5_proxy: CMakeFiles/socks5_proxy.dir/main.c.o
socks5_proxy: CMakeFiles/socks5_proxy.dir/s5.c.o
socks5_proxy: CMakeFiles/socks5_proxy.dir/server.c.o
socks5_proxy: CMakeFiles/socks5_proxy.dir/util.c.o
socks5_proxy: CMakeFiles/socks5_proxy.dir/build.make
socks5_proxy: CMakeFiles/socks5_proxy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable socks5_proxy"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/socks5_proxy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/socks5_proxy.dir/build: socks5_proxy

.PHONY : CMakeFiles/socks5_proxy.dir/build

CMakeFiles/socks5_proxy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/socks5_proxy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/socks5_proxy.dir/clean

CMakeFiles/socks5_proxy.dir/depend:
	cd /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/cmake-build-debug /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/cmake-build-debug /home/lzb/CLionProjects/libuv-cmake/libuv/samples/socks5-proxy/cmake-build-debug/CMakeFiles/socks5_proxy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/socks5_proxy.dir/depend

