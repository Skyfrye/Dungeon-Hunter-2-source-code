// AnimationSet: the game's ref-counted animation set for one character or object. It owns the engine
// CDynamicAnimationSet (m_animSet, built by CreateAnimSet with operator new(0x80)) and a map of loaded
// Animation entries keyed by their AnimDict member id. The map is rebalanced by _RemoveAnimation and
// _UpdateAnimationIndices, and the least recently used entry is picked for replacement by _FindCacheCandidate.
// Vtable (20 bytes): slots 0/1 are the destructors, slot 2 is IReferenceCounted::onDelete.
// Original 32-bit size not recovered: no constructor symbol in the queue, and the object is allocated by its owner.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x364f20, CreateAnimSet 0x364ca0, FreeAll 0x364ecc,
// GetAnimationBySetIndex 0x364bf4, LoadAnimation 0x3659ec, GetAnimation 0x3660f4).
#pragma once

#include <cstdint>
#include <map>

#include "dh2/Animation.hpp"
#include "glitch-core-io/boost/intrusive_ptr.hpp"

namespace glitch {
namespace collada {
class CDynamicAnimationSet;
}  // namespace collada
}  // namespace glitch

class Animation;

class AnimationSet : public glitch::IReferenceCounted {
public:
    static Animation s_invalidAnim;  // returned by the lookups when no entry matches

    ~AnimationSet() override;                                              // 0x364f20 (D1), 0x364f84 (D0), 0x364fa0 (D2)

    void SetAnimSet(glitch::collada::CDynamicAnimationSet* animSet);       // 0x36497c drops the old set, takes a reference on the new one
    void CalculateCacheSize();                                             // 0x3649bc m_cacheSize = m_cacheUnit * (count - 1) + 10
    void Update(int time);                                                 // 0x3649d8 empty
    void Purge();                                                          // 0x3649dc empty
    int _FindCacheCandidate();                                             // 0x3649e0 returns the least recently used set index, or -1
    void _UpdateAnimationIndices();                                        // 0x364af4 refreshes each node's set index from the engine set
    Animation* GetAnimationBySetIndex(int setIndex);                       // 0x364bf4 stamps the node's last-use time
    int CreateAnimSet();                                                   // 0x364ca0 replaces m_animSet with a new CDynamicAnimationSet
    void FreeAll();                                                        // 0x364ecc drops m_animSet and erases every map node

    void _RemoveAnimation(std::map<int, Animation>::iterator node, bool keepEntry);  // 0x36504c releases the library bindings, erases the node unless keepEntry
    bool UnloadAnimation(int animId, bool keepEntry);                      // 0x3650b4 unloads only when the node's use count is zero
    bool UnloadAnimation(const char* name);                                // 0x365158 looks up the AnimDict id by name
    Animation* LoadAnimation(int animId);                                  // 0x3659ec loads the collada database of an AnimDict entry
    Animation* LoadAnimation(const char* name);                            // 0x365d18
    Animation* ReplaceAnimation(int animId, int cacheSlot);                // 0x365d38 evicts cacheSlot and loads animId in its place
    Animation* ReplaceAnimation(int animId);                               // 0x3660b0 picks the cache candidate first
    Animation* ReplaceAnimation(const char* name);                         // 0x3660d4
    Animation* GetAnimation(int animId);                                   // 0x3660f4 finds the loaded entry, else loads or replaces one
    Animation* GetAnimation(const char* name);                             // 0x3661f4

    // +0x00 vptr and +0x04 reference counter: glitch::IReferenceCounted base (ends at +0x07).
    // +0x08 m_animations: std::map<int, Animation> as the original _Rb_tree. Header node at +0x08
    // (color, parent = root at +0x0c, leftmost at +0x10, rightmost at +0x14) and node count at +0x18.
    std::map<int, Animation> m_animations;                                 // +0x08 .. +0x1b (STLport _Rb_tree, 0x14 bytes at 32-bit)
    uint32_t unk_1c;                                                       // +0x1c
    glitch::collada::CDynamicAnimationSet* m_animSet;                      // +0x20 engine set, reference counted by SetAnimSet and CreateAnimSet
    int32_t m_users;                                                       // +0x24 users counter, raised and lowered by CharAnimator::Inc/DecAnimSetUsers
    uint32_t unk_28;                                                       // +0x28
    uint32_t unk_2c;                                                       // +0x2c set to 1 by CreateAnimSet and SetAnimSet
    int32_t m_cacheSize;                                                   // +0x30 computed by CalculateCacheSize, compared with the node count in GetAnimation
    int32_t m_cacheUnit;                                                   // +0x34 per-user step used by CalculateCacheSize
    uint8_t pad_38[4];                                                     // +0x38
    bool unk_3c;                                                           // +0x3c read by GetAnimation together with LG_DEVICES
};
