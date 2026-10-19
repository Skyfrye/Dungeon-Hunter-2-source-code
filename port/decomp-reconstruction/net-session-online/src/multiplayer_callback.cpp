#include "net-session-online/multiplayer_callback.hpp"
#include "net-transport/net_trace.hpp"  // DH2_NET_TRACE_LOG (host runner only)

#include <cstdio>
#include "net-transport/socket_platform.hpp"
#include <cstdlib>
#include <cstring>

#include "core-platform/memory.hpp"            // gAssertLevel
#include "dh2/DebugSwitches.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/OnlineStatusMsg.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/GSLevel.hpp"
#include "core-platform/gc_singleton.hpp"
#include "dh2/global/gc_invite_flags.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "net-session-online/c_sign_in.hpp"
#include "net-session-online/game_center.hpp"
#include "net-session-online/deps/time_of_day.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "dh2/Application.hpp"                // ApplicationGetInstance
#include "dh2/Character.hpp"                  // Character::IsDead, Kill, CreateNPC, F_ApplyResult
#include "dh2/GSLevel.hpp"                    // GSLevel::s_level (the +0x130 load step)
#include "dh2/ItemInstance.hpp"               // ItemInstance::ItemInstance, AddPower
#include "dh2/ItemInventory.hpp"              // ItemInventory, CalcLootItemValue
#include "dh2/ItemObject.hpp"                 // ItemObject::DropInventory, DropLootTable
#include "dh2/Level.hpp"                      // Level::m_loadStep, m_isLoaded, m_levelListIndex
#include "dh2/MenuManager.hpp"                // MenuManager::GetInstance, GetMenuByName
#include "dh2/MenuFX.hpp"                     // MenuFX (the RenderFX behind State::m_menu)
#include "dh2/ObjectManager.hpp"              // ObjectManager::unk_100, GetObjectHandleByNetworkId
#include "dh2/Point3D.hpp"                    // Point3D<float>, PlayerManager::InitialSetup
#include "dh2/PlayerInfo.hpp"                 // PlayerInfo::unk_660 (the local Character)
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"            // searchRoom: PlayerSavegame, SG_GetQuestSG, m_difficultyLevel
#include "dh2/QuestSavegame.hpp"             // QuestSavegame::m_act (the level id)
#include "dh2/SavegameManager.hpp"           // m_lastSlot, unk_0c (Application +0x4c)
#include "dh2/CRoomSearchFilter.hpp"
#include "dh2/RoomZone.hpp"                   // RoomZone::AddInitialObject (0x396a90)
#include "dh2/ScriptManager.hpp"              // ScriptManager::s_inst
#include "dh2/global/ObjectManagerInstance.hpp"  // dword_99F764
#include "dh2/global/net_singletons.hpp"      // GetOnline
#include "net-session-online/c_event_queue_base.hpp"  // CEventQueueBase (internal_events_)
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/gl_friend_info.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_attack_result.hpp"  // CMsgAttackResult (the typed AttackResult payload)
#include "net-session-online/c_msg_fixed.hpp"          // CMsgSpawnObject
#include "net-session-online/c_msg_quests_sync.hpp"
#include "net-session-online/c_msg_raised_event.hpp"
#include "net-session-online/c_online.hpp"
#include "net-session-online/online_game_state.hpp"    // OnlineGameState flags, OnlineSingleton
#include "net-session-online/tb/online_singleton.hpp"  // OnlineSingleton<OnlineGameState>::GetInstance
#include "net-transport/tb/c_net_player_manager.hpp"  // CNetPlayerManager (host member id, players)

// 0x49a0c4 _ZN19MultiplayerCallback9idleStateEPv
std::int32_t MultiplayerCallback::idleState(void* /*context*/) { return 100; }

// 0x49a0cc _ZN19MultiplayerCallback11ingameStateEPv
std::int32_t MultiplayerCallback::ingameState(void* /*context*/) { return 300; }

// Every message handler ends by setting the consumed flag, the byte at CMessage +0x3c (CMessage::SetFinished). All the
// handlers and state callbacks of the class are transcribed from their listings (residue owner D2 finished the last ones:
// HandleMenuReadyMessage, HandleStartGameMessage, HandleMenuBackButton, HandleScriptCmd case 3, createRoom,
// HandlePlayerJoined, LoadGLLiveFriends, HandleAskResendAttributesMessage). Undefined-behaviour paths are named in each
// comment as deviations.

// 0x49a0d4 _ZN19MultiplayerCallback32HandleAskResendAttributesMessageEPv
// On the server, or on a client whose local member id is the member of the host player (the player at the host
// member id, manager +0x170; its CNetPlayerInfo +0x1a0 value), the original asks the matching object's room attributes
// (vtable +0xa4) to resend (their vtable +0x18, CRoomAttributes::Resend). The message is then marked consumed.
// Deviation: the host player lookup is not null-checked in the original; the port dereferences it likewise.
std::int32_t MultiplayerCallback::HandleAskResendAttributesMessage(void* /*message*/) {
    CMessage* message = CMessaging::GetInstance()->GetMessageFromQueue("CMsgAskResendAttributes");
    bool resend = CMatching::Get()->IsServer();
    if (!resend) {
        const std::int32_t local = CMatching::Get()->LocalMemberId();  // vtable +0x6c
        CNetPlayerManager* manager = GetNetPlayerMgr();
        const CNetPlayerInfo* host = manager->GetPlayer(manager->net_struct_.host_member_id_.GetValue(), false);
        resend = local == host->matching_member_id_.GetValue();  // +0x1a0
    }
    if (resend) {
        CMatching::Get()->GetRoomAttributes()->Resend();  // vtable +0xa4, then CRoomAttributes vtable +0x18
    }
    message->SetFinished();  // +0x3c
    return 0;
}

// 0x49a17c _ZN19MultiplayerCallback24HandleGlobalDeathMessageEPv
// The local player's Character (PlayerInfo::unk_660) is killed when alive, or its death timer is reset when it is
// dead and PlayerManager::m_globalDeathState is 0; then the message is marked consumed (+0x3c).
std::int32_t MultiplayerCallback::HandleGlobalDeathMessage(void* /*message*/) {
    CMessage* message = CMessaging::GetInstance()->GetMessageFromQueue("CMsgGlobalDeath");
    PlayerManager* players = ApplicationGetInstance().m_playerManager;  // dword_99F76C = s_inst +0x40
    PlayerInfo* localPlayer = players->GetLocalPlayer(0, true);
    Character* character = localPlayer->unk_660;
    if (character != nullptr) {
        if (!character->IsDead()) {
            character->Kill(nullptr, true);
        } else if (players->m_globalDeathState == 0) {
            players->ResetCharacterDeathTimer();
        }
    }
    message->SetFinished();  // +0x3c
    return 0;
}

// 0x49a6e4 _ZN19MultiplayerCallback24HandleRaisedEventMessageEPv
// The message is raised only while the current Level is loaded (m_loadStep 38 and m_isLoaded set), and then marked
// consumed (+0x3c); the early return leaves it queued. CMsgRaisedEvent::RaiseEventFromNetwork is itself partial
// (its guard only).
std::int32_t MultiplayerCallback::HandleRaisedEventMessage(void* /*message*/) {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr || level->m_loadStep != 38 || !level->m_isLoaded) {
        return 0;
    }
    auto* message = static_cast<CMsgRaisedEvent*>(CMessaging::GetInstance()->GetMessageFromQueue("CMsgRaisedEvent"));
    CMsgRaisedEvent::RaiseEventFromNetwork(message);
    message->SetFinished();  // +0x3c
    return 0;
}

