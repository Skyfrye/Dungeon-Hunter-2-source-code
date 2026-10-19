// AnimSetManager: owns the AnimationSet objects keyed by set id and hands out animators built on them.
// Set ids count down from -1 (Create decrements m_nextSetId). The map is the STLport red-black tree
// header that sits at +0x04 in the original; its 32-bit size is 0x14 bytes.
// Original 32-bit size is not recorded (no operator new seen); the ctor touches up to +0x1c.
// Vtable (16 bytes): slots 0/1 are the destructors (complete and deleting).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x475364 / 0x4753b4).
#pragma once

#include <cstdint>
#include <map>

namespace glitch {
namespace collada {
class ISceneNodeAnimator;
}  // namespace collada
}  // namespace glitch

class AnimationSet;

class AnimSetManager {
public:
    AnimSetManager();                                                        // 0x475364 / 0x4753b4
    // Singleton<AnimSetManager>::s_inst: the instance is the object itself (CharAnimator::ANIM_AddAnimDictToSet 0x3c9b14 takes its address).
    static AnimSetManager& s_inst;  // reference to Singleton<AnimSetManager>::s_inst (game-app/src/singleton_AnimSetManager.cpp)
    virtual ~AnimSetManager();                                               // slot 0/1: 0x4756a8 (D1), 0x475728 (D2), 0x47570c (D0)

    bool Exists(int setId) const;                                            // 0x475404
    void DBG_SetName(int setId, const char* name);                           // 0x475460
    void DBG_DumpInfo() const;                                               // 0x475488
    int GetClipId(int setId, int animIndex);                                 // 0x47559c -1 when the set does not exist
    void Flush();                                                            // 0x475664 drops every set and resets m_nextSetId
    glitch::collada::ISceneNodeAnimator* GetSynchronizedAnimator(int setId); // 0x4761cc builds an AnimatorSynchronizedSet (0xc8 bytes)
    glitch::collada::ISceneNodeAnimator* GetAnimator(int setId);             // 0x4762c4 builds an AnimatorSet (0xa4 bytes)
    void AddTemplateAnim(int setId, int animDict);                           // 0x476398
    int Create();                                                            // 0x476464 returns the new set id
    void AddAnim(int setId, int animDict);                                   // 0x47653c

    // +0x00 vptr
    std::map<int, AnimationSet> m_sets;                                      // +0x04 sets by id, STLport rb-tree header (0x14 bytes at 32-bit)
    uint8_t pad_18[4];                                                       // +0x18
    int m_nextSetId;                                                         // +0x1c next id handed out by Create, -1 when empty
};
