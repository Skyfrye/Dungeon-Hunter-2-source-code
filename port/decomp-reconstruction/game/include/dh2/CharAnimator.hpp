// CharAnimator: per-character animation player, embedded by value in Character at +0x49c (1180).
// Vtable (_ZTV12CharAnimator, 16 bytes): slot 0/1 are the two destructors.
// Original 32-bit size: 0x60 (last member +0x5c); no operator new seen.
#pragma once

#include <cstdint>

class Character;
class ItemInstance;

namespace glitch {
namespace scene { class ITimelineController; }
namespace collada { struct STriggeredEvent; }
}

class CharAnimator {
public:
    // One level of the anim stack (up to 3 deep, 12 bytes each). Redirect steps push a new level.
    struct StackEntry {
        int m_animId;                             // +0x00 index into Arrays::AnimTable
        int m_loopCount;                          // +0x04 remaining loops, <0 forever
        int m_stepIndex;                          // +0x08 current step within the anim
    };

    CharAnimator();                               // 0x3c906c
    virtual ~CharAnimator();                      // slot 0 (0x3c90e4 / 0x3c90e8), slot 1 deleting (0x3c9af8)

    static void __Callback(glitch::scene::ITimelineController* controller, void* user);  // 0x3c90ec
    static int __CallbackEvent(glitch::collada::STriggeredEvent const& ev, void* user);  // 0x3c9984
    void CalculateExtraTime(glitch::scene::ITimelineController* controller);             // 0x3c90f8

    void SetCharacter(Character* c);              // 0x3c9890
    void Update();                                // 0x3caf3c

    void IncAnimSetUsers();                       // 0x3c9168
    void DecAnimSetUsers();                       // 0x3c91c8
    void RequestAnimPurge();                      // 0x3ca52c
    void SetAnimationSet();                       // 0x3c9f4c
    void ANIM_AddSetToRenderObject();             // 0x3c99a0
    void ANIM_AddAnimDictToSet(int animDict);     // 0x3c9b14

    bool ANIM_IsUnique() const;                   // 0x3c9228
    bool ANIM_IsRandom() const;                   // 0x3c927c
    bool ANIM_IsSequence() const;                 // 0x3c92d4
    bool ANIM_IsSequence(unsigned int stackIdx) const;  // 0x3c9600
    bool ANIM_IsRandom(unsigned int stackIdx) const;    // 0x3c96dc
    bool ANIM_IsUnique(unsigned int stackIdx) const;    // 0x3c97b8
    int ANIM_GetStepIndex() const;                // 0x3c932c
    int ANIM_GetStepCount() const;                // 0x3c934c
    int ANIM_GetCurrentlyPlayedAnimDict() const;  // 0x3c9398

    void ANIM_SetSpeed(float speed);              // 0x3c93fc
    void ANIM_SkipNextStep(unsigned int stackIdx);  // 0x3c9444
    void ANIM_SkipNextStep();                     // 0x3c9464
    void ANIM_SetStep(unsigned int step, unsigned int stackIdx);  // 0x3c946c
    void ANIM_SetStep(unsigned int step);         // 0x3c9484
    void ANIM_StopLoop(bool endNow);              // 0x3c948c
    void ANIM_Stop();                             // 0x3c9924
    void ANIM_Set(int animId);                    // 0x3cacb0
    void ANIM_Swap(int newAnimId, int oldAnimId); // 0x3caccc

public:
    bool _PlayItemSwooshSFX(ItemInstance* item);  // 0x3c94b8
    bool _PlayItemSwooshFX(ItemInstance* item, bool attached);  // 0x3c955c
    void _CompileAnimSet();                       // 0x3c9b7c
    void _AddTemplateAnimTable(int animSetId, int animTable, unsigned int offset);  // 0x3c9c7c
    void _AddAnimTable(int animSetId, int animTable, unsigned int offset, unsigned int stanceMask, unsigned int stanceList);  // 0x3c9d80
    void _SetAnimStep(unsigned int step);         // 0x3ca79c
    void _SetAnim(int animId, unsigned int stackIdx);  // 0x3cab38

    // _vptr                                      // +0x00
    Character* m_character;                       // +0x04
    StackEntry m_animStack[3];                    // +0x08 (3 x 12 bytes, up to +0x2c)
    unsigned int m_animStackIdx;                  // +0x2c active stack level
    bool m_swooshActive;                          // +0x30 copy of the current step's swoosh flag
    uint8_t pad_31[3];                            // +0x31
    float m_stepSpeed;                            // +0x34 1.0 default, overwritten per step
    bool m_animSetCompiled;                       // +0x38
    uint8_t pad_39[3];                            // +0x39
    int m_animSetId;                              // +0x3c -1 until Character::GetCharUniqueAnimSetId is fetched
    float m_speed;                                // +0x40 1.0 default
    int m_extraTime;                              // +0x44 ms overshoot from CalculateExtraTime
    bool m_stopped;                               // +0x48 true when no anim is playing
    bool m_animFinished;                          // +0x49 set by __Callback
    bool m_stopLoop;                              // +0x4a set by ANIM_StopLoop(true)
    uint8_t pad_4b;                               // +0x4b
    int m_currentAnim;                            // +0x4c last anim id given to _SetAnim
    int m_pendingAnim;                            // +0x50 queued by ANIM_Set while a callback is pending, -1 = none
    bool m_blended;                               // +0x54 BlendedAnimSetController vs AnimSetController
    uint8_t pad_55[3];                            // +0x55
    int m_lastEventData;                          // +0x58 from __CallbackEvent
    bool m_usersAdded;                            // +0x5c IncAnimSetUsers was applied
    uint8_t pad_5d[3];                            // +0x5d
};
