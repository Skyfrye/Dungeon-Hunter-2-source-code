// Batch e1-net-session-online-OnlineGameState-0: processMessages and Init(int). processEvents is in
// online_game_state_events.cpp.
#include "net-session-online/online_game_state.hpp"

#include <cstdio>
#include <string>

#include "core-platform/gc_singleton.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/QuestSavegame.hpp"
#include "dh2/global/net_singletons.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_online.hpp"
#include "net-session-online/c_online_impl.hpp"
#include "net-session-online/game_center.hpp"
#include "net-session-online/multiplayer_callback.hpp"
#include "net-transport/tb/c_net_player_manager.hpp"

namespace {

// The MultiplayerCallback handlers are non-static members in multiplayer_callback.hpp. The
// original symbols take no this pointer, so each entry below calls the member through a
// temporary. The handler bodies are partial and read no member state, so this is the same call.
// The state callbacks idleState and ingameState are already static and are used directly.
using StateCallback = std::int32_t (*)(void*);

struct StateEntryInit {
    std::int32_t stateId;
    StateCallback callback;
};

// Init adds these entries in this order, each with skip = 0.
const StateEntryInit kStateEntries[] = {
    {100, &MultiplayerCallback::idleState},
    {300, &MultiplayerCallback::ingameState},
    {101, [](void* c) -> std::int32_t { return MultiplayerCallback{}.createRoom(c); }},
    {102, [](void* c) -> std::int32_t { return MultiplayerCallback{}.searchRoom(c); }},
    {104, [](void* c) -> std::int32_t { return MultiplayerCallback{}.searchRoomPushNotif(c); }},
    {103, [](void* c) -> std::int32_t { return MultiplayerCallback{}.joinRoom(c); }},
    {200, [](void* c) -> std::int32_t { return MultiplayerCallback{}.lobbyUpdate(c); }},
    {201, [](void* c) -> std::int32_t { return MultiplayerCallback{}.roomLobbyUpdate(c); }},
};

struct HandlerInit {
    std::int32_t key;
    std::int32_t (*handler)(void*);
};

// Init registers these handlers in this order (only when the handler list is enabled).
const HandlerInit kHandlers[] = {
    {0, [](void* m) -> std::int32_t { return MultiplayerCallback{}.HandleStartGameMessage(m); }},
    {6, [](void* m) -> std::int32_t { return MultiplayerCallback{}.HandleMenuReadyMessage(m); }},
    {7, [](void* m) -> std::int32_t { return MultiplayerCallback{}.HandleScriptCmd(m); }},
    {8, [](void* m) -> std::int32_t { return MultiplayerCallback{}.HandleInitialMessage(m); }},
    {9, [](void* m) -> std::int32_t { return MultiplayerCallback{}.HandleQuestsSyncMessage(m); }},
    {2, [](void* m) -> std::int32_t { return MultiplayerCallback{}.HandleAttackMessage(m); }},
    {3, [](void* m) -> std::int32_t { return MultiplayerCallback{}.HandleRaisedEventMessage(m); }},
    {4, [](void* m) -> std::int32_t { return MultiplayerCallback{}.HandleLootMessage(m); }},
    {5, [](void* m) -> std::int32_t { return MultiplayerCallback{}.HandleSpawnObjectMessage(m); }},
    {10, [](void* m) -> std::int32_t { return MultiplayerCallback{}.HandleIsHostMessage(m); }},
    {11, [](void* m) -> std::int32_t { return MultiplayerCallback{}.HandleGlobalDeathMessage(m); }},
    {12, [](void* m) -> std::int32_t { return MultiplayerCallback{}.HandleAskResendAttributesMessage(m); }},
    {13, [](void* m) -> std::int32_t { return MultiplayerCallback{}.HandlePlayerJoined(m); }},
    {14, [](void* m) -> std::int32_t { return MultiplayerCallback{}.HandlePlayerLeft(m); }},
    {15, [](void* m) -> std::int32_t { return MultiplayerCallback{}.HandleMenuBackButton(m); }},
};

}  // namespace

