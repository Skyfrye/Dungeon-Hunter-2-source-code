// vox::VoxCallbackManager: intrusive ring of pending callbacks (see the header).
#include "vox-audio/vox/voxcallback_manager.hpp"

#include "vox-audio/vox/memory.hpp"

namespace vox {

VoxCallbackManager::VoxCallbackManager() {
    head_.next = &head_;
    head_.prev = &head_;
}

// 0x863788 _ZN3vox18VoxCallbackManagerD1Ev (D2 0x8637fc is the same body)
// Frees every node. A node's callback is destroyed through its virtual destructor and then
// released with VoxFree; a node without a callback is only released. The ring is reset to
// an empty sentinel at the end. The original also walks the ring to the sentinel before each
// unlink. That walk only reads the links and has no effect on a well-formed ring, so it is
// not repeated here.
VoxCallbackManager::~VoxCallbackManager() {
    while (head_.next != &head_) {
        VoxCallbackNode* node = head_.next;
        VoxCallbackNode* prev = node->prev;
        VoxCallback* callback = node->callback;
        prev->next = node->next;
        node->next->prev = prev;
        VoxFree(node);
        if (callback == nullptr) {
            continue;
        }
        callback->~VoxCallback();
        VoxFree(callback);
    }
    head_.next = &head_;
    head_.prev = &head_;
}

// 0x863714 _ZN3vox18VoxCallbackManager7SendAllEv
// Each pending node is unlinked and released first. Its callback then runs (vtable +0x08)
// and is destroyed (vtable +0x00) and released with VoxFree. The loop ends when the ring is
// empty. Add never stores a null callback, so SendAll does not check for one.
void VoxCallbackManager::SendAll() {
    while (head_.next != &head_) {
        VoxCallbackNode* node = head_.next;
        VoxCallbackNode* prev = node->prev;
        VoxCallback* callback = node->callback;
        prev->next = node->next;
        node->next->prev = prev;
        VoxFree(node);
        callback->Invoke();
        callback->~VoxCallback();
        VoxFree(callback);
    }
}

// 0x863cc8 _ZN3vox18VoxCallbackManager3AddEPNS_11VoxCallbackE
// Appends a node after the tail. A null callback leaves the ring unchanged.
void VoxCallbackManager::Add(VoxCallback* callback) {
    if (callback == nullptr) {
        return;
    }
    auto* node = static_cast<VoxCallbackNode*>(VoxAlloc(sizeof(VoxCallbackNode), kVoxMemHintDefault));
    node->callback = callback;
    VoxCallbackNode* tail = head_.prev;
    node->next = &head_;
    node->prev = tail;
    tail->next = node;
    head_.prev = node;
}

}  // namespace vox
