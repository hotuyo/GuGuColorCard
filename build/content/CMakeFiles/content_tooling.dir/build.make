# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.27.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.27.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build

# Utility rule file for content_tooling.

# Include any custom commands dependencies for this target.
include content/CMakeFiles/content_tooling.dir/compiler_depend.make

# Include the progress variables for this target.
include content/CMakeFiles/content_tooling.dir/progress.make

content/ImageAnalyse.qml: /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/content/ImageAnalyse.qml
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ImageAnalyse.qml"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/content && /opt/homebrew/Cellar/cmake/3.27.1/bin/cmake -E copy /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/content/ImageAnalyse.qml /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/ImageAnalyse.qml

content_tooling: content/ImageAnalyse.qml
content_tooling: content/CMakeFiles/content_tooling.dir/build.make
.PHONY : content_tooling

# Rule to build all files generated by this target.
content/CMakeFiles/content_tooling.dir/build: content_tooling
.PHONY : content/CMakeFiles/content_tooling.dir/build

content/CMakeFiles/content_tooling.dir/clean:
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && $(CMAKE_COMMAND) -P CMakeFiles/content_tooling.dir/cmake_clean.cmake
.PHONY : content/CMakeFiles/content_tooling.dir/clean

content/CMakeFiles/content_tooling.dir/depend:
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/content /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/CMakeFiles/content_tooling.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : content/CMakeFiles/content_tooling.dir/depend

