// vox::AccessController: readers-writer access built on one mutex.
// Layout: +0 read count, +4 write flag, +8 mutex.
#pragma once

#include "vox-audio/vox/mutex.hpp"

namespace vox {

class AccessController {
public:
    void GetReadAccess();        // 0x893548
    int ReleaseReadAccess();     // 0x89351c (returns the Mutex::Unlock result)
    void GetWriteAccess();       // 0x8934ac
    int ReleaseWriteAccess();    // 0x893480 (Mutex::Unlock result)

private:
    int read_count_ = 0;   // +0
    int write_flag_ = 0;   // +4
    Mutex mutex_;          // +8
};

}  // namespace vox
