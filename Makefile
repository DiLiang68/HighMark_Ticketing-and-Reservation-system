# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_BINARY_DIR = G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	"F:\Program Files\CMake\bin\ctest.exe" --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test
.PHONY : test/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	"F:\Program Files\CMake\bin\cmake-gui.exe" -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	"F:\Program Files\CMake\bin\cmake.exe" --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\CMakeFiles G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\\CMakeFiles\progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start G:\FCP\Extra2\HighMark_Ticketing-and-Reservation-system\CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles\Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named Experimental

# Build rule for target.
Experimental: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 Experimental
.PHONY : Experimental

# fast build rule for target.
Experimental/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Experimental.dir\build.make CMakeFiles/Experimental.dir/build
.PHONY : Experimental/fast

#=============================================================================
# Target rules for targets named Nightly

# Build rule for target.
Nightly: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 Nightly
.PHONY : Nightly

# fast build rule for target.
Nightly/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Nightly.dir\build.make CMakeFiles/Nightly.dir/build
.PHONY : Nightly/fast

#=============================================================================
# Target rules for targets named Continuous

# Build rule for target.
Continuous: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 Continuous
.PHONY : Continuous

# fast build rule for target.
Continuous/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Continuous.dir\build.make CMakeFiles/Continuous.dir/build
.PHONY : Continuous/fast

#=============================================================================
# Target rules for targets named NightlyMemoryCheck

# Build rule for target.
NightlyMemoryCheck: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 NightlyMemoryCheck
.PHONY : NightlyMemoryCheck

# fast build rule for target.
NightlyMemoryCheck/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\NightlyMemoryCheck.dir\build.make CMakeFiles/NightlyMemoryCheck.dir/build
.PHONY : NightlyMemoryCheck/fast

#=============================================================================
# Target rules for targets named NightlyStart

# Build rule for target.
NightlyStart: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 NightlyStart
.PHONY : NightlyStart

# fast build rule for target.
NightlyStart/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\NightlyStart.dir\build.make CMakeFiles/NightlyStart.dir/build
.PHONY : NightlyStart/fast

#=============================================================================
# Target rules for targets named NightlyUpdate

# Build rule for target.
NightlyUpdate: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 NightlyUpdate
.PHONY : NightlyUpdate

# fast build rule for target.
NightlyUpdate/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\NightlyUpdate.dir\build.make CMakeFiles/NightlyUpdate.dir/build
.PHONY : NightlyUpdate/fast

#=============================================================================
# Target rules for targets named NightlyConfigure

# Build rule for target.
NightlyConfigure: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 NightlyConfigure
.PHONY : NightlyConfigure

# fast build rule for target.
NightlyConfigure/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\NightlyConfigure.dir\build.make CMakeFiles/NightlyConfigure.dir/build
.PHONY : NightlyConfigure/fast

#=============================================================================
# Target rules for targets named NightlyBuild

# Build rule for target.
NightlyBuild: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 NightlyBuild
.PHONY : NightlyBuild

# fast build rule for target.
NightlyBuild/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\NightlyBuild.dir\build.make CMakeFiles/NightlyBuild.dir/build
.PHONY : NightlyBuild/fast

#=============================================================================
# Target rules for targets named NightlyTest

# Build rule for target.
NightlyTest: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 NightlyTest
.PHONY : NightlyTest

# fast build rule for target.
NightlyTest/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\NightlyTest.dir\build.make CMakeFiles/NightlyTest.dir/build
.PHONY : NightlyTest/fast

#=============================================================================
# Target rules for targets named NightlyCoverage

# Build rule for target.
NightlyCoverage: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 NightlyCoverage
.PHONY : NightlyCoverage

# fast build rule for target.
NightlyCoverage/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\NightlyCoverage.dir\build.make CMakeFiles/NightlyCoverage.dir/build
.PHONY : NightlyCoverage/fast

#=============================================================================
# Target rules for targets named NightlyMemCheck

# Build rule for target.
NightlyMemCheck: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 NightlyMemCheck
.PHONY : NightlyMemCheck