// 0x49a75c _ZN19MultiplayerCallback17LoadGLLiveFriendsEv
// Once per session (GLFriendsListLoaded() false), every GL Live friend (count from GetGLFriendsCount) is copied into the game
// friend list: its name and number text, and the online flag (state 2). The loaded flag is then set. The original returns the
// loaded flag, or the object the setter leaves in r0; 1 is returned after loading and the flag value otherwise.
// Deviation: strdup of a null name or number (out-of-range index, an absent friend list) gives an empty string here.
std::int32_t MultiplayerCallback::LoadGLLiveFriends() {
    CMatchingGLLive* live = static_cast<CMatchingGLLive*>(CMatching::Get());
    if (live->GLFriendsListLoaded()) {
        return 1;
    }
    const std::int32_t count = live->GetGLFriendsCount();
    for (std::int32_t index = 0; index < count; ++index) {
        const char* name = live->GetGLFriendsName(index);
        GLFriendInfo info;
        info.name = name != nullptr ? name : "";
        const char* number = live->GetGLFriendsNumber(index);
        info.number = number != nullptr ? number : "";
        info.online = live->GetGLFriendState(index) == 2;
        info.invited = false;
        live->AddFriendInGameList(std::move(info));
    }
    live->GLFriendsListLoaded(true);
    return 1;
}

// 0x49a808 _ZN19MultiplayerCallback16HandlePlayerLeftEPv
// While the current Level is loaded (m_loadStep > 35), the internal player-left event (3145731 = 0x300003) is read
// from CNetPlayerManager::internal_events_ (+0x180). The room-zone list at ObjectManager::unk_100 (+0x100, a
// std::list<ObjectBase*> whose sentinel is the +0x100 member) is walked to count its entries (asm 0x49a880..0x49a88c),
// then the loop asks GetObjectHandleByNetworkId for index 0..count-1 and, for an entry that converts to a Character
// (ObjectHandle::operator Character*, 0x33ff54) that is not null, answers IsPlayer() (vtable +0x28) and whose
// m_netInternalId (+0x1f8c, LDR R3,[R9,R10] with R10 = 0x1F8C) equals the event's member id, calls
// PlayerManager::RemoveCharacter. The loop ends after the entry whose index reaches the count, or immediately when a
// removal lands on the last index. With at most three players left (GetPlayerCount() <= 3) the matching object's
// virtual slot +0x44 is invoked with 1, and the event is consumed.
namespace {

// The original is `LDR PC,[R3,#0x44]` on the CMatching object (asm 0x49a94c). That slot has no name in the tree:
// c_matching_base.hpp's vtable sketch places +0x44 at OpenRoom, which is a room-lobby call and does not read as a
// "few players left" notification, so no name is adopted. The slot offset is reproduced instead.
void CallMatchingSlot44(CMatching* matching, int argument) {
    // vtable +0x44 is CMatching::OpenRoom(bool) in the binary's vtables (c_matching_base.hpp); a typed virtual call
    // keeps the slot right on a 64-bit host, where the byte offset +0x44 is not slot 17.
    if (matching != nullptr) {
        matching->OpenRoom(argument != 0);
    }
}

}  // namespace

std::int32_t MultiplayerCallback::HandlePlayerLeft(void* /*message*/) {
    Level* level = GSLevel::s_level;
    if (level != nullptr && level->m_loadStep > 35) {
        std::int32_t memberId = -1;
        CNetPlayerManager* manager = GetNetPlayerMgr();
        manager->internal_events_.GetEventData(0x300003, &memberId, 4);  // 3145731, +0x180
        ObjectManager* objects = dword_99F764;
        const std::list<ObjectBase*>& zones = objects->unk_100;  // +0x100
        if (!zones.empty()) {
            std::uint32_t count = 0;
            for (auto it = zones.begin(); it != zones.end(); ++it) {
                ++count;
            }
            for (std::uint32_t index = 0; index != count; ++index) {
                ObjectHandle handle = objects->GetObjectHandleByNetworkId(static_cast<int>(index));
                Character* character = static_cast<Character*>(handle);
                if (character == nullptr || !character->IsPlayer() || character->m_netInternalId != memberId) {
                    continue;
                }
                ApplicationGetInstance().m_playerManager->RemoveCharacter(character);
                if (index + 1 == count) {
                    break;
                }
            }
        }
        if (manager->GetPlayerCount() <= 3) {
            CallMatchingSlot44(CMatching::Get(), 1);
        }
        manager->internal_events_.ConsumeEvent(0x300003);
    }
    return 0;
}

// 0x49a960 _ZN19MultiplayerCallback22HandleMenuReadyMessageEPv
// Only while the online state machine is in state 200 (lobby): the message is fetched and marked consumed (+0x3c). The
// original also builds two as_value numbers from the payload (+0x50 int, +0x54 byte) and drops them again without passing
// them to any call, so they have no effect and are not built here.
std::int32_t MultiplayerCallback::HandleMenuReadyMessage(void* /*message*/) {
    if (OnlineSingleton<OnlineGameState>::GetInstance()->GetState() == 200) {
        CMessaging::GetInstance()->GetMessageFromQueue("CMsgMenuReady")->SetFinished();  // +0x3c
    }
    return 0;
}

// 0x49a9fc _ZN19MultiplayerCallback19HandleIsHostMessageEPv
// The sender (CMessage header +0x0c) names the new host: its player (GetPlayerByMemberId(sender, 0, false)) gives the
// player id (+0x178), which becomes the manager's host member id (+0x170, with NetStructMember::SetChanged on +0x150
// when it differs); then the message is marked consumed (+0x3c).
std::int32_t MultiplayerCallback::HandleIsHostMessage(void* /*message*/) {
    CMessage* message = CMessaging::GetInstance()->GetMessageFromQueue("CMsgIsHost");
    const std::int32_t playerId =
        GetNetPlayerMgr()->GetPlayerByMemberId(message->Sender(), 0, false)->member_id_.GetValue();  // +0x178
    GetNetPlayerMgr()->net_struct_.host_member_id_.SetValue(playerId);  // compares, stores and SetChanged
    message->SetFinished();  // +0x3c
    return 0;
}

