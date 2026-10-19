// OnlineGameState::processEvents (0x49db80) and the status-line push, transcribed from the Hex-Rays listing in the
// order the original runs its blocks. Offsets of the OnlineGameState members (original 32-bit): +0x14 state machine,
// +0x24 flag24_, +0x25 flag25_, +0x27 flag27_, +0x28 flag28_, +0x30 menuName30_ (room index), +0x34 mode_, +0x3c start
// time, +0x4c flag4c_, +0x4d flag4d_, +0x4e flag4e_, +0x50 room list.
#include <cstdio>
#include <cstring>
#include <deque>
#include <list>
#include <string>
#include <vector>

#include "core-platform/gc_singleton.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/GSLevel.hpp"
#include "dh2/Gamepad.hpp"
#include "dh2/InputManager.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/OnlineStatusMsg.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/gc_invite_flags.hpp"
#include "dh2/global/net_singletons.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "net-session-online/c_event_queue_base.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/c_message.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_fixed.hpp"
#include "net-session-online/c_online.hpp"
#include "net-session-online/c_sign_in.hpp"
#include "net-session-online/c_sign_in_gl_live_observer.hpp"
#include "net-session-online/cxplayer_manager.hpp"
#include "net-session-online/deps/matching_queue.hpp"
#include "net-session-online/game_center.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "net-transport/tb/c_net_player_manager.hpp"
#include "vendor-gameswf/as_value.hpp"

namespace {

// Event ids (CMatching::m_eventQueue, the output queue).
constexpr int kEvtRoomOpened = 0x400001;      // 4194305
constexpr int kEvtRoomList = 0x400003;        // 4194307
constexpr int kEvtJoinDone = 0x400004;        // 4194308
constexpr int kEvtGameBoot = 0x400008;        // 4194312
constexpr int kEvtAttributesA = 0x400009;     // 4194313
constexpr int kEvtAttributesB = 0x40000b;     // 4194315
constexpr int kEvtLobbyInfo = 0x40000c;       // 4194316
constexpr int kEvtMemberLeft = 0x40000d;      // 4194317
constexpr int kEvtRoomGone = 0x400010;        // 4194320
constexpr int kEvtRoomFull = 0x400011;        // 4194321
constexpr int kEvtKicked = 0x40000a;          // 4194314

// Menu helpers. MenuManager::GetRoot() is the root MenuFX; its movie character receives the callbacks.
MenuFX* MenuRoot() { return ApplicationGetInstance().m_menuManager->GetRoot(); }

void InvokeOnRootMovie(const char* function, const gameswf::as_value* args, int count) {
    if (MenuFX* root = MenuRoot()) {
        root->InvokeASCallback(root->RenderFX::GetRoot()->get_root_movie(), function, args, count);
    }
}

void InvokeOnLobby(const char* function) {
    if (MenuFX* root = MenuRoot()) {
        root->InvokeASCallback("menu_MultiplayerLobby", function, nullptr, 0);
    }
}

// menu_VerificationLoading.LoadingFinished(success, message, state): the three arguments the original builds as a
// boolean, a string and a number.
void LoadingFinished(bool success, const char* message, double value) {
    gameswf::as_value args[3];
    args[0].set_bool(success);
    args[1].set_string(message);
    args[2].set_double(value);
    InvokeOnRootMovie("menu_VerificationLoading.LoadingFinished", args, 3);
}

// The same call with a string from the StrID table.
void LoadingFinishedWithString(const char* strId, bool success, double value) {
    Application& app = ApplicationGetInstance();
    const char* text = app.m_stringManager->getString(app.m_pyDataConstants->getConstant("StrID", strId));
    LoadingFinished(success, text, value);
}

// "<name> has left the game": queued on the status line queue as the original does inline.
void PostFormattedStatus(const char* strId, const char* playerName) {
    Application& app = ApplicationGetInstance();
    const char* format = app.m_stringManager->getString(app.m_pyDataConstants->getConstant("StrID", strId));
    const std::string formatted = StringManager::formatForMulti(std::string(playerName), false);
    std::string text;
    app.m_stringManager->parse(text, format, formatted.c_str());
    OnlineGameState::PostStatusMessage(text);
}

// The CMsgIsHost message carries the local player's net id (payload word at +0x50).
void SendIsHost() {
    PlayerInfo* local = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, false);
    const std::int32_t id = local->member_id_.GetValue();  // +0x178 = 376
    CMessage* message = CMessage::CreateMessage("CMsgIsHost", true);
    *static_cast<std::int32_t*>(message->GetDataPtr()) = id;
    CMessaging::GetInstance()->SendMsg(message);
}

