#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "CUnit.h"
#include <Automated.h>
#include <TestDB.h>
/**//*---- functions to be tested ------*/
extern int maxi(int i , int j);

/**//*---- test cases ------------------*/
void testIQJ(void)
{
    //断言相等比较
    CU_ASSERT_EQUAL(maxi(1,1),1);
    CU_ASSERT_EQUAL(maxi(0,-0),0);
}
void testIGJ(void)
{
    CU_ASSERT_EQUAL(maxi(2,1),2);
    CU_ASSERT_EQUAL(maxi(0,-1),0);
    CU_ASSERT_EQUAL(maxi(-1,-2),-1);
}
void testILJ(void)
{
    CU_ASSERT_EQUAL(maxi(1,2),2);
    CU_ASSERT_EQUAL(maxi(-1,0),0);
    CU_ASSERT_EQUAL(maxi(-2,-1),-1);
}
CU_TestInfo testcases[] = {
    {"Testing i equals j：",testIQJ},
    {"Testing i greater than j：",testIGJ},
    {"Testing i less than j：", testILJ},
    CU_TEST_INFO_NULL
};
/**//*---- test suites ------------------*/
int suite_success_init(void)
{ return 0; }
int suite_success_clean(void)
{ return 0; }

//需要运行的test case
CU_SuiteInfo suites[] = {
    {"Testing the function maxi：",suite_success_init,suite_success_clean, NULL, NULL,testcases},
    CU_SUITE_INFO_NULL
};
/*cunit运行环境设置*/
void AddTests(void)
{
    //1.CU_get_registry  CU_register_suites其他一些关于注册的内部函数，主要用于内部和测试的目的
    assert(NULL != CU_get_registry());
    assert(!CU_is_test_running());
    //注册suites
    if(CUE_SUCCESS != CU_register_suites(suites)){
            fprintf(stderr, "Register suites failed - %s ", CU_get_error_msg());
    exit(EXIT_FAILURE);
    }
}