// 0x49aa60 _ZN19MultiplayerCallback24HandleSpawnObjectMessageEPv
// Re-verified against the 0x49aa60 disassembly (107 instructions) and rebuilt in full. The blockers the
// previous note named are all gone: ObjectManager::GetObjectHandleByNetworkId (0x3407a0), AssignObjectNetworkId
// (0x3431c0) and AddNoRoomObject (0x344184) are defined in
// game-world/src/g1-game-world-ObjectManager-5017c7-0.cpp / -1.cpp, and RoomZone::AddInitialObject (0x396a90)
// in game-world/src/g1-game-world-RoomZone-830132-0.cpp. The CMsgSpawnObject payload is named (c_msg_fixed.hpp).
// Order, from the listing: gate on Application::GetCurrentLevel() when m_loadStep (+0x130) is 38;
// GetObjectHandleByNetworkId(msg +0x50) -> GameObject (asm 0x49aad0..0x49aae8); when it resolves, the +0x68
// byte deletes the object (ObjectBase::Delete, asm 0x49aaf0..0x49aafc); when it does not resolve and +0x68 is
// clear, Character::CreateNPC(msg +0x54, nullptr, false) (asm 0x49ab04..0x49ab18), then
// GetObjectHandleByNetworkId(msg +0x58) -> GameObject (the summoner, asm 0x49ab2c), and when the NPC is non-null:
// SetInitialPosition(position = msg +0x5c/+0x60/+0x64), SetPosition(the NPC's initial position, true) (asm
// 0x49ab8c: R1 = NPC + 0x1450 = Character::m_initialPosition), SetRotation(rotation = summoner +0x16C/+0x170/
// +0x174), m_isNetSpawned (+0x14E4) = 1, SetVisible(true) (asm 0x49abb0..0x49abbc: R1 = 1 and the object's
// vtable +0x40, which GameObject.hpp:41 names SetVisible(bool)), AssignObjectNetworkId, then m_roomZone
// (+0x2F4) with AddInitialObject or AddNoRoomObject + unk_2ef (+0x2EF) = 1 + ZoneEntered. Every path writes the
// consumed flag (+0x3C) and returns 0.
// Deviation: none in behaviour; the +0x40 call is written as the named slot because the port declares the
// GameObject vtable order, and the listing's argument (R1 = 1) matches SetVisible(true).
std::int32_t MultiplayerCallback::HandleSpawnObjectMessage(void* /*message*/) {
    CMessage* message = CMessaging::GetInstance()->GetMessageFromQueue("CMsgSpawnObject");
    auto* spawn = static_cast<CMsgSpawnObject*>(message);
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level != nullptr && level->m_loadStep == 38) {
        ObjectManager* objects = dword_99F764;
        ObjectHandle existing = objects->GetObjectHandleByNetworkId(spawn->objectId_);  // +0x50
        GameObject* object = existing;
        if (object != nullptr) {
            if (spawn->unk_68 != 0) {   // +0x68: this object is to be removed
                object->Delete();
            }
        } else if (spawn->unk_68 == 0) {
            Character* npc = Character::CreateNPC(spawn->unk_54, nullptr, false);  // +0x54 is the NPC type
            ObjectHandle summonerHandle = objects->GetObjectHandleByNetworkId(spawn->unk_58);  // +0x58
            GameObject* summoner = summonerHandle;
            if (npc != nullptr) {
                const Point3D<float> position{spawn->unk_5c, spawn->unk_60, spawn->unk_64};
                const Point3D<float> rotation = summoner->m_rotation;  // +0x16c .. +0x174
                npc->SetInitialPosition(position);
                npc->SetPosition(npc->m_initialPosition, true);
                npc->SetRotation(rotation);
                npc->m_isNetSpawned = 1;   // +0x14e4
                npc->SetVisible(true);     // vtable +0x40 with argument 1 (GameObject.hpp:41)
                objects->AssignObjectNetworkId(npc);
                RoomZone* zone = summoner->m_roomZone;  // +0x2f4
                if (zone == nullptr || !zone->AddInitialObject(npc)) {
                    objects->AddNoRoomObject(npc);
                    npc->unk_2ef = 1;      // +0x2ef
                    npc->ZoneEntered();
                }
            }
        }
    }
    message->SetFinished();  // +0x3c
    return 0;
}

// 0x49ac18 _ZN19MultiplayerCallback17HandleLootMessageEPv
// Re-verified against the 0x49ac18 disassembly (85 instructions) and rebuilt in full. The blocker the previous
// note named is gone: ObjectManager::GetObjectHandleByNetworkId (0x3407a0) is defined. The CMsgDropLoot payload
// stays opaque on purpose (c_msg_drop_loot.hpp: header at +0x50, block length at +0x64, block at +0x68), so the
// words are read from GetDataPtr() at their original offsets.
// Order: gate on GetCurrentLevel() with m_loadStep 38 AND m_isLoaded (+0x144) set (asm 0x49ac58..0x49ac80);
// GetObjectHandleByNetworkId(payload +0x58) -> GameObject ("dropper", asm 0x49ac8c) and (payload +0x5c) ->
// GameObject ("killer"): when the payload byte at +0x50 is set, a new ItemInstance(payload +0x54, 1) is built,
// the dropper handle is re-resolved as a Character (asm 0x49acfc..0x49ad04), and with both non-null an
// ItemInventory takes the instance (AddItemInstance(instance, true, true)), the payload's power block (length at
// +0x64, block pointer at +0x68) is added word by word with AddPower(word, -1), CalcLootItemValue(item, 0) runs
// and ItemObject::DropInventory(inventory, killer, killer, nullptr). Otherwise
// ItemObject::DropLootTable(payload +0x54, payload +0x60). Every path writes the consumed flag (+0x3C) and
// returns 0.
// Deviations: (1) the original re-resolves the dropper handle through ObjectBase::GetHandle() and its Character
// conversion operator; the port casts the handle it already holds (`static_cast<Character*>(dropperHandle)`),
// which is the same ObjectHandle::operator Character* (0x33ff54) the port uses in HandlePlayerLeft; (2) the
// listing fills six argument slots for DropLootTable and the port's 5-argument overload
// (ItemObject.hpp declares the gap as an integrator decision) has no slot for both trailing values, so the int
// slot takes payload +0x60 and the bool slot takes true.
std::int32_t MultiplayerCallback::HandleLootMessage(void* /*message*/) {
    CMessage* message = CMessaging::GetInstance()->GetMessageFromQueue("CMsgDropLoot");
    std::uint8_t payload[0x18] = {};
    if (const void* data = message->GetDataPtr(); data != nullptr) {
        std::memcpy(payload, data, sizeof payload);
    }
    std::int32_t itemId = 0;      // +0x54
    std::int32_t length = 0;      // +0x64 (bytes of the power block)
    std::int32_t fixedCount = 0;  // +0x60 (used by DropLootTable)
    std::memcpy(&itemId, payload + 0x04, sizeof itemId);
    std::memcpy(&fixedCount, payload + 0x10, sizeof fixedCount);
    std::memcpy(&length, payload + 0x14, sizeof length);
    const std::uint8_t kind = payload[0];  // +0x50

    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level != nullptr && level->m_loadStep == 38 && level->m_isLoaded) {
        std::int32_t objectNetworkId = 0;  // +0x58
        std::int32_t killerNetworkId = 0;  // +0x5c
        const void* block = nullptr;       // +0x68
        std::memcpy(&objectNetworkId, payload + 0x08, sizeof objectNetworkId);
        std::memcpy(&killerNetworkId, payload + 0x0c, sizeof killerNetworkId);
        if (message->GetDataPtr() != nullptr) {
            block = static_cast<const std::uint8_t*>(message->GetDataPtr()) + 0x18;  // +0x68
        }
        ObjectManager* objects = dword_99F764;
        ObjectHandle dropperHandle = objects->GetObjectHandleByNetworkId(objectNetworkId);  // +0x58
        GameObject* dropper = dropperHandle;
        ObjectHandle killerHandle = objects->GetObjectHandleByNetworkId(killerNetworkId);   // +0x5c
        GameObject* killer = killerHandle;
        if (kind != 0) {
            ItemInstance* item = new ItemInstance(itemId, 1);
            Character* owner = static_cast<Character*>(dropperHandle);
            if (item != nullptr && owner != nullptr) {
                ItemInventory inventory;
                const unsigned int index = static_cast<unsigned int>(inventory.AddItemInstance(item, true, true));
                ItemInstance* added = inventory.GetItem(index);
                if (added != nullptr) {
                    const auto* powers = static_cast<const std::int32_t*>(block);
                    const std::int32_t count = length / static_cast<std::int32_t>(sizeof(std::int32_t));
                    for (std::int32_t i = 0; i < count; ++i) {
                        added->AddPower(powers[i], -1);
                    }
                    ItemInventory::CalcLootItemValue(added, 0);
                    ItemObject::DropInventory(inventory, owner, owner, nullptr);
                }
            }
        } else {
            ItemObject::DropLootTable(itemId, dropper, killer, fixedCount, true);
        }
    }
    message->SetFinished();  // +0x3c
    return 0;
}

