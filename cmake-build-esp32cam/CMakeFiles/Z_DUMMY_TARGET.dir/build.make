# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.23

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2022.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2022.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Program_Project\NTUT_IOT_final_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Program_Project\NTUT_IOT_final_project\cmake-build-esp32cam

# Include any dependencies generated for this target.
include CMakeFiles/Z_DUMMY_TARGET.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Z_DUMMY_TARGET.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Z_DUMMY_TARGET.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Z_DUMMY_TARGET.dir/flags.make

CMakeFiles/Z_DUMMY_TARGET.dir/src/NtutFunction.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/src/NtutFunction.cpp.obj: ../src/NtutFunction.cpp
CMakeFiles/Z_DUMMY_TARGET.dir/src/NtutFunction.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Program_Project\NTUT_IOT_final_project\cmake-build-esp32cam\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/src/NtutFunction.cpp.obj"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Z_DUMMY_TARGET.dir/src/NtutFunction.cpp.obj -MF CMakeFiles\Z_DUMMY_TARGET.dir\src\NtutFunction.cpp.obj.d -o CMakeFiles\Z_DUMMY_TARGET.dir\src\NtutFunction.cpp.obj -c D:\Program_Project\NTUT_IOT_final_project\src\NtutFunction.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/src/NtutFunction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/src/NtutFunction.cpp.i"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Program_Project\NTUT_IOT_final_project\src\NtutFunction.cpp > CMakeFiles\Z_DUMMY_TARGET.dir\src\NtutFunction.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/src/NtutFunction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/src/NtutFunction.cpp.s"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Program_Project\NTUT_IOT_final_project\src\NtutFunction.cpp -o CMakeFiles\Z_DUMMY_TARGET.dir\src\NtutFunction.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.obj: ../src/main.cpp
CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Program_Project\NTUT_IOT_final_project\cmake-build-esp32cam\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.obj"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.obj -MF CMakeFiles\Z_DUMMY_TARGET.dir\src\main.cpp.obj.d -o CMakeFiles\Z_DUMMY_TARGET.dir\src\main.cpp.obj -c D:\Program_Project\NTUT_IOT_final_project\src\main.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.i"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Program_Project\NTUT_IOT_final_project\src\main.cpp > CMakeFiles\Z_DUMMY_TARGET.dir\src\main.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.s"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Program_Project\NTUT_IOT_final_project\src\main.cpp -o CMakeFiles\Z_DUMMY_TARGET.dir\src\main.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/AsyncCam/handlers.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/AsyncCam/handlers.cpp.obj: ../.pio/libdeps/esp32cam/esp32cam/examples/AsyncCam/handlers.cpp
CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/AsyncCam/handlers.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Program_Project\NTUT_IOT_final_project\cmake-build-esp32cam\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/AsyncCam/handlers.cpp.obj"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/AsyncCam/handlers.cpp.obj -MF CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\examples\AsyncCam\handlers.cpp.obj.d -o CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\examples\AsyncCam\handlers.cpp.obj -c D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\examples\AsyncCam\handlers.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/AsyncCam/handlers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/AsyncCam/handlers.cpp.i"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\examples\AsyncCam\handlers.cpp > CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\examples\AsyncCam\handlers.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/AsyncCam/handlers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/AsyncCam/handlers.cpp.s"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\examples\AsyncCam\handlers.cpp -o CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\examples\AsyncCam\handlers.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/WifiCam/handlers.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/WifiCam/handlers.cpp.obj: ../.pio/libdeps/esp32cam/esp32cam/examples/WifiCam/handlers.cpp
CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/WifiCam/handlers.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Program_Project\NTUT_IOT_final_project\cmake-build-esp32cam\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/WifiCam/handlers.cpp.obj"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/WifiCam/handlers.cpp.obj -MF CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\examples\WifiCam\handlers.cpp.obj.d -o CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\examples\WifiCam\handlers.cpp.obj -c D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\examples\WifiCam\handlers.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/WifiCam/handlers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/WifiCam/handlers.cpp.i"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\examples\WifiCam\handlers.cpp > CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\examples\WifiCam\handlers.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/WifiCam/handlers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/WifiCam/handlers.cpp.s"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\examples\WifiCam\handlers.cpp -o CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\examples\WifiCam\handlers.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/esp32cam.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/esp32cam.cpp.obj: ../.pio/libdeps/esp32cam/esp32cam/src/esp32cam.cpp
CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/esp32cam.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Program_Project\NTUT_IOT_final_project\cmake-build-esp32cam\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/esp32cam.cpp.obj"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/esp32cam.cpp.obj -MF CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\esp32cam.cpp.obj.d -o CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\esp32cam.cpp.obj -c D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\src\esp32cam.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/esp32cam.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/esp32cam.cpp.i"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\src\esp32cam.cpp > CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\esp32cam.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/esp32cam.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/esp32cam.cpp.s"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\src\esp32cam.cpp -o CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\esp32cam.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/config.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/config.cpp.obj: ../.pio/libdeps/esp32cam/esp32cam/src/internal/config.cpp
CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/config.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Program_Project\NTUT_IOT_final_project\cmake-build-esp32cam\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/config.cpp.obj"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/config.cpp.obj -MF CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\internal\config.cpp.obj.d -o CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\internal\config.cpp.obj -c D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\src\internal\config.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/config.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/config.cpp.i"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\src\internal\config.cpp > CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\internal\config.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/config.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/config.cpp.s"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\src\internal\config.cpp -o CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\internal\config.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/frame.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/frame.cpp.obj: ../.pio/libdeps/esp32cam/esp32cam/src/internal/frame.cpp
CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/frame.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Program_Project\NTUT_IOT_final_project\cmake-build-esp32cam\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/frame.cpp.obj"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/frame.cpp.obj -MF CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\internal\frame.cpp.obj.d -o CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\internal\frame.cpp.obj -c D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\src\internal\frame.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/frame.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/frame.cpp.i"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\src\internal\frame.cpp > CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\internal\frame.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/frame.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/frame.cpp.s"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\src\internal\frame.cpp -o CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\internal\frame.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/mjpeg.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/mjpeg.cpp.obj: ../.pio/libdeps/esp32cam/esp32cam/src/internal/mjpeg.cpp
CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/mjpeg.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Program_Project\NTUT_IOT_final_project\cmake-build-esp32cam\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/mjpeg.cpp.obj"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/mjpeg.cpp.obj -MF CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\internal\mjpeg.cpp.obj.d -o CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\internal\mjpeg.cpp.obj -c D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\src\internal\mjpeg.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/mjpeg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/mjpeg.cpp.i"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\src\internal\mjpeg.cpp > CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\internal\mjpeg.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/mjpeg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/mjpeg.cpp.s"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\src\internal\mjpeg.cpp -o CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\internal\mjpeg.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/resolution.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/resolution.cpp.obj: ../.pio/libdeps/esp32cam/esp32cam/src/internal/resolution.cpp
CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/resolution.cpp.obj: CMakeFiles/Z_DUMMY_TARGET.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Program_Project\NTUT_IOT_final_project\cmake-build-esp32cam\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/resolution.cpp.obj"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/resolution.cpp.obj -MF CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\internal\resolution.cpp.obj.d -o CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\internal\resolution.cpp.obj -c D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\src\internal\resolution.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/resolution.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/resolution.cpp.i"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\src\internal\resolution.cpp > CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\internal\resolution.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/resolution.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/resolution.cpp.s"
	C:\Users\user\.platformio\packages\toolchain-xtensa-esp32\bin\xtensa-esp32-elf-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Program_Project\NTUT_IOT_final_project\.pio\libdeps\esp32cam\esp32cam\src\internal\resolution.cpp -o CMakeFiles\Z_DUMMY_TARGET.dir\.pio\libdeps\esp32cam\esp32cam\src\internal\resolution.cpp.s

