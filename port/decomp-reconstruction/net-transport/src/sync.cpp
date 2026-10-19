#include "net-transport/sync.hpp"

#include <thread>
#if defined(_WIN32) && defined(_LIBCPP_VERSION)
#include <windows.h>  // libc++ on Windows (llvm-mingw): the native handle is a HANDLE
#else
#include <pthread.h>  // pthread_kill: winpthreads (the MinGW std::thread) implements the same liveness probe
#endif

#include <cerrno>
#include <cstdio>

// 0x3106f4 _ZN6CMutex4LockEv
void CMutex::Lock() {
    ++lock_count_;
}

// 0x310704 _ZN6CMutex6UnlockEv
void CMutex::Unlock() {
    lock_count_ = lock_count_ < 2 ? 0 : lock_count_ - 1;
}

// 0x310720 _ZN6CMutex8IsLockedEv
// The original returns 1 only when the count is zero (1 - count, clamped to 0
// for count > 1); reproduced exactly even though the name suggests the inverse.
int CMutex::IsLocked() const {
    return lock_count_ == 0 ? 1 : 0;
}

// 0x80e2cc _ZN10CSemaphoreC2Ei
CSemaphore::CSemaphore(int initial) : count_(initial) {}

// 0x80e2e4 _ZN10CSemaphore4WaitEv
// The ARM listing is a single `bx lr` (checked with decomp_asm.py), so the original does not block.
// This body is the same no-op. Real blocking would be a design change, not a reconstruction gap.
void CSemaphore::Wait() {}

// 0x80e2e8 _ZN10CSemaphore7ReleaseEi
// The original is `bx lr` as well: the count is not changed.
void CSemaphore::Release(int) {}

// 0x80e33c _ZN14CReadWriteLock9LockWriteEv
// `bx lr` in the ARM listing: the original takes no lock.
void CReadWriteLock::LockWrite() {}

// 0x80e340 _ZN14CReadWriteLock11UnlockWriteEv
// `bx lr` in the ARM listing.
void CReadWriteLock::UnlockWrite() {}

// 0x80e344 _ZN14CReadWriteLock8LockReadEv
// `bx lr` in the ARM listing.
void CReadWriteLock::LockRead() {}

// 0x80e348 _ZN14CReadWriteLock10UnlockReadEv
// `bx lr` in the ARM listing.
void CReadWriteLock::UnlockRead() {}

// 0x80e398 _ZN9CNetMutexC1Ev
// 0x80e3d4 _ZN9CNetMutexC2Ev
CNetMutex::CNetMutex() = default;

// 0x80e370 _ZN9CNetMutexD1Ev
// 0x80e384 _ZN9CNetMutexD2Ev
CNetMutex::~CNetMutex() = default;

// 0x80e36c _ZN9CNetMutex4LockEv
void CNetMutex::Lock() {
    mutex_.lock();
}

// 0x80e368 _ZN9CNetMutex6UnlockEv
int CNetMutex::Unlock() {
    mutex_.unlock();
    return 0;
}

// 0x317e10 _ZN6ThreadD1Ev (out-of-line destructor body)
// Verified: the listing is a single `BX LR` (checked with disasm), so the original body is empty.
// Deviation: the port joins a running worker, because a joinable std::thread would terminate the
// process when destroyed; the original never joins.
Thread::~Thread() {
    if (handle_.joinable()) {
        stop_ = true;
        handle_.join();
    }
}

// 0x84559c _ZN6Thread22IsCurrectThreadRunningEv
// The original probes with pthread_kill(tid, 0) and reports running unless the result is EINVAL (22) or ESRCH (3). The
// std::thread native handle is the pthread_t on both the POSIX and the MinGW (winpthreads) hosts, and winpthreads answers ESRCH
// for a thread that has exited and is not yet joined, as the original expects (checked on the host).
bool Thread::IsCurrectThreadRunning() {
#if defined(_WIN32) && defined(_LIBCPP_VERSION)
    return WaitForSingleObject(static_cast<HANDLE>(handle_.native_handle()), 0) == WAIT_TIMEOUT;
#else
    const int result = pthread_kill(handle_.native_handle(), 0);
    return result != EINVAL && result != ESRCH;
#endif
}

// 0x8455c0 _ZN6Thread3RunEv
// Verified against the Hex-Rays body: the loop runs while the stop flag at +0x08 is zero and calls the
// virtual step through vtable +0x0c; the port's atomic load is the same read of the same flag.
// The original's XP_DEBUG_OUT("PthredSelf: %d\n", pthread_self()) trace is dropped (logging only).
void Thread::Run() {
    while (!stop_.load()) {
        Kernel();
    }
}

// 0x855688 _ZN6Thread5StartEv
int Thread::Start() {
    if (Prepare() < 0) {
        return -1;
    }
    stop_ = false;
    try {
        handle_ = std::thread([this] { Run(); });
    } catch (...) {
        return -1;
    }
    return 0;
}

// 0x85560c _ZN6Thread4StopEv
int Thread::Stop() {
    if (stop_.load()) {
        return 0;
    }
    stop_ = true;
    if (IsCurrectThreadRunning()) {
        if (handle_.get_id() != std::this_thread::get_id()) {
            handle_.join();
        }
    }
    Finish();
    return 0;
}
