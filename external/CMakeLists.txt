

find_package(fmt REQUIRED)
target_link_libraries(${PROJECT_NAME}
        PUBLIC
        fmt::fmt)