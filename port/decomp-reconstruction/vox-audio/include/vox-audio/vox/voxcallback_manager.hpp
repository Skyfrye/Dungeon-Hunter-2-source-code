// vox::VoxCallbackManager: a ring of pending callbacks. Add appends a node, SendAll
// fires every pending callback in order and destroys it, and the destructor destroys
// whatever is left. The manager is the ring's sentinel, as in the original, where the
// first two words of the object are the head and tail links.
//
// Node layout (12 bytes in the original): +0x00 next, +0x04 prev, +0x08 callback.
// The callback is a VoxCallback allocated with VoxAlloc. Its vtable slot +0x00 is the
// virtual destructor and +0x08 is a virtual method whose name is not in the symbols.
#pragma once

#include <cstdint>

namespace vox {

class VoxCallback {
public:
    virtual ~VoxCallback() = default;  // vtable +0x00
    // vtable +0x08. The binary does not name this slot; SendAll calls it first.
    virtual void Invoke() = 0;
};

struct VoxCallbackNode {
    VoxCallbackNode* next = nullptr;   // +0x00
    VoxCallbackNode* prev = nullptr;   // +0x04
    VoxCallback* callback = nullptr;   // +0x08
};

class VoxCallbackManager {
public:
    // Port-only constructor: the original object starts as an empty ring (the destructor
    // leaves it that way too).
    VoxCallbackManager();
    VoxCallbackManager(const VoxCallbackManager&) = delete;
    VoxCallbackManager& operator=(const VoxCallbackManager&) = delete;

    // D1 0x863788 and D2 0x8637fc have the same body (the port has one destructor).
    ~VoxCallbackManager();

    void SendAll();                  // 0x863714
    void Add(VoxCallback* callback); // 0x863cc8: a null callback is ignored

private:
    VoxCallbackNode head_;           // the sentinel: head_.next is the first node, head_.prev the last
};

}  // namespace vox
