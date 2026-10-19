// PlayerManager: the single manager of the local and remote players. It keeps the player records keyed by
// internal id (a std::map), the player id lists, the characters the players own, the death and loading
// state machines, and the quest-sync buffer. Update() runs each frame.
// Original 32-bit size 0x720 (1824).
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x374b28 / 0x374be4, dtors 0x3714ac / 0x371580 /
// 0x37159c, Update 0x378fb4). Members are placed by their original 32-bit offsets.
// Vtable: two header words plus two slots (D1 at slot 0x00, D0 at slot 0x04). No other virtuals.
#pragma once

#include <cstdint>
#include <map>
#include <vector>

#include "dh2/PlayerInfo.hpp"
#include "dh2/StreamBuffer.hpp"

class Character;
class PlayerSavegame;
template <typename T> struct Point3D;

class PlayerManager {
public:
    PlayerManager();                                                    // 0x374b28 (C1), 0x374be4 (C2)
    virtual ~PlayerManager();                                           // 0x3714ac (D1), 0x371580 (D0), 0x37159c (D2)

    // Character and player queries.
    Character* GetLocalPlayerCharacter();                               // 0x330794
    bool IsPlayerInLocalMap(int internalId);                            // 0x36d280
    int GetNumPlayers();                                                // 0x36d7a8
    int ReceiveQuestSync(PlayerSavegame* savegame);                     // 0x36d814 partial: the decompiled return value is unresolved
    int ClearQuestSyncBuffer();                                         // 0x36d834
    void _UnpackInventory(PlayerInfo& info);                            // 0x36d850
    int IsPlayerInRemoteMap(int internalId);                            // 0x36de28
    int DoesPlayerExist(int internalId);                                // 0x36de50
    PlayerInfo* _GetNetPlayerInfo(int internalId, bool flag);           // 0x36dec4
    PlayerInfo* GetPlayerByInternalID(int internalId, bool flag);       // 0x36dfb0
    PlayerInfo* GetHostingPlayer();                                     // 0x36e09c
    int _GetInternalIDByRemoteID(int remoteId, bool flag);              // 0x36e10c
    PlayerInfo* GetRemotePlayer(int remoteId, bool flag);               // 0x36e2ac
    int _GetInternalIDByLocalID(int localId, bool flag);                // 0x36e2cc
    PlayerInfo* GetLocalPlayer(int localId, bool flag);                 // 0x36e478
    int HandleQuestSyncMsg(const char* data, int size);                 // 0x36e498
    int _GetInternalIDByFriendlyID(int friendlyId, bool flag);          // 0x36e5b4
    PlayerInfo* GetPlayer(int friendlyId, bool flag);                   // 0x36e744

    // Readiness and loading.
    int AllPlayersDead();                                               // 0x36e764
    int AllReadyToRoll();                                               // 0x36e7f8
    int AllClientsReadyToRoll();                                        // 0x36e8bc
    int AllLoadingDone();                                               // 0x36e994

    // Character counts per class.
    int GetNumPlayerCharactersOfClass(int classId);                     // 0x36ea50
    int GetNumPlayerCharacterWarrior();                                 // 0x36eab8
    int GetNumPlayerCharacterRogue();                                   // 0x36eac0
    int GetNumPlayerCharacterMage();                                    // 0x36eac8
    int GetNumLocalPlayers(bool flag);                                  // 0x36ead0

    void InitialSetup(Point3D<float> position);                         // 0x36ec54
    int _UpdatePlayerNumbers();                                         // 0x36ed0c

    PlayerInfo* GetPlayerByCharacter(const Character* character, bool flag); // 0x36eea8
    int IsLocalPlayer(const Character* character);                      // 0x36effc
    int IsLocalPlayerHosting();                                         // 0x36f074
    void _AttachControllerToPlayerCharacter(int internalId);            // 0x36f0dc (the binary's return value is a leftover register, so void)
    void PostInitCharacters();                                          // 0x36f2bc (return is a leftover register, so void)
    void _UpdateJoiningController(int controllerId, int internalId);    // 0x36f4b4 (return is a leftover register on the last path, so void)
    void _PackInventory(PlayerInfo& info);                              // 0x370020
    void ResetCharacterDeathTimer();                                    // 0x370c9c (return is the leftover of PlayerInfo::SetCharacterDeathTimer, so void)
    void ClearLoadingInfo();                                            // 0x370e00 (return is the leftover of PlayerInfo::ClearLoadingInfo, so void)
    void _AttachLightToPlayerCharacter(int internalId);                 // 0x371050
    int _CheckOnlineTransition();                                       // 0x37193c
    void RemoveCharacter(Character* character);                         // 0x371d80
    void RemoveAllCharacters();                                         // 0x3721b8
    int _AddCharacter(int internalId);                                  // 0x372220
    int RemovePlayer(int internalId);                                   // 0x3726bc
    int RemoveAllPlayers();                                             // 0x3727c0
    int _ManageCharacters();                                            // 0x37280c
    void ReviveLocalPlayers(bool flag);                                 // 0x37565c

