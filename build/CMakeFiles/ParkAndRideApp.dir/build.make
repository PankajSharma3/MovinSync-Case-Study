# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\HP\Downloads\ParkAndRideApp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\HP\Downloads\ParkAndRideApp\build

# Include any dependencies generated for this target.
include CMakeFiles/ParkAndRideApp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ParkAndRideApp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ParkAndRideApp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ParkAndRideApp.dir/flags.make

CMakeFiles/ParkAndRideApp.dir/codegen:
.PHONY : CMakeFiles/ParkAndRideApp.dir/codegen

CMakeFiles/ParkAndRideApp.dir/src/ParkingSlot.cpp.obj: CMakeFiles/ParkAndRideApp.dir/flags.make
CMakeFiles/ParkAndRideApp.dir/src/ParkingSlot.cpp.obj: CMakeFiles/ParkAndRideApp.dir/includes_CXX.rsp
CMakeFiles/ParkAndRideApp.dir/src/ParkingSlot.cpp.obj: C:/Users/HP/Downloads/ParkAndRideApp/src/ParkingSlot.cpp
CMakeFiles/ParkAndRideApp.dir/src/ParkingSlot.cpp.obj: CMakeFiles/ParkAndRideApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\HP\Downloads\ParkAndRideApp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ParkAndRideApp.dir/src/ParkingSlot.cpp.obj"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ParkAndRideApp.dir/src/ParkingSlot.cpp.obj -MF CMakeFiles\ParkAndRideApp.dir\src\ParkingSlot.cpp.obj.d -o CMakeFiles\ParkAndRideApp.dir\src\ParkingSlot.cpp.obj -c C:\Users\HP\Downloads\ParkAndRideApp\src\ParkingSlot.cpp

CMakeFiles/ParkAndRideApp.dir/src/ParkingSlot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ParkAndRideApp.dir/src/ParkingSlot.cpp.i"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\HP\Downloads\ParkAndRideApp\src\ParkingSlot.cpp > CMakeFiles\ParkAndRideApp.dir\src\ParkingSlot.cpp.i

CMakeFiles/ParkAndRideApp.dir/src/ParkingSlot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ParkAndRideApp.dir/src/ParkingSlot.cpp.s"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\HP\Downloads\ParkAndRideApp\src\ParkingSlot.cpp -o CMakeFiles\ParkAndRideApp.dir\src\ParkingSlot.cpp.s

CMakeFiles/ParkAndRideApp.dir/src/User.cpp.obj: CMakeFiles/ParkAndRideApp.dir/flags.make
CMakeFiles/ParkAndRideApp.dir/src/User.cpp.obj: CMakeFiles/ParkAndRideApp.dir/includes_CXX.rsp
CMakeFiles/ParkAndRideApp.dir/src/User.cpp.obj: C:/Users/HP/Downloads/ParkAndRideApp/src/User.cpp
CMakeFiles/ParkAndRideApp.dir/src/User.cpp.obj: CMakeFiles/ParkAndRideApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\HP\Downloads\ParkAndRideApp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ParkAndRideApp.dir/src/User.cpp.obj"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ParkAndRideApp.dir/src/User.cpp.obj -MF CMakeFiles\ParkAndRideApp.dir\src\User.cpp.obj.d -o CMakeFiles\ParkAndRideApp.dir\src\User.cpp.obj -c C:\Users\HP\Downloads\ParkAndRideApp\src\User.cpp

CMakeFiles/ParkAndRideApp.dir/src/User.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ParkAndRideApp.dir/src/User.cpp.i"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\HP\Downloads\ParkAndRideApp\src\User.cpp > CMakeFiles\ParkAndRideApp.dir\src\User.cpp.i

CMakeFiles/ParkAndRideApp.dir/src/User.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ParkAndRideApp.dir/src/User.cpp.s"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\HP\Downloads\ParkAndRideApp\src\User.cpp -o CMakeFiles\ParkAndRideApp.dir\src\User.cpp.s