// 0x49ade0 _ZN19MultiplayerCallback19HandleAttackMessageEPv
// Re-verified against the 0x49ade0 disassembly (72 instructions) and rebuilt in full. Both blockers the previous
// note named are gone: ObjectManager::GetObjectHandleByNetworkId (0x3407a0) is defined, and c_msg_fixed.hpp no
// longer declares a second CMsgAttackResult (c_msg_attack_result.hpp:1 records the single definition), so its
// typed payload is used.
// Order: the sender (+0x0C) names the attacker's player record (CNetPlayerManager::GetPlayerByMemberId, asm
// 0x49ae10) and the handler returns at once unless that record answers its vtable +0x5C virtual -- PlayerInfo's
// IsActive (PlayerInfo.hpp slot 23). The record's player id (+0x178) is resolved with
// PlayerManager::GetPlayerByInternalID(id, false) and its Character (+0x660) must be non-null (asm
// 0x49ae6c..0x49ae78). Then GetCurrentLevel() with m_loadStep 38 and m_isLoaded (+0x144), and the level tag at
// payload +0x50 must equal Level +0x3C (m_levelListIndex) (asm 0x49aea8..0x49aeb8).
// GetObjectHandleByNetworkId(payload +0x7C, short) -> GameObject (attacker, asm 0x49aec4) and (payload +0x7E,
// short) -> Character (defender, asm 0x49aee0..0x49aeec); both must be non-null. With the payload byte at +0x80
// set the attacker is a Character and the call is Character::F_ApplyResult(payload +0x54, attacker, defender,
// true) 0x3b10b4 (asm 0x49af24), otherwise Character::F_ApplyResult(..., GameObject*, Character*, true)
// 0x3b01b8 (asm 0x49af60). Last: when the defender's updating flag (ObjectBase +0x85) is clear and its
// m_netOwnerId (+0x110) is -1, the owner id becomes the message sender (+0x0C) and the owner timer (+0x114) is
// cleared. Every path writes the consumed flag (+0x3C) and returns 0.
// Deviation: as in the original, the handle -> Character* conversion for the defender and the
// GameObject* -> Character* reinterpretation on the Character branch are the port's ObjectHandle::operator
// Character* (0x33ff54) and an implicit upcast.
std::int32_t MultiplayerCallback::HandleAttackMessage(void* /*message*/) {
    CMessage* message = CMessaging::GetInstance()->GetMessageFromQueue("CMsgAttackResult");
    auto* attack = static_cast<CMsgAttackResult*>(message);
    CNetPlayerManager* manager = GetNetPlayerMgr();
    CNetPlayerInfo* sender = manager->GetPlayerByMemberId(message->Sender(), 0, false);
    if (sender == nullptr || !sender->IsActive()) {  // vtable +0x5c
        message->SetFinished();                      // +0x3c
        return 0;
    }
    PlayerInfo* senderInfo = ApplicationGetInstance().m_playerManager->GetPlayerByInternalID(
        manager->GetPlayerByMemberId(message->Sender(), 0, false)->member_id_.GetValue(), false);  // +0x178
    if (senderInfo->unk_660 == nullptr) {  // +0x660
        message->SetFinished();
        return 0;
    }
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr || level->m_loadStep != 38 || !level->m_isLoaded) {
        message->SetFinished();
        return 0;
    }
    if (attack->levelTag_ != level->m_levelListIndex) {  // Level +0x3c
        message->SetFinished();
        return 0;
    }
    ObjectManager* objects = dword_99F764;
    ObjectHandle attackerHandle = objects->GetObjectHandleByNetworkId(attack->first_);   // +0x7c
    GameObject* attacker = attackerHandle;
    ObjectHandle defenderHandle = objects->GetObjectHandleByNetworkId(attack->second_);  // +0x7e
    Character* defender = static_cast<Character*>(defenderHandle);
    if (attacker == nullptr || defender == nullptr) {
        message->SetFinished();
        return 0;
    }
    if (attack->flag_) {   // +0x80: the attacker is a Character
        Character::F_ApplyResult(attack->result_, static_cast<Character*>(attacker), defender, true);
    } else {
        Character::F_ApplyResult(attack->result_, attacker, defender, true);
    }
    if (defender->unk_85 == 0 && defender->m_netOwnerId == -1) {  // +0x85, +0x110
        defender->m_netOwnerId = message->Sender();               // +0x110
        defender->unk_114 = 0.0f;                                 // +0x114
    }
    message->SetFinished();  // +0x3c
    return 0;
}

// 0x49af74 _ZN19MultiplayerCallback23HandleQuestsSyncMessageEPv
// On a server the handler asserts (ASSERT trace at MultiplayerCallbacks.cpp:562, recovered from the pseudocode). At gAssertLevel 2 the
// original stores to address 0 to fault; the port aborts instead. Off the server the block goes to
// PlayerManager::HandleQuestSyncMsg.
std::int32_t MultiplayerCallback::HandleQuestsSyncMessage(void* /*message*/) {
    auto* message = static_cast<CMsgQuestsSync*>(CMessaging::GetInstance()->GetMessageFromQueue("CMsgQuestsSync"));
    COnline* online = GetOnline();
    if (online->IsServer()) {
        if (gAssertLevel == 2) {
            std::abort();  // the original faults on a store to address 0
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "false",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Multiplayer\\MultiplayerCallbacks.cpp", 562);
        }
    } else {
        PlayerManager* players = ApplicationGetInstance().m_playerManager;  // dword_99F76C = s_inst +0x40
#ifdef DH2_HOST_RUNNER
        if (std::getenv("DH2_NET_TRACE") != nullptr) {
            DH2_NET_LOG("[net] HandleQuestsSyncMessage message %p block %p size %d\n", static_cast<void*>(message), static_cast<const void*>(message ? message->BlockData() : nullptr),
                         message ? message->BlockSizeValue() : -1);
        }
#endif
        players->HandleQuestSyncMsg(message->BlockData(), message->BlockSizeValue());
    }
    message->SetFinished();  // +0x3c
    return 0;
}

// 0x49b054 _ZN19MultiplayerCallback20HandleInitialMessageEPv
// CMsgInitialSetup has no named fields yet, so the three payload words (original +0x50, +0x54, +0x58) are read through GetDataPtr
// as raw 32-bit words and their bits become the Point3D<float> position.
std::int32_t MultiplayerCallback::HandleInitialMessage(void* /*message*/) {
    CMessage* message = CMessaging::GetInstance()->GetMessageFromQueue("CMsgInitialSetup");
    std::uint32_t words[3] = {0, 0, 0};
    if (const void* payload = message->GetDataPtr(); payload != nullptr) {
        std::memcpy(words, payload, sizeof words);
    }
    PlayerManager* players = ApplicationGetInstance().m_playerManager;  // dword_99F76C = s_inst +0x40
    if (!players->IsLocalPlayerHosting()) {
        Point3D<float> position{};
        std::memcpy(&position, words, sizeof position);
        players->InitialSetup(position);
    }
    message->SetFinished();  // +0x3c
    return 0;
}

