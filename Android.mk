LOCAL_PATH:= $(call my-dir)

# ------------------------------------------------------------------
# Static library for Cocos
# ------------------------------------------------------------------

include $(CLEAR_VARS)

LOCAL_MODULE := cocos_jpeg_static

LOCAL_MODULE_FILENAME := libjpeg

LOCAL_SRC_FILES := \
	jcapimin.c jcapistd.c jccoefct.c jccolor.c jcdctmgr.c jchuff.c \
	jcinit.c jcmainct.c jcmarker.c jcmaster.c jcomapi.c jcparam.c \
	jcprepct.c jcsample.c jctrans.c jdapimin.c jdapistd.c \
	jdatadst.c jdatasrc.c jdcoefct.c jdcolor.c jddctmgr.c jdhuff.c \
	jdinput.c jdmainct.c jdmarker.c jdmaster.c jdmerge.c \
	jdpostct.c jdsample.c jdtrans.c jerror.c jfdctflt.c jfdctfst.c \
	jfdctint.c jidctflt.c jidctfst.c jidctint.c jquant1.c \
	jquant2.c jutils.c jmemmgr.c jcarith.c jdarith.c jaricom.c

# Use the memory manager used by Android's platform build
# uses sdcard as libjpeg's backing store
LOCAL_SRC_FILES += \
	jmem-android.c

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)

include $(BUILD_STATIC_LIBRARY)
