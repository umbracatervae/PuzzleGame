cmake_minimum_required(VERSION 3.9)
project(TESTCODE)

include_directories(
        include
        libs/glfw/include
)

set(CMAKE_CXX_STANDARD 11)

add_subdirectory(lib/glfw)

set(SOURCE_FILES
        main.cpp
        glad.c
        stb.cpp)

add_executable(TESTCODE ${SOURCE_FILES})
target_link_libraries(TESTCODE glfw)