CMakeFiles/ParkAndRideApp.dir/src/ParkingLot.cpp.obj: CMakeFiles/ParkAndRideApp.dir/flags.make
CMakeFiles/ParkAndRideApp.dir/src/ParkingLot.cpp.obj: CMakeFiles/ParkAndRideApp.dir/includes_CXX.rsp
CMakeFiles/ParkAndRideApp.dir/src/ParkingLot.cpp.obj: C:/Users/HP/Downloads/ParkAndRideApp/src/ParkingLot.cpp
CMakeFiles/ParkAndRideApp.dir/src/ParkingLot.cpp.obj: CMakeFiles/ParkAndRideApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\HP\Downloads\ParkAndRideApp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ParkAndRideApp.dir/src/ParkingLot.cpp.obj"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ParkAndRideApp.dir/src/ParkingLot.cpp.obj -MF CMakeFiles\ParkAndRideApp.dir\src\ParkingLot.cpp.obj.d -o CMakeFiles\ParkAndRideApp.dir\src\ParkingLot.cpp.obj -c C:\Users\HP\Downloads\ParkAndRideApp\src\ParkingLot.cpp

CMakeFiles/ParkAndRideApp.dir/src/ParkingLot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ParkAndRideApp.dir/src/ParkingLot.cpp.i"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\HP\Downloads\ParkAndRideApp\src\ParkingLot.cpp > CMakeFiles\ParkAndRideApp.dir\src\ParkingLot.cpp.i

CMakeFiles/ParkAndRideApp.dir/src/ParkingLot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ParkAndRideApp.dir/src/ParkingLot.cpp.s"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\HP\Downloads\ParkAndRideApp\src\ParkingLot.cpp -o CMakeFiles\ParkAndRideApp.dir\src\ParkingLot.cpp.s

CMakeFiles/ParkAndRideApp.dir/src/RideService.cpp.obj: CMakeFiles/ParkAndRideApp.dir/flags.make
CMakeFiles/ParkAndRideApp.dir/src/RideService.cpp.obj: CMakeFiles/ParkAndRideApp.dir/includes_CXX.rsp
CMakeFiles/ParkAndRideApp.dir/src/RideService.cpp.obj: C:/Users/HP/Downloads/ParkAndRideApp/src/RideService.cpp
CMakeFiles/ParkAndRideApp.dir/src/RideService.cpp.obj: CMakeFiles/ParkAndRideApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\HP\Downloads\ParkAndRideApp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ParkAndRideApp.dir/src/RideService.cpp.obj"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ParkAndRideApp.dir/src/RideService.cpp.obj -MF CMakeFiles\ParkAndRideApp.dir\src\RideService.cpp.obj.d -o CMakeFiles\ParkAndRideApp.dir\src\RideService.cpp.obj -c C:\Users\HP\Downloads\ParkAndRideApp\src\RideService.cpp

CMakeFiles/ParkAndRideApp.dir/src/RideService.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ParkAndRideApp.dir/src/RideService.cpp.i"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\HP\Downloads\ParkAndRideApp\src\RideService.cpp > CMakeFiles\ParkAndRideApp.dir\src\RideService.cpp.i

CMakeFiles/ParkAndRideApp.dir/src/RideService.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ParkAndRideApp.dir/src/RideService.cpp.s"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\HP\Downloads\ParkAndRideApp\src\RideService.cpp -o CMakeFiles\ParkAndRideApp.dir\src\RideService.cpp.s

CMakeFiles/ParkAndRideApp.dir/src/Pricing.cpp.obj: CMakeFiles/ParkAndRideApp.dir/flags.make
CMakeFiles/ParkAndRideApp.dir/src/Pricing.cpp.obj: CMakeFiles/ParkAndRideApp.dir/includes_CXX.rsp
CMakeFiles/ParkAndRideApp.dir/src/Pricing.cpp.obj: C:/Users/HP/Downloads/ParkAndRideApp/src/Pricing.cpp
CMakeFiles/ParkAndRideApp.dir/src/Pricing.cpp.obj: CMakeFiles/ParkAndRideApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\HP\Downloads\ParkAndRideApp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ParkAndRideApp.dir/src/Pricing.cpp.obj"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ParkAndRideApp.dir/src/Pricing.cpp.obj -MF CMakeFiles\ParkAndRideApp.dir\src\Pricing.cpp.obj.d -o CMakeFiles\ParkAndRideApp.dir\src\Pricing.cpp.obj -c C:\Users\HP\Downloads\ParkAndRideApp\src\Pricing.cpp

