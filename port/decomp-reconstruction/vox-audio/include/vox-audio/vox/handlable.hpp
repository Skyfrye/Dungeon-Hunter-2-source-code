// vox::Handlable and vox::HandlableContainer.
//
// Handlable layout: +0x00 vtable, +0x08 64-bit handle id (lo at +0x8, hi at
// +0xc), +0x10 reference count, +0x18 mutex guarding the count.
//
// HandlableContainer: an RB-tree keyed by handle id (HandleIdComp: signed
// 64-bit order) mapping to Handlable*. The original's tree header lives at
// +0x4..+0xc, the node count at +0x10 and the next free id at +0x18 (64-bit).
// std::map holds the tree here; the container owns its Handlables.
#pragma once

#include <cstdint>
#include <map>

#include "vox-audio/vox/mutex.hpp"

namespace vox {

class Handlable {
public:
    Handlable() = default;
    virtual ~Handlable();

    void Retain();   // 0x865c24
    void Release();  // 0x865bf4

    std::int64_t id = 0;     // +0x08
    int ref_count = 0;       // +0x10
    Mutex mutex;             // +0x18
};

class HandlableContainer {
public:
    using Map = std::map<std::int64_t, Handlable*>;

    HandlableContainer() = default;
    HandlableContainer(const HandlableContainer&) = delete;
    HandlableContainer& operator=(const HandlableContainer&) = delete;
    ~HandlableContainer();  // 0x863ad0, 0x863b0c: Clear, then drop the tree

    Handlable* Find(std::int64_t id) const;           // 0x863144
    std::int64_t GetFreeHandleId();                   // 0x8631e8
    Map::iterator begin() { return map_.begin(); }    // 0x863214
    Map::iterator end() { return map_.end(); }        // 0x863220
    // Number of stored handlables: the tree's node count (+0x10 of the container).
    std::size_t Size() const { return map_.size(); }
    void Clear();                                     // 0x863a0c: deletes every Handlable
    void Erase(std::int64_t id);                      // 0x863b48: deletes the Handlable at id
    void Add(Handlable* handlable);                   // 0x8648f4: keyed by handlable->id
    void Merge(HandlableContainer* other);            // 0x8649c8: Add every value of other
    Handlable* Detach(std::int64_t id);               // 0x86a504: removes without deleting
    // Sets the id the next GetFreeHandleId returns (the VoxEngineInternal constructor sets 1).
    void SetFirstHandleId(std::uint64_t id) { next_id_ = id; }

private:
    Map map_;                       // +0x04..+0x10 (tree header and node count)
    std::uint64_t next_id_ = 0;     // +0x18
};

}  // namespace vox
