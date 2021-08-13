cmake_minimum_required(VERSION 3.19)

include(cmake/VcpkgSetup.cmake)

project(vcpkg_base CXX)

add_subdirectory(cmake)

add_executable(${PROJECT_NAME})
target_link_libraries(${PROJECT_NAME} PUBLIC project_options project_warnings)

set_target_properties(
        ${PROJECT_NAME}
        PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/out/bin
)

add_subdirectory(src)
add_subdirectory(external)

if (BUILD_TESTS)
    MESSAGE(STATUS "TESTS")
    enable_testing()
    add_subdirectory(tests)
endif ()