CMakeFiles/ParkAndRideApp.dir/src/Pricing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ParkAndRideApp.dir/src/Pricing.cpp.i"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\HP\Downloads\ParkAndRideApp\src\Pricing.cpp > CMakeFiles\ParkAndRideApp.dir\src\Pricing.cpp.i

CMakeFiles/ParkAndRideApp.dir/src/Pricing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ParkAndRideApp.dir/src/Pricing.cpp.s"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\HP\Downloads\ParkAndRideApp\src\Pricing.cpp -o CMakeFiles\ParkAndRideApp.dir\src\Pricing.cpp.s

CMakeFiles/ParkAndRideApp.dir/src/OfflineMode.cpp.obj: CMakeFiles/ParkAndRideApp.dir/flags.make
CMakeFiles/ParkAndRideApp.dir/src/OfflineMode.cpp.obj: CMakeFiles/ParkAndRideApp.dir/includes_CXX.rsp
CMakeFiles/ParkAndRideApp.dir/src/OfflineMode.cpp.obj: C:/Users/HP/Downloads/ParkAndRideApp/src/OfflineMode.cpp
CMakeFiles/ParkAndRideApp.dir/src/OfflineMode.cpp.obj: CMakeFiles/ParkAndRideApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\HP\Downloads\ParkAndRideApp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ParkAndRideApp.dir/src/OfflineMode.cpp.obj"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ParkAndRideApp.dir/src/OfflineMode.cpp.obj -MF CMakeFiles\ParkAndRideApp.dir\src\OfflineMode.cpp.obj.d -o CMakeFiles\ParkAndRideApp.dir\src\OfflineMode.cpp.obj -c C:\Users\HP\Downloads\ParkAndRideApp\src\OfflineMode.cpp

CMakeFiles/ParkAndRideApp.dir/src/OfflineMode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ParkAndRideApp.dir/src/OfflineMode.cpp.i"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\HP\Downloads\ParkAndRideApp\src\OfflineMode.cpp > CMakeFiles\ParkAndRideApp.dir\src\OfflineMode.cpp.i

CMakeFiles/ParkAndRideApp.dir/src/OfflineMode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ParkAndRideApp.dir/src/OfflineMode.cpp.s"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\HP\Downloads\ParkAndRideApp\src\OfflineMode.cpp -o CMakeFiles\ParkAndRideApp.dir\src\OfflineMode.cpp.s

CMakeFiles/ParkAndRideApp.dir/src/FileHandling.cpp.obj: CMakeFiles/ParkAndRideApp.dir/flags.make
CMakeFiles/ParkAndRideApp.dir/src/FileHandling.cpp.obj: CMakeFiles/ParkAndRideApp.dir/includes_CXX.rsp
CMakeFiles/ParkAndRideApp.dir/src/FileHandling.cpp.obj: C:/Users/HP/Downloads/ParkAndRideApp/src/FileHandling.cpp
CMakeFiles/ParkAndRideApp.dir/src/FileHandling.cpp.obj: CMakeFiles/ParkAndRideApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\HP\Downloads\ParkAndRideApp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/ParkAndRideApp.dir/src/FileHandling.cpp.obj"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ParkAndRideApp.dir/src/FileHandling.cpp.obj -MF CMakeFiles\ParkAndRideApp.dir\src\FileHandling.cpp.obj.d -o CMakeFiles\ParkAndRideApp.dir\src\FileHandling.cpp.obj -c C:\Users\HP\Downloads\ParkAndRideApp\src\FileHandling.cpp

CMakeFiles/ParkAndRideApp.dir/src/FileHandling.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ParkAndRideApp.dir/src/FileHandling.cpp.i"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\HP\Downloads\ParkAndRideApp\src\FileHandling.cpp > CMakeFiles\ParkAndRideApp.dir\src\FileHandling.cpp.i

CMakeFiles/ParkAndRideApp.dir/src/FileHandling.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ParkAndRideApp.dir/src/FileHandling.cpp.s"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\HP\Downloads\ParkAndRideApp\src\FileHandling.cpp -o CMakeFiles\ParkAndRideApp.dir\src\FileHandling.cpp.s

