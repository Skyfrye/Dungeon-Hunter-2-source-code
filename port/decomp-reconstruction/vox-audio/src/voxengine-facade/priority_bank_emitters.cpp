// PriorityBankManager entry points that touch emitters: AddEmitter (0x86ea54) and
// Update (0x86a3c8). They live in their own object so that the priority_bank test,
// which does not link EmitterObj::Stop, is not pulled in.
#include <cstddef>
#include <vector>

#include "vox-audio/vox/emitter_obj.hpp"
#include "vox-audio/vox/priority_bank.hpp"

namespace vox {

namespace {

// Priority used when comparing an entry: the emitter's current priority (+0x2c), as the
// listing reads it through the element's emitter pointer.
int LivePriority(const PriorityBankEntry& entry) {
    if (entry.emitter == nullptr) {
        return entry.priority;
    }
    return static_cast<const EmitterObj*>(entry.emitter)->priority_;
}

// Removes the entry at index from a bank. The listing first clears the emitter's bank flag
// (+0x34) and stops it with a zero fade, then erases the entry.
void EvictEntry(std::vector<PriorityBankEntry>& entries, std::size_t index) {
    auto* old_emitter = static_cast<EmitterObj*>(entries[index].emitter);
    if (old_emitter != nullptr) {
        old_emitter->in_bank_ = false;
        old_emitter->Stop(0.0f);
    }
    if (index < entries.size()) {
        entries.erase(entries.begin() + static_cast<std::ptrdiff_t>(index));
    }
}

}  // namespace

// 0x86ea54 _ZN3vox19PriorityBankManager10AddEmitterEiPNS_10EmitterObjE
// Checked path by path against the listing: the behaviour 1 and 2 scans, the behaviour 0 eviction and
// the append for behaviour 3 or room all match. EmitterObj::Stop is ported (transport .cpp).
// Refuses a null emitter, an index outside the banks, an emitter already in a bank, and a
// request the bank gate refuses. Otherwise, by behaviour:
//   3, or room under the maximum: append.
//   0: evict the first entry, then append.
//   1: evict the first entry with the lowest priority below the request's priority.
//   2: as 1, but an entry equal to the request's priority is the fallback when no entry
//      is strictly lower.
// The port guards the empty-bank case of behaviour 0, which the listing dereferences.
bool PriorityBankManager::AddEmitter(int bank_index, void* emitter_ptr) {
    auto* emitter = static_cast<EmitterObj*>(emitter_ptr);
    mutex_.Lock();
    bool added = false;
    if (emitter != nullptr && bank_index >= 0 && bank_index < bank_count_ && !emitter->in_bank_ &&
        CanAddEmitterLocked(bank_index, emitter->priority_)) {
        PriorityBank& bank = banks_[static_cast<std::size_t>(bank_index)];
        std::vector<PriorityBankEntry>& entries = bank.entries;
        const int priority = emitter->priority_;

        if (bank.behaviour == 3 || bank.max_count > static_cast<int>(entries.size())) {
            entries.push_back(PriorityBankEntry{emitter, priority});
            added = true;
        } else if (bank.behaviour == 0) {
            if (!entries.empty()) {
                EvictEntry(entries, 0);
            }
            entries.push_back(PriorityBankEntry{emitter, priority});
            added = true;
        } else {
            std::size_t victim = entries.size();
            if (bank.behaviour == 1) {
                int lowest = priority;
                for (std::size_t i = 0; i < entries.size(); ++i) {
                    const int p = LivePriority(entries[i]);
                    if (lowest > p) {
                        victim = i;
                        lowest = p;
                    }
                }
            } else if (bank.behaviour == 2) {
                int lowest = priority;
                for (std::size_t i = 0; i < entries.size(); ++i) {
                    const int p = LivePriority(entries[i]);
                    if (lowest > p || (victim == entries.size() && lowest == p)) {
                        victim = i;
                        lowest = p;
                    }
                }
            }
            if (victim < entries.size()) {
                EvictEntry(entries, victim);
                entries.push_back(PriorityBankEntry{emitter, priority});
                added = true;
            }
        }
    }
    mutex_.Unlock();
    return added;
}

// 0x86a3c8 _ZN3vox19PriorityBankManager6UpdateEv
// For every bank, walks the entries in order: an entry whose emitter still plays stays;
// any other entry has its emitter's bank flag cleared and is removed from the bank.
void PriorityBankManager::Update() {
    mutex_.Lock();
    for (int b = 0; b < bank_count_ && static_cast<std::size_t>(b) < banks_.size(); ++b) {
        std::vector<PriorityBankEntry>& entries = banks_[static_cast<std::size_t>(b)].entries;
        std::size_t i = 0;
        while (i < entries.size()) {
            auto* emitter = static_cast<EmitterObj*>(entries[i].emitter);
            if (emitter != nullptr && emitter->IsPlaying()) {
                ++i;
                continue;
            }
            if (emitter != nullptr) {
                emitter->in_bank_ = false;
            }
            entries.erase(entries.begin() + static_cast<std::ptrdiff_t>(i));
        }
    }
    mutex_.Unlock();
}

}  // namespace vox
