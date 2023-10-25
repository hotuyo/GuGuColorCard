qt_add_library(content SHARED)
qt6_add_qml_module(content
    URI "content"
		VERSION 1.0
		QML_FILES
		ImageAnalyse.qml
)

#qt6_add_resources(
#				content "picimage"
#				PREFIX
#					"/"
#				FILES
#)
add_subdirectory(src)
target_link_libraries(
	${CMAKE_PROJECT_NAME} PRIVATE
	ImageAnalyse
)


#add_subdirectory(gugumainwindow)

#target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE
#		gugumainwindowplugin
#)