// 0x49b0d8 _ZN19MultiplayerCallback22HandleStartGameMessageEPv
// While the current Level is not loaded (m_loadStep != 38): a message for the level that is loading is consumed; otherwise
// a local player that has finished loading moves load step 36 on to 37 and PlayerManager::Update runs (+0x6c9 cleared);
// the handler leaves until the level is loaded. A loaded level out of the game view pops the multi-menu once and reloads
// the local character's skills, and every loaded level saves all players. The payload (levelListIndex, entryPointId,
// resume, useSpawnPoint, difficulty, seed, syncedSeed, host matching id) then selects the start: a host id of -1 starts for
// everybody; otherwise only the player whose matching id is the host id starts (the message is consumed once the local
// member id is known). The state machine goes to 300, the save slot is the local player's (a Game Center game at or past
// the next free slot falls back to 0), +0x4c is cleared and Application::LoadLevel runs with the level file of
// Arrays::LevelList row levelListIndex (element +0x20).
// Deviation: the original asserts "levelID >= 0" (MultiplayerCallbacks.cpp:397) and then indexes the table with a negative
// index (at gAssertLevel 2 it stores to address 0 first); here the assert text is printed at level 1 and the handler returns
// without loading.
std::int32_t MultiplayerCallback::HandleStartGameMessage(void* /*message*/) {
    auto* message = static_cast<CMsgStartGame*>(CMessaging::GetInstance()->GetMessageFromQueue("CMsgStartGame"));
    Application& app = ApplicationGetInstance();
    Level* level = app.GetCurrentLevel();
    if (level != nullptr) {
        PlayerManager* players = app.m_playerManager;
        if (level->m_loadStep != 38) {
            if (message->Payload().levelListIndex == level->m_levelListIndex) {  // +0x50 against Level +0x3c
                message->SetFinished();  // +0x3c
            } else if (players->GetLocalPlayer(0, false)->m_doneLoading.GetValue()) {  // +0x525
                if (level->m_loadStep == 36) {
                    ++level->m_loadStep;
                }
                players->unk_6c9 = 0;  // +0x6c9
                players->Update();
            }
            if (level->m_loadStep != 38) {
                return 0;
            }
        }
        if (!level->m_isInGameView && level->m_loadStep == 38) {  // Level +0x198
            app.m_menuManager->m_multiMenuManager->PopMenu(true);  // MenuManager +0xf4, vtable +0x38
            if (Character* character = players->GetLocalPlayer(0, true)->unk_660) {
                character->ReloadSkills();
            }
        }
        if (level->m_loadStep == 38) {
            level->SG_SaveAllPlayer(false);
        }
    }
    const CMsgStartGame::Fields fields = message->Payload();
    if (fields.hostMatchingId == -1) {
        message->SetFinished();  // +0x3c
    } else {
        if (CMatching::Get()->LocalMemberId() == -1) {  // vtable +0x6c
            return 0;
        }
        message->SetFinished();
        if (fields.hostMatchingId != GetNetPlayerMgr()->GetLocalPlayer(0)->matching_member_id_.GetValue()) {  // +0x1a0
            return 0;
        }
    }
    if (fields.levelListIndex < 0) {
        if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "levelID >= 0",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Multiplayer\\MultiplayerCallbacks.cpp", 397);
        }
        return 0;
    }
    OnlineGameState* state = OnlineSingleton<OnlineGameState>::GetInstance();
    state->SetState(300);
    std::int32_t slot = app.m_playerManager->GetLocalPlayer(0, false)->unk_664;  // +0x664
    if (state->mode_ == 4) {
        if (slot < 0 || static_cast<std::int32_t>(PlayerSavegame::SG_GetNextFreeSlot()) <= slot) {
            slot = 0;
        }
    }
    state->flag4c_ = false;  // +0x4c
    const auto* rows = static_cast<const Structs::LevelDeclaration*>(static_cast<const void*>(Arrays::LevelList::members));
    const char* levelFile = static_cast<const char*>(rows[fields.levelListIndex].LevelFile);  // element +0x20
    app.LoadLevel(levelFile, fields.entryPointId, static_cast<std::uint32_t>(slot), fields.resume != 0,
                  fields.useSpawnPoint != 0, fields.difficulty, true, static_cast<std::uint32_t>(fields.seed),
                  static_cast<std::uint32_t>(fields.syncedSeed));
    return 0;
}

// 0x49b3c8 _ZN19MultiplayerCallback15roomLobbyUpdateEPv
// Re-verified against the 0x49b3c8 disassembly (39 instructions) and rebuilt in full. The blockers the previous
// note named are all gone: RenderFX::InvokeASCallback (0x7abe0c) is defined (game-ui and game-app bodies use
// it), MenuManager::GetMenuByName is live, and the OnlineGameState byte at +0x28 is declared in
// online_game_state.hpp as flag28_. The gate also reads COnline's online-game flag (+0x05), which is declared
// (COnline) and reached through GetOnlineGameFlag() in this port the same way other net-session bodies reach it.
// Order, from the listing: CMatching::Get()->GetRoomAttributes() (vtable +0xA4: the base declares this slot at
// +0xA4, so no offset workaround is needed) and GetAttributeInt(7) (asm 0x49b3d0..0x49b3e4); GetOnline()->+0x05
// must be set and the attribute zero, else the function returns 100 (asm 0x49b3ec..0x49b408);
// OnlineSingleton<OnlineGameState>::GetInstance()->flag28_ (+0x28) must be clear (asm 0x49b410..0x49b41c);
// MenuManager::GetInstance()->GetMenuByName("menu_MultiplayerJoin") (asm 0x49b420..0x49b42c) gives a MenuBase
// whose m_character (+0x4C, after the weak_ptr proxy at +0x48 is checked) is the movie character; then
// GetMenuByName(menu->m_name) (asm 0x49b440..0x49b448) must be non-null; and finally the menu's own RenderFX
// (+0x04) invokes "RefreshServers" on that character with no arguments (asm 0x49b454..0x49b46c). Returns 100.
std::int32_t MultiplayerCallback::roomLobbyUpdate(void* /*context*/) {
    CRoomAttributes* attributes = CMatching::Get()->GetRoomAttributes();  // vtable +0xa4
    const std::int32_t attributeValue = attributes->GetAttributeInt(ROOM_INT_ATTRIBUTE_7);
    // The binary goes on only when COnline's flag is set AND attribute 7 is zero (asm: `if (online+5) { if (!attr) {...} }`).
    // WHAT THE OLD BODY GOT WRONG: it returned for attribute 0, the value a LAN room has, so "RefreshServers" never ran: a joiner's
    // server list stayed as it was on entering the page (empty) and the host lobby never listed the joiner.
    if (!GetOnlineGameFlag() || attributeValue != 0) {
        return 100;
    }
    if (OnlineSingleton<OnlineGameState>::GetInstance()->flag28_) {  // +0x28
        return 100;
    }
    MenuBase* menu = MenuManager::GetInstance()->GetMenuByName("menu_MultiplayerJoin");
    if (menu == nullptr) {
        return 100;
    }
    gameswf::character* character = menu->m_character;  // +0x4c, after the +0x48 weak_ptr proxy check
    if (MenuManager::GetInstance()->GetMenuByName(menu->m_name) == nullptr) {
        return 100;
    }
    menu->m_menu->InvokeASCallback(character, "RefreshServers", nullptr, 0);  // the menu's RenderFX at +0x04
    return 100;
}

// 0x49b47c _ZN19MultiplayerCallback11lobbyUpdateEPv
// Re-verified against the 0x49b47c disassembly (57 instructions) and rebuilt in full; the blockers the previous
// note named are gone (RenderFX::InvokeASCallback is defined, COnline's online-game flag is reachable through
// GetOnlineGameFlag(), and OnlineGameState +0x28 is declared as flag28_). The player check does NOT need
// PlayerManager::GetLocalPlayer's list: the listing reads the local player's ingame flag instead, which is the
// NetStructBool PlayerInfo::m_ingame (block +0x4c8, value at +0x4e5; PlayerInfo.hpp:83).
// Order: CMatching::Get()->GetRoomAttributes() (vtable +0xA4) -> GetAttributeInt(7) (asm 0x49b484..0x49b498);
// COnline's +0x05 must be set and the attribute zero, else return 200 (asm 0x49b4a0..0x49b4c8); flag28_ (+0x28)
// must be clear (asm 0x49b4cc..0x49b4d8); CMatching::Get()'s IsInRoom() -- binary vtable +0x64, must be
// true (asm 0x49b4dc..0x49b4f0); the local player's m_ingame must be clear (asm 0x49b4f4..0x49b514); then
// MenuManager::GetMenuByName("menu_MultiplayerLobby") with its m_character (+0x4C, after the +0x48 proxy check)
// and a non-null GetMenuByName(menu->m_name) (asm 0x49b518..0x49b54c); and the menu's RenderFX (+0x04) invokes
// "updatePlayerList" on that character with no arguments (asm 0x49b550..0x49b568). Returns 200.
std::int32_t MultiplayerCallback::lobbyUpdate(void* /*context*/) {
    CRoomAttributes* attributes = CMatching::Get()->GetRoomAttributes();  // vtable +0xa4
    const std::int32_t attributeValue = attributes->GetAttributeInt(ROOM_INT_ATTRIBUTE_7);
    // The binary goes on only when COnline's flag is set AND attribute 7 is zero (asm: `if (online+5) { if (!attr) {...} }`).
    // WHAT THE OLD BODY GOT WRONG: it returned for attribute 0, the value a LAN room has, so "updatePlayerList" never ran: a joiner's
    // server list stayed as it was on entering the page (empty) and the host lobby never listed the joiner.
    if (!GetOnlineGameFlag() || attributeValue != 0) {
        return 200;
    }
    if (OnlineSingleton<OnlineGameState>::GetInstance()->flag28_) {  // +0x28
        return 200;
    }
    if (!CMatching::Get()->IsInRoom()) {  // binary vtable +0x64
        return 200;
    }
    PlayerInfo* local = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, false);
    if (local->m_ingame.GetValue() != 0) {  // value at +0x4e5
        return 200;
    }
    MenuBase* menu = MenuManager::GetInstance()->GetMenuByName("menu_MultiplayerLobby");
    if (menu == nullptr) {
        return 200;
    }
    gameswf::character* character = menu->m_character;  // +0x4c
    if (MenuManager::GetInstance()->GetMenuByName(menu->m_name) == nullptr) {
        return 200;
    }
    menu->m_menu->InvokeASCallback(character, "updatePlayerList", nullptr, 0);
    return 200;
}