// Inlined into Init in the original once per handler (no symbol of its own).
// Finds the node with this key and replaces its handler, or appends a node at the tail.
void OnlineGameState::setHandler(std::int32_t key, MessageHandler handler) {
    for (HandlerNode* node = handlerHead_; node != nullptr; node = node->next) {
        if (node->key == key) {
            node->handler = handler;
            return;
        }
    }
    // The original mallocs 0x10 bytes and checks for null. This port uses new, which does not return null.
    auto* node = new HandlerNode{key, handler, nullptr, handlerTail_};
    *handlerTail_ = node;
    handlerTail_ = &node->next;
}

// Part of the handler dispatch used by processMessages (inlined in the original, no symbol of its own).
void OnlineGameState::runHandlers(std::int32_t key) {
    for (HandlerNode* node = handlerHead_; node != nullptr; node = node->next) {
        if (node->key == key) {
            node->handler(handlerContext_);
        }
    }
}

// 0x49fb0c _ZN15OnlineGameState15processMessagesEv
// The message-type dispatch over the handler list, in the original order, with the joined-player block between
// CMsgQuestsSync and CMsgGlobalDeath. The original's int return value (the last handler result) is not kept (see the
// header).
void OnlineGameState::processMessages() {
    // CMessaging::Get() is a thunk to CMessaging::GetInstance(). Each block fetches the same singleton.
    CMessaging* messaging = CMessaging::GetInstance();
    if (messaging->IsMessageReceived("CMsgStartGame")) {
        runHandlers(0);
    }
    if (messaging->IsMessageReceived("CMsgIsHost")) {
        runHandlers(10);
    }
    if (messaging->IsMessageReceived("CMsgSpawnObject")) {
        runHandlers(5);
    }
    if (messaging->IsMessageReceived("CMsgMenuReady")) {
        runHandlers(6);
    }
    if (messaging->IsMessageReceived("CMsgAttackResult")) {
        runHandlers(2);
    }
    if (messaging->IsMessageReceived("CMsgRaisedEvent")) {
        runHandlers(3);
    }
    if (messaging->IsMessageReceived("CMsgDropLoot")) {
        runHandlers(4);
    }
    if (messaging->IsMessageReceived("CMsgScriptCmd")) {
        runHandlers(7);
    }
    if (messaging->IsMessageReceived("CMsgInitialSetup")) {
        runHandlers(8);
    }
    if (messaging->IsMessageReceived("CMsgQuestsSync")) {
        runHandlers(9);
    }
    // While the online-game byte (+0x24) is set and the player manager is initialised, a joined-player event
    // (3145728) in the manager's internal queue (+0x180) runs the handlers of key 13 (HandlePlayerJoined). GetNetPlayerMgr
    // is the thunk to CNetPlayerManager::GetInstance.
    if (flag24_ && CNetPlayerManager::IsInitialized() &&
        CNetPlayerManager::GetInstance()->internal_events_.HasEventOccured(3145728, false)) {
        runHandlers(13);
    }
    if (messaging->IsMessageReceived("CMsgGlobalDeath")) {
        runHandlers(11);
    }
    if (messaging->IsMessageReceived("CMsgAskResendAttributes")) {
        runHandlers(12);
    }
}