# fast build rule for target.
NightlyMemCheck/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\NightlyMemCheck.dir\build.make CMakeFiles/NightlyMemCheck.dir/build
.PHONY : NightlyMemCheck/fast

#=============================================================================
# Target rules for targets named NightlySubmit

# Build rule for target.
NightlySubmit: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 NightlySubmit
.PHONY : NightlySubmit

# fast build rule for target.
NightlySubmit/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\NightlySubmit.dir\build.make CMakeFiles/NightlySubmit.dir/build
.PHONY : NightlySubmit/fast

#=============================================================================
# Target rules for targets named ExperimentalStart

# Build rule for target.
ExperimentalStart: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 ExperimentalStart
.PHONY : ExperimentalStart

# fast build rule for target.
ExperimentalStart/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\ExperimentalStart.dir\build.make CMakeFiles/ExperimentalStart.dir/build
.PHONY : ExperimentalStart/fast

#=============================================================================
# Target rules for targets named ExperimentalUpdate

# Build rule for target.
ExperimentalUpdate: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 ExperimentalUpdate
.PHONY : ExperimentalUpdate

# fast build rule for target.
ExperimentalUpdate/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\ExperimentalUpdate.dir\build.make CMakeFiles/ExperimentalUpdate.dir/build
.PHONY : ExperimentalUpdate/fast

#=============================================================================
# Target rules for targets named ExperimentalConfigure

# Build rule for target.
ExperimentalConfigure: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 ExperimentalConfigure
.PHONY : ExperimentalConfigure

# fast build rule for target.
ExperimentalConfigure/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\ExperimentalConfigure.dir\build.make CMakeFiles/ExperimentalConfigure.dir/build
.PHONY : ExperimentalConfigure/fast

#=============================================================================
# Target rules for targets named ExperimentalBuild

# Build rule for target.
ExperimentalBuild: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 ExperimentalBuild
.PHONY : ExperimentalBuild

# fast build rule for target.
ExperimentalBuild/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\ExperimentalBuild.dir\build.make CMakeFiles/ExperimentalBuild.dir/build
.PHONY : ExperimentalBuild/fast

#=============================================================================
# Target rules for targets named ExperimentalTest

# Build rule for target.
ExperimentalTest: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 ExperimentalTest
.PHONY : ExperimentalTest

# fast build rule for target.
ExperimentalTest/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\ExperimentalTest.dir\build.make CMakeFiles/ExperimentalTest.dir/build
.PHONY : ExperimentalTest/fast

#=============================================================================
# Target rules for targets named ExperimentalCoverage

# Build rule for target.
ExperimentalCoverage: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 ExperimentalCoverage
.PHONY : ExperimentalCoverage

# fast build rule for target.
ExperimentalCoverage/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\ExperimentalCoverage.dir\build.make CMakeFiles/ExperimentalCoverage.dir/build
.PHONY : ExperimentalCoverage/fast

#=============================================================================
# Target rules for targets named ExperimentalMemCheck

# Build rule for target.
ExperimentalMemCheck: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 ExperimentalMemCheck
.PHONY : ExperimentalMemCheck

# fast build rule for target.
ExperimentalMemCheck/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\ExperimentalMemCheck.dir\build.make CMakeFiles/ExperimentalMemCheck.dir/build
.PHONY : ExperimentalMemCheck/fast

#=============================================================================
# Target rules for targets named ExperimentalSubmit

# Build rule for target.
ExperimentalSubmit: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 ExperimentalSubmit
.PHONY : ExperimentalSubmit

# fast build rule for target.
ExperimentalSubmit/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\ExperimentalSubmit.dir\build.make CMakeFiles/ExperimentalSubmit.dir/build
.PHONY : ExperimentalSubmit/fast

#=============================================================================
# Target rules for targets named ContinuousStart

# Build rule for target.
ContinuousStart: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 ContinuousStart
.PHONY : ContinuousStart

# fast build rule for target.
ContinuousStart/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\ContinuousStart.dir\build.make CMakeFiles/ContinuousStart.dir/build
.PHONY : ContinuousStart/fast

