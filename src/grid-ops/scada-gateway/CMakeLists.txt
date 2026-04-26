cmake_minimum_required(VERSION 3.20)
project(scada-gateway CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

add_compile_options(-Wall -Wextra -Wpedantic -O2)

find_package(Threads REQUIRED)

add_executable(scada-gateway
    src/main.cpp
)

target_link_libraries(scada-gateway PRIVATE Threads::Threads)

enable_testing()
