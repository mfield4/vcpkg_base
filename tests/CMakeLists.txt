function(create_test)
    set(oneValueArgs NAME)
    set(multiValueArgs TARGETS)

    cmake_parse_arguments(CREATE_TEST "" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})

    add_executable(${CREATE_TEST_NAME})
    set_target_properties(${CREATE_TEST_NAME}
            PROPERTIES
            RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/out/tests")

    foreach (FILE IN LISTS CREATE_TEST_TARGETS)
        target_sources(${CREATE_TEST_NAME} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/${FILE})
    endforeach ()

    target_link_libraries(${CREATE_TEST_NAME} PUBLIC ${PROJECT_NAME} GTest::gtest GTest::gtest_main)

    add_test(NAME ${CREATE_TEST_NAME} COMMAND ${CREATE_TEST_NAME} WORKING_DIRECTORY ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
endfunction()

find_package(GTest REQUIRED)