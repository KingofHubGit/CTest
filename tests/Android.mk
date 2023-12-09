LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libcunit_android_test

LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../CUnit/CUnit/Headers
LOCAL_SRC_FILES := \
	main.c    \
	test.c         \
	testcase.c     \

LOCAL_SHARED_LIBRARIES := libcunit_android

include $(BUILD_EXECUTABLE)

