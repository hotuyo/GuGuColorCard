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
include content/CMakeFiles/content.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include content/CMakeFiles/content.dir/compiler_depend.make

# Include the progress variables for this target.
include content/CMakeFiles/content.dir/progress.make

# Include the compile flags for this target's objects.
include content/CMakeFiles/content.dir/flags.make

content/meta_types/qt6content_metatypes.json.gen: /Users/tuhoo/Qt/6.5.2/macos/./libexec/moc
content/meta_types/qt6content_metatypes.json.gen: content/meta_types/content_json_file_list.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running moc --collect-json for target content"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Users/tuhoo/Qt/6.5.2/macos/libexec/moc -o /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/meta_types/qt6content_metatypes.json.gen --collect-json @/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/meta_types/content_json_file_list.txt
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /opt/homebrew/Cellar/cmake/3.27.1/bin/cmake -E copy_if_different /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/meta_types/qt6content_metatypes.json.gen /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/meta_types/qt6content_metatypes.json

content/content_qmltyperegistrations.cpp: content/qmltypes/content_foreign_types.txt
content/content_qmltyperegistrations.cpp: content/meta_types/qt6content_metatypes.json
content/content_qmltyperegistrations.cpp: /Users/tuhoo/Qt/6.5.2/macos/./libexec/qmltyperegistrar
content/content_qmltyperegistrations.cpp: /Users/tuhoo/Qt/6.5.2/macos/metatypes/qt6qml_relwithdebinfo_metatypes.json
content/content_qmltyperegistrations.cpp: /Users/tuhoo/Qt/6.5.2/macos/metatypes/qt6core_relwithdebinfo_metatypes.json
content/content_qmltyperegistrations.cpp: /Users/tuhoo/Qt/6.5.2/macos/metatypes/qt6network_relwithdebinfo_metatypes.json
content/content_qmltyperegistrations.cpp: content/src/meta_types/qt6imageanalyse_metatypes.json
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Automatic QML type registration for target content"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Users/tuhoo/Qt/6.5.2/macos/libexec/qmltyperegistrar --generate-qmltypes=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/content.qmltypes --import-name=content --major-version=1 --minor-version=0 @/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/qmltypes/content_foreign_types.txt -o /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/content_qmltyperegistrations.cpp /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/meta_types/qt6content_metatypes.json
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /opt/homebrew/Cellar/cmake/3.27.1/bin/cmake -E make_directory /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.generated
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /opt/homebrew/Cellar/cmake/3.27.1/bin/cmake -E touch /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.generated/content.qmltypes

content/content.qmltypes: content/content_qmltyperegistrations.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate content/content.qmltypes

content/.rcc/qrc_qmake_content.cpp: content/qmldir
content/.rcc/qrc_qmake_content.cpp: content/.rcc/qmake_content.qrc
content/.rcc/qrc_qmake_content.cpp: /Users/tuhoo/Qt/6.5.2/macos/./libexec/rcc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Running rcc for resource qmake_content"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Users/tuhoo/Qt/6.5.2/macos/libexec/rcc --output /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qrc_qmake_content.cpp --name qmake_content /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qmake_content.qrc --no-zstd

content/.rcc/qmlcache/content_qmlcache_loader.cpp: /Users/tuhoo/Qt/6.5.2/macos/libexec/qmlcachegen
content/.rcc/qmlcache/content_qmlcache_loader.cpp: content/.rcc/qmlcache/content_qml_loader_file_list.rsp
content/.rcc/qmlcache/content_qmlcache_loader.cpp: content/.rcc/qmake_content.qrc
content/.rcc/qmlcache/content_qmlcache_loader.cpp: content/.rcc/content_raw_qml_0.qrc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating .rcc/qmlcache/content_qmlcache_loader.cpp"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Users/tuhoo/Qt/6.5.2/macos/libexec/qmlcachegen --resource-name qmlcache_content --resource /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qmake_content.qrc --resource /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/content_raw_qml_0.qrc -o /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qmlcache/content_qmlcache_loader.cpp @/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qmlcache/content_qml_loader_file_list.rsp

