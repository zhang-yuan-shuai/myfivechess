# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/ashuai/Desktop/learn-git/myfivechess

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ashuai/Desktop/learn-git/myfivechess

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ashuai/Desktop/learn-git/myfivechess/CMakeFiles /home/ashuai/Desktop/learn-git/myfivechess/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ashuai/Desktop/learn-git/myfivechess/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named main

# Build rule for target.
main: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 main
.PHONY : main

# fast build rule for target.
main/fast:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/build
.PHONY : main/fast

ACSearcher.o: ACSearcher.cpp.o

.PHONY : ACSearcher.o

# target to build an object file
ACSearcher.cpp.o:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/ACSearcher.cpp.o
.PHONY : ACSearcher.cpp.o

ACSearcher.i: ACSearcher.cpp.i

.PHONY : ACSearcher.i

# target to preprocess a source file
ACSearcher.cpp.i:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/ACSearcher.cpp.i
.PHONY : ACSearcher.cpp.i

ACSearcher.s: ACSearcher.cpp.s

.PHONY : ACSearcher.s

# target to generate assembly for a file
ACSearcher.cpp.s:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/ACSearcher.cpp.s
.PHONY : ACSearcher.cpp.s

ChessEngine.o: ChessEngine.cpp.o

.PHONY : ChessEngine.o

# target to build an object file
ChessEngine.cpp.o:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/ChessEngine.cpp.o
.PHONY : ChessEngine.cpp.o

ChessEngine.i: ChessEngine.cpp.i

.PHONY : ChessEngine.i

# target to preprocess a source file
ChessEngine.cpp.i:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/ChessEngine.cpp.i
.PHONY : ChessEngine.cpp.i

ChessEngine.s: ChessEngine.cpp.s

.PHONY : ChessEngine.s

# target to generate assembly for a file
ChessEngine.cpp.s:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/ChessEngine.cpp.s
.PHONY : ChessEngine.cpp.s

PossiblePositionManager.o: PossiblePositionManager.cpp.o

.PHONY : PossiblePositionManager.o

# target to build an object file
PossiblePositionManager.cpp.o:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/PossiblePositionManager.cpp.o
.PHONY : PossiblePositionManager.cpp.o

PossiblePositionManager.i: PossiblePositionManager.cpp.i

.PHONY : PossiblePositionManager.i

# target to preprocess a source file
PossiblePositionManager.cpp.i:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/PossiblePositionManager.cpp.i
.PHONY : PossiblePositionManager.cpp.i

PossiblePositionManager.s: PossiblePositionManager.cpp.s

.PHONY : PossiblePositionManager.s

# target to generate assembly for a file
PossiblePositionManager.cpp.s:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/PossiblePositionManager.cpp.s
.PHONY : PossiblePositionManager.cpp.s

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main.cpp.s
.PHONY : main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... main"
	@echo "... ACSearcher.o"
	@echo "... ACSearcher.i"
	@echo "... ACSearcher.s"
	@echo "... ChessEngine.o"
	@echo "... ChessEngine.i"
	@echo "... ChessEngine.s"
	@echo "... PossiblePositionManager.o"
	@echo "... PossiblePositionManager.i"
	@echo "... PossiblePositionManager.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

