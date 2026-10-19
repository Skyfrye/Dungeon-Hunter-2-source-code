// MultiplayerCallback: the multiplayer state callbacks. The state machine calls them
// with a context pointer. The two state-id callbacks are complete. The message handlers and the
// lobby and room callbacks are in src/multiplayer_callback.cpp; each one's blocker is noted there.
#pragma once

#include <cstdint>

class MultiplayerCallback {
public:
    // 0x49a0c4 _ZN19MultiplayerCallback9idleStateEPv: the idle state id, 100.
    static std::int32_t idleState(void* context);
    // 0x49a0cc _ZN19MultiplayerCallback11ingameStateEPv: the in-game state id, 300.
    static std::int32_t ingameState(void* context);

    // Message handlers and state callbacks (see multiplayer_callback.cpp per function for what each still lacks).
    // The handlers mark their message consumed with CMessage::SetFinished (+0x3c).
    // 0x49a0d4 _ZN19MultiplayerCallback32HandleAskResendAttributesMessageEPv
    std::int32_t HandleAskResendAttributesMessage(void* message);
    // 0x49a17c _ZN19MultiplayerCallback24HandleGlobalDeathMessageEPv
    std::int32_t HandleGlobalDeathMessage(void* message);
    // 0x49a6e4 _ZN19MultiplayerCallback24HandleRaisedEventMessageEPv
    std::int32_t HandleRaisedEventMessage(void* message);
    // 0x49a75c _ZN19MultiplayerCallback17LoadGLLiveFriendsEv
    std::int32_t LoadGLLiveFriends();
    // 0x49a808 _ZN19MultiplayerCallback16HandlePlayerLeftEPv
    std::int32_t HandlePlayerLeft(void* message);
    // 0x49a960 _ZN19MultiplayerCallback22HandleMenuReadyMessageEPv
    std::int32_t HandleMenuReadyMessage(void* message);
    // 0x49a9fc _ZN19MultiplayerCallback19HandleIsHostMessageEPv
    std::int32_t HandleIsHostMessage(void* message);
    // 0x49aa60 _ZN19MultiplayerCallback24HandleSpawnObjectMessageEPv
    std::int32_t HandleSpawnObjectMessage(void* message);
    // 0x49ac18 _ZN19MultiplayerCallback17HandleLootMessageEPv
    std::int32_t HandleLootMessage(void* message);
    // 0x49ade0 _ZN19MultiplayerCallback19HandleAttackMessageEPv
    std::int32_t HandleAttackMessage(void* message);
    // 0x49af74 _ZN19MultiplayerCallback23HandleQuestsSyncMessageEPv
    std::int32_t HandleQuestsSyncMessage(void* message);
    // 0x49b054 _ZN19MultiplayerCallback20HandleInitialMessageEPv
    std::int32_t HandleInitialMessage(void* message);
    // 0x49b0d8 _ZN19MultiplayerCallback22HandleStartGameMessageEPv
    std::int32_t HandleStartGameMessage(void* message);
    // 0x49b3c8 _ZN19MultiplayerCallback15roomLobbyUpdateEPv
    std::int32_t roomLobbyUpdate(void* context);
    // 0x49b47c _ZN19MultiplayerCallback11lobbyUpdateEPv
    std::int32_t lobbyUpdate(void* context);
    // 0x49b580 _ZN19MultiplayerCallback19searchRoomPushNotifEPv
    std::int32_t searchRoomPushNotif(void* context);
    // 0x49b660 _ZN19MultiplayerCallback10searchRoomEPv
    std::int32_t searchRoom(void* context);
    // 0x49b990 _ZN19MultiplayerCallback20HandleMenuBackButtonEPv
    std::int32_t HandleMenuBackButton(void* message);
    // 0x49c5e4 _ZN19MultiplayerCallback15HandleScriptCmdEPv
    std::int32_t HandleScriptCmd(void* message);
    // 0x49c7b4 _ZN19MultiplayerCallback8joinRoomEPv
    std::int32_t joinRoom(void* context);
    // 0x49c8c0 _ZN19MultiplayerCallback10createRoomEPv
    std::int32_t createRoom(void* context);
    // 0x49cd94 _ZN19MultiplayerCallback18HandlePlayerJoinedEPv
    std::int32_t HandlePlayerJoined(void* message);
};
