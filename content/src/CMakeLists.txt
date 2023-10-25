find_package(OpenCV 4.0.0 REQUIRED)
find_package(Qt6 REQUIRED COMPONENTS Widgets Core Qml Quick Gui Concurrent)

qt_add_library(ImageAnalyse SHARED)

target_include_directories(ImageAnalyse PRIVATE ${OpenCV_INCLUDE_DIRS})
target_link_libraries(ImageAnalyse PRIVATE ${OpenCV_LIBS} Qt6::Gui Qt6::Concurrent Qt6::Widgets)

qt6_add_qml_module(ImageAnalyse
		URI ImageAnalyse
		SOURCES
				imageanalyse.cpp
				imageanalyse.h
)
