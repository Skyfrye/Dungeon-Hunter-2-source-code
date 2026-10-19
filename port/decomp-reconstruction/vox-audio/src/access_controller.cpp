#include "vox-audio/vox/access_controller.hpp"

#include <chrono>
#include <thread>

namespace vox {

namespace {
// The asm calls usleep (0x30e880) with 0x3E8 = 1000 microseconds before retrying: a 1 ms wait. (It was 1000 ms here, which froze the game thread
// for a second whenever the mixer thread held the emitter table while a sound was created: seen as 1020 ms frames on a Galaxy Z Fold 7.)
void WaitBeforeRetry() { std::this_thread::sleep_for(std::chrono::microseconds(1000)); }
}  // namespace

// 0x893548 _ZN3vox16AccessController13GetReadAccessEv
// Waits while a writer holds the flag, then adds a reader.
void AccessController::GetReadAccess() {
    mutex_.Lock();
    while (write_flag_ != 0) {
        mutex_.Unlock();
        WaitBeforeRetry();
        mutex_.Lock();
    }
    ++read_count_;
    mutex_.Unlock();
}

// 0x89351c _ZN3vox16AccessController17ReleaseReadAccessEv
// The binary tail-calls Mutex::Unlock, so the int result is returned.
int AccessController::ReleaseReadAccess() {
    mutex_.Lock();
    --read_count_;
    return mutex_.Unlock();
}

// 0x8934ac _ZN3vox16AccessController14GetWriteAccessEv
// Waits while there is a writer or any reader, then takes the write flag.
void AccessController::GetWriteAccess() {
    mutex_.Lock();
    while (write_flag_ != 0 || read_count_ != 0) {
        mutex_.Unlock();
        WaitBeforeRetry();
        mutex_.Lock();
    }
    write_flag_ = 1;
    mutex_.Unlock();
}

// 0x893480 _ZN3vox16AccessController18ReleaseWriteAccessEv
int AccessController::ReleaseWriteAccess() {
    mutex_.Lock();
    --write_flag_;
    return mutex_.Unlock();
}

}  // namespace vox
