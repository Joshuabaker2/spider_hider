# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/josh/dlib-18.17/examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/josh/dlib-18.17/examples

# Include any dependencies generated for this target.
include CMakeFiles/mlp_ex.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mlp_ex.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mlp_ex.dir/flags.make

CMakeFiles/mlp_ex.dir/mlp_ex.cpp.o: CMakeFiles/mlp_ex.dir/flags.make
CMakeFiles/mlp_ex.dir/mlp_ex.cpp.o: mlp_ex.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/josh/dlib-18.17/examples/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mlp_ex.dir/mlp_ex.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mlp_ex.dir/mlp_ex.cpp.o -c /home/josh/dlib-18.17/examples/mlp_ex.cpp

CMakeFiles/mlp_ex.dir/mlp_ex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mlp_ex.dir/mlp_ex.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/josh/dlib-18.17/examples/mlp_ex.cpp > CMakeFiles/mlp_ex.dir/mlp_ex.cpp.i

CMakeFiles/mlp_ex.dir/mlp_ex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mlp_ex.dir/mlp_ex.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/josh/dlib-18.17/examples/mlp_ex.cpp -o CMakeFiles/mlp_ex.dir/mlp_ex.cpp.s

CMakeFiles/mlp_ex.dir/mlp_ex.cpp.o.requires:
.PHONY : CMakeFiles/mlp_ex.dir/mlp_ex.cpp.o.requires

CMakeFiles/mlp_ex.dir/mlp_ex.cpp.o.provides: CMakeFiles/mlp_ex.dir/mlp_ex.cpp.o.requires
	$(MAKE) -f CMakeFiles/mlp_ex.dir/build.make CMakeFiles/mlp_ex.dir/mlp_ex.cpp.o.provides.build
.PHONY : CMakeFiles/mlp_ex.dir/mlp_ex.cpp.o.provides

CMakeFiles/mlp_ex.dir/mlp_ex.cpp.o.provides.build: CMakeFiles/mlp_ex.dir/mlp_ex.cpp.o

# Object files for target mlp_ex
mlp_ex_OBJECTS = \
"CMakeFiles/mlp_ex.dir/mlp_ex.cpp.o"

# External object files for target mlp_ex
mlp_ex_EXTERNAL_OBJECTS =

mlp_ex: CMakeFiles/mlp_ex.dir/mlp_ex.cpp.o
mlp_ex: CMakeFiles/mlp_ex.dir/build.make
mlp_ex: dlib_build/libdlib.a
mlp_ex: /usr/local/lib/libopencv_core.so.3.0.0
mlp_ex: /usr/local/lib/libopencv_imgproc.so.3.0.0
mlp_ex: /usr/local/lib/libopencv_highgui.so.3.0.0
mlp_ex: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
mlp_ex: /usr/lib/x86_64-linux-gnu/libpthread.so
mlp_ex: /usr/lib/x86_64-linux-gnu/libnsl.so
mlp_ex: /usr/lib/x86_64-linux-gnu/libSM.so
mlp_ex: /usr/lib/x86_64-linux-gnu/libICE.so
mlp_ex: /usr/lib/x86_64-linux-gnu/libX11.so
mlp_ex: /usr/lib/x86_64-linux-gnu/libXext.so
mlp_ex: /usr/lib/x86_64-linux-gnu/libpng.so
mlp_ex: /usr/lib/x86_64-linux-gnu/libjpeg.so
mlp_ex: /usr/lib/libblas.so
mlp_ex: /usr/lib/liblapack.so
mlp_ex: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
mlp_ex: /usr/local/lib/libopencv_imgproc.so.3.0.0
mlp_ex: /usr/local/lib/libopencv_core.so.3.0.0
mlp_ex: CMakeFiles/mlp_ex.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable mlp_ex"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mlp_ex.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mlp_ex.dir/build: mlp_ex
.PHONY : CMakeFiles/mlp_ex.dir/build

CMakeFiles/mlp_ex.dir/requires: CMakeFiles/mlp_ex.dir/mlp_ex.cpp.o.requires
.PHONY : CMakeFiles/mlp_ex.dir/requires

CMakeFiles/mlp_ex.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mlp_ex.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mlp_ex.dir/clean

CMakeFiles/mlp_ex.dir/depend:
	cd /home/josh/dlib-18.17/examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/josh/dlib-18.17/examples /home/josh/dlib-18.17/examples /home/josh/dlib-18.17/examples /home/josh/dlib-18.17/examples /home/josh/dlib-18.17/examples/CMakeFiles/mlp_ex.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mlp_ex.dir/depend

