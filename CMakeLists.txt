cmake_minimum_required(VERSION 3.16)
project(Ctest C)

set(CMAKE_C_STANDARD 99)

include_directories(.  ./libcunit_android/CUnit/CUnit/Headers)

add_subdirectory(libcunit_android)

add_subdirectory(example)

add_executable(ctest
        tests/main.c
        tests/test.c
        tests/testcase.c)

target_link_libraries(ctest libcunit_android)


add_executable(exam1
        example/exam1.c)

add_executable(exam2
        example/exam2.c
        example/test.c
        example/testcase.c
        )

add_executable(exam3
        example/exam3.c
        )

target_link_libraries(exam1 libcunit_android)

target_link_libraries(exam2 libcunit_android)

target_link_libraries(exam3 libcunit_android)
