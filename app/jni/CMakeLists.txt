cmake_minimum_required(VERSION 3.10)
project(SDLTest)

# Add SDL2
add_subdirectory(SDL)

# Your game
add_library(main SHARED src/main.cpp)
target_link_libraries(main SDL2 log android)
