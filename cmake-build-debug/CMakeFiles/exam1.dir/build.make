# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\JetBrains\CLion 2020.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\JetBrains\CLion 2020.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\dotorom\Lucas.D\Lucas.D-Labs\Protect\Cprojects\CTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\dotorom\Lucas.D\Lucas.D-Labs\Protect\Cprojects\CTest\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/exam1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/exam1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/exam1.dir/flags.make

CMakeFiles/exam1.dir/example/exam1.c.obj: CMakeFiles/exam1.dir/flags.make
CMakeFiles/exam1.dir/example/exam1.c.obj: CMakeFiles/exam1.dir/includes_C.rsp
CMakeFiles/exam1.dir/example/exam1.c.obj: ../example/exam1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\dotorom\Lucas.D\Lucas.D-Labs\Protect\Cprojects\CTest\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/exam1.dir/example/exam1.c.obj"
	D:\EclipseC\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\exam1.dir\example\exam1.c.obj   -c C:\Users\dotorom\Lucas.D\Lucas.D-Labs\Protect\Cprojects\CTest\example\exam1.c

CMakeFiles/exam1.dir/example/exam1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/exam1.dir/example/exam1.c.i"
	D:\EclipseC\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\dotorom\Lucas.D\Lucas.D-Labs\Protect\Cprojects\CTest\example\exam1.c > CMakeFiles\exam1.dir\example\exam1.c.i

CMakeFiles/exam1.dir/example/exam1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/exam1.dir/example/exam1.c.s"
	D:\EclipseC\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\dotorom\Lucas.D\Lucas.D-Labs\Protect\Cprojects\CTest\example\exam1.c -o CMakeFiles\exam1.dir\example\exam1.c.s

# Object files for target exam1
exam1_OBJECTS = \
"CMakeFiles/exam1.dir/example/exam1.c.obj"

# External object files for target exam1
exam1_EXTERNAL_OBJECTS =

exam1.exe: CMakeFiles/exam1.dir/example/exam1.c.obj
exam1.exe: CMakeFiles/exam1.dir/build.make
exam1.exe: libcunit_android/liblibcunit_android.a
exam1.exe: CMakeFiles/exam1.dir/linklibs.rsp
exam1.exe: CMakeFiles/exam1.dir/objects1.rsp
exam1.exe: CMakeFiles/exam1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\dotorom\Lucas.D\Lucas.D-Labs\Protect\Cprojects\CTest\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable exam1.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\exam1.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/exam1.dir/build: exam1.exe

.PHONY : CMakeFiles/exam1.dir/build

CMakeFiles/exam1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\exam1.dir\cmake_clean.cmake
.PHONY : CMakeFiles/exam1.dir/clean

CMakeFiles/exam1.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\dotorom\Lucas.D\Lucas.D-Labs\Protect\Cprojects\CTest C:\Users\dotorom\Lucas.D\Lucas.D-Labs\Protect\Cprojects\CTest C:\Users\dotorom\Lucas.D\Lucas.D-Labs\Protect\Cprojects\CTest\cmake-build-debug C:\Users\dotorom\Lucas.D\Lucas.D-Labs\Protect\Cprojects\CTest\cmake-build-debug C:\Users\dotorom\Lucas.D\Lucas.D-Labs\Protect\Cprojects\CTest\cmake-build-debug\CMakeFiles\exam1.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/exam1.dir/depend

