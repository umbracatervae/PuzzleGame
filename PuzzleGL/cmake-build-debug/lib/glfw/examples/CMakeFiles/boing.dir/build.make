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
include lib/glfw/examples/CMakeFiles/boing.dir/depend.make

# Include the progress variables for this target.
include lib/glfw/examples/CMakeFiles/boing.dir/progress.make

# Include the compile flags for this target's objects.
include lib/glfw/examples/CMakeFiles/boing.dir/flags.make

lib/glfw/examples/CMakeFiles/boing.dir/boing.c.obj: lib/glfw/examples/CMakeFiles/boing.dir/flags.make
lib/glfw/examples/CMakeFiles/boing.dir/boing.c.obj: lib/glfw/examples/CMakeFiles/boing.dir/includes_C.rsp
lib/glfw/examples/CMakeFiles/boing.dir/boing.c.obj: ../lib/glfw/examples/boing.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/glfw/examples/CMakeFiles/boing.dir/boing.c.obj"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\examples && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\boing.dir\boing.c.obj   -c C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\examples\boing.c

lib/glfw/examples/CMakeFiles/boing.dir/boing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/boing.dir/boing.c.i"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\examples && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\examples\boing.c > CMakeFiles\boing.dir\boing.c.i

lib/glfw/examples/CMakeFiles/boing.dir/boing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/boing.dir/boing.c.s"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\examples && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\examples\boing.c -o CMakeFiles\boing.dir\boing.c.s

lib/glfw/examples/CMakeFiles/boing.dir/boing.c.obj.requires:

.PHONY : lib/glfw/examples/CMakeFiles/boing.dir/boing.c.obj.requires

lib/glfw/examples/CMakeFiles/boing.dir/boing.c.obj.provides: lib/glfw/examples/CMakeFiles/boing.dir/boing.c.obj.requires
	$(MAKE) -f lib\glfw\examples\CMakeFiles\boing.dir\build.make lib/glfw/examples/CMakeFiles/boing.dir/boing.c.obj.provides.build
.PHONY : lib/glfw/examples/CMakeFiles/boing.dir/boing.c.obj.provides

lib/glfw/examples/CMakeFiles/boing.dir/boing.c.obj.provides.build: lib/glfw/examples/CMakeFiles/boing.dir/boing.c.obj


lib/glfw/examples/CMakeFiles/boing.dir/glfw.rc.obj: lib/glfw/examples/CMakeFiles/boing.dir/flags.make
lib/glfw/examples/CMakeFiles/boing.dir/glfw.rc.obj: ../lib/glfw/examples/glfw.rc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building RC object lib/glfw/examples/CMakeFiles/boing.dir/glfw.rc.obj"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\examples && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\windres.exe -O coff $(RC_DEFINES) $(RC_INCLUDES) $(RC_FLAGS) C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\examples\glfw.rc CMakeFiles\boing.dir\glfw.rc.obj

lib/glfw/examples/CMakeFiles/boing.dir/glfw.rc.obj.requires:

.PHONY : lib/glfw/examples/CMakeFiles/boing.dir/glfw.rc.obj.requires

lib/glfw/examples/CMakeFiles/boing.dir/glfw.rc.obj.provides: lib/glfw/examples/CMakeFiles/boing.dir/glfw.rc.obj.requires
	$(MAKE) -f lib\glfw\examples\CMakeFiles\boing.dir\build.make lib/glfw/examples/CMakeFiles/boing.dir/glfw.rc.obj.provides.build
.PHONY : lib/glfw/examples/CMakeFiles/boing.dir/glfw.rc.obj.provides

lib/glfw/examples/CMakeFiles/boing.dir/glfw.rc.obj.provides.build: lib/glfw/examples/CMakeFiles/boing.dir/glfw.rc.obj


lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.obj: lib/glfw/examples/CMakeFiles/boing.dir/flags.make
lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.obj: lib/glfw/examples/CMakeFiles/boing.dir/includes_C.rsp
lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.obj: ../lib/glfw/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.obj"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\examples && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\boing.dir\__\deps\glad.c.obj   -c C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\deps\glad.c

lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/boing.dir/__/deps/glad.c.i"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\examples && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\deps\glad.c > CMakeFiles\boing.dir\__\deps\glad.c.i

lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/boing.dir/__/deps/glad.c.s"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\examples && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\deps\glad.c -o CMakeFiles\boing.dir\__\deps\glad.c.s

lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.obj.requires:

.PHONY : lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.obj.requires

lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.obj.provides: lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.obj.requires
	$(MAKE) -f lib\glfw\examples\CMakeFiles\boing.dir\build.make lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.obj.provides.build
.PHONY : lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.obj.provides

lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.obj.provides.build: lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.obj


# Object files for target boing
boing_OBJECTS = \
"CMakeFiles/boing.dir/boing.c.obj" \
"CMakeFiles/boing.dir/glfw.rc.obj" \
"CMakeFiles/boing.dir/__/deps/glad.c.obj"

# External object files for target boing
boing_EXTERNAL_OBJECTS =

lib/glfw/examples/boing.exe: lib/glfw/examples/CMakeFiles/boing.dir/boing.c.obj
lib/glfw/examples/boing.exe: lib/glfw/examples/CMakeFiles/boing.dir/glfw.rc.obj
lib/glfw/examples/boing.exe: lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.obj
lib/glfw/examples/boing.exe: lib/glfw/examples/CMakeFiles/boing.dir/build.make
lib/glfw/examples/boing.exe: lib/glfw/src/libglfw3.a
lib/glfw/examples/boing.exe: lib/glfw/examples/CMakeFiles/boing.dir/linklibs.rsp
lib/glfw/examples/boing.exe: lib/glfw/examples/CMakeFiles/boing.dir/objects1.rsp
lib/glfw/examples/boing.exe: lib/glfw/examples/CMakeFiles/boing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable boing.exe"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\boing.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/glfw/examples/CMakeFiles/boing.dir/build: lib/glfw/examples/boing.exe

.PHONY : lib/glfw/examples/CMakeFiles/boing.dir/build

lib/glfw/examples/CMakeFiles/boing.dir/requires: lib/glfw/examples/CMakeFiles/boing.dir/boing.c.obj.requires
lib/glfw/examples/CMakeFiles/boing.dir/requires: lib/glfw/examples/CMakeFiles/boing.dir/glfw.rc.obj.requires
lib/glfw/examples/CMakeFiles/boing.dir/requires: lib/glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.obj.requires

.PHONY : lib/glfw/examples/CMakeFiles/boing.dir/requires

lib/glfw/examples/CMakeFiles/boing.dir/clean:
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\examples && $(CMAKE_COMMAND) -P CMakeFiles\boing.dir\cmake_clean.cmake
.PHONY : lib/glfw/examples/CMakeFiles/boing.dir/clean

lib/glfw/examples/CMakeFiles/boing.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\lib\glfw\examples C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\examples C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\PuzzleGL\cmake-build-debug\lib\glfw\examples\CMakeFiles\boing.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : lib/glfw/examples/CMakeFiles/boing.dir/depend

