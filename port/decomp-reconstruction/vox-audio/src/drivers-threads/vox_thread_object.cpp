// vox::VoxThread object: constructors, destructor, Stop and the update loop.
#include <chrono>
#include <climits>
#include <cstring>

#include <thread>

// The priority step of the constructors is pthread code. pthreads is the same API on POSIX and
// on the MinGW posix-threads toolchain (winpthreads), so the step is compiled on both hosts.
// (libc++ on Windows, e.g. llvm-mingw, has a std::thread whose native handle is a Win32 HANDLE, not a pthread_t: skipped there.)
#if defined(__unix__) || defined(__APPLE__) || (defined(_WIN32) && !defined(_LIBCPP_VERSION))
#include <pthread.h>
#include <sched.h>
#define VOX_THREAD_HAS_PTHREAD_PRIORITY 1
#endif

#include "vox-audio/vox/mutex.hpp"
#include "vox-audio/vox/vox_thread.hpp"

namespace vox {

// Thread state kept on the heap: the mutex, the two flags, the previous pass time, the
// name and the std::thread.
struct VoxThread::State {
    Mutex mutex;                      // +0x0c
    bool running = true;              // +0x10
    bool looping = true;              // +0x11
    double last_time = 0.0;           // +0x18, seconds
    char name[64] = {};               // +0x20
    std::thread thread;               // +0x60
};

namespace {

// Seconds from a steady clock. The original reads its own clock (_GetTime); only the
// differences between two readings are used, so the epoch does not matter.
double NowSeconds() {
    using Clock = std::chrono::steady_clock;
    return std::chrono::duration<double>(Clock::now().time_since_epoch()).count();
}

// ARM float-to-int conversion saturates; this keeps the same result for large values.
int SaturateToInt(double value) {
    if (value >= static_cast<double>(INT_MAX)) {
        return INT_MAX;
    }
    if (value <= static_cast<double>(INT_MIN)) {
        return INT_MIN;
    }
    return static_cast<int>(value);
}

}  // namespace

// 0x893784 _ZN3vox9VoxThreadC1EPFvPvS1_ES1_S1_Pc
// 0x8938b4 _ZN3vox9VoxThreadC2EPFvPvS1_ES1_S1_Pc (same body)
// Verified against the listing at both addresses: callback/first/second stored (STM R0,{R1-R3}),
// the Mutex at +0x0c, looping (+0x11) = 1, last_time (+0x18) = 0 as a word pair, running (+0x10)
// = 1, then the null-callback branch that stores the callback word (0) back into looping and
// returns. With a callback the name is copied and its last byte cleared (strncpy 63 or the
// "VoxT"+"hear"+'d' immediate block for "VoxThread") and the thread is started; on success the new
// thread's policy and its minimum and maximum priority are read and, when the maximum is above 30,
// it becomes max(min, 31) (CMP R7,#0x1F / MOVGE / MOVLT), which pthread_setschedparam sets and
// pthread_getschedparam reads back.
// The priority step runs on both hosts: the guard compiles it whenever pthreads exists, and the
// MinGW posix-threads toolchain (winpthreads) provides the same sched calls, so nothing about it
// is missing on Windows.
// Deviations: the thread is a std::thread joined by Stop (the host must join or the process
// aborts) instead of a raw pthread_create the original never joins; the mutex, flags, time, name
// and thread live in a heap State record so the class layout is the host's.
VoxThread::VoxThread(Callback callback, void* first, void* second, const char* name)
    : callback_(callback), first_(first), second_(second), state_(new State()) {
    if (callback_ == nullptr) {
        // The original stores the low byte of the callback as the loop flag: 0.
        state_->looping = false;
        return;
    }
    if (name != nullptr) {
        std::strncpy(state_->name, name, 63);
        state_->name[63] = '\0';
    } else {
        std::strcpy(state_->name, "VoxThread");
    }
    state_->thread = std::thread([this] { Update(nullptr); });
#if defined(VOX_THREAD_HAS_PTHREAD_PRIORITY)
    pthread_t handle = state_->thread.native_handle();
    int policy = 0;
    sched_param param{};
    pthread_getschedparam(handle, &policy, &param);
    const int priority_min = sched_get_priority_min(policy);
    int priority_max = sched_get_priority_max(policy);
    if (priority_max > 30) {
        priority_max = priority_min < 31 ? 31 : priority_min;
    }
    sched_param set{};
    set.sched_priority = priority_max;
    pthread_setschedparam(handle, policy, &set);
    // The original reads the parameters back once more; both results are dead stores.
    pthread_getschedparam(handle, &policy, &param);
#endif
}

// D1 0x89374c _ZN3vox9VoxThreadD1Ev and D2 0x893768 _ZN3vox9VoxThreadD2Ev
VoxThread::~VoxThread() {
    Stop();
    delete state_;
    state_ = nullptr;
}

// 0x893714 _ZN3vox9VoxThread4StopEv
void VoxThread::Stop() {
    state_->mutex.Lock();
    state_->running = false;
    state_->looping = false;
    state_->mutex.Unlock();
    if (state_->thread.joinable()) {
        state_->thread.join();
    }
}

// 0x893700 _ZN3vox9VoxThread6UpdateEPv
int VoxThread::Update(void* unused) {
    (void)unused;
    _Update();
    return 0;
}

// 0x893610 _ZN3vox9VoxThread7_UpdateEv
// Each pass runs the callback (when running), measures the time it took, and sleeps so
// that passes start about 66 ms apart. The sleep is clamped to between 1 and 33 ms.
void VoxThread::_Update() {
    state_->mutex.Lock();
    bool looping = state_->looping;
    bool running = state_->running;
    state_->mutex.Unlock();
    if (!looping) {
        return;
    }
    do {
        const double start = NowSeconds();
        if (running && callback_ != nullptr) {
            callback_(first_, second_);
        }
        const int work_ms = SaturateToInt((NowSeconds() - start) * 1000.0);
        const int since_last_ms = SaturateToInt((start - state_->last_time) * 1000.0);
        int delay_ms = 66 - since_last_ms - work_ms;
        state_->last_time = start;
        if (delay_ms > 0) {
            if (delay_ms >= 33) {
                delay_ms = 33;
            }
        } else {
            delay_ms = 1;
        }
        Sleep(static_cast<unsigned int>(delay_ms));
        state_->mutex.Lock();
        looping = state_->looping;
        running = state_->running;
        state_->mutex.Unlock();
    } while (looping);
}

}  // namespace vox

// 0x893710 _ZN3vox10funcUpdateEPv: a thunk to VoxThread::Update in the original. The port
// starts the thread on a lambda that calls Update, so the thunk is not reimplemented.
