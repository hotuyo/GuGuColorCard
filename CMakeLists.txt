cmake_minimum_required(VERSION 3.14)

project(GuGuColorCard LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Qml Quick Gui Core Widgets)

qt_standard_project_setup()

qt_add_executable(GuGuColorCard main.cpp gugu.icns) #MyIcon.icns 图标

target_link_libraries(GuGuColorCard PRIVATE Qt6::Qml Qt6::Quick Qt6::Core Qt6::Gui Qt6::Widgets)

qt6_add_qml_module(${CMAKE_PROJECT_NAME}
		URI "Main"
#		NO_PLUGIN
		QML_FILES main.qml
)

# 设置图标
set_source_files_properties(gugu.icns PROPERTIES MACOSX_PACKAGE_LOCATION Resources)
set(MACOSX_BUNDLE_ICON_FILE gugu.icns)
#



add_subdirectory(content)
target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE
		content # SHARED 
		#contentplugin # STATIC LIBS
)

set_target_properties(GuGuColorCard PROPERTIES
		MACOSX_BUNDLE TRUE
		WIN32_EXECUTABLE TRUE
		MACOSX_BUNDLE_INFO_PLIST ${CMAKE_CURRENT_SOURCE_DIR}/Info.plist.in
)



set_target_properties(GuGuColorCard PROPERTIES MACOSX_BUNDLE TRUE WIN32_EXECUTABLE	TRUE)

include(GNUInstallDirs)
install(TARGETS GuGuColorCard
								BUNDLE DESTINATION .
								LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
								RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)