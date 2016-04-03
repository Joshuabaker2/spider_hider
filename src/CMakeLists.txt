cmake_minimum_required(VERSION 3.4)
project(spider_hider)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
    SpiderDetector.cpp
    SpiderDetector.hpp
    glue_wrapper.cpp )

add_executable(spider_hider ${SOURCE_FILES})