// 0x4a04c0 _ZN15OnlineGameState4InitEi
// The state table (8 entries, skip 0, in the binary's order: 100 idleState, 300 ingameState, 101 createRoom, 102
// searchRoom, 104 searchRoomPushNotif, 103 joinRoom, 200 lobbyUpdate, 201 roomLobbyUpdate), the 15 handlers, then
// COnlineImpl::Initialize and, when the online-game byte of COnline (+0x05) is still clear, the switch on the mode:
//   2: Destroy the matching object, mode_ = 2, provider 2 (Bluetooth), Terminate() (vtable +0x2c) and Initialize(2)
//      (+0x28) on the new object, SetIsOnlineGame(true), flag24_ = 0.
//   1: Destroy, mode_ = 1, provider 1 (local), sign in when COnlineImpl::IsSignedIn() is clear, Terminate(),
//      Initialize(4), SetIsOnlineGame(true), flag24_ = 0.
//   3: flag26_ = flag27_ = 0, Destroy, mode_ = 3, provider 3 (GLLive), Terminate(); the game version string
//      (CMatchingGLLive::m_GameVersion) becomes "1.0.1" under the debug switch ConnectToBetaServer and the
//      Application version string otherwise; the local player's save slot (PlayerInfo +0x664, -1 becomes 0) loads a
//      PlayerSavegame, its class and level go to the player parameter ("%d %d"); Initialize(4), SetIsOnlineGame(true),
//      flag28_ = 0, flag24_ = 0, and the debug switch ConnectToAlphaServer sets the alpha-server byte (+0x67ed).
//   4: Destroy, mode_ = 4, provider 4 (GLLive with Game Center); m_GameVersion is "0.0.0" under ConnectToBetaServer
//      and the Application version string otherwise; the Game Center record (host flag, user UID, host UID, player
//      count, player list) is copied from the GameCenter singleton; a host builds the room attributes from the local
//      player's save (seed, difficulty, level id, act, primary quest, the seed text as binary attribute 4), sets
//      flag25_ and stores them in the matching object's Game Center attributes (+0x6840); then Initialize(4),
//      SetIsOnlineGame(true), flag24_ = 0 and the alpha-server switch as for mode 3.
// Finally the state becomes 100 and the singleton is returned. The original reads the singleton through
// OnlineSingleton<OnlineGameState>::GetInstance() for its flag stores; this is that object when Init is called as the
// game calls it, so the stores here go through this.
OnlineGameState* OnlineGameState::Init(int mode) {
    stateMachine_.initStateMachine();
    for (const StateEntryInit& entry : kStateEntries) {
        stateMachine_.addStateEntry(entry.stateId, entry.callback, false);
    }

    // The original registers the handlers only when the list is enabled at +0x04.
    if (handlersEnabled_) {
        for (const HandlerInit& entry : kHandlers) {
            setHandler(entry.key, entry.handler);
        }
    }

    static_cast<COnlineImpl*>(GetOnline())->Initialize();  // 0x824f40
    if (!GetOnlineGameFlag()) {                            // *(GetOnline() + 5)
        Application& app = ApplicationGetInstance();
        DebugSwitches& switches = DebugSwitches::s_inst;
        switch (mode) {
            case 2: {
                CMatching::Get()->Destroy();
                mode_ = 2;  // +0x34
                CMatching::SetMatchingProvider(static_cast<CMatching::MATCHING_PROVIDERS>(2));
                CMatching::Get()->Terminate();   // vtable +0x2c
                CMatching::Get()->Initialize(2);  // vtable +0x28
                GetOnline()->SetIsOnlineGame(true);
                flag24_ = false;  // +0x24
                break;
            }
            case 1: {
                CMatching::Get()->Destroy();
                mode_ = 1;
                CMatching::SetMatchingProvider(static_cast<CMatching::MATCHING_PROVIDERS>(1));
                COnlineImpl* online = static_cast<COnlineImpl*>(GetOnline());
                if (!online->IsSignedIn()) {
                    online->SignIn();
                }
                CMatching::Get()->Terminate();
                CMatching::Get()->Initialize(4);
                GetOnline()->SetIsOnlineGame(true);
                flag24_ = false;
                break;
            }
            case 3: {
                flag26_ = false;  // +0x26
                flag27_ = false;  // +0x27
                CMatching::Get()->Destroy();
                mode_ = 3;
                CMatching::SetMatchingProvider(static_cast<CMatching::MATCHING_PROVIDERS>(3));
                CMatching::Get()->Terminate();
                switches.load();
                if (switches.GetSwitch(std::string("ConnectToBetaServer"))) {
                    CMatchingGLLive::m_GameVersion = "1.0.1";
                } else {
                    char version[60];
                    app.GetVersionString(version, 10, false);
                    CMatchingGLLive::m_GameVersion = version;
                }
                PlayerInfo* local = app.m_playerManager->GetLocalPlayer(0, false);
                if (local->unk_664 == -1) {  // +0x664, the save slot
                    local->unk_664 = 0;
                }
                PlayerSavegame savegame(static_cast<std::uint32_t>(local->unk_664), 1, false);
                char parameter[124];
                std::snprintf(parameter, sizeof(parameter), "%d %d", savegame.m_playerClass,
                              savegame.m_playerLevel);  // +0x34, +0x30
                static_cast<CMatchingGLLive*>(CMatching::Get())->SetPlayerParam(std::string(parameter), false);
                CMatching::Get()->Initialize(4);
                GetOnline()->SetIsOnlineGame(true);
                flag28_ = false;  // +0x28
                flag24_ = false;
                switches.load();
                if (switches.GetSwitch(std::string("ConnectToAlphaServer"))) {
                    static_cast<CMatchingGLLive*>(CMatching::Get())->useAlphaServer_ = true;  // +0x67ed
                }
                break;
            }
            case 4: {
                CMatching::Get()->Destroy();
                mode_ = 4;
                CMatching::SetMatchingProvider(static_cast<CMatching::MATCHING_PROVIDERS>(4));
                switches.load();
                if (switches.GetSwitch(std::string("ConnectToBetaServer"))) {
                    CMatchingGLLive::m_GameVersion = "0.0.0";
                } else {
                    char version[60];
                    app.GetVersionString(version, 10, false);
                    CMatchingGLLive::m_GameVersion = version;
                }
                GameCenter* gameCenter = GCSingleton<GameCenter>::GetInstance();
                CMatching::Get();  // creates the provider-4 object (CMatchingGLLive with Game Center)
                CMatchingGLLive::s_GameCenterInfo.userUid_ = gameCenter->GetUserUid();  // dword_A3387C
                CMatchingGLLive::s_GameCenterInfo.hostUid_ = GCSingleton<GameCenter>::GetInstance()->GetHostUid();  // dword_A33880
                CMatchingGLLive::s_GameCenterInfo.isHost_ = GCSingleton<GameCenter>::GetInstance()->IsHost() ? 1 : 0;
                CMatchingGLLive::s_GameCenterInfo.playerCount_ = GCSingleton<GameCenter>::GetInstance()->GetPlayerCount();
                CMatchingGLLive::s_GameCenterInfo.ids_ = GCSingleton<GameCenter>::GetInstance()->GetJoinPlayerList();
                if (GCSingleton<GameCenter>::GetInstance()->IsHost()) {
                    CRoomAttributes attributes;
                    PlayerInfo* local = app.m_playerManager->GetLocalPlayer(0, false);
                    PlayerSavegame savegame(static_cast<std::uint32_t>(local->unk_664), 1, false);
                    const std::int32_t difficulty = PlayerSavegame::m_difficultyLevel;
                    const std::int32_t levelId = savegame.unk_50[difficulty];  // +0x50 + 4 * difficulty
                    std::int32_t seed = savegame.m_seeds[difficulty];          // +0x5c + 4 * difficulty
                    if (seed == 0 || (switches.load(), switches.GetSwitch(std::string("DontUsePlayerSeed")))) {
                        seed = static_cast<std::int32_t>(glitch::os::Timer::getRealTime());
                        savegame.m_seeds[difficulty] = seed;
                    }
                    char seedText[60];
                    std::snprintf(seedText, sizeof(seedText), "%d %d", seed, seed);
                    const std::string seedString(seedText);
                    savegame.SG_Load(16);
                    const std::int32_t primaryQuest = savegame.SG_GetCurrentPrimaryQuest(PlayerSavegame::m_difficultyLevel);
                    const std::int32_t act = savegame.SG_GetQuestSG()->m_act[PlayerSavegame::m_difficultyLevel];  // +0x44 + 4 * d
                    attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_1, -17978438);  // 0xFEEDABBA
                    attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_2, app.GetVersionNumber());
                    attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_3, levelId);
                    attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_4, difficulty);
                    attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_5, act);
                    attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_6, primaryQuest);
                    attributes.SetAttributeBin(ROOM_BIN_ATTRIBUTE_4, seedString.data(),
                                               static_cast<unsigned int>(seedString.size()));
                    flag25_ = true;  // +0x25
                    static_cast<CMatchingGLLive*>(CMatching::Get())->gcRoomAttributes_ = attributes;  // +0x6840
                }
                CMatching::Get()->Initialize(4);
                GetOnline()->SetIsOnlineGame(true);
                flag24_ = false;
                switches.load();
                if (switches.GetSwitch(std::string("ConnectToAlphaServer"))) {
                    static_cast<CMatchingGLLive*>(CMatching::Get())->useAlphaServer_ = true;  // +0x67ed
                }
                break;
            }
            default:
                break;
        }
    }

    stateMachine_.SetStateForTest(100);
    return this;
}
