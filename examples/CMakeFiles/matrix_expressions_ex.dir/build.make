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
include CMakeFiles/matrix_expressions_ex.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/matrix_expressions_ex.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/matrix_expressions_ex.dir/flags.make

CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.o: CMakeFiles/matrix_expressions_ex.dir/flags.make
CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.o: matrix_expressions_ex.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/josh/dlib-18.17/examples/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.o -c /home/josh/dlib-18.17/examples/matrix_expressions_ex.cpp

CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/josh/dlib-18.17/examples/matrix_expressions_ex.cpp > CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.i

CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/josh/dlib-18.17/examples/matrix_expressions_ex.cpp -o CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.s

CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.o.requires:
.PHONY : CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.o.requires

CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.o.provides: CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.o.requires
	$(MAKE) -f CMakeFiles/matrix_expressions_ex.dir/build.make CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.o.provides.build
.PHONY : CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.o.provides

CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.o.provides.build: CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.o

# Object files for target matrix_expressions_ex
matrix_expressions_ex_OBJECTS = \
"CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.o"

# External object files for target matrix_expressions_ex
matrix_expressions_ex_EXTERNAL_OBJECTS =

matrix_expressions_ex: CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.o
matrix_expressions_ex: CMakeFiles/matrix_expressions_ex.dir/build.make
matrix_expressions_ex: dlib_build/libdlib.a
matrix_expressions_ex: /usr/local/lib/libopencv_core.so.3.0.0
matrix_expressions_ex: /usr/local/lib/libopencv_imgproc.so.3.0.0
matrix_expressions_ex: /usr/local/lib/libopencv_highgui.so.3.0.0
matrix_expressions_ex: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
matrix_expressions_ex: /usr/lib/x86_64-linux-gnu/libpthread.so
matrix_expressions_ex: /usr/lib/x86_64-linux-gnu/libnsl.so
matrix_expressions_ex: /usr/lib/x86_64-linux-gnu/libSM.so
matrix_expressions_ex: /usr/lib/x86_64-linux-gnu/libICE.so
matrix_expressions_ex: /usr/lib/x86_64-linux-gnu/libX11.so
matrix_expressions_ex: /usr/lib/x86_64-linux-gnu/libXext.so
matrix_expressions_ex: /usr/lib/x86_64-linux-gnu/libpng.so
matrix_expressions_ex: /usr/lib/x86_64-linux-gnu/libjpeg.so
matrix_expressions_ex: /usr/lib/libblas.so
matrix_expressions_ex: /usr/lib/liblapack.so
matrix_expressions_ex: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
matrix_expressions_ex: /usr/local/lib/libopencv_imgproc.so.3.0.0
matrix_expressions_ex: /usr/local/lib/libopencv_core.so.3.0.0
matrix_expressions_ex: CMakeFiles/matrix_expressions_ex.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable matrix_expressions_ex"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matrix_expressions_ex.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/matrix_expressions_ex.dir/build: matrix_expressions_ex
.PHONY : CMakeFiles/matrix_expressions_ex.dir/build

CMakeFiles/matrix_expressions_ex.dir/requires: CMakeFiles/matrix_expressions_ex.dir/matrix_expressions_ex.cpp.o.requires
.PHONY : CMakeFiles/matrix_expressions_ex.dir/requires

CMakeFiles/matrix_expressions_ex.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/matrix_expressions_ex.dir/cmake_clean.cmake
.PHONY : CMakeFiles/matrix_expressions_ex.dir/clean

CMakeFiles/matrix_expressions_ex.dir/depend:
	cd /home/josh/dlib-18.17/examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/josh/dlib-18.17/examples /home/josh/dlib-18.17/examples /home/josh/dlib-18.17/examples /home/josh/dlib-18.17/examples /home/josh/dlib-18.17/examples/CMakeFiles/matrix_expressions_ex.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/matrix_expressions_ex.dir/depend

