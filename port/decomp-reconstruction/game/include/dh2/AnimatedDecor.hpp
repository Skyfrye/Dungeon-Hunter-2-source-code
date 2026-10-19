// AnimatedDecor: a Decor whose visual plays an animation picked by the "startanim" property ("idle" when empty,
// "randomall" to start a random clip and chain random clips). Original 32-bit layout: Decor occupies
// +0x00 .. +0x37b, the property string sits at +0x37c and the object ends at +0x394 (the size is not recorded).
// The primary vtable has the GameObject slots; a second base sits at +0x04 and a third vtable at +0x24 (see the
// Decor layout). Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x389098 / 0x38910c, InitPost 0x389128).
#pragma once

#include <string>

#include "dh2/Decor.hpp"

namespace glitch {
namespace scene {
class ITimelineController;
}  // namespace scene
}  // namespace glitch

class AnimatedDecor : public Decor {
public:
    // No standalone constructor symbol: GetNewInstance<AnimatedDecor> (0x342600) runs GameObject(id) with GO id 20, then
    // writes the vtables, the empty m_startAnim, m_floorMapPending = 0, m_isSolid = 1 and m_static = 1 inline.
    explicit AnimatedDecor(GO_IDS id);

    // Overrides of the GameObject slots, in vtable order.
    ~AnimatedDecor() override;                                         // slot 0/1: 0x389098 (D1), 0x38910c (D0)
    void DeclareProperties() override;                                  // slot 0x18: 0x389dd4 adds the "startanim" property
    void InitPost() override;                                           // slot 0x1c: 0x389128
    bool IsAnimated() const override;                                   // slot 0x80: 0x3883dc true
    bool IsZonable() const override;                                    // slot 0xc4: 0x3884f8 forwards to GameObject::MeetCondition

    // Clip callback: plays a random clip once the previous one ends.
    static void __CallbackRandomAll(glitch::scene::ITimelineController* controller, void* user);  // 0x388cec

    // Decor occupies +0x00 .. +0x37b.
    std::string m_startAnim;                                            // +0x37c property "startanim", "idle" when empty (24 bytes in the original)
};