// 0x49b580 _ZN19MultiplayerCallback19searchRoomPushNotifEPv
// 0x66 when the online gate (+0x24) is clear; +0x25 cleared; a filter with attribute 1 = 0xFEEDABBA and attribute 2 =
// Application::GetVersionNumber() (both operator equal) goes, as a copy, to CMatching::SearchRoom(copy, true, 0); in mode 3
// (+0x34) the GL Live friends are loaded. Returns 0x64.
std::int32_t MultiplayerCallback::searchRoomPushNotif(void* /*context*/) {
    OnlineGameState* state = OnlineSingleton<OnlineGameState>::GetInstance();
    if (!state->flag24_) {
        return 0x66;
    }
    state->flag25_ = false;  // +0x25
    CRoomSearchFilter filter;
    filter.SetSearchAttributeInt(ROOM_INT_ATTRIBUTE_1, kOpEqual, static_cast<std::int32_t>(0xFEEDABBAu));
    filter.SetSearchAttributeInt(ROOM_INT_ATTRIBUTE_2, kOpEqual, ApplicationGetInstance().GetVersionNumber());
    CMatching::Get()->SearchRoom(filter, true, 0);
    if (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ == 3) {
        LoadGLLiveFriends();
    }
    return 0x64;
}

// 0x49b660 _ZN19MultiplayerCallback10searchRoomEPv
// Reconstructed from the 86-instruction listing. 0x66 when the gate (+0x24) is clear; +0x25 cleared; the local
// player's save slot (PlayerInfo +0x664, -1 falls back to SavegameManager +0x08) builds a PlayerSavegame
// (load mode 0x11); difficulty = PlayerSavegame::m_difficultyLevel; the level id is the quest log word at
// +0x44 + 4 * difficulty (QuestSavegame::m_act). MenuManager::GetRoot() invokes the "GetCurrentDifficulty"
// callback on its root movie (the result is discarded: the listing overwrites r0). The filter: when mode_
// (+0x34) == 2 only attribute 4 (SavegameManager +0x0c, operator 0); otherwise attributes 1 (0xFEEDABBA) and 2
// (GetVersionNumber) and then attribute 4. Attribute 5 is always the level id with operator 3. The filter copy
// goes to CMatching::SearchRoom(copy, true, 0); mode_ == 3 then calls LoadGLLiveFriends(). Returns 0x64.
std::int32_t MultiplayerCallback::searchRoom(void* /*context*/) {
    if (!OnlineSingleton<OnlineGameState>::GetInstance()->flag24_) {
        return 0x66;
    }
    OnlineSingleton<OnlineGameState>::GetInstance()->flag25_ = false;  // +0x25
    Application& app = ApplicationGetInstance();
    PlayerInfo* local = app.m_playerManager->GetLocalPlayer(0, false);
    std::uint32_t slot = static_cast<std::uint32_t>(local->unk_664);  // +0x664 save slot
    if (local->unk_664 == -1) {
        slot = static_cast<std::uint32_t>(app.m_savegameManager->m_lastSlot);  // dword_99F778 + 8
    }
    PlayerSavegame savegame(slot, 0x11, false);
    const std::int32_t difficulty = PlayerSavegame::m_difficultyLevel;
    const std::int32_t levelId = savegame.SG_GetQuestSG()->m_act[difficulty];  // quest log +0x44 + 4 * difficulty
    if (MenuFX* root = app.m_menuManager->GetRoot()) {
        root->InvokeASCallback(root->RenderFX::GetRoot()->get_root_movie(), "GetCurrentDifficulty", nullptr, 0);
    }
    const std::int32_t partyValue = app.m_savegameManager->unk_0c;  // dword_99F778 + 0x0c
    CRoomSearchFilter filter;
    if (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ != 2) {
        filter.SetSearchAttributeInt(ROOM_INT_ATTRIBUTE_1, kOpEqual, static_cast<std::int32_t>(0xFEEDABBAu));
        filter.SetSearchAttributeInt(ROOM_INT_ATTRIBUTE_2, kOpEqual, app.GetVersionNumber());
    }
    filter.SetSearchAttributeInt(ROOM_INT_ATTRIBUTE_4, kOpEqual, partyValue);
    filter.SetSearchAttributeInt(ROOM_INT_ATTRIBUTE_5, kOpLessEqual, levelId);
    CMatching::Get()->SearchRoom(filter, true, 0);
    if (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ == 3) {
        LoadGLLiveFriends();
    }
    return 0x64;
}

