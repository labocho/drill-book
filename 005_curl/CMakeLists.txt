cmake_minimum_required(VERSION 2.8.12)
project(Curl)

add_definitions("-std=c++11")

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(curl curl.cpp)
target_link_libraries(curl ${CONAN_LIBS})