# Object files for target Z_DUMMY_TARGET
Z_DUMMY_TARGET_OBJECTS = \
"CMakeFiles/Z_DUMMY_TARGET.dir/src/NtutFunction.cpp.obj" \
"CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.obj" \
"CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/AsyncCam/handlers.cpp.obj" \
"CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/WifiCam/handlers.cpp.obj" \
"CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/esp32cam.cpp.obj" \
"CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/config.cpp.obj" \
"CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/frame.cpp.obj" \
"CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/mjpeg.cpp.obj" \
"CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/resolution.cpp.obj"

# External object files for target Z_DUMMY_TARGET
Z_DUMMY_TARGET_EXTERNAL_OBJECTS =

Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/src/NtutFunction.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/AsyncCam/handlers.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/examples/WifiCam/handlers.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/esp32cam.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/config.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/frame.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/mjpeg.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/.pio/libdeps/esp32cam/esp32cam/src/internal/resolution.cpp.obj
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/build.make
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Program_Project\NTUT_IOT_final_project\cmake-build-esp32cam\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable Z_DUMMY_TARGET"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Z_DUMMY_TARGET.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Z_DUMMY_TARGET.dir/build: Z_DUMMY_TARGET
.PHONY : CMakeFiles/Z_DUMMY_TARGET.dir/build

CMakeFiles/Z_DUMMY_TARGET.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Z_DUMMY_TARGET.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Z_DUMMY_TARGET.dir/clean

CMakeFiles/Z_DUMMY_TARGET.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Program_Project\NTUT_IOT_final_project D:\Program_Project\NTUT_IOT_final_project D:\Program_Project\NTUT_IOT_final_project\cmake-build-esp32cam D:\Program_Project\NTUT_IOT_final_project\cmake-build-esp32cam D:\Program_Project\NTUT_IOT_final_project\cmake-build-esp32cam\CMakeFiles\Z_DUMMY_TARGET.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Z_DUMMY_TARGET.dir/depend

