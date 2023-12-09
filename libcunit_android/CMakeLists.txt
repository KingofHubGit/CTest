cmake_minimum_required(VERSION 3.15)

include_directories(./CUnit/CUnit/Headers)

add_library(libcunit_android
        ./CUnit/CUnit/Sources/Framework/TestRun.c
        ./CUnit/CUnit/Sources/Framework/TestDB.c
        ./CUnit/CUnit/Sources/Framework/Util.c
        ./CUnit/CUnit/Sources/Framework/CUError.c
        ./CUnit/CUnit/Sources/Framework/MyMem.c
        ./CUnit/CUnit/Sources/Console/Console.c
        ./CUnit/CUnit/Sources/Basic/Basic.c
        ./CUnit/CUnit/Sources/Test/test_cunit.c
        ./CUnit/CUnit/Sources/Automated/Automated.c
        )

