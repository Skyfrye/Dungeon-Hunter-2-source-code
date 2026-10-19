// NVThreadInit and NVThreadSleep, from recovered/native/hexrays-all (0x533bd8 and 0x533c60).
// NVThreadSleep's original splits the milliseconds into seconds and nanoseconds for a nanosleep-style call and
// returns its result. The port uses std::this_thread::sleep_for, which has the same effect and returns 0.
//
// NVThreadInit stores the JavaVM in the binary's global s_vm (0x9f6544, shared with NVThreadGetCurrentJNIEnv and
// NVThreadSpawnProc in p1-tinyxml-and-c-libs-global-f216b6-0.cpp). Its listing is LDR R3,=s_vm; STR R0,[R3]; BX LR,
// so it takes the VM in r0, stores it whole and returns r0 unchanged: the host declaration is JavaVM* in and out,
// and g_nvThreadVm holds the same word the JNI glue reads as JavaVM*.
#include "tinyxml-and-c-libs/nvthread.hpp"

#include <chrono>
#include <thread>

// The JavaVM word the JNI thread glue reads; the union type is declared in nvthread.hpp.
NVThreadVmWord g_nvThreadVm{};

JavaVM* NVThreadInit(JavaVM* vm) {
    g_nvThreadVm.asVm = vm;
    return vm;
}

int NVThreadSleep(unsigned int milliseconds) {
    std::this_thread::sleep_for(std::chrono::milliseconds(milliseconds));
    return 0;
}
