// Thin lock wrapper (vox::Mutex over pthread_mutex_t in the original).
#pragma once

#include <mutex>

namespace vox {

class Mutex {
public:
    Mutex() = default;
    ~Mutex() = default;

    // Copy constructor (0x893590 C1, 0x89359c C2). The listing copies the one pthread word, which
    // makes a copy of an unlocked mutex. DEVIATION: a fresh std::mutex is constructed instead
    // (unlocked, the same state), since copying std::mutex bytes is undefined behaviour.
    Mutex(const Mutex&) {}
    Mutex& operator=(const Mutex&) = delete;

    void Lock() { mutex_.lock(); }
    bool TryLock() { return mutex_.try_lock(); }
    // pthread_mutex_unlock returns 0 on success; the binary returns that int.
    int Unlock() {
        mutex_.unlock();
        return 0;
    }

private:
    std::mutex mutex_;
};

}  // namespace vox
