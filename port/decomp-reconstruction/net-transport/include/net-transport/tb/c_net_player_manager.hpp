// CNetPlayerManager: the table of network players of the session, from libDungeonHunter2.so.
//
// Layout (32-bit offsets from the original, kept as comments, never used for pointer arithmetic). Object
// size 0x1e0 (CNetPlayerManager::Initialize news that many bytes):
//   +0x000          vptr (_ZTV17CNetPlayerManager, 20 bytes): +0x00/+0x04 the destructors, +0x08 Update(int).
//   +0x004          events_ (CEventQueue<CNetPlayerManager::EVENTS, 100>, a CEventQueueBase, 0x14 bytes). The player
//                   records post the activation events 9437184..9437187 to it and ProcessEvents moves them on.
//   +0x018          pad (8 bytes, alignment before the NetStruct; no access).
//   +0x020          net_struct_ (NetStructPlayerManager: NetStruct plus one member, the host player id at
//                   +0x150; ResendManagerInfo and the packet callbacks forward to it).
//   +0x178          initialized_ (byte). Its name follows the method IsInitialized.
//   +0x17c          fallback_player_ (CNetPlayerInfo*). Returned when a lookup finds nothing.
//                   Its name is not recovered.
//   +0x180          internal_events_ (CEventQueue<CNetPlayerManager::EVENTS_INTERNAL, 100>, 0x14 bytes). The game
//                   side reads the player events 3145728..3145732 from it (HasEventOccured, GetEventData).
//   +0x194          player_slot_count_ (int): the number of player slots (limit of GetPlayerInternal); the
//                   constructor argument.
//   +0x198, +0x19c  players_ (begin, end): one CNetPlayerInfo* per slot.
//   +0x1a4, +0x1a8  secondary_players_ (begin, end): second list, same element type. Its name is
//                   not recovered.
//   +0x1b0          last host player id (-1 from the constructor, set by Update(int) when the host changes).
//   +0x1b8..+0x1c0  player_id_list_; +0x1c4 player_list_caches_ (std::map header, 0x14 bytes).
//
// Statics: s_playerManager (the singleton), CreateNetPlayerInfo and DeleteNetPlayerInfo (the
// player factory hooks set by RegisterPlayerInfoFunctions).
#pragma once

#include <cstddef>
#include <cstdint>
#include <map>
#include <string>
#include <vector>

#include "net-session-online/c_event_queue_base.hpp"  // CEventQueueBase (one definition, net-session-online)
#include "net-session-online/deps/matching.hpp"  // CMatching (one definition, net-session-online)
#include "net-transport/net_bit_stream.hpp"
#include "net-transport/net_struct.hpp"
#include "net-transport/tb/cnet_player_info.hpp"
#include "net-transport/tb/net_player_manager_deps.hpp"
#include "net-transport/tb/net_struct_int.hpp"

class CNetPlayerManager {
public:
    // The replicated manager info (CNetPlayerManager::NetStructPlayerManager). NetStruct (0x130 bytes) plus one
    // NetStructInt<6u> block at +0x130 that holds the host's member id: its constructor declares the block and
    // sets it to -1, and CNetPlayerInfo::IsHost compares a player's member id with its value (manager +0x170).
    class NetStructPlayerManager : public NetStruct {
    public:
        NetStructPlayerManager();                        // 0x810d90
        ~NetStructPlayerManager() override;              // 0x810ec8 (D1); the deleting form 0x810f3c is the compiler's

        NetStructInt<6u> host_member_id_;                // +0x130 (value at +0x150)
    };

    // The constructor (0x812a30, the same body as 0x812bf0): the slot count, ResetPlayers, packet slot 2 registered
    // with the four static callbacks, the caches cleared and the initialized flag set. The default constructor is not
    // in the binary: it leaves the members as the constructor finds them before its body runs, and is used by the
    // tests that fill a manager by hand.
    CNetPlayerManager() = default;
    explicit CNetPlayerManager(int slot_count);
    // +0x00, +0x04 (0x812694 and 0x812870 the complete and base destructors; the deleting form 0x812854 is the
    // compiler's): clears the initialized flag, the players and the caches, unregisters packet slot 2 and clears the
    // internal event queue. The members destroy themselves.
    virtual ~CNetPlayerManager();
    // vtable +0x08, 0x812eec. Runs every player's Update, ProcessEvents, the host bookkeeping on the server, and the
    // NetStruct enable from COnline::IsServer. Returns 0, or -1 before the manager is initialised.
    virtual int Update(int delta);

    // Singleton access.
    // 0x812b90 _ZN17CNetPlayerManager10InitializeEi: creates the singleton (slot count argument) when none exists.
    static int Initialize(int slot_count);
    static CNetPlayerManager* GetInstance();  // 0x8100bc
    static bool IsInitialized();              // 0x8100e0
    static void Terminate();                  // 0x810108

    // Lookups.
    CNetPlayerInfo* GetPlayerInternal(int index) const;                 // 0x81014c
    CNetPlayerInfo* GetPlayerInternal(int first_key, int second_key) const;  // 0x810180
    CNetPlayerInfo* GetPlayer(int index, bool any_state) const;         // 0x8101e0
    CNetPlayerInfo* GetPlayerByMemberId(int first_key, int second_key,  // 0x810228
                                        bool allow_inactive) const;
    int GetFreePlayerId() const;                                        // 0x810270
    CNetPlayerInfo* GetLocalPlayer(int second_key) const;               // 0x8105dc

