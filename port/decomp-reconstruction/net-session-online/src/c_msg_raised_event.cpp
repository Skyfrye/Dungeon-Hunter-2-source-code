#include "net-session-online/c_msg_raised_event.hpp"

#include <cstdio>
#include <memory>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/Application.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/QE_ClearEnemies.hpp"
#include "dh2/QE_DestroyGameObject.hpp"
#include "dh2/QE_GatherLoot.hpp"
#include "dh2/QE_InteractWith.hpp"
#include "dh2/QE_KillEnemies.hpp"
#include "dh2/QE_KillEnemyTemplate.hpp"
#include "dh2/QE_MoveInZone.hpp"
#include "dh2/QE_OpenGameObject.hpp"
#include "dh2/QE_PickedUpLiftable.hpp"
#include "dh2/QE_TalkToNPC.hpp"
#include "dh2/QE_TriggerOn.hpp"
#include "dh2/QE_TriggerPlate.hpp"
#include "dh2/QuestMoveInZone.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "net-session-online/deps/matching.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

#include "dh2/QuestEvent.hpp"
#include "dh2/tMsgRaisedEventData.hpp"

// 0x329630 _ZN15CMsgRaisedEventC1Eb
// Partial: the base is the partial CMessage(const char*, bool). The payload words (+0x50..+0x63)
// are zeroed by the member initialisers. The rest of the original body is here: the type name,
// reliable, sendMode 1 (remote) and includeLocalMember. The base sets sendMode 0, so this matters.
CMsgRaisedEvent::CMsgRaisedEvent(bool withSerial) : CMessage("CMsgRaisedEvent", withSerial) {
    typeName_ = "CMsgRaisedEvent";  // +0x14
    reliable_ = true;               // +0x30
    sendMode_ = 1;                  // +0x2c
    includeLocalMember_ = true;     // +0x33
}

// 0x47ac58 _ZN15CMsgRaisedEvent6CreateEP10QuestEvent
// Creates the "CMsgRaisedEvent" message and has the quest event fill the payload at +0x50 (QuestEvent vtable slot +0x0c,
// FillNetworkMsg, with the message's five payload words as a tMsgRaisedEventData). Returns the message.
CMessage* CMsgRaisedEvent::Create(QuestEvent* event) {
    CMessage* message = CMessage::CreateMessage("CMsgRaisedEvent", true);
    static_assert(sizeof(tMsgRaisedEventData) == 20, "the payload is five 32-bit words");
    event->FillNetworkMsg(*reinterpret_cast<tMsgRaisedEventData*>(static_cast<CMsgRaisedEvent*>(message)->GetDataPtr()));
    return message;
}