#=============================================================================
# Target rules for targets named ContinuousUpdate

# Build rule for target.
ContinuousUpdate: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 ContinuousUpdate
.PHONY : ContinuousUpdate

# fast build rule for target.
ContinuousUpdate/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\ContinuousUpdate.dir\build.make CMakeFiles/ContinuousUpdate.dir/build
.PHONY : ContinuousUpdate/fast

#=============================================================================
# Target rules for targets named ContinuousConfigure

# Build rule for target.
ContinuousConfigure: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 ContinuousConfigure
.PHONY : ContinuousConfigure

# fast build rule for target.
ContinuousConfigure/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\ContinuousConfigure.dir\build.make CMakeFiles/ContinuousConfigure.dir/build
.PHONY : ContinuousConfigure/fast

#=============================================================================
# Target rules for targets named ContinuousBuild

# Build rule for target.
ContinuousBuild: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 ContinuousBuild
.PHONY : ContinuousBuild

# fast build rule for target.
ContinuousBuild/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\ContinuousBuild.dir\build.make CMakeFiles/ContinuousBuild.dir/build
.PHONY : ContinuousBuild/fast

#=============================================================================
# Target rules for targets named ContinuousTest

# Build rule for target.
ContinuousTest: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 ContinuousTest
.PHONY : ContinuousTest

# fast build rule for target.
ContinuousTest/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\ContinuousTest.dir\build.make CMakeFiles/ContinuousTest.dir/build
.PHONY : ContinuousTest/fast

#=============================================================================
# Target rules for targets named ContinuousCoverage

# Build rule for target.
ContinuousCoverage: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 ContinuousCoverage
.PHONY : ContinuousCoverage

# fast build rule for target.
ContinuousCoverage/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\ContinuousCoverage.dir\build.make CMakeFiles/ContinuousCoverage.dir/build
.PHONY : ContinuousCoverage/fast

#=============================================================================
# Target rules for targets named ContinuousMemCheck

# Build rule for target.
ContinuousMemCheck: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 ContinuousMemCheck
.PHONY : ContinuousMemCheck

# fast build rule for target.
ContinuousMemCheck/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\ContinuousMemCheck.dir\build.make CMakeFiles/ContinuousMemCheck.dir/build
.PHONY : ContinuousMemCheck/fast

#=============================================================================
# Target rules for targets named ContinuousSubmit

# Build rule for target.
ContinuousSubmit: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 ContinuousSubmit
.PHONY : ContinuousSubmit

# fast build rule for target.
ContinuousSubmit/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\ContinuousSubmit.dir\build.make CMakeFiles/ContinuousSubmit.dir/build
.PHONY : ContinuousSubmit/fast

#=============================================================================
# Target rules for targets named Extra2

# Build rule for target.
Extra2: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 Extra2
.PHONY : Extra2

# fast build rule for target.
Extra2/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Extra2.dir\build.make CMakeFiles/Extra2.dir/build
.PHONY : Extra2/fast

src/appointment/appointment.obj: src/appointment/appointment.c.obj
.PHONY : src/appointment/appointment.obj

# target to build an object file
src/appointment/appointment.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Extra2.dir\build.make CMakeFiles/Extra2.dir/src/appointment/appointment.c.obj
.PHONY : src/appointment/appointment.c.obj

src/appointment/appointment.i: src/appointment/appointment.c.i
.PHONY : src/appointment/appointment.i

# target to preprocess a source file
src/appointment/appointment.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Extra2.dir\build.make CMakeFiles/Extra2.dir/src/appointment/appointment.c.i
.PHONY : src/appointment/appointment.c.i

src/appointment/appointment.s: src/appointment/appointment.c.s
.PHONY : src/appointment/appointment.s

# target to generate assembly for a file
src/appointment/appointment.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Extra2.dir\build.make CMakeFiles/Extra2.dir/src/appointment/appointment.c.s
.PHONY : src/appointment/appointment.c.s

src/login/login.obj: src/login/login.c.obj
.PHONY : src/login/login.obj