// 0x49b990 _ZN19MultiplayerCallback20HandleMenuBackButtonEPv
// The menu name at OnlineGameState +0x30 moves to +0x38 and +0x30 is cleared; with a name set, the leaving menu decides:
//  - menu_Multiplayer_Game_Type, menu_Multiplayer, menu_Multiplayer2, menu_MultiLogin, menu_GameCenter: mode 1 (local)
//    returns to the default provider (Terminate, online game off); mode 2 or 4 does the same; mode 3 (GL Live) cancels the
//    login and, with +0x26 clear, clears +0x26/+0x27.
//  - menu_MultiplayerLobby: unless a GL Live/Game Center lobby is already starting (mode 3 or 4 with +0x28 set) the
//    server closes the room, leaves it, goes to state 100 (and clears +0x4d in mode 3); a client leaves the room and goes to
//    state 100 (mode 2) or 102.
//  - menu_MultiLogin: default provider, online game off, +0x26/+0x27 cleared.
//  - menu_VerificationLoading: a login still in progress is cancelled and the main menu event 0 is raised; a matching object
//    in a room leaves it; a Game Center game with the feature gate resets the player list; the Game Center start flag
//    raises main menu event 0.
// Both invitation flags are cleared at the end. Returns 0.
std::int32_t MultiplayerCallback::HandleMenuBackButton(void* /*message*/) {
    OnlineGameState* state = OnlineSingleton<OnlineGameState>::GetInstance();
    const char* menu = state->menuName30_;
    state->menuName38_ = menu;
    state->menuName30_ = nullptr;
    if (menu == nullptr) {
        return 0;
    }
    auto is = [menu](const char* name) { return std::strcmp(menu, name) == 0; };
    Application& app = ApplicationGetInstance();
    auto resetProvider = []() {
        CMatching::SetMatchingProvider(static_cast<CMatching::MATCHING_PROVIDERS>(0));
        CMatching::Get()->Terminate();  // vtable +0x2c
        GetOnline()->SetIsOnlineGame(false);
    };
    if (is("menu_Multiplayer_Game_Type") || is("menu_Multiplayer") || is("menu_Multiplayer2") || is("menu_MultiLogin") ||
        is("menu_GameCenter")) {
        if (state->mode_ == 1) {
            CMatching::Get();
            resetProvider();
        }
        if (state->mode_ == 2 || state->mode_ == 4) {
            CMatching::Get();
            resetProvider();
        } else if (state->mode_ == 3) {
            CSignIn::Get()->CancelLogin();  // vtable +0x18
            if (!state->flag26_) {
                state->flag26_ = false;
                state->flag27_ = false;
            }
        }
    }
    if (is("menu_MultiplayerLobby")) {
        if ((state->mode_ != 3 && state->mode_ != 4) || !state->flag28_) {
            if (CMatching::Get()->IsServer()) {
                CMatching::Get()->LeaveRoom();  // vtable +0x3c
                CMatching::Get()->CloseRoom();  // vtable +0x48
                state->SetState(100);
                if (state->mode_ == 3) {
                    state->flag4d_ = false;
                }
            } else {
                CMatching::Get()->LeaveRoom();
                state->SetState(state->mode_ == 2 ? 100 : 102);
            }
        }
    }
    if (is("menu_MultiLogin")) {
        CMatching::Get();
        resetProvider();
        state->flag26_ = false;
        state->flag27_ = false;
    }
    if (is("menu_VerificationLoading")) {
        if (!CSignIn::Get()->LoggedIn()) {  // +0x11
            CSignIn::Get()->CancelLogin();
            app.GoToMainMenu(static_cast<GoToMainMenuEvent>(0));
        }
        if (CMatching::Get()->IsInRoom()) {  // vtable +0x64
            CMatching::Get()->LeaveRoom();
        }
        GameCenter* center = GCSingleton<GameCenter>::GetInstance();
        if (state->mode_ == 4 && center->gateFlag_ && center->featuresEnabled_) {  // +0x05, +0x07
            center->ResetPlayerList();
        }
        if (GCSingleton<GameCenter>::GetInstance()->startFlag_) {  // +0x11
            app.GoToMainMenu(static_cast<GoToMainMenuEvent>(0));
        }
    }
    byte_99F81A = 0;
    byte_99F83A = 0;
    return 0;
}

// 0x49c5e4 _ZN19MultiplayerCallback15HandleScriptCmdEPv
// All cases (case 3 is the dialog skip on the MenuMessageManager<DialogMsg, 1> queue). The command and its two arguments are the
// three payload words (original +0x50, +0x54, +0x58), read through GetDataPtr since CMsgScriptCmd has no named fields.
std::int32_t MultiplayerCallback::HandleScriptCmd(void* /*message*/) {
    CMessage* message = CMessaging::GetInstance()->GetMessageFromQueue("CMsgScriptCmd");
    std::uint32_t words[3] = {0, 0, 0};
    if (const void* payload = message->GetDataPtr(); payload != nullptr) {
        std::memcpy(words, payload, sizeof words);
    }
    const auto command = static_cast<std::int32_t>(words[0]);
    const auto arg1 = static_cast<std::int32_t>(words[1]);
    const auto arg2 = static_cast<std::int32_t>(words[2]);
    if (message->IsFrom(CMatching::Get()->LocalMemberId())) {
        message->SetFinished();  // +0x3c (the original's LABEL_9)
        return 0;                // the local member sent it: nothing to do
    }
    switch (command) {
        case 0:
            ScriptManager::s_inst.StartScript(arg1, arg2, true);
            break;
        case 1:
            ScriptManager::s_inst.SkipScript(arg1, true);
            break;
        case 2:
            ScriptManager::s_inst.StopScript(arg1, true);
            break;
        case 3: {
            // A client skips the current dialog line: pop it, run the skip function, and start the next line if any.
            MenuMessageManager<DialogMsg, 1>& dialogs = MenuMessageManager<DialogMsg, 1>::s_inst;
            if (!ApplicationGetInstance().m_playerManager->IsLocalPlayerHosting() && !dialogs.m_queues[0].empty()) {
                dialogs.m_queues[0].pop_front();
                if (DialogMsg::s_SkipFuncName != nullptr) {
                    dialogs.Invoke(DialogMsg::s_SkipFuncName, 0);
                }
                if (!dialogs.m_queues[0].empty()) {
                    dialogs.Invoke(DialogMsg::s_StartFuncName[0], 0);
                }
            }
            break;
        }
        case 4:
            if (!GetOnline()->IsServer() && ApplicationGetInstance().m_playerManager->unk_71a) {
                ScriptManager::s_inst.StartScript(arg1, arg2, true);
                ScriptManager::s_inst.SkipScript(arg1, true);
            }
            break;
        default:
            break;
    }
    message->SetFinished();  // +0x3c
    return 0;
}

// 0x49c7b4 _ZN19MultiplayerCallback8joinRoomEPv
// Reconstructed from the 42-instruction listing. 0x67 when the online gate (+0x24) is clear. The word at +0x30 is
// read first (here the index of the chosen room). When CMatching::Get()->IsInRoom() (vtable +0x64) the current
// room is left (LeaveRoom, vtable +0x3c). The room list is the tRoomInfo vector at +0x50, or, when mode_ (+0x34)
// is 2, the matching object GetRoomList (vtable +0x90, CMatchingGLLive::GetRoomList). The room id is the int64 at
// the head of the 0x3c8-byte element at the chosen index, and CMatching::JoinRoom(roomId) is called. Returns 0xC8.
// Host-necessitated deviation: the original indexes the list without a range check; an index outside it joins id 0.
std::int32_t MultiplayerCallback::joinRoom(void* /*context*/) {
    if (!OnlineSingleton<OnlineGameState>::GetInstance()->flag24_) {
        return 0x67;
    }
    const std::int32_t roomIndex = OnlineSingleton<OnlineGameState>::GetInstance()->roomIndex30();
    if (CMatching::Get()->IsInRoom()) {
        CMatching::Get()->LeaveRoom();
    }
    std::vector<tRoomInfo> rooms;
    if (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ == 2) {
        rooms = CMatching::Get()->GetRoomList();
    } else {
        rooms = OnlineSingleton<OnlineGameState>::GetInstance()->RoomInfos();
    }
    std::uint64_t roomId = 0;
    if (roomIndex >= 0 && static_cast<std::size_t>(roomIndex) < rooms.size()) {
        roomId = static_cast<std::uint64_t>(rooms[static_cast<std::size_t>(roomIndex)].roomId);
    }
    DH2_NET_TRACE_LOG("[mp] joinRoom index %d of %zu -> room id %llu\n", roomIndex, rooms.size(), static_cast<unsigned long long>(roomId));
    CMatching::Get()->JoinRoom(roomId);
    return 0xC8;
}

