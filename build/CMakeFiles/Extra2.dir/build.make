# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = "F:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "F:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\build

# Include any dependencies generated for this target.
include CMakeFiles/Extra2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Extra2.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Extra2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Extra2.dir/flags.make

CMakeFiles/Extra2.dir/src/main.c.obj: CMakeFiles/Extra2.dir/flags.make
CMakeFiles/Extra2.dir/src/main.c.obj: G:/FCP/Extra2/HighMark_Ticketing-and-Reservation-system/src/main.c
CMakeFiles/Extra2.dir/src/main.c.obj: CMakeFiles/Extra2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Extra2.dir/src/main.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Extra2.dir/src/main.c.obj -MF CMakeFiles\Extra2.dir\src\main.c.obj.d -o CMakeFiles\Extra2.dir\src\main.c.obj -c G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\src\main.c

CMakeFiles/Extra2.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Extra2.dir/src/main.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\src\main.c > CMakeFiles\Extra2.dir\src\main.c.i

CMakeFiles/Extra2.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Extra2.dir/src/main.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\src\main.c -o CMakeFiles\Extra2.dir\src\main.c.s

CMakeFiles/Extra2.dir/src/login/login.c.obj: CMakeFiles/Extra2.dir/flags.make
CMakeFiles/Extra2.dir/src/login/login.c.obj: G:/FCP/Extra2/HighMark_Ticketing-and-Reservation-system/src/login/login.c
CMakeFiles/Extra2.dir/src/login/login.c.obj: CMakeFiles/Extra2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Extra2.dir/src/login/login.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Extra2.dir/src/login/login.c.obj -MF CMakeFiles\Extra2.dir\src\login\login.c.obj.d -o CMakeFiles\Extra2.dir\src\login\login.c.obj -c G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\src\login\login.c

CMakeFiles/Extra2.dir/src/login/login.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Extra2.dir/src/login/login.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\src\login\login.c > CMakeFiles\Extra2.dir\src\login\login.c.i

CMakeFiles/Extra2.dir/src/login/login.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Extra2.dir/src/login/login.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\src\login\login.c -o CMakeFiles\Extra2.dir\src\login\login.c.s

CMakeFiles/Extra2.dir/src/menu/menu.c.obj: CMakeFiles/Extra2.dir/flags.make
CMakeFiles/Extra2.dir/src/menu/menu.c.obj: G:/FCP/Extra2/HighMark_Ticketing-and-Reservation-system/src/menu/menu.c
CMakeFiles/Extra2.dir/src/menu/menu.c.obj: CMakeFiles/Extra2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Extra2.dir/src/menu/menu.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Extra2.dir/src/menu/menu.c.obj -MF CMakeFiles\Extra2.dir\src\menu\menu.c.obj.d -o CMakeFiles\Extra2.dir\src\menu\menu.c.obj -c G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\src\menu\menu.c

CMakeFiles/Extra2.dir/src/menu/menu.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Extra2.dir/src/menu/menu.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\src\menu\menu.c > CMakeFiles\Extra2.dir\src\menu\menu.c.i

CMakeFiles/Extra2.dir/src/menu/menu.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Extra2.dir/src/menu/menu.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\src\menu\menu.c -o CMakeFiles\Extra2.dir\src\menu\menu.c.s

CMakeFiles/Extra2.dir/src/appointment/appointment.c.obj: CMakeFiles/Extra2.dir/flags.make
CMakeFiles/Extra2.dir/src/appointment/appointment.c.obj: G:/FCP/Extra2/HighMark_Ticketing-and-Reservation-system/src/appointment/appointment.c
CMakeFiles/Extra2.dir/src/appointment/appointment.c.obj: CMakeFiles/Extra2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Extra2.dir/src/appointment/appointment.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Extra2.dir/src/appointment/appointment.c.obj -MF CMakeFiles\Extra2.dir\src\appointment\appointment.c.obj.d -o CMakeFiles\Extra2.dir\src\appointment\appointment.c.obj -c G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\src\appointment\appointment.c

CMakeFiles/Extra2.dir/src/appointment/appointment.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Extra2.dir/src/appointment/appointment.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\src\appointment\appointment.c > CMakeFiles\Extra2.dir\src\appointment\appointment.c.i

CMakeFiles/Extra2.dir/src/appointment/appointment.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Extra2.dir/src/appointment/appointment.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\src\appointment\appointment.c -o CMakeFiles\Extra2.dir\src\appointment\appointment.c.s

# Object files for target Extra2
Extra2_OBJECTS = \
"CMakeFiles/Extra2.dir/src/main.c.obj" \
"CMakeFiles/Extra2.dir/src/login/login.c.obj" \
"CMakeFiles/Extra2.dir/src/menu/menu.c.obj" \
"CMakeFiles/Extra2.dir/src/appointment/appointment.c.obj"

# External object files for target Extra2
Extra2_EXTERNAL_OBJECTS =

Extra2.exe: CMakeFiles/Extra2.dir/src/main.c.obj
Extra2.exe: CMakeFiles/Extra2.dir/src/login/login.c.obj
Extra2.exe: CMakeFiles/Extra2.dir/src/menu/menu.c.obj
Extra2.exe: CMakeFiles/Extra2.dir/src/appointment/appointment.c.obj
Extra2.exe: CMakeFiles/Extra2.dir/build.make
Extra2.exe: CMakeFiles/Extra2.dir/linkLibs.rsp
Extra2.exe: CMakeFiles/Extra2.dir/objects1.rsp
Extra2.exe: CMakeFiles/Extra2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable Extra2.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Extra2.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Extra2.dir/build: Extra2.exe
.PHONY : CMakeFiles/Extra2.dir/build

CMakeFiles/Extra2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Extra2.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Extra2.dir/clean

CMakeFiles/Extra2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\build G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\build G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\build\CMakeFiles\Extra2.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Extra2.dir/depend

