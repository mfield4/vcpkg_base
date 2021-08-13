
include(FetchContent)

FetchContent_Declare(vcpkg GIT_REPOSITORY https://github.com/microsoft/vcpkg.git)
FetchContent_MakeAvailable(vcpkg)
set(CMAKE_TOOLCHAIN_FILE "${vcpkg_SOURCE_DIR}/scripts/buildsystems/vcpkg.cmake")


#set(CMAKE_TOOLCHAIN_FILE ${CMAKE_CURRENT_SOURCE_DIR}/external/vcpkg/scripts/buildsystems/vcpkg.cmake CACHE STRING "Vcpkg toolchain file")

option(BUILD_TESTS "Build tests" ON)
if (BUILD_TESTS)
    list(APPEND VCPKG_MANIFEST_FEATURES "tests")
endif ()

set(VCPKG_PREFER_SYSTEM_LIBS ON)