CMakeFiles/ParkAndRideApp.dir/src/main.cpp.obj: CMakeFiles/ParkAndRideApp.dir/flags.make
CMakeFiles/ParkAndRideApp.dir/src/main.cpp.obj: CMakeFiles/ParkAndRideApp.dir/includes_CXX.rsp
CMakeFiles/ParkAndRideApp.dir/src/main.cpp.obj: C:/Users/HP/Downloads/ParkAndRideApp/src/main.cpp
CMakeFiles/ParkAndRideApp.dir/src/main.cpp.obj: CMakeFiles/ParkAndRideApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\HP\Downloads\ParkAndRideApp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/ParkAndRideApp.dir/src/main.cpp.obj"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ParkAndRideApp.dir/src/main.cpp.obj -MF CMakeFiles\ParkAndRideApp.dir\src\main.cpp.obj.d -o CMakeFiles\ParkAndRideApp.dir\src\main.cpp.obj -c C:\Users\HP\Downloads\ParkAndRideApp\src\main.cpp

CMakeFiles/ParkAndRideApp.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ParkAndRideApp.dir/src/main.cpp.i"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\HP\Downloads\ParkAndRideApp\src\main.cpp > CMakeFiles\ParkAndRideApp.dir\src\main.cpp.i

CMakeFiles/ParkAndRideApp.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ParkAndRideApp.dir/src/main.cpp.s"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\HP\Downloads\ParkAndRideApp\src\main.cpp -o CMakeFiles\ParkAndRideApp.dir\src\main.cpp.s

# Object files for target ParkAndRideApp
ParkAndRideApp_OBJECTS = \
"CMakeFiles/ParkAndRideApp.dir/src/ParkingSlot.cpp.obj" \
"CMakeFiles/ParkAndRideApp.dir/src/User.cpp.obj" \
"CMakeFiles/ParkAndRideApp.dir/src/ParkingLot.cpp.obj" \
"CMakeFiles/ParkAndRideApp.dir/src/RideService.cpp.obj" \
"CMakeFiles/ParkAndRideApp.dir/src/Pricing.cpp.obj" \
"CMakeFiles/ParkAndRideApp.dir/src/OfflineMode.cpp.obj" \
"CMakeFiles/ParkAndRideApp.dir/src/FileHandling.cpp.obj" \
"CMakeFiles/ParkAndRideApp.dir/src/main.cpp.obj"

# External object files for target ParkAndRideApp
ParkAndRideApp_EXTERNAL_OBJECTS =

ParkAndRideApp.exe: CMakeFiles/ParkAndRideApp.dir/src/ParkingSlot.cpp.obj
ParkAndRideApp.exe: CMakeFiles/ParkAndRideApp.dir/src/User.cpp.obj
ParkAndRideApp.exe: CMakeFiles/ParkAndRideApp.dir/src/ParkingLot.cpp.obj
ParkAndRideApp.exe: CMakeFiles/ParkAndRideApp.dir/src/RideService.cpp.obj
ParkAndRideApp.exe: CMakeFiles/ParkAndRideApp.dir/src/Pricing.cpp.obj
ParkAndRideApp.exe: CMakeFiles/ParkAndRideApp.dir/src/OfflineMode.cpp.obj
ParkAndRideApp.exe: CMakeFiles/ParkAndRideApp.dir/src/FileHandling.cpp.obj
ParkAndRideApp.exe: CMakeFiles/ParkAndRideApp.dir/src/main.cpp.obj
ParkAndRideApp.exe: CMakeFiles/ParkAndRideApp.dir/build.make
ParkAndRideApp.exe: CMakeFiles/ParkAndRideApp.dir/linkLibs.rsp
ParkAndRideApp.exe: CMakeFiles/ParkAndRideApp.dir/objects1.rsp
ParkAndRideApp.exe: CMakeFiles/ParkAndRideApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\HP\Downloads\ParkAndRideApp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable ParkAndRideApp.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ParkAndRideApp.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ParkAndRideApp.dir/build: ParkAndRideApp.exe
.PHONY : CMakeFiles/ParkAndRideApp.dir/build

CMakeFiles/ParkAndRideApp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ParkAndRideApp.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ParkAndRideApp.dir/clean

CMakeFiles/ParkAndRideApp.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\HP\Downloads\ParkAndRideApp C:\Users\HP\Downloads\ParkAndRideApp C:\Users\HP\Downloads\ParkAndRideApp\build C:\Users\HP\Downloads\ParkAndRideApp\build C:\Users\HP\Downloads\ParkAndRideApp\build\CMakeFiles\ParkAndRideApp.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ParkAndRideApp.dir/depend

