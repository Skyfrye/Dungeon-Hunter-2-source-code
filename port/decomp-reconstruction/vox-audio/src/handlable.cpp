#include "vox-audio/vox/handlable.hpp"

namespace vox {

// 0x8636e0 _ZN3vox9HandlableD1Ev and 0x869984 _ZN3vox9HandlableD0Ev (deleting).
// The original destroys the mutex at +0x18; the port's member does the same.
Handlable::~Handlable() = default;

// 0x865c24 _ZN3vox9Handlable6RetainEv
void Handlable::Retain() {
    mutex.Lock();
    ++ref_count;
    mutex.Unlock();
}

// 0x865bf4 _ZN3vox9Handlable7ReleaseEv
void Handlable::Release() {
    mutex.Lock();
    if (ref_count > 0) {
        --ref_count;
    }
    mutex.Unlock();
}

// 0x863144 _ZN3vox18HandlableContainer4FindEx
// Exact match: lower_bound on the id, accepted only when its key equals id.
Handlable* HandlableContainer::Find(std::int64_t id) const {
    auto it = map_.lower_bound(id);
    if (it == map_.end() || it->first != id) {
        return nullptr;
    }
    return it->second;
}

// 0x8631e8 _ZN3vox18HandlableContainer15GetFreeHandleIdEv
// Returns the next id and advances the 64-bit counter.
std::int64_t HandlableContainer::GetFreeHandleId() {
    std::uint64_t id = next_id_;
    ++next_id_;
    return static_cast<std::int64_t>(id);
}

// 0x863a0c _ZN3vox18HandlableContainer5ClearEv
// Deletes every stored Handlable (virtual destructor then free) and empties the tree.
void HandlableContainer::Clear() {
    for (auto& entry : map_) {
        delete entry.second;
    }
    map_.clear();
}

// 0x863ad0 _ZN3vox18HandlableContainerD1Ev and 0x863b0c D2.
HandlableContainer::~HandlableContainer() { Clear(); }

// 0x863b48 _ZN3vox18HandlableContainer5EraseEx
// Removes the element with exactly this id; a non-null value is destroyed.
void HandlableContainer::Erase(std::int64_t id) {
    auto it = map_.lower_bound(id);
    if (it == map_.end() || it->first != id) {
        return;
    }
    delete it->second;
    map_.erase(it);
}

// 0x8648f4 _ZN3vox18HandlableContainer3AddEPNS_9HandlableE
// Stores handlable under its own id. A null handlable is ignored. An existing
// key has its value replaced.
void HandlableContainer::Add(Handlable* handlable) {
    if (handlable == nullptr) {
        return;
    }
    map_[handlable->id] = handlable;
}

// 0x8649c8 _ZN3vox18HandlableContainer5MergeEPS0_
// Adds every non-null value of other, in key order.
void HandlableContainer::Merge(HandlableContainer* other) {
    if (other == nullptr) {
        return;
    }
    for (auto& entry : other->map_) {
        if (entry.second != nullptr) {
            Add(entry.second);
        }
    }
}

// 0x86a504 _ZN3vox18HandlableContainer6DetachEx
// Removes the element with exactly this id and returns its value without
// destroying it. Returns null when there is no such element.
Handlable* HandlableContainer::Detach(std::int64_t id) {
    auto it = map_.lower_bound(id);
    if (it == map_.end() || it->first != id) {
        return nullptr;
    }
    Handlable* value = it->second;
    map_.erase(it);
    return value;
}

}  // namespace vox
