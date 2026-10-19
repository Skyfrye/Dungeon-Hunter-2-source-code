// Synchronisation and thread wrappers used by the network layer.
// Reconstructed from libDungeonHunter2.so pseudocode. The original Android
// build used pthreads; here the same shapes are kept on std::thread/std::mutex.
#pragma once

#include <atomic>
#include <cstdint>
#include <mutex>
#include <thread>

// Counting lock that the original keeps as a plain counter (no OS primitive).
class CMutex {
public:
    CMutex() = default;
    void Lock();                 // 0x3106f4 _ZN6CMutex4LockEv
    void Unlock();               // 0x310704 _ZN6CMutex6UnlockEv
    int IsLocked() const;        // 0x310720 _ZN6CMutex8IsLockedEv

private:
    std::uint32_t unk_00_ = 0;       // +0x00 never accessed (the constructors are empty)
    std::uint32_t lock_count_ = 0;   // +0x04
};

// Semaphore shell: the original Wait/Release bodies are empty.
class CSemaphore {
public:
    explicit CSemaphore(int initial);   // 0x80e2cc _ZN10CSemaphoreC2Ei
    void Wait();                        // 0x80e2e4 _ZN10CSemaphore4WaitEv
    void Release(int count);            // 0x80e2e8 _ZN10CSemaphore7ReleaseEi

private:
    std::uint32_t unk_00_ = 0;          // +0x00 never accessed
    int count_ = 0;                     // +0x04
};

// Read/write lock shell: all four operations are empty in the original.
class CReadWriteLock {
public:
    CReadWriteLock() = default;
    virtual ~CReadWriteLock() = default;   // 0x80e334 / 0x80e338 / 0x80e34c
    void LockWrite();                      // 0x80e33c _ZN14CReadWriteLock9LockWriteEv
    void UnlockWrite();                    // 0x80e340 _ZN14CReadWriteLock11UnlockWriteEv
    void LockRead();                       // 0x80e344 _ZN14CReadWriteLock8LockReadEv
    void UnlockRead();                     // 0x80e348 _ZN14CReadWriteLock10UnlockReadEv
};

// Recursive mutex object; the original is a pthread_mutex_t initialised as
// PTHREAD_MUTEX_RECURSIVE.
class CNetMutex {
public:
    CNetMutex();                        // 0x80e398 / 0x80e3d4 (C1/C2)
    ~CNetMutex();                       // 0x80e370 / 0x80e384 (D1/D2)
    CNetMutex(const CNetMutex&) = delete;
    CNetMutex& operator=(const CNetMutex&) = delete;

    void Lock();                        // 0x80e36c _ZN9CNetMutex4LockEv
    int Unlock();                       // 0x80e368 _ZN9CNetMutex6UnlockEv, returns 0 on success

private:
    std::recursive_mutex mutex_;
};

// Worker thread base. Start() calls Prepare() (negative means failure), then the thread repeatedly calls Kernel()
// until Stop() sets the stop flag; Stop() ends with Finish(). The three slots (vtable +0x08, +0x0c, +0x10) are pure in
// the binary's Thread; the names are those of GLXPlayerPing's overriders.
class Thread {
public:
    Thread() = default;
    virtual ~Thread();
    Thread(const Thread&) = delete;
    Thread& operator=(const Thread&) = delete;

    int Start();                        // 0x855688 _ZN6Thread5StartEv
    int Stop();                         // 0x85560c _ZN6Thread4StopEv
    bool IsCurrectThreadRunning();  // 0x84559c _ZN6Thread22IsCurrectThreadRunningEv (sic: the original spells it so; non-const)

protected:
    virtual int Prepare() { return 0; }  // vtable +0x08
    virtual int Kernel() = 0;           // vtable +0x0C (the result is not used)
    virtual int Finish() { return 0; }  // vtable +0x10 (the result is not used)
    void Run();                         // 0x8455c0 _ZN6Thread3RunEv

private:
    std::thread handle_;                // +0x04 (pthread_t)
    std::atomic<bool> stop_{true};      // +0x08 (set until Start; GLXPlayerPing sets it in its constructor)
};