// byte_99F81A is the invitation room name buffer of the Game Center path (0x99f81a..0x99f839); the port keeps only
// its first byte as the flag (dh2/global/gc_invite_flags.hpp), so the name is empty here.
const char* InviteName() { return ""; }

}  // namespace

// Inline in the original (OnlineStatusMsg queue push + the start function).
void OnlineGameState::PostStatusMessage(const std::string& text) {
    MenuMessageManager<OnlineStatusMsg, 1>& statusMessages = MenuMessageManager<OnlineStatusMsg, 1>::s_inst;
    statusMessages.m_queues[0].push_back(OnlineStatusMsg(text));
    if (statusMessages.m_queues[0].size() == 1) {
        statusMessages.Invoke(OnlineStatusMsg::s_StartFuncName[0], 0);
    }
}

// 0x49db80 _ZN15OnlineGameState13processEventsEv
// Transcribed in full. Blocks, in order: output event 0x400001 (room opened), 0x400003 (room list), 0x400004, the
// gamepad players and the room-state steps behind 0x400008, 0x400009/0x40000b (room attributes cleared), 0x40000c (lobby
// info), 0x40000d (a member left), the consumed-only events, 0x400010 and 0x400011 (room gone/full), the disconnect
// event of COnline (0x500003), 0x40000a (kicked), the GL Live sign-in events (5..9, 2) and internal events (11, 12, 13),
// the host change of the net player manager (0x300004) and the start/room-creation time-outs.
// Deviations (UB paths): MenuManager::GetRoot() results are null-checked before use (the original dereferences them);
// the room name of a listed room is copied as plain text, bounded to 31 characters (the original uses it as the sprintf
// format into a 32-byte buffer); byte_99F81A is the invitation flag only (its name buffer is not modelled), so the
// invitation name compares as empty; the heap CSignInCredentials the original leaks is a stack object here (CSignIn
// copies the credentials); the GameCenter context pointer (+0x18) is not modelled and is passed as null.
void OnlineGameState::processEvents() {
    OnlineGameState* state = OnlineSingleton<OnlineGameState>::GetInstance();
    CEventQueueBase& output = MatchingOutputEventQueue();
    Application& app = ApplicationGetInstance();

    // [0x400001] The room opened.
    if (output.HasEventOccured(kEvtRoomOpened, true)) {
        state->flag24_ = true;  // +0x24
        if (state->mode_ == 3) {
            CMatchingGLLive* live = static_cast<CMatchingGLLive*>(CMatching::Get());
            if ((byte_99F83A || byte_99F81A) && live->profileFlag_) {
                CSignInCredentials credentials(live->userName_, live->password_, nullptr);
                CSignIn::Get()->SignIn(credentials);  // vtable +0x10
            } else if (app.unk_ec) {  // byte_99F818: menu_VerificationLoading is showing
                LoadingFinished(true, "success", 2.0);
            }
        }
        if (state->mode_ == 2 && this->flag4e_) {
            state->SetState(102);
            state->flag4e_ = false;
        }
    }

    // [0x400003] The room list.
    if (output.HasEventOccured(kEvtRoomList, true)) {
        if (byte_99F81A) {
            std::vector<tRoomInfo> rooms = CMatching::Get()->GetRoomList();  // vtable +0x90
            if (state->mode_ != 2) {
                state->roomInfos_ = rooms;  // +0x50
            }
            bool found = false;
            for (std::size_t i = 0; i < rooms.size(); ++i) {
                char name[32] = {};
                if (state->mode_ == 3 || state->mode_ == 4) {
                    std::strncpy(name, rooms[i].name.c_str(), sizeof name - 1);
                } else {
                    rooms[i].attributes.GetAttributeBin(ROOM_BIN_ATTRIBUTE_3, name, 32);
                }
                const std::string formatted = StringManager::formatForMulti(std::string(name), false);
                if (std::strcmp(InviteName(), formatted.c_str()) == 0) {
                    state->menuName30_ = reinterpret_cast<const char*>(static_cast<std::uintptr_t>(i));  // +0x30 room index
                    state->SetState(103);
                    InvokeOnLobby("PlayerIsClient");
                    found = true;
                    break;
                }
            }
            if (!found) {
                byte_99F81A = 0;
                app.GoToMainMenu(static_cast<GoToMainMenuEvent>(6));
            }
        } else if (!state->flag25_) {  // +0x25
            if (CMatching::Get()->GetRoomAttributes()->GetAttributeInt(ROOM_INT_ATTRIBUTE_7) == 0) {
                InvokeOnRootMovie("menu_MultiplayerJoin.StopRoomLobbyLoading", nullptr, 0);
            }
            state->SetState(201);
        }
    }

    // [0x400004] Joined.
    if (output.HasEventOccured(kEvtJoinDone, true)) {
        if (!state->flag25_) {
            InvokeOnRootMovie("menu_MultiplayerJoin.StopRoomLobbyLoading", nullptr, 0);
            state->SetState(201);
        }
    }

    output.HasEventOccured(0x400005, true);  // consumed, no handler

    // [0x400008] Game boot. With an invitation pending the verification screen is finished and the function ends.
    if (output.HasEventOccured(kEvtGameBoot, true)) {
        if (byte_99F81A || byte_99F83A) {
            LoadingFinished(true, "success", 1.0);
            if (byte_99F83A && byte_99F81A) {
                static_cast<CMatchingGLLive*>(CMatching::Get())->SendGLFriendsGameInvite(const_cast<char*>(InviteName()));
            }
            byte_99F83A = 0;
            byte_99F81A = 0;
            state->SetState(200);
            return;
        }
        // Players for the extra gamepads (index 1 and up).
        InputManager* input = InputManager::GetInstance();
        for (unsigned i = 1; i < static_cast<unsigned>(input->GetNumGamepads()); ++i) {
            if (input->GetGamepad(static_cast<int>(i))->m_connected) {
                CNetPlayerManager* players = GetNetPlayerMgr();
                players->AddPlayer(CMatching::Get()->LocalMemberId(), static_cast<int>(i));  // vtable +0x6c
            }
        }
        if (state->mode_ == 4 || (state->mode_ == 3 && CMatchingGLLive::s_IsGameStarting)) {
            if (CMatchingGLLive::s_IsGameStarting) {
                if (static_cast<CMatchingGLLive*>(CMatching::Get())->IsHost()) {
                    SendIsHost();
                }
            }
        } else {
            const std::int32_t attribute7 = CMatching::Get()->GetRoomAttributes()->GetAttributeInt(ROOM_INT_ATTRIBUTE_7);
            if (CMatching::Get()->IsInRoom()) {  // vtable +0x64
                if (attribute7 != 0) {
                    app.unk_ec = false;
                } else if (app.unk_ec) {
                    LoadingFinished(true, "success", 1.0);
                }
            }
            state->SetState(200);
        }
    }

    // [0x400009, 0x40000b] The room attributes are cleared (CRoomAttributes vtable +0x10).
    if (output.HasEventOccured(kEvtAttributesA, true)) {
        CMatching::Get()->GetRoomAttributes()->Clear();
    }
    if (output.HasEventOccured(kEvtAttributesB, true)) {
        CMatching::Get()->GetRoomAttributes()->Clear();
    }

    // [0x40000c] Lobby info: outside a level and with the flag at +0x28 clear the lobby page is refreshed.
    if (output.HasEventOccured(kEvtLobbyInfo, true)) {
        if (app.GetCurrentLevel() == nullptr && !state->flag28_) {
            InvokeOnRootMovie("menu_MultiplayerLobby.UpdateLobbyInfos", nullptr, 0);
        }
    }

    // [0x40000d] A member left: once the level is loaded the leaving player's character is removed.
    if (output.HasEventOccured(kEvtMemberLeft, false)) {
        std::int32_t leavingId = -1;
        output.GetEventData(kEvtMemberLeft, &leavingId, 4);
        if (GSLevel::s_level != nullptr && GSLevel::s_level->m_loadStep > 35) {
            output.ConsumeEvent(kEvtMemberLeft);
            if (state->mode_ == 2 || app.IsWifiEnabled()) {
                ObjectManager* objects = dword_99F764;
                const std::list<ObjectBase*>& zones = objects->unk_100;  // +0x100
                std::uint32_t count = 0;
                for (auto it = zones.begin(); it != zones.end(); ++it) {
                    ++count;
                }
                for (std::uint32_t index = 0; index < count; ++index) {
                    ObjectHandle handle = objects->GetObjectHandleByNetworkId(static_cast<int>(index));
                    Character* character = static_cast<Character*>(handle);
                    if (character == nullptr || !character->IsPlayer() || character->m_netInternalId != leavingId) {
                        continue;
                    }
                    app.m_playerManager->RemoveCharacter(character);
                    PostFormattedStatus("MENU_HAS_LEFT_THE_GAME", character->SG_GetPlayerName());
                }
            } else {
                app.GoToMainMenu(static_cast<GoToMainMenuEvent>(3));
            }
        }
    }

    // Events that are only consumed.
    output.HasEventOccured(0x40000e, true);  // 4194318
    output.HasEventOccured(0x400012, true);  // 4194322
    output.HasEventOccured(0x400013, true);  // 4194323
    output.HasEventOccured(0x400014, true);  // 4194324
    output.HasEventOccured(0x400015, true);  // 4194325
    output.HasEventOccured(0x400000, true);

    // [0x400010] The room is gone / [0x400011] the room is full: reported on the verification screen when it shows.
    if (output.HasEventOccured(kEvtRoomGone, true) && app.unk_ec) {
        LoadingFinishedWithString("MENU_MULTIPLAYER_ERROR_GAME_ROOM_GONE", false, 0.0);
    }
    if (output.HasEventOccured(kEvtRoomFull, true) && app.unk_ec) {
        LoadingFinishedWithString("MENU_MULTIPLAYER_ERROR_GAME_FULL", false, 0.0);
    }

    // COnline's disconnect event.
    if (GetOnline()->EventQueue().HasEventOccured(0x500003, true)) {  // 5242883
        app.GoToMainMenu(static_cast<GoToMainMenuEvent>(8));
    }

    // [0x40000a] Kicked: the function ends here.
    if (output.HasEventOccured(kEvtKicked, true)) {
        if (GSLevel::s_level != nullptr) {
            app.GoToMainMenu(static_cast<GoToMainMenuEvent>(1));
        } else {
            InvokeOnRootMovie("menu_MultiplayerLobby.PlayerIsKicked", nullptr, 0);
            CMatching::Get()->LeaveRoom();  // vtable +0x3c
            state->SetState(102);
        }
        CMatching::Get()->GetRoomAttributes()->Clear();
        return;
    }

    // The Gameloft Live sign-in events.
    if (state->mode_ == 3) {
        CSignInGLLiveObserver* loginObserver = CMatchingGLLive::GetGLXPlayerLoginObserver();
        if (loginObserver->Configured()) {  // byte +0x04
            state->flag27_ = true;          // +0x27
        } else {
            CMatching::Get()->Update();  // vtable +0x30
        }
        CSignIn* signIn = CSignIn::Get();
        CEventQueueBase& signInEvents = signIn->EventQueue();  // +0x14
        if (signInEvents.HasEventOccured(5, true)) {
            if (app.unk_ec) {
                LoadingFinishedWithString("MENU_MULTIPLAYER_BAD_USERNAME", false, 0.0);
            }
        } else if (signInEvents.HasEventOccured(6, true)) {
            if (app.unk_ec) {
                LoadingFinishedWithString("MENU_MULTIPLAYER_WRONG_PASSWORD", false, 0.0);
            }
        } else if (signInEvents.HasEventOccured(7, true)) {
            if (app.unk_ec) {
                LoadingFinishedWithString("MENU_MULTIPLAYER_NO_CONNECTION", false, 0.0);
            }
        } else if (signInEvents.HasEventOccured(8, true)) {
            app.GoToMainMenu(static_cast<GoToMainMenuEvent>(9));
        } else if (signInEvents.HasEventOccured(9, true)) {
            app.GoToMainMenu(static_cast<GoToMainMenuEvent>(4));
        }
        if (signInEvents.HasEventOccured(2, true)) {  // signed in
            if (app.unk_ec) {
                LoadingFinished(true, "Ok", 0.0);
            }
            Singleton<CXPlayerManager>::s_inst.Login(CSignIn::Get()->CredentialsName(), CSignIn::Get()->CredentialsPassword());
            CMatchingGLLive* live = static_cast<CMatchingGLLive*>(CMatching::Get());
            if (live->profileFlag_) {
                live->SetGLLiveUserName(CSignIn::Get()->CredentialsName());
                static_cast<CMatchingGLLive*>(CMatching::Get())->SetGLLivePassword(CSignIn::Get()->CredentialsPassword());
                static_cast<CMatchingGLLive*>(CMatching::Get())->SaveGLLiveProfile();
            }
            if (byte_99F83A) {
                state->SetState(101);
                InvokeOnLobby("PlayerBecameHost");
            } else if (byte_99F81A) {
                state->SetState(104);
            }
        } else {
            CMatching::Get()->Update();  // vtable +0x30
        }
        if (CMatchingGLLive::s_eventQueueGLLiveInternal.HasEventOccured(11, true)) {
            MenuManager* menus = MenuManager::GetInstance();
            MenuBase* loading = menus->GetMenuByName("menu_Loading");
            MenuManager::GetInstance()->PushMenu(loading);
            loading->m_menu->InvokeASCallback(loading->m_character, "onProgress", nullptr, 0);  // character at +0x4c
            state->flag28_ = true;  // +0x28
            GetTimeOfDay(&state->startGame_);  // +0x3c
            state->flag4c_ = true;
        }
        if (CMatchingGLLive::s_eventQueueGLLiveInternal.HasEventOccured(12, true)) {
            byte_99F83A = 0;
            byte_99F81A = 0;
            app.GoToMainMenu(static_cast<GoToMainMenuEvent>(3));
        }
    }

    // The host change of the net player manager (0x300004), once the online game is up.
    CNetPlayerManager* players = GetNetPlayerMgr();
    if (state->flag24_ && CNetPlayerManager::IsInitialized() &&
        players->internal_events_.HasEventOccured(0x300004, false)) {
        std::int32_t newHost = -1;
        players->internal_events_.GetEventData(0x300004, &newHost, 4);
        const std::int32_t attribute7 = CMatching::Get()->GetRoomAttributes()->GetAttributeInt(ROOM_INT_ATTRIBUTE_7);
        Level* level = app.GetCurrentLevel();
        bool handle = true;
        if (attribute7 != 0 && level != nullptr) {
            // Not ready to switch host yet: the local player must be in the game and the level loaded past step 35.
            PlayerManager* playerManager = app.m_playerManager;
            // unk_71b is byte 1819 (+0x71b); m_readyToRoll's value is byte 1349 (+0x545).
            if (playerManager->unk_71b && !playerManager->GetLocalPlayer(0, false)->m_readyToRoll.GetValue()) {
                players->internal_events_.ConsumeEvent(0x300004);
                app.GoToMainMenu(static_cast<GoToMainMenuEvent>(3));
                handle = false;
            } else if (level->m_loadStep <= 35) {
                handle = false;
            }
        }
        if (handle && (attribute7 == 0 || level != nullptr)) {
            if (state->mode_ != 3 || app.GetCurrentLevel() != nullptr) {
                if (newHost >= 0) {
                    app.m_playerManager->OnHostChangedNotification(newHost);
                    if (level != nullptr) {
                        PlayerInfo* hostInfo = app.m_playerManager->GetPlayerByInternalID(newHost, false);
                        level->PlaceFaeryAndFollowers(hostInfo->unk_660);
                    }
                }
            } else {
                InvokeOnLobby("PlayerBecameHost");
            }
            GetNetPlayerMgr()->internal_events_.ConsumeEvent(0x300004);
            if (state->mode_ == 2) {
                app.GoToMainMenu(static_cast<GoToMainMenuEvent>(6));
            }
        }
        if (state->mode_ == 1 && MenuRoot() != nullptr) {
            if (GetNetPlayerMgr()->net_struct_.host_member_id_.GetValue() ==
                GetNetPlayerMgr()->GetLocalPlayer(0)->member_id_.GetValue()) {
                InvokeOnLobby("PlayerBecameHost");
            } else {
                InvokeOnLobby("PlayerIsClient");
            }
        }
    }

    // The host asks for the game-start broadcast once the GL Live internal event 13 arrives.
    if (state->mode_ == 3 || state->mode_ == 4) {
        if (CMatchingGLLive::s_eventQueueGLLiveInternal.HasEventOccured(13, true)) {
            if (static_cast<CMatchingGLLive*>(CMatching::Get())->IsHost()) {
                if (state->flag28_) {
                    SendIsHost();
                } else {
                    GetNetPlayerMgr()->internal_events_.AddEvent(0x300004, nullptr, 0);
                }
            }
        }
    }

    // Start-game time-out (GL Live, outside the loaded level 38).
    Level* currentLevel = app.GetCurrentLevel();
    if (currentLevel == nullptr || currentLevel->m_loadStep != 38) {
        if (GetOnline()->IsOnlineGame() && state->flag28_ && state->flag4c_) {
            if (state->GlliveStartGameTimeOutExpired()) {
                app.GoToMainMenu(static_cast<GoToMainMenuEvent>(3));
            }
        }
    }
    // Room-creation time-out.
    if (state->flag4d_ && state->mode_ == 3 && state->GlliveRoomCreationTimeOutExpired()) {
        state->flag4d_ = false;
        if (app.unk_ec) {
            LoadingFinishedWithString("MENU_MULTIPLAYER_TIMEOUT", false, 0.0);
        }
    }
    // Game Center start-game time-out.
    if (state->mode_ == 4 && app.unk_ec) {
        GameCenter* center = GCSingleton<GameCenter>::GetInstance();
        if (!center->unk_14 && center->GCStartGameTimeoutExpired()) {
            app.GoToMainMenu(static_cast<GoToMainMenuEvent>(6));
        }
    }
}
