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

# Utility rule file for ImageAnalyse_qmllint.

# Include any custom commands dependencies for this target.
include content/src/CMakeFiles/ImageAnalyse_qmllint.dir/compiler_depend.make

# Include the progress variables for this target.
include content/src/CMakeFiles/ImageAnalyse_qmllint.dir/progress.make

content/src/CMakeFiles/ImageAnalyse_qmllint: /Users/tuhoo/Qt/6.5.2/macos/bin/qmllint

ImageAnalyse_qmllint: content/src/CMakeFiles/ImageAnalyse_qmllint
ImageAnalyse_qmllint: content/src/CMakeFiles/ImageAnalyse_qmllint.dir/build.make
.PHONY : ImageAnalyse_qmllint

# Rule to build all files generated by this target.
content/src/CMakeFiles/ImageAnalyse_qmllint.dir/build: ImageAnalyse_qmllint
.PHONY : content/src/CMakeFiles/ImageAnalyse_qmllint.dir/build

content/src/CMakeFiles/ImageAnalyse_qmllint.dir/clean:
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src && $(CMAKE_COMMAND) -P CMakeFiles/ImageAnalyse_qmllint.dir/cmake_clean.cmake
.PHONY : content/src/CMakeFiles/ImageAnalyse_qmllint.dir/clean

content/src/CMakeFiles/ImageAnalyse_qmllint.dir/depend:
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/content/src /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src/CMakeFiles/ImageAnalyse_qmllint.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : content/src/CMakeFiles/ImageAnalyse_qmllint.dir/depend
