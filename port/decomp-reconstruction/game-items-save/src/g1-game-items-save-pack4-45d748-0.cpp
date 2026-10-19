// Batch g1-game-items-save-pack4-45d748-0 (game-items-save, part 1 of 1).
// PropertyInstance::ToString and the six quest-event classes of the QE_* family: QE_ClearEnemies, QE_ClearEnemyTemplate,
// QE_DestroyGameObject, QE_GatherLoot, QE_InteractWith and QE_KillEnemies. Layouts and method declarations come from
// dh2/PropertyInstance.hpp and dh2/QE_*.hpp, which the batch checked against the assembly (see each function).
//
// Notes:
//  * The complete-object destructors (D1) have empty bodies in the binary (BX LR). The vptr stores and the QuestEvent
//    base call are the compiler's, so the bodies here are empty as well.
//  * The deleting destructors (D0) are compiler-generated. The original stores the IEvent vtable address point at +0x00
//    (the QuestEvent and IEvent bases are inlined) and calls CustomFree(this). The C++ delete expression produces the
//    same shape, so no body is written for them (see the list at the end of the destructor section).
//  * The five FillNetworkMsg overrides write the five int32 words of tMsgRaisedEventData (dh2/tMsgRaisedEventData.hpp).
//  * QE_DestroyGameObject has no FillNetworkMsg of its own: its vtable reuses QE_InteractWith::FillNetworkMsg.

#include "dh2/PropertyInstance.hpp"

#include <string>

#include "dh2/Property.hpp"
#include "dh2/QE_ClearEnemies.hpp"
#include "dh2/QE_ClearEnemyTemplate.hpp"
#include "dh2/QE_DestroyGameObject.hpp"
#include "dh2/QE_GatherLoot.hpp"
#include "dh2/QE_InteractWith.hpp"
#include "dh2/QE_KillEnemies.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/QuestEvent.hpp"
#include "dh2/tMsgRaisedEventData.hpp"

// 0x510fe0 _ZN16PropertyInstance8ToStringEv
// The original tests the object pointer (+0x04) and then the property pointer (+0x00). If either is null, the result is the
// empty string. Otherwise it calls the property's slot 0 (Property::ToString(void*)) with the object as argument, and that
// call writes the result into the return slot. The assembly passes the object in r2 and the property as this in r1.
std::string PropertyInstance::ToString() {
    if (m_object == nullptr || m_property == nullptr) {
        return std::string();
    }
    return m_property->ToString(m_object);
}

// ---- Complete-object destructors (D1). The binary bodies are BX LR. ----

// 0x4822d0 _ZN15QE_ClearEnemiesD1Ev
QE_ClearEnemies::~QE_ClearEnemies() {}

// 0x4822d8 _ZN21QE_ClearEnemyTemplateD1Ev
QE_ClearEnemyTemplate::~QE_ClearEnemyTemplate() {}

// 0x3a0ce8 _ZN20QE_DestroyGameObjectD1Ev
QE_DestroyGameObject::~QE_DestroyGameObject() {}

// 0x4822e0 _ZN13QE_GatherLootD1Ev
QE_GatherLoot::~QE_GatherLoot() {}

// 0x4822dc _ZN15QE_InteractWithD1Ev
QE_InteractWith::~QE_InteractWith() {}

// 0x4822cc _ZN14QE_KillEnemiesD1Ev
QE_KillEnemies::~QE_KillEnemies() {}

// Deleting destructors (D0), compiler-generated, not written here:
//   0x4824ac _ZN15QE_ClearEnemiesD0Ev        ~QE_ClearEnemies() then CustomFree(this)
//   0x482514 _ZN21QE_ClearEnemyTemplateD0Ev  ~QE_ClearEnemyTemplate() then CustomFree(this)
//   0x3a0d6c _ZN20QE_DestroyGameObjectD0Ev   ~QE_DestroyGameObject() then CustomFree(this)
//   0x48257c _ZN13QE_GatherLootD0Ev          ~QE_GatherLoot() then CustomFree(this)
//   0x482548 _ZN15QE_InteractWithD0Ev        ~QE_InteractWith() then CustomFree(this)
//   0x482478 _ZN14QE_KillEnemiesD0Ev         ~QE_KillEnemies() then CustomFree(this)