content/.rcc/qmlcache/content_ImageAnalyse_qml.cpp: /Users/tuhoo/Qt/6.5.2/macos/libexec/qmlcachegen
content/.rcc/qmlcache/content_ImageAnalyse_qml.cpp: /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/content/ImageAnalyse.qml
content/.rcc/qmlcache/content_ImageAnalyse_qml.cpp: content/.rcc/qmake_content.qrc
content/.rcc/qmlcache/content_ImageAnalyse_qml.cpp: content/.rcc/content_raw_qml_0.qrc
content/.rcc/qmlcache/content_ImageAnalyse_qml.cpp: content/content.qmltypes
content/.rcc/qmlcache/content_ImageAnalyse_qml.cpp: content/qmldir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating .rcc/qmlcache/content_ImageAnalyse_qml.cpp"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /opt/homebrew/Cellar/cmake/3.27.1/bin/cmake -E make_directory /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qmlcache
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Users/tuhoo/Qt/6.5.2/macos/libexec/qmlcachegen --bare --resource-path /content/ImageAnalyse.qml -I /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/ -I /Users/tuhoo/Qt/6.5.2/macos/./qml -i /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/qmldir --resource /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qmake_content.qrc --resource /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/content_raw_qml_0.qrc -o /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qmlcache/content_ImageAnalyse_qml.cpp /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/content/ImageAnalyse.qml

content/.rcc/qrc_content_raw_qml_0.cpp: /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/content/ImageAnalyse.qml
content/.rcc/qrc_content_raw_qml_0.cpp: content/.rcc/content_raw_qml_0.qrc
content/.rcc/qrc_content_raw_qml_0.cpp: /Users/tuhoo/Qt/6.5.2/macos/./libexec/rcc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Running rcc for resource content_raw_qml_0"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Users/tuhoo/Qt/6.5.2/macos/libexec/rcc --output /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qrc_content_raw_qml_0.cpp --name content_raw_qml_0 /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/content_raw_qml_0.qrc --no-zstd

content/meta_types/qt6content_metatypes.json: content/meta_types/qt6content_metatypes.json.gen
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Generating meta_types/qt6content_metatypes.json"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /opt/homebrew/Cellar/cmake/3.27.1/bin/cmake -E true

content/CMakeFiles/content.dir/content_autogen/mocs_compilation.cpp.o: content/CMakeFiles/content.dir/flags.make
content/CMakeFiles/content.dir/content_autogen/mocs_compilation.cpp.o: content/content_autogen/mocs_compilation.cpp
content/CMakeFiles/content.dir/content_autogen/mocs_compilation.cpp.o: content/CMakeFiles/content.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object content/CMakeFiles/content.dir/content_autogen/mocs_compilation.cpp.o"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/CMakeFiles/content.dir/content_autogen/mocs_compilation.cpp.o -MF CMakeFiles/content.dir/content_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/content.dir/content_autogen/mocs_compilation.cpp.o -c /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/content_autogen/mocs_compilation.cpp

content/CMakeFiles/content.dir/content_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/content.dir/content_autogen/mocs_compilation.cpp.i"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/content_autogen/mocs_compilation.cpp > CMakeFiles/content.dir/content_autogen/mocs_compilation.cpp.i

content/CMakeFiles/content.dir/content_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/content.dir/content_autogen/mocs_compilation.cpp.s"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/content_autogen/mocs_compilation.cpp -o CMakeFiles/content.dir/content_autogen/mocs_compilation.cpp.s

content/CMakeFiles/content.dir/content_qmltyperegistrations.cpp.o: content/CMakeFiles/content.dir/flags.make
content/CMakeFiles/content.dir/content_qmltyperegistrations.cpp.o: content/content_qmltyperegistrations.cpp
content/CMakeFiles/content.dir/content_qmltyperegistrations.cpp.o: content/CMakeFiles/content.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object content/CMakeFiles/content.dir/content_qmltyperegistrations.cpp.o"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/CMakeFiles/content.dir/content_qmltyperegistrations.cpp.o -MF CMakeFiles/content.dir/content_qmltyperegistrations.cpp.o.d -o CMakeFiles/content.dir/content_qmltyperegistrations.cpp.o -c /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/content_qmltyperegistrations.cpp

content/CMakeFiles/content.dir/content_qmltyperegistrations.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/content.dir/content_qmltyperegistrations.cpp.i"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/content_qmltyperegistrations.cpp > CMakeFiles/content.dir/content_qmltyperegistrations.cpp.i

content/CMakeFiles/content.dir/content_qmltyperegistrations.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/content.dir/content_qmltyperegistrations.cpp.s"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/content_qmltyperegistrations.cpp -o CMakeFiles/content.dir/content_qmltyperegistrations.cpp.s

content/CMakeFiles/content.dir/.rcc/qrc_qmake_content.cpp.o: content/CMakeFiles/content.dir/flags.make
content/CMakeFiles/content.dir/.rcc/qrc_qmake_content.cpp.o: content/.rcc/qrc_qmake_content.cpp
content/CMakeFiles/content.dir/.rcc/qrc_qmake_content.cpp.o: content/CMakeFiles/content.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object content/CMakeFiles/content.dir/.rcc/qrc_qmake_content.cpp.o"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/CMakeFiles/content.dir/.rcc/qrc_qmake_content.cpp.o -MF CMakeFiles/content.dir/.rcc/qrc_qmake_content.cpp.o.d -o CMakeFiles/content.dir/.rcc/qrc_qmake_content.cpp.o -c /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qrc_qmake_content.cpp

