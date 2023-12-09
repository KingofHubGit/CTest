#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "Basic.h"
#include "Automated.h"


extern void AddTests(void);

int main(int argc, char* argv[])
{
    CU_BasicRunMode mode = CU_BRM_VERBOSE;
    CU_ErrorAction error_action = CUEA_IGNORE;
    int i;
    //标准库输出 无缓冲：不使用缓冲。每个 I/O 操作都被即时写入。buffer 和 size 参数被忽略。
    setvbuf(stdout, NULL, _IONBF, 0);
    for (i=1 ; i<argc ; i++) {
        if (!strcmp("-i", *argv)) {
            //错误发生时继续执行(默认)
            error_action = CUEA_IGNORE;
        }
        else if (!strcmp("-f", *argv)) {
            //错误发生时应系统停止
            error_action = CUEA_FAIL;
        }
        else if (!strcmp("-A", *argv)) {
            //错误发生时系统应退出(EXIT)
            error_action = CUEA_ABORT;
        }
        else if (!strcmp("-s", *argv)) {
            //只会输出错误信息
            mode = CU_BRM_SILENT;
        }
        else if (!strcmp("-n", *argv)) {
            //结果会输出基本信息，包括失败以及测试运行的总体状况
            mode = CU_BRM_NORMAL;
            
        }
        else if (!strcmp("-v", *argv)) {
            //输出测试运行的详细信息
            mode = CU_BRM_VERBOSE;
        }
        else if (!strcmp("-e",*argv)) {
            return 0;
        }
        else {
            printf("\nUsage：BasicTest [options]\n\n"
            "Options：-i ignore framework errors [default].\n"
            " -f fail on framework error.\n"
            " -A abort on framework error.\n\n"
            " -s silent mode - no output to screen.\n"
            " -n normal mode - standard output to screen.\n"
            " -v verbose mode - max output to screen [default].\n\n"
            " -e print expected test results and exit.\n"
            " -h print this message and exit.\n\n");
            return 0;
    }
}

//CU_initialize_registry  registry初始化//用户在调用任何其他CUnit函数之前调用本函数，如果不这样做可能会导致系统崩溃。
if (CU_initialize_registry()) {
    printf("\nInitialization of Test Registry failed.");
}

else {
        AddTests();
        //CU_basic_set_mode()设置运行模式
        CU_basic_set_mode(mode);
        //CU_set_error_action设置错误发生时，系统的行为
        CU_set_error_action(error_action);
        //CU_basic_run_tests  运行Tests  Basic Mode   基本扩展编程方式  非交互式
        printf("\nTests completed with return value %d.\n",CU_basic_run_tests());

        //使用console控制交互界面的函数入口 
        //CU_console_run_tests();

        /***使用自动产生XML文件的模式********/
        CU_set_output_filename("E:\\xml_test\\main");
        CU_list_tests_to_file();
        CU_automated_run_tests();
        /***********************************/

        // registry释放
        CU_cleanup_registry();
    }

    return 0;
}