# target to build an object file
src/login/login.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Extra2.dir\build.make CMakeFiles/Extra2.dir/src/login/login.c.obj
.PHONY : src/login/login.c.obj

src/login/login.i: src/login/login.c.i
.PHONY : src/login/login.i

# target to preprocess a source file
src/login/login.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Extra2.dir\build.make CMakeFiles/Extra2.dir/src/login/login.c.i
.PHONY : src/login/login.c.i

src/login/login.s: src/login/login.c.s
.PHONY : src/login/login.s

# target to generate assembly for a file
src/login/login.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Extra2.dir\build.make CMakeFiles/Extra2.dir/src/login/login.c.s
.PHONY : src/login/login.c.s

src/main.obj: src/main.c.obj
.PHONY : src/main.obj

# target to build an object file
src/main.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Extra2.dir\build.make CMakeFiles/Extra2.dir/src/main.c.obj
.PHONY : src/main.c.obj

src/main.i: src/main.c.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Extra2.dir\build.make CMakeFiles/Extra2.dir/src/main.c.i
.PHONY : src/main.c.i

src/main.s: src/main.c.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Extra2.dir\build.make CMakeFiles/Extra2.dir/src/main.c.s
.PHONY : src/main.c.s

src/menu/menu.obj: src/menu/menu.c.obj
.PHONY : src/menu/menu.obj

# target to build an object file
src/menu/menu.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Extra2.dir\build.make CMakeFiles/Extra2.dir/src/menu/menu.c.obj
.PHONY : src/menu/menu.c.obj

src/menu/menu.i: src/menu/menu.c.i
.PHONY : src/menu/menu.i

# target to preprocess a source file
src/menu/menu.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Extra2.dir\build.make CMakeFiles/Extra2.dir/src/menu/menu.c.i
.PHONY : src/menu/menu.c.i

src/menu/menu.s: src/menu/menu.c.s
.PHONY : src/menu/menu.s

# target to generate assembly for a file
src/menu/menu.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Extra2.dir\build.make CMakeFiles/Extra2.dir/src/menu/menu.c.s
.PHONY : src/menu/menu.c.s

# Help Target
help:
	@echo The following are some of the valid targets for this Makefile:
	@echo ... all (the default if no target is provided)
	@echo ... clean
	@echo ... depend
	@echo ... edit_cache
	@echo ... rebuild_cache
	@echo ... test
	@echo ... Continuous
	@echo ... ContinuousBuild
	@echo ... ContinuousConfigure
	@echo ... ContinuousCoverage
	@echo ... ContinuousMemCheck
	@echo ... ContinuousStart
	@echo ... ContinuousSubmit
	@echo ... ContinuousTest
	@echo ... ContinuousUpdate
	@echo ... Experimental
	@echo ... ExperimentalBuild
	@echo ... ExperimentalConfigure
	@echo ... ExperimentalCoverage
	@echo ... ExperimentalMemCheck
	@echo ... ExperimentalStart
	@echo ... ExperimentalSubmit
	@echo ... ExperimentalTest
	@echo ... ExperimentalUpdate
	@echo ... Nightly
	@echo ... NightlyBuild
	@echo ... NightlyConfigure
	@echo ... NightlyCoverage
	@echo ... NightlyMemCheck
	@echo ... NightlyMemoryCheck
	@echo ... NightlyStart
	@echo ... NightlySubmit
	@echo ... NightlyTest
	@echo ... NightlyUpdate
	@echo ... Extra2
	@echo ... src/appointment/appointment.obj
	@echo ... src/appointment/appointment.i
	@echo ... src/appointment/appointment.s
	@echo ... src/login/login.obj
	@echo ... src/login/login.i
	@echo ... src/login/login.s
	@echo ... src/main.obj
	@echo ... src/main.i
	@echo ... src/main.s
	@echo ... src/menu/menu.obj
	@echo ... src/menu/menu.i
	@echo ... src/menu/menu.s
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles\Makefile.cmake 0
.PHONY : cmake_check_build_system

