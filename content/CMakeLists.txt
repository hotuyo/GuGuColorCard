qt_add_library(content SHARED)
qt6_add_qml_module(content
    URI "content"
		VERSION 1.0
		QML_FILES
		ImageAnalyse.qml
)

add_subdirectory(src)
target_link_libraries(
	content PRIVATE
	ImageAnalyse
)