content/CMakeFiles/content.dir/.rcc/qrc_qmake_content.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/content.dir/.rcc/qrc_qmake_content.cpp.i"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qrc_qmake_content.cpp > CMakeFiles/content.dir/.rcc/qrc_qmake_content.cpp.i

content/CMakeFiles/content.dir/.rcc/qrc_qmake_content.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/content.dir/.rcc/qrc_qmake_content.cpp.s"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qrc_qmake_content.cpp -o CMakeFiles/content.dir/.rcc/qrc_qmake_content.cpp.s

content/CMakeFiles/content.dir/.rcc/qmlcache/content_qmlcache_loader.cpp.o: content/CMakeFiles/content.dir/flags.make
content/CMakeFiles/content.dir/.rcc/qmlcache/content_qmlcache_loader.cpp.o: content/.rcc/qmlcache/content_qmlcache_loader.cpp
content/CMakeFiles/content.dir/.rcc/qmlcache/content_qmlcache_loader.cpp.o: content/CMakeFiles/content.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object content/CMakeFiles/content.dir/.rcc/qmlcache/content_qmlcache_loader.cpp.o"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/CMakeFiles/content.dir/.rcc/qmlcache/content_qmlcache_loader.cpp.o -MF CMakeFiles/content.dir/.rcc/qmlcache/content_qmlcache_loader.cpp.o.d -o CMakeFiles/content.dir/.rcc/qmlcache/content_qmlcache_loader.cpp.o -c /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qmlcache/content_qmlcache_loader.cpp

content/CMakeFiles/content.dir/.rcc/qmlcache/content_qmlcache_loader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/content.dir/.rcc/qmlcache/content_qmlcache_loader.cpp.i"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qmlcache/content_qmlcache_loader.cpp > CMakeFiles/content.dir/.rcc/qmlcache/content_qmlcache_loader.cpp.i

content/CMakeFiles/content.dir/.rcc/qmlcache/content_qmlcache_loader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/content.dir/.rcc/qmlcache/content_qmlcache_loader.cpp.s"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qmlcache/content_qmlcache_loader.cpp -o CMakeFiles/content.dir/.rcc/qmlcache/content_qmlcache_loader.cpp.s

content/CMakeFiles/content.dir/.rcc/qmlcache/content_ImageAnalyse_qml.cpp.o: content/CMakeFiles/content.dir/flags.make
content/CMakeFiles/content.dir/.rcc/qmlcache/content_ImageAnalyse_qml.cpp.o: content/.rcc/qmlcache/content_ImageAnalyse_qml.cpp
content/CMakeFiles/content.dir/.rcc/qmlcache/content_ImageAnalyse_qml.cpp.o: content/CMakeFiles/content.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object content/CMakeFiles/content.dir/.rcc/qmlcache/content_ImageAnalyse_qml.cpp.o"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/CMakeFiles/content.dir/.rcc/qmlcache/content_ImageAnalyse_qml.cpp.o -MF CMakeFiles/content.dir/.rcc/qmlcache/content_ImageAnalyse_qml.cpp.o.d -o CMakeFiles/content.dir/.rcc/qmlcache/content_ImageAnalyse_qml.cpp.o -c /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qmlcache/content_ImageAnalyse_qml.cpp

content/CMakeFiles/content.dir/.rcc/qmlcache/content_ImageAnalyse_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/content.dir/.rcc/qmlcache/content_ImageAnalyse_qml.cpp.i"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qmlcache/content_ImageAnalyse_qml.cpp > CMakeFiles/content.dir/.rcc/qmlcache/content_ImageAnalyse_qml.cpp.i

content/CMakeFiles/content.dir/.rcc/qmlcache/content_ImageAnalyse_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/content.dir/.rcc/qmlcache/content_ImageAnalyse_qml.cpp.s"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qmlcache/content_ImageAnalyse_qml.cpp -o CMakeFiles/content.dir/.rcc/qmlcache/content_ImageAnalyse_qml.cpp.s

