# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2017.3.2\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2017.3.2\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug

# Include any dependencies generated for this target.
include lib/glfw/tests/CMakeFiles/clipboard.dir/depend.make

# Include the progress variables for this target.
include lib/glfw/tests/CMakeFiles/clipboard.dir/progress.make

# Include the compile flags for this target's objects.
include lib/glfw/tests/CMakeFiles/clipboard.dir/flags.make

lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj: lib/glfw/tests/CMakeFiles/clipboard.dir/flags.make
lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj: lib/glfw/tests/CMakeFiles/clipboard.dir/includes_C.rsp
lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj: ../lib/glfw/tests/clipboard.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\tests && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\clipboard.dir\clipboard.c.obj   -c C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\tests\clipboard.c

lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/clipboard.dir/clipboard.c.i"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\tests && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\tests\clipboard.c > CMakeFiles\clipboard.dir\clipboard.c.i

lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/clipboard.dir/clipboard.c.s"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\tests && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\tests\clipboard.c -o CMakeFiles\clipboard.dir\clipboard.c.s

lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj.requires:

.PHONY : lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj.requires

lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj.provides: lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj.requires
	$(MAKE) -f lib\glfw\tests\CMakeFiles\clipboard.dir\build.make lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj.provides.build
.PHONY : lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj.provides

lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj.provides.build: lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj


lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj: lib/glfw/tests/CMakeFiles/clipboard.dir/flags.make
lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj: lib/glfw/tests/CMakeFiles/clipboard.dir/includes_C.rsp
lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj: ../lib/glfw/deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\tests && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\clipboard.dir\__\deps\getopt.c.obj   -c C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\deps\getopt.c

lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/clipboard.dir/__/deps/getopt.c.i"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\tests && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\deps\getopt.c > CMakeFiles\clipboard.dir\__\deps\getopt.c.i

lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/clipboard.dir/__/deps/getopt.c.s"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\tests && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\deps\getopt.c -o CMakeFiles\clipboard.dir\__\deps\getopt.c.s

lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj.requires:

.PHONY : lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj.requires

lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj.provides: lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj.requires
	$(MAKE) -f lib\glfw\tests\CMakeFiles\clipboard.dir\build.make lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj.provides.build
.PHONY : lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj.provides

lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj.provides.build: lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj


lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.obj: lib/glfw/tests/CMakeFiles/clipboard.dir/flags.make
lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.obj: lib/glfw/tests/CMakeFiles/clipboard.dir/includes_C.rsp
lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.obj: ../lib/glfw/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.obj"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\tests && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\clipboard.dir\__\deps\glad.c.obj   -c C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\deps\glad.c

lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/clipboard.dir/__/deps/glad.c.i"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\tests && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\deps\glad.c > CMakeFiles\clipboard.dir\__\deps\glad.c.i

lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/clipboard.dir/__/deps/glad.c.s"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\tests && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\deps\glad.c -o CMakeFiles\clipboard.dir\__\deps\glad.c.s

lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.obj.requires:

.PHONY : lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.obj.requires

lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.obj.provides: lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.obj.requires
	$(MAKE) -f lib\glfw\tests\CMakeFiles\clipboard.dir\build.make lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.obj.provides.build
.PHONY : lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.obj.provides

lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.obj.provides.build: lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.obj


# Object files for target clipboard
clipboard_OBJECTS = \
"CMakeFiles/clipboard.dir/clipboard.c.obj" \
"CMakeFiles/clipboard.dir/__/deps/getopt.c.obj" \
"CMakeFiles/clipboard.dir/__/deps/glad.c.obj"

# External object files for target clipboard
clipboard_EXTERNAL_OBJECTS =

lib/glfw/tests/clipboard.exe: lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj
lib/glfw/tests/clipboard.exe: lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj
lib/glfw/tests/clipboard.exe: lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.obj
lib/glfw/tests/clipboard.exe: lib/glfw/tests/CMakeFiles/clipboard.dir/build.make
lib/glfw/tests/clipboard.exe: lib/glfw/src/libglfw3.a
lib/glfw/tests/clipboard.exe: lib/glfw/tests/CMakeFiles/clipboard.dir/linklibs.rsp
lib/glfw/tests/clipboard.exe: lib/glfw/tests/CMakeFiles/clipboard.dir/objects1.rsp
lib/glfw/tests/clipboard.exe: lib/glfw/tests/CMakeFiles/clipboard.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable clipboard.exe"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\clipboard.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/glfw/tests/CMakeFiles/clipboard.dir/build: lib/glfw/tests/clipboard.exe

.PHONY : lib/glfw/tests/CMakeFiles/clipboard.dir/build

lib/glfw/tests/CMakeFiles/clipboard.dir/requires: lib/glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.obj.requires
lib/glfw/tests/CMakeFiles/clipboard.dir/requires: lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.obj.requires
lib/glfw/tests/CMakeFiles/clipboard.dir/requires: lib/glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.obj.requires

.PHONY : lib/glfw/tests/CMakeFiles/clipboard.dir/requires

lib/glfw/tests/CMakeFiles/clipboard.dir/clean:
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\tests && $(CMAKE_COMMAND) -P CMakeFiles\clipboard.dir\cmake_clean.cmake
.PHONY : lib/glfw/tests/CMakeFiles/clipboard.dir/clean

lib/glfw/tests/CMakeFiles/clipboard.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\tests C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\tests C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\tests\CMakeFiles\clipboard.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : lib/glfw/tests/CMakeFiles/clipboard.dir/depend
