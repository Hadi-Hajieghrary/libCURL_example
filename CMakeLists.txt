cmake_minimum_required(VERSION 3.0.0)
project(learning_curl VERSION 0.1.0)

find_package(CURL REQUIRED)

add_executable(learning_curl main.cpp)

target_link_libraries(learning_curl curl)
