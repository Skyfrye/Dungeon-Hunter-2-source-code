// NVThread glue (0x533bd8 and 0x533c60). The spawn and JNI functions (0x533cb8, 0x533d20, 0x533e4c) live in
// tinyxml-and-c-libs/nvthread_jni.hpp and src/p1-tinyxml-and-c-libs-global-f216b6-0.cpp.
#pragma once

#include <cstdint>

#include <jni.h>

// The JavaVM word the JNI thread glue reads, defined in nvthread.cpp. NVThreadInit stores the VM pointer in it
// (the original's r0) and the glue reads the same word as JavaVM*. This is the accessor the two files share.
union NVThreadVmWord {
    int asInt;             // the low 32 bits of the stored VM
    JavaVM* asVm;          // what NVThreadInit stores and NVThreadGetCurrentJNIEnv / NVThreadSpawnProc read
    std::intptr_t asIntptr;
};
extern NVThreadVmWord g_nvThreadVm;

// Stores the JavaVM for the thread glue and returns it. The original's parameter and return are the VM in r0
// (0x533bd8: LDR R3,=s_vm; STR R0,[R3]; BX LR), so the host declaration is the pointer JNI_OnLoad receives and
// no caller has to widen a truncated int.
JavaVM* NVThreadInit(JavaVM* vm);

// Sleeps for the given number of milliseconds and returns 0.
int NVThreadSleep(unsigned int milliseconds);