// ---- FillNetworkMsg overrides (slot 0x0c). ----
// The original (asm checked for 0x482320) writes five int32 words into the message:
//   word 0 (+0x00)  the event type, IEvent::eventId_ at this+0x04
//   word 1 (+0x04)  the killer's ObjectBase::unk_108 (+0x108 of m_character at this+0x08), or -1 when m_character is null
//   word 2 (+0x08)  m_targetId at this+0x0c
//   word 3 (+0x0c)  m_value at this+0x14
//   word 4 (+0x10)  m_matchId at this+0x18
// and returns its this pointer in r0 (the ARM calling-convention artifact that the header's void return hides).

// 0x482320 _ZNK15QE_ClearEnemies14FillNetworkMsgER19tMsgRaisedEventData
void QE_ClearEnemies::FillNetworkMsg(tMsgRaisedEventData& msg) const {
    msg.eventKind = eventId_;                                    // +0x04
    msg.objectNetworkId = m_character != nullptr ? m_character->unk_108 : -1;  // ObjectBase +0x108
    msg.unk_08 = m_targetId;                                     // +0x0c
    msg.unk_0c = m_value;                                        // +0x14
    msg.targetNetworkId = m_matchId;                             // +0x18
}

// 0x482390 _ZNK21QE_ClearEnemyTemplate14FillNetworkMsgER19tMsgRaisedEventData. The same five words as QE_ClearEnemies.
void QE_ClearEnemyTemplate::FillNetworkMsg(tMsgRaisedEventData& msg) const {
    msg.eventKind = eventId_;                                    // +0x04
    msg.objectNetworkId = m_character != nullptr ? m_character->unk_108 : -1;  // ObjectBase +0x108
    msg.unk_08 = m_targetId;                                     // +0x0c
    msg.unk_0c = m_value;                                        // +0x14
    msg.targetNetworkId = m_matchId;                             // +0x18
}

// 0x482400 _ZNK13QE_GatherLoot14FillNetworkMsgER19tMsgRaisedEventData. Same five-word shape.
void QE_GatherLoot::FillNetworkMsg(tMsgRaisedEventData& msg) const {
    msg.eventKind = eventId_;                                    // +0x04
    msg.objectNetworkId = m_character != nullptr ? m_character->unk_108 : -1;  // ObjectBase +0x108
    msg.unk_08 = m_targetId;                                     // +0x0c
    msg.unk_0c = m_value;                                        // +0x14
    msg.targetNetworkId = m_matchId;                             // +0x18
}

// 0x4823c8 _ZNK15QE_InteractWith14FillNetworkMsgER19tMsgRaisedEventData. Same five-word shape.
// QE_DestroyGameObject and QE_OpenGameObject reuse this override through their vtables.
void QE_InteractWith::FillNetworkMsg(tMsgRaisedEventData& msg) const {
    msg.eventKind = eventId_;                                    // +0x04
    msg.objectNetworkId = m_character != nullptr ? m_character->unk_108 : -1;  // ObjectBase +0x108
    msg.unk_08 = m_targetId;                                     // +0x0c
    msg.unk_0c = m_value;                                        // +0x14
    msg.targetNetworkId = m_matchId;                             // +0x18
}

// 0x4822e8 _ZNK14QE_KillEnemies14FillNetworkMsgER19tMsgRaisedEventData. Same five-word shape.
void QE_KillEnemies::FillNetworkMsg(tMsgRaisedEventData& msg) const {
    msg.eventKind = eventId_;                                    // +0x04
    msg.objectNetworkId = m_character != nullptr ? m_character->unk_108 : -1;  // ObjectBase +0x108
    msg.unk_08 = m_targetId;                                     // +0x0c
    msg.unk_0c = m_value;                                        // +0x14
    msg.targetNetworkId = m_matchId;                             // +0x18
}
