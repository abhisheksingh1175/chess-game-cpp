cmake_minimum_required(VERSION 3.16)

project(ChessGame LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(FetchContent)

FetchContent_Declare(
    SFML
    GIT_REPOSITORY https://github.com/SFML/SFML.git
    GIT_TAG 3.1.0
)

FetchContent_MakeAvailable(SFML)

add_executable(ChessGame
    src/main.cpp
)
file(COPY ${CMAKE_SOURCE_DIR}/pieces
     DESTINATION ${CMAKE_BINARY_DIR})

target_link_libraries(ChessGame PRIVATE
    SFML::Graphics
    SFML::Window
    SFML::System
)