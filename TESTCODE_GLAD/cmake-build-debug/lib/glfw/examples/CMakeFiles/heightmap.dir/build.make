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
CMAKE_SOURCE_DIR = C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug

# Include any dependencies generated for this target.
include lib/glfw/examples/CMakeFiles/heightmap.dir/depend.make

# Include the progress variables for this target.
include lib/glfw/examples/CMakeFiles/heightmap.dir/progress.make

# Include the compile flags for this target's objects.
include lib/glfw/examples/CMakeFiles/heightmap.dir/flags.make

lib/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.obj: lib/glfw/examples/CMakeFiles/heightmap.dir/flags.make
lib/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.obj: lib/glfw/examples/CMakeFiles/heightmap.dir/includes_C.rsp
lib/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.obj: ../lib/glfw/examples/heightmap.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.obj"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug\lib\glfw\examples && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\heightmap.dir\heightmap.c.obj   -c C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\lib\glfw\examples\heightmap.c

lib/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/heightmap.dir/heightmap.c.i"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug\lib\glfw\examples && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\lib\glfw\examples\heightmap.c > CMakeFiles\heightmap.dir\heightmap.c.i

lib/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/heightmap.dir/heightmap.c.s"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug\lib\glfw\examples && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\lib\glfw\examples\heightmap.c -o CMakeFiles\heightmap.dir\heightmap.c.s

lib/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.obj.requires:

.PHONY : lib/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.obj.requires

lib/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.obj.provides: lib/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.obj.requires
	$(MAKE) -f lib\glfw\examples\CMakeFiles\heightmap.dir\build.make lib/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.obj.provides.build
.PHONY : lib/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.obj.provides

lib/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.obj.provides.build: lib/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.obj


lib/glfw/examples/CMakeFiles/heightmap.dir/glfw.rc.obj: lib/glfw/examples/CMakeFiles/heightmap.dir/flags.make
lib/glfw/examples/CMakeFiles/heightmap.dir/glfw.rc.obj: ../lib/glfw/examples/glfw.rc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building RC object lib/glfw/examples/CMakeFiles/heightmap.dir/glfw.rc.obj"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug\lib\glfw\examples && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\windres.exe -O coff $(RC_DEFINES) $(RC_INCLUDES) $(RC_FLAGS) C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\lib\glfw\examples\glfw.rc CMakeFiles\heightmap.dir\glfw.rc.obj

lib/glfw/examples/CMakeFiles/heightmap.dir/glfw.rc.obj.requires:

.PHONY : lib/glfw/examples/CMakeFiles/heightmap.dir/glfw.rc.obj.requires

lib/glfw/examples/CMakeFiles/heightmap.dir/glfw.rc.obj.provides: lib/glfw/examples/CMakeFiles/heightmap.dir/glfw.rc.obj.requires
	$(MAKE) -f lib\glfw\examples\CMakeFiles\heightmap.dir\build.make lib/glfw/examples/CMakeFiles/heightmap.dir/glfw.rc.obj.provides.build
.PHONY : lib/glfw/examples/CMakeFiles/heightmap.dir/glfw.rc.obj.provides

lib/glfw/examples/CMakeFiles/heightmap.dir/glfw.rc.obj.provides.build: lib/glfw/examples/CMakeFiles/heightmap.dir/glfw.rc.obj


lib/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.obj: lib/glfw/examples/CMakeFiles/heightmap.dir/flags.make
lib/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.obj: lib/glfw/examples/CMakeFiles/heightmap.dir/includes_C.rsp
lib/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.obj: ../lib/glfw/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object lib/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.obj"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug\lib\glfw\examples && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\heightmap.dir\__\deps\glad.c.obj   -c C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\lib\glfw\deps\glad.c

lib/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/heightmap.dir/__/deps/glad.c.i"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug\lib\glfw\examples && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\lib\glfw\deps\glad.c > CMakeFiles\heightmap.dir\__\deps\glad.c.i

lib/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/heightmap.dir/__/deps/glad.c.s"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug\lib\glfw\examples && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\lib\glfw\deps\glad.c -o CMakeFiles\heightmap.dir\__\deps\glad.c.s

lib/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.obj.requires:

.PHONY : lib/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.obj.requires

lib/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.obj.provides: lib/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.obj.requires
	$(MAKE) -f lib\glfw\examples\CMakeFiles\heightmap.dir\build.make lib/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.obj.provides.build
.PHONY : lib/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.obj.provides

lib/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.obj.provides.build: lib/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.obj


# Object files for target heightmap
heightmap_OBJECTS = \
"CMakeFiles/heightmap.dir/heightmap.c.obj" \
"CMakeFiles/heightmap.dir/glfw.rc.obj" \
"CMakeFiles/heightmap.dir/__/deps/glad.c.obj"

# External object files for target heightmap
heightmap_EXTERNAL_OBJECTS =

lib/glfw/examples/heightmap.exe: lib/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.obj
lib/glfw/examples/heightmap.exe: lib/glfw/examples/CMakeFiles/heightmap.dir/glfw.rc.obj
lib/glfw/examples/heightmap.exe: lib/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.obj
lib/glfw/examples/heightmap.exe: lib/glfw/examples/CMakeFiles/heightmap.dir/build.make
lib/glfw/examples/heightmap.exe: lib/glfw/src/libglfw3.a
lib/glfw/examples/heightmap.exe: lib/glfw/examples/CMakeFiles/heightmap.dir/linklibs.rsp
lib/glfw/examples/heightmap.exe: lib/glfw/examples/CMakeFiles/heightmap.dir/objects1.rsp
lib/glfw/examples/heightmap.exe: lib/glfw/examples/CMakeFiles/heightmap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable heightmap.exe"
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug\lib\glfw\examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\heightmap.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/glfw/examples/CMakeFiles/heightmap.dir/build: lib/glfw/examples/heightmap.exe

.PHONY : lib/glfw/examples/CMakeFiles/heightmap.dir/build

lib/glfw/examples/CMakeFiles/heightmap.dir/requires: lib/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.obj.requires
lib/glfw/examples/CMakeFiles/heightmap.dir/requires: lib/glfw/examples/CMakeFiles/heightmap.dir/glfw.rc.obj.requires
lib/glfw/examples/CMakeFiles/heightmap.dir/requires: lib/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad.c.obj.requires

.PHONY : lib/glfw/examples/CMakeFiles/heightmap.dir/requires

lib/glfw/examples/CMakeFiles/heightmap.dir/clean:
	cd /d C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug\lib\glfw\examples && $(CMAKE_COMMAND) -P CMakeFiles\heightmap.dir\cmake_clean.cmake
.PHONY : lib/glfw/examples/CMakeFiles/heightmap.dir/clean

lib/glfw/examples/CMakeFiles/heightmap.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\lib\glfw\examples C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug\lib\glfw\examples C:\AkshayDocs_03_22_2018\AkshayDocs\akshay_grad\SPRING2018\ECE6122\APTProject\TESTCODE_GLAD\cmake-build-debug\lib\glfw\examples\CMakeFiles\heightmap.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : lib/glfw/examples/CMakeFiles/heightmap.dir/depend
