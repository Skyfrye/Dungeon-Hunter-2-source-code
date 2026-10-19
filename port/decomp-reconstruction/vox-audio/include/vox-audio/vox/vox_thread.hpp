// vox::VoxThread: a thread that calls a callback about every 66 ms until it is stopped.
// The original uses pthreads and sets the scheduling priority; the port uses std::thread
// and leaves the priority at the default. The mutex, flags, name and thread live in a heap
// block (State), so the object itself is four pointers. The engine listing allocates 0x68
// bytes per thread object, which the 64-bit port would not fit if the state were inline.
#pragma once

#include <cstdint>

namespace vox {

class VoxThread {
public:
    using Callback = void (*)(void* first, void* second);

    // 0x893784 (C1) and 0x8938b4 (C2). A null callback makes the thread idle at once. The name
    // is copied into a 64-byte buffer; a null name becomes "VoxThread".
    VoxThread(Callback callback, void* first, void* second, const char* name);
    // D1 0x89374c and D2 0x893768 (identical bodies): Stop, then the state is released.
    ~VoxThread();

    // 0x893714: clears the running and looping flags under the lock, then joins the thread.
    void Stop();
    // 0x893700: thread entry; calls _Update and returns 0.
    int Update(void* unused);

    static void Sleep(unsigned int milliseconds);  // 0x893604: usleep(ms * 1000) in the original
    static std::uintptr_t GetCurThreadId();        // 0x893600: pthread_self() in the original

private:
    struct State;

    // 0x893610: runs the callback about every 66 ms while the loop flag is set.
    void _Update();

    Callback callback_ = nullptr;     // +0x00
    void* first_ = nullptr;           // +0x04
    void* second_ = nullptr;          // +0x08
    State* state_ = nullptr;          // +0x0c..: mutex (+0x0c), running (+0x10), looping (+0x11),
                                      // last pass time (+0x18), name (+0x20), thread (+0x60)
};

}  // namespace vox
