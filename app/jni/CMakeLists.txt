cmake_minimum_required(VERSION 3.10)
project(SimpleTest)

set(CMAKE_CXX_STANDARD 17)

# Simple test library
add_library(main SHARED src/main.cpp)

target_link_libraries(main
    log
    android
)
