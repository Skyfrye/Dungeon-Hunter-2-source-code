// QE_InteractWith: quest event for one interaction with a game object. It is the base of the
// OpenGameObject and DestroyGameObject events, whose vtables reuse its FillNetworkMsg (0x4823c8).
// Its derived QE_OpenGameObject event is built on the stack by OpenableContainer::Interact (0x3a1904), which
// sets +0x18 from the container's virtual at +0xd0 (not named here).
// Original 32-bit size not recovered (no allocation found); the fields end at +0x1c.
// Reconstructed from libDungeonHunter2.so: destructors 0x4822dc (D1), 0x482548 (D0),
// FillNetworkMsg 0x4823c8. The layout is confirmed by the stack event that OpenableContainer::Interact
// builds (v2QuestObjectiveType constant "OpenGameObject").
#pragma once

#include <cstdint>

#include "dh2/QuestEvent.hpp"

class GameObject;
struct tMsgRaisedEventData;

class QE_InteractWith : public QuestEvent {
public:
    ~QE_InteractWith() override;                                    // 0x4822dc (D1), 0x482548 (D0); slots 0x00, 0x04
    void FillNetworkMsg(tMsgRaisedEventData& msg) const override;   // 0x4823c8; slot 0x0c

    // IEvent (via QuestEvent) occupies +0x00 .. +0x07: vptr, then eventId_ at +0x04 (the interaction type).
    GameObject* m_character;                                        // +0x08 the GameObject that interacted; its ObjectBase +0x108 goes to message slot 1
    std::int32_t m_targetId;                                        // +0x0c ObjectBase::unk_64 of the interacted object; message slot 2
    std::uint8_t m_flag0;                                           // +0x10 0 when raised; not copied by FillNetworkMsg
    std::uint8_t m_flag1;                                           // +0x11 0 when raised; not copied by FillNetworkMsg
    std::uint8_t pad_12[2];                                         // +0x12
    std::int32_t m_value;                                           // +0x14 -1 when raised; message slot 3
    std::int32_t m_matchId;                                         // +0x18 DataID the objective matches (Track A source_data_id); message slot 4 as is
};