    // Player factory hooks.
    static void RegisterPlayerInfoFunctions(CNetPlayerInfo* (*create)(),
                                            void (*destroy)(CNetPlayerInfo*));  // 0x8102c0
    static void UnregisterPlayerInfoFunctions();                        // 0x8102f0

    // Packet bookkeeping over the NetStruct and every player.
    bool AreAllPlayersAcknowledged() const;                             // 0x810338
    void ResendManagerInfo();                                           // 0x8103f4
    void ProcessLostPacket(int a2, int a3);                             // 0x8103fc
    static void sProcessLostPacket(int a2, int a3);                     // 0x8104c0
    void ProcessAcknowledgedPacket(int a2, int a3);                     // 0x8104ec
    static void sProcessAcknowledgedPacket(int a2, int a3);             // 0x8105b0

    // Packet serialisation.
    int WritePacketData(int a2, int a3, NetBitStream& stream);          // 0x810610
    static int sWritePacketData(int a2, int a3, NetBitStream& stream);  // 0x81086c

    // Removal.
    int RemovePlayer(int index);                                        // 0x8108a8

    // Player list maintenance (batch e2-net-transport-CNetPlayerManager-0e46d6-0).
    int DisconnectPlayer(int a2);                                       // 0x8108c0
    int SetPlayerGamepadId(int a2, int a3);                             // 0x810b7c
    // 0x810bd4. Server only: stores the member id (a3) and gamepad id (a4) and state 1, and enables the player's
    // NetStruct when the member is not the local one. Returns the SetEnabled value in that branch (see
    // NetStruct::SetEnabled), else the IsServer / LocalMemberId result the pseudocode leaves in r0.
    unsigned char* ReassignPlayer(int player_id, int member_id, int gamepad_id);
    void ClearPlayers();                                                // 0x810c88
    void InitPlayers();                                                 // 0x8111ec
    void ResetPlayers();                                                // 0x811308
    std::vector<int>& GetPlayerIdList();                                // 0x8113fc
    int GetPlayerCount();                                               // 0x8114ec
    void ClearPlayerListCaches(int a2);                                 // 0x812608

    // Event pump and name lookup. ProcessEvents (0x8109a0) moves events 9437184 and 9437186..9437187 from events_ to
    // internal_events_. GetPlayerName(std::string, int) (0x811588) appends " (n)" to a name that another active
    // player already has; GetPlayerName(int) is 0x81181c.
    int ProcessEvents();
    std::string GetPlayerName(std::string name, int index);

    // Id lists by member (batch e2-net-transport-CNetPlayerManager-0e46d6-1).
    std::vector<int>& GetPlayerIdListByMemberId(int a2);                // 0x812d50
    int GetMemberPlayerCount(int a2);                                   // 0x812e74
    bool MemberHasActivePlayers(int a2);                                // 0x812e90
    std::vector<int>& GetLocalPlayerIdList();                           // 0x812ea8
    int GetLocalPlayerCount();                                          // 0x812ed0

    // Packet reads. AddPlayer(NetBitStream&, ...) is the server-side join request read by ReadPacketData.
    void AddPlayer(NetBitStream& stream, int a2, int a3);               // 0x811be8
    int AddPlayer(int member_id, int gamepad_id);                       // 0x8118d8, src/od2-CNetPlayerManager-AddPlayer.cpp
    std::string GetPlayerName(int member_id);                           // 0x81181c
    NetBitStream* ReadPacketData(int a2, int a3, NetBitStream& stream); // 0x811d74
    static NetBitStream* sReadPacketData(int a2, int a3, NetBitStream& stream);  // 0x811e94

    // Singleton and factory state. The definitions are in src/tb_transport-CNetPlayerManager-0.cpp.
    static CNetPlayerManager* s_playerManager;
    static CNetPlayerInfo* (*CreateNetPlayerInfo)();
    static void (*DeleteNetPlayerInfo)(CNetPlayerInfo*);

    // Members are public, as the original's callers read them (CNetPlayerInfo::Update posts to the two queues).
    friend class CNetPlayerInfo;  // IsHost reads the host member id at +0x170 (net_struct_.host_member_id_)

    CEventQueueBase events_{100};                   // +0x04 CEventQueue<CNetPlayerManager::EVENTS, 100>
    std::uint8_t pad_18[8] = {};                    // +0x18
    NetStructPlayerManager net_struct_;             // +0x20
    bool initialized_ = false;                      // +0x178
    CNetPlayerInfo* fallback_player_ = nullptr;     // +0x17c
    CEventQueueBase internal_events_{100};          // +0x180 CEventQueue<CNetPlayerManager::EVENTS_INTERNAL, 100>
    int player_slot_count_ = 0;                     // +0x194
    std::vector<CNetPlayerInfo*> players_;          // +0x198, +0x19c
    std::vector<CNetPlayerInfo*> secondary_players_;  // +0x1a4, +0x1a8
    std::int32_t last_host_id_ = 0;                        // +0x1b0. The host player id seen by the last Update(int); -1 from the constructor and ResetPlayers.
    bool id_list_dirty_ = false;                      // +0x1b4 (byte). Set by the id-list cache.
    std::vector<int> player_id_list_;                 // +0x1b8, +0x1bc (begin, end). Cached id list.
    std::map<int, std::vector<int>> player_list_caches_;  // +0x1c4. Per-key lists (name not recovered).
};