    // Death handling.
    void _HandleGlobalDeaths();                                         // 0x375af0
    void _CheckGlobalDeaths();                                          // 0x375eb4
    void _HandleLocalDeaths();                                          // 0x375fe8
    int _CheckLocalDeaths();                                            // 0x376100

    void OnHostChangedNotification(int hostId);                         // 0x376380

    int _AddPlayer(int a, int b, int c, bool flag);                     // 0x378a40
    void _CheckRemoteControllers();                                     // 0x378b94
    unsigned int _CheckLocalControllers();                              // 0x378c80
    int Update();                                                       // 0x378fb4

    // Static counter of the characters RemoveCharacter has renamed to "<name>_Deleted_<n>" (ELF .bss, zero at start).
    static int s_deletedPlayerCharacterCounter;                         // PlayerManager::s_deletedPlayerCharacterCounter

    // Object layout. The vptr sits at +0x00.
    PlayerInfo m_nullPlayer;                                            // +0x008 PlayerInfo, the null record. Lookups return this+8 when no player matches (GetPlayerByInternalID and the _GetInternalID* helpers).
    std::map<int, PlayerInfo> m_players;                                // +0x690 player records keyed by internal id. 32-bit _Rb_tree header: root at +0x694, leftmost +0x698, rightmost +0x69c, node count +0x6a0.
    uint8_t pad_6a4[4];                                                 // +0x6a4
    std::vector<int> m_playerIdList;                                    // +0x6a8 PlayerIdList (12 bytes at 32-bit). GetNumPlayers reads its size.
    std::vector<int> m_localPlayerIdList;                               // +0x6b4 LocalPlayerIdList (12 bytes at 32-bit)
    int32_t unk_6c0;                                                    // +0x6c0 zeroed by the ctor, not touched elsewhere in this class
    int m_numCharacters;                                                // +0x6c4 owned characters. _AddCharacter increments it, RemoveAllCharacters clears it
    uint8_t pad_6c8;                                                    // +0x6c8
    uint8_t unk_6c9;                                                    // +0x6c9 zeroed by the ctor, read by _ManageCharacters and RemoveAllCharacters, no other write in this class
    bool m_inOnlineTransition;                                          // +0x6ca set while _CheckOnlineTransition runs
    bool m_readyToRollWaiting;                                          // +0x6cb set with a 5000 timer in _ManageCharacters, cleared by ClearLoadingInfo
    int m_readyToRollTimer;                                             // +0x6cc countdown, -1 when idle
    bool m_initialSetupDone;                                            // +0x6d0 set by InitialSetup
    uint8_t pad_6d1[3];                                                 // +0x6d1
    float unk_6d4;                                                      // +0x6d4 initial position X, written by InitialSetup (Point3D<float>, three words); zeroed by the ctor
    float unk_6d8;                                                      // +0x6d8 initial position Y, written by InitialSetup
    float unk_6dc;                                                      // +0x6dc initial position Z, written by InitialSetup
    StreamBuffer m_questSyncBuffer;                                     // +0x6e0 quest sync packet buffer (0x30 bytes in the original: the next member is at +0x710).
    bool m_questSyncBuffered;                                           // +0x710 set when a sync message is written, cleared by ReceiveQuestSync and ClearQuestSyncBuffer
    bool m_localDeathPending;                                           // +0x711 set by _HandleLocalDeaths, cleared when the revive runs
    uint8_t pad_712[2];                                                 // +0x712
    int m_globalDeathState;                                             // +0x714 switch value of _HandleGlobalDeaths: 0 idle, 1 to 5 the global death steps
    bool unk_718;                                                       // +0x718 cleared after ReviveLocalPlayers in _HandleGlobalDeaths
    bool m_hostChanged;                                                 // +0x719 set by OnHostChangedNotification, cleared by _CheckOnlineTransition
    bool unk_71a;                                                       // +0x71a read by AllLoadingDone and HandleQuestSyncMsg, set in _ManageCharacters, cleared by ClearLoadingInfo
    bool unk_71b;                                                       // +0x71b cleared in Update once the local player's flag is set
    uint8_t pad_71c[4];                                                 // +0x71c
};
