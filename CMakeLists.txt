cmake_minimum_required(VERSION 3.19)

include(cmake/VcpkgSetup.cmake)

project(vcpkg_test)

add_library(project_options INTERFACE)
add_library(project_warnings INTERFACE)

include(cmake/CompilerOptions.cmake)
include(cmake/CompilerWarnings.cmake)
include(cmake/StaticAnalyzers.cmake)
include(cmake/Sanitizers.cmake)

add_executable(${PROJECT_NAME})
target_link_libraries(${PROJECT_NAME} PUBLIC project_options project_warnings)

add_subdirectory(src)
add_subdirectory(external)