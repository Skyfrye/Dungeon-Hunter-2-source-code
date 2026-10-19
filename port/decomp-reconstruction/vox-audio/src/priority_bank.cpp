#include "vox-audio/vox/priority_bank.hpp"

namespace vox {

// 0x8697bc _ZN3vox19PriorityBankManagerC1Ei and 0x8698e8 C2: reserve bank_count
// default banks.
PriorityBankManager::PriorityBankManager(int bank_count) : bank_count_(bank_count) {
    banks_.reserve(static_cast<std::size_t>(bank_count));
    for (int i = 0; i < bank_count; ++i) {
        banks_.push_back(PriorityBank{});
    }
}

// 0x869858 _ZN3vox19PriorityBankManagerC1Ev and 0x8698a0 C2.
// The original writes the vector words at +0x04..+0x0c to zero and constructs the mutex at +0x10.
// It does not write the bank count at +0 (the asm stores +4, +8 and +0xc only), so the count
// stays as the caller's storage left it. The port keeps that: bank_count_ has no initializer.
// The original also builds a one-bank manager on the stack and destroys it at once; that pair
// is kept here (its only effect is the heap allocation and release).
PriorityBankManager::PriorityBankManager() {
    PriorityBankManager scratch(1);
}

// 0x86418c _ZN3vox19PriorityBankManagerD1Ev
PriorityBankManager::~PriorityBankManager() = default;

// 0x863578 _ZN3vox19PriorityBankManager14_CanAddEmitterEii
// Gate order, from the pseudocode and asm:
//   1. bank index must be in [0, bank count), else refuse.
//   2. the request priority must be >= the bank's min priority, else refuse.
//   3. while the bank has room (count < max), accept.
//   4. when full: behaviour 1 accepts when some entry has a priority below the
//      request (scan stops at the first such entry); behaviour 2 accepts when
//      some entry has a priority at or below the request; behaviour 0 accepts;
//      any other behaviour refuses. An empty full bank refuses for 1 and 2.
bool PriorityBankManager::CanAddEmitterLocked(int bank_index, int priority) const {
    if (bank_index < 0 || bank_index >= bank_count_) {
        return false;
    }
    const PriorityBank& bank = banks_[static_cast<std::size_t>(bank_index)];
    if (bank.min_priority > priority) {
        return false;
    }
    int count = static_cast<int>(bank.entries.size());
    if (bank.max_count > count) {
        return true;
    }
    if (bank.behaviour == 1) {
        if (count < 1) {
            return false;
        }
        for (const PriorityBankEntry& e : bank.entries) {
            if (priority > e.priority) {
                return true;
            }
        }
        return false;
    }
    if (bank.behaviour == 2) {
        if (count < 1) {
            return false;
        }
        for (const PriorityBankEntry& e : bank.entries) {
            if (priority >= e.priority) {
                return true;
            }
        }
        return false;
    }
    return bank.behaviour == 0;
}

// 0x864b1c _ZN3vox19PriorityBankManager13CanAddEmitterEii
bool PriorityBankManager::CanAddEmitter(int bank, int priority) {
    mutex_.Lock();
    bool result = CanAddEmitterLocked(bank, priority);
    mutex_.Unlock();
    return result;
}

// 0x86e078 _ZN3vox19PriorityBankManager13RemoveEmitterEiPNS_10EmitterObjE
// Erases the first entry whose emitter matches. Returns false when the bank
// is out of range, the emitter is null, or the emitter is not in the bank.
bool PriorityBankManager::RemoveEmitter(int bank, void* emitter) {
    mutex_.Lock();
    bool removed = false;
    if (bank >= 0 && bank < bank_count_ && emitter != nullptr) {
        auto& entries = banks_[static_cast<std::size_t>(bank)].entries;
        for (auto it = entries.begin(); it != entries.end(); ++it) {
            if (it->emitter == emitter) {
                entries.erase(it);
                removed = true;
                break;
            }
        }
    }
    mutex_.Unlock();
    return removed;
}

// 0x8661bc _ZN3vox19PriorityBankManager15SetPriorityBankEiiiNS_20PriorityBankBehaviorE
// The index is checked against the bank count word, the three fields are set under the lock,
// and the function returns 1 (0 when the index is out of range). The listing then calls
// std::vector<PriorityBankElement>::reserve(max_count) on the bank's entries (asm BL reserve(uint)).
// The port does not call reserve: it changes capacity only, and the bank logic reads the size.
bool PriorityBankManager::SetPriorityBank(int bank, int min_priority, int max_count, int behaviour) {
    mutex_.Lock();
    bool ok = bank >= 0 && bank < bank_count_;
    if (ok) {
        PriorityBank& b = banks_[static_cast<std::size_t>(bank)];
        b.min_priority = min_priority;
        b.max_count = max_count;
        b.behaviour = behaviour;
    }
    mutex_.Unlock();
    return ok;
}

// 0x8696d0 _ZN3vox19PriorityBankManager15AddPriorityBankEiiNS_20PriorityBankBehaviorE
// Appends a default bank (minimum 0x80000001, maximum 0x7fffffff, behaviour 3) and counts it.
// When the count then equals the number of banks, the new bank takes the given values and
// returns its index; otherwise the bank keeps its defaults and the call returns -1 (asm: the
// count compare at the end). The entry vector's reserve(max_count) is capacity only and is
// not reproduced.
int PriorityBankManager::AddPriorityBank(int min_priority, int max_count, int behaviour) {
    mutex_.Lock();
    banks_.push_back(PriorityBank{});
    ++bank_count_;
    int index = -1;
    if (bank_count_ == static_cast<int>(banks_.size())) {
        index = bank_count_ - 1;
        PriorityBank& bank = banks_[static_cast<std::size_t>(index)];
        bank.min_priority = min_priority;
        bank.max_count = max_count;
        bank.behaviour = behaviour;
    }
    mutex_.Unlock();
    return index;
}

// 0x864a80 _ZN3vox19PriorityBankManager12GetDebugInfoEPNS_15DebugChunk_bankE
// Under the lock, one DebugChunk_bank per bank: the index, the bank's behaviour, minimum
// priority, maximum count and the number of entries (the entry vector's size).
int PriorityBankManager::GetDebugInfo(DebugChunk_bank* out) {
    mutex_.Lock();
    const int count = bank_count_ < static_cast<int>(banks_.size()) ? bank_count_ : static_cast<int>(banks_.size());
    for (int i = 0; i < count; ++i) {
        const PriorityBank& bank = banks_[static_cast<std::size_t>(i)];
        DebugChunk_bank& record = out[i];
        record.index = i;
        record.behaviour = bank.behaviour;
        record.min_priority = bank.min_priority;
        record.max_count = bank.max_count;
        record.count = static_cast<std::int32_t>(bank.entries.size());
    }
    return mutex_.Unlock();
}

}  // namespace vox
