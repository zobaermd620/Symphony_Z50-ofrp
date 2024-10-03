# This file is for the TWRP device tree for Symphony Z50

LOCAL_PATH := $(call my-dir)

# Clear previous variables
include $(CLEAR_VARS)

# Define the name of the recovery and the device
LOCAL_MODULE := recovery
LOCAL_MODULE_CLASS := RECOVERY
LOCAL_SRC_FILES := \
    bootable/recovery/recovery.cpp \
    bootable/recovery/recovery_ui.cpp \
    bootable/recovery/partitions.cpp \
    bootable/recovery/install.cpp

# Include necessary directories
LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    $(LOCAL_PATH)/external/include \
    $(LOCAL_PATH)/device/symphony_z50/include

# Add other source files specific to the device
LOCAL_SRC_FILES += \
    $(LOCAL_PATH)/device_specific_file1.cpp \
    $(LOCAL_PATH)/device_specific_file2.cpp

# Compiler flags (adjust as needed)
LOCAL_CFLAGS := -DDEVICE_SYMPHONY_Z50 -Wall -O2

# Link against necessary libraries
LOCAL_STATIC_LIBRARIES := \
    libtwrlib \
    libboot \
    librecovery_utils \
    libandroid

# Include additional configurations if necessary
LOCAL_MODULE_SUFFIX := .img

# Include the build commands
include $(BUILD_EXECUTABLE)

# Optionally, define any additional modules needed

