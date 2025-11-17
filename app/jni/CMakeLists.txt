cmake_minimum_required(VERSION 3.10)
project(SDLTest)

set(CMAKE_CXX_STANDARD 17)

# Build SDL2 as a static library
add_library(SDL2 STATIC
    SDL/src/SDL.c
    SDL/src/SDL_assert.c
    SDL/src/SDL_dataqueue.c
    SDL/src/SDL_error.c
    SDL/src/SDL_hints.c
    SDL/src/SDL_log.c
    # Add more SDL source files as needed - for now let's try just the core
)

target_include_directories(SDL2 PUBLIC
    SDL/include
)

# Your game
add_library(main SHARED src/main.cpp)

target_link_libraries(main
    SDL2
    log
    android
    GLESv2
)