content/CMakeFiles/content.dir/.rcc/qrc_content_raw_qml_0.cpp.o: content/CMakeFiles/content.dir/flags.make
content/CMakeFiles/content.dir/.rcc/qrc_content_raw_qml_0.cpp.o: content/.rcc/qrc_content_raw_qml_0.cpp
content/CMakeFiles/content.dir/.rcc/qrc_content_raw_qml_0.cpp.o: content/CMakeFiles/content.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object content/CMakeFiles/content.dir/.rcc/qrc_content_raw_qml_0.cpp.o"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/CMakeFiles/content.dir/.rcc/qrc_content_raw_qml_0.cpp.o -MF CMakeFiles/content.dir/.rcc/qrc_content_raw_qml_0.cpp.o.d -o CMakeFiles/content.dir/.rcc/qrc_content_raw_qml_0.cpp.o -c /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qrc_content_raw_qml_0.cpp

content/CMakeFiles/content.dir/.rcc/qrc_content_raw_qml_0.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/content.dir/.rcc/qrc_content_raw_qml_0.cpp.i"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qrc_content_raw_qml_0.cpp > CMakeFiles/content.dir/.rcc/qrc_content_raw_qml_0.cpp.i

content/CMakeFiles/content.dir/.rcc/qrc_content_raw_qml_0.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/content.dir/.rcc/qrc_content_raw_qml_0.cpp.s"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/.rcc/qrc_content_raw_qml_0.cpp -o CMakeFiles/content.dir/.rcc/qrc_content_raw_qml_0.cpp.s

# Object files for target content
content_OBJECTS = \
"CMakeFiles/content.dir/content_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/content.dir/content_qmltyperegistrations.cpp.o" \
"CMakeFiles/content.dir/.rcc/qrc_qmake_content.cpp.o" \
"CMakeFiles/content.dir/.rcc/qmlcache/content_qmlcache_loader.cpp.o" \
"CMakeFiles/content.dir/.rcc/qmlcache/content_ImageAnalyse_qml.cpp.o" \
"CMakeFiles/content.dir/.rcc/qrc_content_raw_qml_0.cpp.o"

# External object files for target content
content_EXTERNAL_OBJECTS =

content/libcontent.dylib: content/CMakeFiles/content.dir/content_autogen/mocs_compilation.cpp.o
content/libcontent.dylib: content/CMakeFiles/content.dir/content_qmltyperegistrations.cpp.o
content/libcontent.dylib: content/CMakeFiles/content.dir/.rcc/qrc_qmake_content.cpp.o
content/libcontent.dylib: content/CMakeFiles/content.dir/.rcc/qmlcache/content_qmlcache_loader.cpp.o
content/libcontent.dylib: content/CMakeFiles/content.dir/.rcc/qmlcache/content_ImageAnalyse_qml.cpp.o
content/libcontent.dylib: content/CMakeFiles/content.dir/.rcc/qrc_content_raw_qml_0.cpp.o
content/libcontent.dylib: content/CMakeFiles/content.dir/build.make
content/libcontent.dylib: content/src/libImageAnalyse.dylib
content/libcontent.dylib: /Users/tuhoo/Qt/6.5.2/macos/lib/QtQml.framework/Versions/A/QtQml
content/libcontent.dylib: /Users/tuhoo/Qt/6.5.2/macos/lib/QtNetwork.framework/Versions/A/QtNetwork
content/libcontent.dylib: /Users/tuhoo/Qt/6.5.2/macos/lib/QtCore.framework/Versions/A/QtCore
content/libcontent.dylib: content/CMakeFiles/content.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX shared library libcontent.dylib"
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/content.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
content/CMakeFiles/content.dir/build: content/libcontent.dylib
.PHONY : content/CMakeFiles/content.dir/build

content/CMakeFiles/content.dir/clean:
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content && $(CMAKE_COMMAND) -P CMakeFiles/content.dir/cmake_clean.cmake
.PHONY : content/CMakeFiles/content.dir/clean

content/CMakeFiles/content.dir/depend: content/.rcc/qmlcache/content_ImageAnalyse_qml.cpp
content/CMakeFiles/content.dir/depend: content/.rcc/qmlcache/content_qmlcache_loader.cpp
content/CMakeFiles/content.dir/depend: content/.rcc/qrc_content_raw_qml_0.cpp
content/CMakeFiles/content.dir/depend: content/.rcc/qrc_qmake_content.cpp
content/CMakeFiles/content.dir/depend: content/content.qmltypes
content/CMakeFiles/content.dir/depend: content/content_qmltyperegistrations.cpp
content/CMakeFiles/content.dir/depend: content/meta_types/qt6content_metatypes.json
content/CMakeFiles/content.dir/depend: content/meta_types/qt6content_metatypes.json.gen
	cd /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/content /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content /Users/tuhoo/Desktop/GuGuColorCardApp/GuGuColorCard/build/content/CMakeFiles/content.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : content/CMakeFiles/content.dir/depend

