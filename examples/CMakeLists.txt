#
# This is a CMake makefile.  You can find the cmake utility and
# information about it at http://www.cmake.org
#

cmake_minimum_required(VERSION 2.8.4)

PROJECT(examples)

include(../dlib/cmake)
include_directories(include)

set(OpenCV_DIR "/usr/lib/opencv")
find_package(OpenCV REQUIRED core imgproc highgui imgcodecs)
include_directories(${OpenCV_INCLUDE_DIRS})

set(CMAKE_C_FLAGS "-Wall")
set(GETOS python tools/getos.py)
set(OSHELPERS python tools/oshelpers.py)
set(OSNAME shell ${GETOS})
set(PNACL_TC_PATH toolchain/${OSNAME}_pnacl)
set(PNACL_CXX $(PNACL_TC_PATH)/bin/pnacl-clang++)
set(PNACL_FINALIZE $(PNACL_TC_PATH)/bin/pnacl-finalize)
set(CXXFLAGS -I$(NACL_SDK_ROOT)/include)
set(LDFLAGS -L/lib/pnacl/Release -lppapi_cpp -lppapi)





ADD_EXECUTABLE(spider_detector_url spider_detector_url.cpp)
TARGET_LINK_LIBRARIES(spider_detector_url dlib )
TARGET_LINK_LIBRARIES(spider_detector_url curl )
TARGET_LINK_LIBRARIES(spider_detector_url ${OpenCV_LIBS} )