// 0x49c8c0 _ZN19MultiplayerCallback10createRoomEPv
// 101 while the online gate (+0x24) is clear. Otherwise: the local player's save slot (PlayerInfo +0x664, -1 falls back to
// SavegameManager +0x08) is loaded as a PlayerSavegame (mode 1); the menu root's "GetCurrentDifficulty" callback runs
// (result discarded); the chosen difficulty (SavegameManager +0x0c) becomes the current difficulty when it is not above
// the unlocked one. The host name is the GL Live user name (mode 3) or the savegame's player name; the seed is the saved
// seed of the difficulty, or the real-time clock when it is zero or the DontUsePlayerSeed switch is on (and is saved back);
// "<seed> <seed>" becomes the seed text. The savegame is reloaded (mode 16) and the quest of the difficulty read. Mode 2
// sets the int attributes 5, 6, 4 and the name (bin 3); the other modes set attributes 1 (0xFEEDABBA), 2 (the version),
// 3 (the saved level id), 4, 5, 6, 7 (0), the name (bin 3, 32 bytes) and the seed text (bin 4). CMatching::CreateJoinRoom(true,
// attributes) runs, +0x25 is set, and in mode 3 the creation time (+0x44) and +0x4d are set and the GL Live friends loaded.
// Returns 100.
// Deviation: the host name is copied into the 32-byte attribute buffer with a bounded copy (the original strcpy overflows
// it for a name of 32 or more characters).
std::int32_t MultiplayerCallback::createRoom(void* /*context*/) {
    OnlineGameState* state = OnlineSingleton<OnlineGameState>::GetInstance();
    if (!state->flag24_) {
        return 101;
    }
    CRoomAttributes attributes;
    Application& app = ApplicationGetInstance();
    PlayerInfo* local = app.m_playerManager->GetLocalPlayer(0, false);
    std::uint32_t slot = static_cast<std::uint32_t>(local->unk_664);  // +0x664
    if (local->unk_664 == -1) {
        slot = static_cast<std::uint32_t>(app.m_savegameManager->m_lastSlot);  // dword_99F778 + 8
    }
    PlayerSavegame savegame(slot, 1, false);
    std::string hostName;
    if (MenuFX* root = app.m_menuManager->GetRoot()) {
        root->InvokeASCallback(root->RenderFX::GetRoot()->get_root_movie(), "GetCurrentDifficulty", nullptr, 0);
    }
    const std::int32_t chosenDifficulty = app.m_savegameManager->unk_0c;  // dword_99F778 + 0x0c
    if (chosenDifficulty <= savegame.m_unlockedDifficulty) {               // PlayerSavegame +0x3c
        PlayerSavegame::m_difficultyLevel = chosenDifficulty;
    }
    const char* name = state->mode_ == 3 ? CSignIn::Get()->CredentialsName() : savegame.m_name.c_str();
    hostName.assign(name != nullptr ? name : "");
    const std::int32_t difficulty = PlayerSavegame::m_difficultyLevel;
    std::int32_t seed = savegame.m_seeds[difficulty];            // PlayerSavegame +0x5c + 4 * difficulty
    const std::int32_t savedLevelId = savegame.unk_50[difficulty];  // PlayerSavegame +0x50 + 4 * difficulty
    if (seed == 0 || (DebugSwitches::s_inst.load(), DebugSwitches::s_inst.GetSwitch("DontUsePlayerSeed"))) {
        seed = static_cast<std::int32_t>(glitch::os::Timer::getRealTime());
        savegame.m_seeds[difficulty] = seed;
    }
    char seedText[60];
    std::snprintf(seedText, sizeof seedText, "%d %d", seed, seed);
    const std::string seedString(seedText);
    savegame.SG_Load(16);
    const std::int32_t primaryQuest = savegame.SG_GetCurrentPrimaryQuest(difficulty);
    const std::int32_t levelId = savegame.SG_GetQuestSG()->m_act[difficulty];  // quest log +0x44 + 4 * difficulty
    char hostBuffer[32] = {};
    std::strncpy(hostBuffer, hostName.c_str(), sizeof hostBuffer - 1);
    if (state->mode_ == 2) {
        attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_5, levelId);
        attributes.SetAttributeBin(ROOM_BIN_ATTRIBUTE_3, hostBuffer, 32);
        attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_6, primaryQuest);
        attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_4, chosenDifficulty);
    } else {
        attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_1, static_cast<std::int32_t>(0xFEEDABBAu));
        attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_2, app.GetVersionNumber());
        attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_3, savedLevelId);
        attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_4, chosenDifficulty);
        attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_5, levelId);
        attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_6, primaryQuest);
        attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_7, 0);
        attributes.SetAttributeBin(ROOM_BIN_ATTRIBUTE_3, hostBuffer, 32);
        attributes.SetAttributeBin(ROOM_BIN_ATTRIBUTE_4, seedString.data(), static_cast<unsigned int>(seedString.size()));
    }
    CMatching::Get()->CreateJoinRoom(true, attributes);
    state->flag25_ = true;  // +0x25
    if (state->mode_ == 3) {
        state->StampRoomCreationTime();  // gettimeofday into +0x44
        state->flag4d_ = true;
        LoadGLLiveFriends();
    }
    return 100;
}

// 0x49cd94 _ZN19MultiplayerCallback18HandlePlayerJoinedEPv
// With a Level present: the joined player's id comes from the net player manager's internal event 0x300000 and its record
// (a PlayerInfo) from GetPlayer(id, false). A fully loaded level (m_loadStep 38) queues the status line "<name> has joined
// the game" on the online status queue (the start function runs when it is the only line). When this machine hosts, a
// CMsgStartGame is sent that tells the joiner the level (Level +0x3c), the difficulty (+0x118) and the seed (+0xdc) and names
// the new player's matching id (record +0x1a0) as the one who starts; a PlayerSavegame of the hosting player's slot is built
// and dropped as in the original (the constructor loads the file). On a server the matching id is also appended to the
// ObjectManager list at +0x128. The event is consumed on every path. Returns 0.
// Deviation: a missing player record (GetPlayer returning null) skips the handler body (the original dereferences it).
std::int32_t MultiplayerCallback::HandlePlayerJoined(void* /*message*/) {
    Level* level = GSLevel::s_level;
    CNetPlayerManager* players = GetNetPlayerMgr();
    if (level != nullptr) {
        std::int32_t joinedId = -1;
        players->internal_events_.GetEventData(0x300000, &joinedId, 4);  // 3145728, +0x180
        PlayerInfo* joined = static_cast<PlayerInfo*>(GetNetPlayerMgr()->GetPlayer(joinedId, false));
        if (joined != nullptr) {
            Application& app = ApplicationGetInstance();
            if (level->m_loadStep == 38) {
                Application& application = app;
                const char* format = application.m_stringManager->getString(
                    application.m_pyDataConstants->getConstant("StrID", "MENU_HAS_JOINED_THE_GAME"));
                const std::string playerName = StringManager::formatForMulti(joined->m_characterName.GetValue(), false);
                std::string text;
                application.m_stringManager->parse(text, format, playerName.c_str());
                OnlineGameState::PostStatusMessage(text);
            }
            const std::int32_t matchingId = joined->matching_member_id_.GetValue();  // +0x1a0
            PlayerManager* playerManager = app.m_playerManager;
            if (playerManager->IsLocalPlayerHosting()) {
                PlayerSavegame hostSave(static_cast<std::uint32_t>(playerManager->GetHostingPlayer()->unk_664), 1, false);
                const std::int32_t levelIndex = level->m_levelListIndex;  // +0x3c
                const std::int32_t difficulty = level->m_difficulty;      // +0x118
                const std::int32_t seed = static_cast<std::int32_t>(app.GetCurrentLevel()->m_seed);  // +0xdc
                auto* message = static_cast<CMsgStartGame*>(CMessage::CreateMessage("CMsgStartGame", true));
                CMsgStartGame::Fields& fields = message->Payload();
                fields.levelListIndex = levelIndex;   // +0x50
                fields.resume = 0;                    // +0x58
                fields.syncedSeed = seed;             // +0x64
                fields.difficulty = difficulty;       // +0x5c
                fields.entryPointId = 0;              // +0x54
                fields.useSpawnPoint = 0;             // +0x59
                fields.hostMatchingId = matchingId;   // +0x68
                fields.seed = seed;                   // +0x60
                CMessaging::GetInstance()->SendMsg(message);
            }
            if (GetOnline()->IsServer()) {
                dword_99F764->unk_128.push_back(matchingId);  // ObjectManager +0x128
            }
        }
    }
    GetNetPlayerMgr()->internal_events_.ConsumeEvent(0x300000);
    return 0;
}