// 0x49a238 _ZN15CMsgRaisedEvent21RaiseEventFromNetworkEPS_
// A message from the local member is ignored. Otherwise the quest event of the message's kind is rebuilt: the object of
// word +0x54 (ObjectManager::GetObjectHandleByNetworkId) is the event's character, +0x58 its target id, +0x5c its value, and
// +0x60 the match id (for MoveInZone, kind 4, the network id of the zone, resolved through the object manager). Kinds:
// 0 KillXEnemies, 1 ClearEnemies, 2 TriggerPlate, 3 DestroyGameObject, 4 MoveInZone, 5 TalkToNPC, 7 OpenGameObject,
// 8 TriggerOn, 9 PickedUpLiftable, 10 KillEnemyTemplate, 12 GatherLoot (target id -1); kinds 6 and 11 and any other build
// nothing. The event type id is the v2QuestObjectiveType constant of that name. With a current Level the event gets the value
// and the "networked" byte (+0x11) and is raised through the Level's EventManager (RaiseAsync), then deleted; without a Level
// the assert "level" (MsgRaisedEvent.h:138) is reported.
// Deviation: the original returns the EventManager; the void result loses nothing (the caller discards it). At assert level
// 2 the original stores to address 0; here the assert text is printed at level 1 only and the event is dropped.
void CMsgRaisedEvent::RaiseEventFromNetwork(CMsgRaisedEvent* message) {
    if (message == nullptr) {
        return;
    }
    CMatching* matching = CMatching::Get();
    if (matching == nullptr) {
        return;
    }
    if (message->IsFrom(matching->LocalMemberId())) {
        return;  // the original's guard: the sender is this member
    }
    Application& app = ApplicationGetInstance();
    const std::int32_t kind = message->eventKind_;
    const std::int32_t targetId = message->unk_58;
    const std::int32_t value = message->unk_5c;
    const std::int32_t matchWord = message->targetNetworkId_;
    ObjectHandle objectHandle = dword_99F764->GetObjectHandleByNetworkId(message->objectNetworkId_);
    GameObject* object = objectHandle;
    auto typeId = [&app](const char* name) {
        return static_cast<std::uint32_t>(app.m_pyDataConstants->getConstant("v2QuestObjectiveType", name));
    };
    // The six events with the shared layout (character, target id, flags, value, match id).
    auto fill = [&](auto event, const char* name, std::int32_t target) {
        event->eventId_ = typeId(name);
        event->m_character = object;
        event->m_targetId = target;
        event->m_flag0 = 0;
        event->m_flag1 = 0;
        event->m_value = -1;
        event->m_matchId = matchWord;
        return std::unique_ptr<QuestEvent>(event);
    };
    std::unique_ptr<QuestEvent> event;
    switch (kind) {
        case 0: event = fill(new QE_KillEnemies(), "KillXEnemies", targetId); break;
        case 1: event = fill(new QE_ClearEnemies(), "ClearEnemies", targetId); break;
        case 2: event = fill(new QE_TriggerPlate(), "TriggerPlate", targetId); break;
        case 3: event = fill(new QE_DestroyGameObject(), "DestroyGameObject", targetId); break;
        case 4: {
            ObjectHandle zoneHandle = dword_99F764->GetObjectHandleByNetworkId(matchWord);
            GameObject* zoneObject = zoneHandle;
            auto* moveInZone = new QE_MoveInZone(static_cast<std::int32_t>(typeId("MoveInZone")), object, targetId, -1,
                                                 static_cast<QuestMoveInZone*>(zoneObject));
            event.reset(moveInZone);
            break;
        }
        case 5: event = fill(new QE_TalkToNPC(), "TalkToNPC", targetId); break;
        case 7: event = fill(new QE_OpenGameObject(), "OpenGameObject", targetId); break;
        case 8: event = fill(new QE_TriggerOn(), "TriggerOn", targetId); break;
        case 9: event = fill(new QE_PickedUpLiftable(), "PickedUpLiftable", targetId); break;
        case 10: event = fill(new QE_KillEnemyTemplate(), "KillEnemyTemplate", targetId); break;
        case 12: event = fill(new QE_GatherLoot(), "GatherLoot", -1); break;
        default: break;
    }
    Level* level = app.GetCurrentLevel();
    if (level == nullptr) {
        if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "level",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources/Online/messages/MsgRaisedEvent.h", 138);
        }
        return;
    }
    if (!event) {
        return;
    }
    // The value and the networked byte are stored through the common layout.
    if (kind == 4) {
        auto* moveInZone = static_cast<QE_MoveInZone*>(event.get());
        moveInZone->m_value = value;
        moveInZone->m_flag1 = 1;
    } else if (kind == 12) {
        auto* gather = static_cast<QE_GatherLoot*>(event.get());
        gather->m_value = value;
        gather->m_flag1 = 1;
    } else if (kind == 0) {
        auto* e = static_cast<QE_KillEnemies*>(event.get()); e->m_value = value; e->m_flag1 = 1;
    } else if (kind == 1) {
        auto* e = static_cast<QE_ClearEnemies*>(event.get()); e->m_value = value; e->m_flag1 = 1;
    } else if (kind == 10) {
        auto* e = static_cast<QE_KillEnemyTemplate*>(event.get()); e->m_value = value; e->m_flag1 = 1;
    } else {
        auto* e = static_cast<QE_InteractWith*>(event.get()); e->m_value = value; e->m_flag1 = 1;
    }
    static_cast<EventManager*>(level)->RaiseAsync(*event);
}
