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

# Utility rule file for content_qmllint.

# Include any custom commands dependencies for this target.
include content/CMakeFiles/content_qmllint.dir/compiler_depend.make

# Include the progress variables for this target.
include content/CMakeFiles/content_qmllint.dir/progress.make

content/CMakeFiles/content_qmllint: /Users/tuhoo/Qt/6.5.2/macos/bin/qmllint
content/CMakeFiles/content_qmllint: /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/content/ImageAnalyse.qml
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/content && /Users/tuhoo/Qt/6.5.2/macos/bin/qmllint --bare -I /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build -I /Users/tuhoo/Qt/6.5.2/macos/./qml --resource /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qmake_content.qrc --resource /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/content_raw_qml_0.qrc /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/content/ImageAnalyse.qml

content_qmllint: content/CMakeFiles/content_qmllint
content_qmllint: content/CMakeFiles/content_qmllint.dir/build.make
.PHONY : content_qmllint

# Rule to build all files generated by this target.
content/CMakeFiles/content_qmllint.dir/build: content_qmllint
.PHONY : content/CMakeFiles/content_qmllint.dir/build

content/CMakeFiles/content_qmllint.dir/clean:
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && $(CMAKE_COMMAND) -P CMakeFiles/content_qmllint.dir/cmake_clean.cmake
.PHONY : content/CMakeFiles/content_qmllint.dir/clean

content/CMakeFiles/content_qmllint.dir/depend:
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/content /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/CMakeFiles/content_qmllint.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : content/CMakeFiles/content_qmllint.dir/depend

