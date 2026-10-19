// vox::PriorityBankManager: a fixed set of priority banks, each limiting the
// emitters that may be active in it.
//
// Bank layout (24 bytes in the original): +0 min priority (default 0x80000001),
// +4 max emitter count (default 0x7fffffff), +8 behaviour (default 3), +0xc..+0x14
// entry vector. Entries are 8 bytes: emitter pointer (+0) and priority (+4).
//
// Manager layout: +0 bank count, +4..+0xc bank vector, +0x10 mutex.
// Behaviour when the bank is full: 0 accepts, 1 and 2 accept only when some
// entry has a priority that can be replaced, anything else refuses.
#pragma once

#include <cstdint>
#include <vector>

#include "vox-audio/vox/mutex.hpp"

namespace vox {

struct PriorityBankEntry {
    void* emitter = nullptr;  // +0
    std::int32_t priority = 0;  // +4
};

struct PriorityBank {
    std::int32_t min_priority = static_cast<std::int32_t>(0x80000001);  // +0
    std::int32_t max_count = 0x7fffffff;                                  // +4
    std::int32_t behaviour = 3;                                           // +8
    std::vector<PriorityBankEntry> entries;                               // +0xc..+0x14
};

// One bank as the debug output reports it (20 bytes in the original): index, behaviour,
// minimum priority, maximum count and the number of entries.
struct DebugChunk_bank {
    std::int32_t index = 0;          // +0x00
    std::int32_t behaviour = 0;      // +0x04
    std::int32_t min_priority = 0;   // +0x08
    std::int32_t max_count = 0;      // +0x0c
    std::int32_t count = 0;          // +0x10
};

class PriorityBankManager {
public:
    explicit PriorityBankManager(int bank_count);  // 0x8697bc, 0x8698e8
    PriorityBankManager();                         // 0x869858, 0x8698a0 (leaves the count word alone)
    ~PriorityBankManager();                        // 0x86418c

    bool CanAddEmitter(int bank, int priority);    // 0x864b1c
    bool RemoveEmitter(int bank, void* emitter);   // 0x86e078
    bool AddEmitter(int bank, void* emitter);      // 0x86ea54 (partial: Stop not ported; priority_bank_emitters.cpp)
    void Update();                                 // 0x86a3c8 (drops entries whose emitter stopped playing)
    bool SetPriorityBank(int bank, int min_priority, int max_count, int behaviour);  // 0x8661bc
    int AddPriorityBank(int min_priority, int max_count, int behaviour);            // 0x8696d0: new index, or -1
    // Fills one record per bank (0x864a80) and returns the int of the unlock call.
    int GetDebugInfo(DebugChunk_bank* out);

private:
    bool CanAddEmitterLocked(int bank, int priority) const;  // 0x863578

    int bank_count_;                      // +0 (set by the bank-count constructor only)
    std::vector<PriorityBank> banks_;     // +4..+0xc
    Mutex mutex_;                         // +0x10
};

}  // namespace vox
