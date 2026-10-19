// DestructibleContainer: a breakable Container. Each interaction takes one hit from a counter that InitPost
// sets from the visual's animation. When no hits are left the object is destroyed and the DestroyGameObject quest
// event is raised. Original 32-bit size not recovered: the last member ends at +0x6f7 (Container is 0x6f0).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3a14bc / 0x3a1508).
#pragma once

#include <cstdint>

#include "dh2/Container.hpp"

namespace glitch {
namespace collada {
struct STriggeredEvent;
}  // namespace collada
}  // namespace glitch

class DestructibleContainer : public Container {
public:
    explicit DestructibleContainer(ObjectBase::GO_IDS id);              // 0x3a14bc (C1) / 0x3a1508 (C2)
    ~DestructibleContainer() override;                                  // 0x3a1418 (D1), 0x3a1460 (D0), 0x3a147c (D2)

    // Overrides of Container / GameObject slots, in vtable order.
    void DeclareProperties() override;                                  // slot 0x18: 0x3a1270, thunk to Container::DeclareProperties
    void InitPost() override;                                           // slot 0x1c: 0x3a11dc registers the event callback, sets the hit counters
    int GetInteractionType(GameObject* other) const override;           // slot 0x90: 0x3a0d60 returns 8
    void Interact(GameObject* other) override;                          // slot 0x98: 0x3a0da0 hit path, or destroy path when no hits are left
    const char* GetScript() const override;                             // slot 0xc8: 0x3a0cec
    int GetVisual() const override;                                     // slot 0xcc: 0x3a0d28
    int GetDataId() const override;                                     // slot 0xd0: 0x3a11c0 index of the data_desc string, -1 when empty
    int GetLoot() const override;                                       // slot 0xd4: 0x3a1180
    int GetSound() const override;                                      // slot 0xd8: 0x3a1140
    bool KeepPhysics() const override;                                  // slot 0xdc: 0x3a10f8

    void DoEffects();                                                   // 0x3a0d68, empty body; the "fx" event calls it

    static void __EventCallback(const glitch::collada::STriggeredEvent& event, void* user);  // 0x3a1274
                                                                        // "fx" calls DoEffects, "opened" raises the quest event

    // Container occupies +0x00 .. +0x6ef.
    std::int32_t unk_6f0;                                               // +0x6f0 total hits. InitPost sets it from the visual's
                                                                        // animation count (slot +0x10, arg 0) minus 3, when above 3
    std::int32_t unk_6f4;                                               // +0x6f4 hits left. InitPost sets it like unk_6f0. Interact
                                                                        // decrements it while non-zero and destroys the object at zero
};
