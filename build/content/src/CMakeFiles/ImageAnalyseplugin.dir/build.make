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

# Include any dependencies generated for this target.
include content/src/CMakeFiles/ImageAnalyseplugin.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include content/src/CMakeFiles/ImageAnalyseplugin.dir/compiler_depend.make

# Include the progress variables for this target.
include content/src/CMakeFiles/ImageAnalyseplugin.dir/progress.make

# Include the compile flags for this target's objects.
include content/src/CMakeFiles/ImageAnalyseplugin.dir/flags.make

content/src/CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_autogen/mocs_compilation.cpp.o: content/src/CMakeFiles/ImageAnalyseplugin.dir/flags.make
content/src/CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_autogen/mocs_compilation.cpp.o: content/src/ImageAnalyseplugin_autogen/mocs_compilation.cpp
content/src/CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_autogen/mocs_compilation.cpp.o: content/src/CMakeFiles/ImageAnalyseplugin.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object content/src/CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_autogen/mocs_compilation.cpp.o"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/src/CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_autogen/mocs_compilation.cpp.o -MF CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_autogen/mocs_compilation.cpp.o -c /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src/ImageAnalyseplugin_autogen/mocs_compilation.cpp

content/src/CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_autogen/mocs_compilation.cpp.i"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src/ImageAnalyseplugin_autogen/mocs_compilation.cpp > CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_autogen/mocs_compilation.cpp.i

content/src/CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_autogen/mocs_compilation.cpp.s"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src/ImageAnalyseplugin_autogen/mocs_compilation.cpp -o CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_autogen/mocs_compilation.cpp.s

content/src/CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_ImageAnalysePlugin.cpp.o: content/src/CMakeFiles/ImageAnalyseplugin.dir/flags.make
content/src/CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_ImageAnalysePlugin.cpp.o: content/src/ImageAnalyseplugin_ImageAnalysePlugin.cpp
content/src/CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_ImageAnalysePlugin.cpp.o: content/src/CMakeFiles/ImageAnalyseplugin.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object content/src/CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_ImageAnalysePlugin.cpp.o"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/src/CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_ImageAnalysePlugin.cpp.o -MF CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_ImageAnalysePlugin.cpp.o.d -o CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_ImageAnalysePlugin.cpp.o -c /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src/ImageAnalyseplugin_ImageAnalysePlugin.cpp

content/src/CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_ImageAnalysePlugin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_ImageAnalysePlugin.cpp.i"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src/ImageAnalyseplugin_ImageAnalysePlugin.cpp > CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_ImageAnalysePlugin.cpp.i

content/src/CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_ImageAnalysePlugin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_ImageAnalysePlugin.cpp.s"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src/ImageAnalyseplugin_ImageAnalysePlugin.cpp -o CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_ImageAnalysePlugin.cpp.s

# Object files for target ImageAnalyseplugin
ImageAnalyseplugin_OBJECTS = \
"CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_ImageAnalysePlugin.cpp.o"

# External object files for target ImageAnalyseplugin
ImageAnalyseplugin_EXTERNAL_OBJECTS =

content/src/libImageAnalyseplugin.dylib: content/src/CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_autogen/mocs_compilation.cpp.o
content/src/libImageAnalyseplugin.dylib: content/src/CMakeFiles/ImageAnalyseplugin.dir/ImageAnalyseplugin_ImageAnalysePlugin.cpp.o
content/src/libImageAnalyseplugin.dylib: content/src/CMakeFiles/ImageAnalyseplugin.dir/build.make
content/src/libImageAnalyseplugin.dylib: content/src/libImageAnalyse.dylib
content/src/libImageAnalyseplugin.dylib: /Users/tuhoo/Qt/6.5.2/macos/lib/QtQml.framework/Versions/A/QtQml
content/src/libImageAnalyseplugin.dylib: /Users/tuhoo/Qt/6.5.2/macos/lib/QtNetwork.framework/Versions/A/QtNetwork
content/src/libImageAnalyseplugin.dylib: /Users/tuhoo/Qt/6.5.2/macos/lib/QtCore.framework/Versions/A/QtCore
content/src/libImageAnalyseplugin.dylib: content/src/CMakeFiles/ImageAnalyseplugin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared module libImageAnalyseplugin.dylib"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ImageAnalyseplugin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
content/src/CMakeFiles/ImageAnalyseplugin.dir/build: content/src/libImageAnalyseplugin.dylib
.PHONY : content/src/CMakeFiles/ImageAnalyseplugin.dir/build

content/src/CMakeFiles/ImageAnalyseplugin.dir/clean:
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src && $(CMAKE_COMMAND) -P CMakeFiles/ImageAnalyseplugin.dir/cmake_clean.cmake
.PHONY : content/src/CMakeFiles/ImageAnalyseplugin.dir/clean

content/src/CMakeFiles/ImageAnalyseplugin.dir/depend:
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/content/src /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/src/CMakeFiles/ImageAnalyseplugin.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : content/src/CMakeFiles/ImageAnalyseplugin.dir/depend

