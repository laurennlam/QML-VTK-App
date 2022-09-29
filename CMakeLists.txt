cmake_minimum_required(VERSION 3.18)

project(QML-VTK-project VERSION 1.0 LANGUAGES CXX)
set(CONSOLE_WIN32 WIN32)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

##########
#   Qt   #
##########
find_package(Qt5 COMPONENTS Qml Quick Gui REQUIRED)
qt5_add_resources(QT_RESOURCES qml.qrc)


##########
#   VTK  #
##########
find_package(VTK REQUIRED NO_MODULE)
include(${VTK_USE_FILE})

add_executable(QML-VTK-app
    main.cpp
	${QT_RESOURCES}
)

target_link_libraries(QML-VTK-app PRIVATE Qt5::Qml Qt5::Quick Qt5::Gui ${VTK_LIBRARIES})