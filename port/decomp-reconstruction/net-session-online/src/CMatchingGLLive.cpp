// Batch e2-net-session-online-CMatchingGLLive-07f9f6-0 (CMatchingGLLive, 12 functions), revised for the
// CMatchingGLLive layout of c_matching_gl_live.hpp (CMatching base, members at their original
// offsets). Integrator decision 6 applied: JoinRoomInternal is reconstructed; Initialize,
// WritePacketData, AddServer, CreateJoinRoomInternal and the others keep a precise note of what is
// still missing.
//
// Not reconstructed: GetRoomList (0x82051c). It returns a std::vector<tRoomInfo>; the tRoomInfo
// layout is now in t_room_info.hpp, but the body also needs the lobby observer's tGLRoomInfo list
// (+0x18 of the observer), which the observer header does not declare.
#include "net-transport/transport_manager.hpp"   // CTransportManager (host names)
#include "net-session-online/c_matching_gl_live.hpp"
#include <cstdint>
#include <cstring>
#include <ctime>
#include <string>
#include "net-session-online/c_lobby_parameter_and_query.hpp"
#include "net-session-online/c_matching_gl_live_observers.hpp"  // the lobby observer room vector (GetRoomList)
#include "net-session-online/tb/t_gl_room_info.hpp"
#include "net-session-online/c_room_attributes.hpp"
#include "net-session-online/c_sign_in_gl_live_observer.hpp"
#include "net-session-online/deps/platform_stand_ins.hpp"
#include "net-session-online/deps/stream_bytes.hpp"
#include "net-transport/connection_manager.hpp"  // CConnectionManager (real)
#include "net-session-online/deps/matching_queue.hpp"
#include "net-transport/net_bit_stream.hpp"
#include "net-transport/net_network_id.hpp"
#include "net-session-online/deps/xp_api.hpp"
#include "net-session-online/glx_player_mp_lobby.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_online_impl.hpp"
#include "net-session-online/c_sign_in.hpp"
#include "net-session-online/glx_player_leaderboard.hpp"
#include "net-session-online/glx_player_login.hpp"
#include "net-session-online/glx_player_message.hpp"
#include "net-session-online/glx_player_serever_config.hpp"
#include "net-session-online/glx_player_user_friend.hpp"
#include "net-session-online/glx_player_user.hpp"





























// 0x81f264 _ZN15CMatchingGLLive10InitializeEi
// CMatching::Initialize, the early return when the base flag +0x0c is already set, the GLXPlayerSereverConfig (0x44
// bytes, stored at +0x6710) built from the game version text (m_GameVersion, dword_A33870), the login observer fetched
// (created on first use) and copied into a temporary that is never read, and the login observer singleton registered on
// the config; the GLXPlayerUser (0x130 bytes, +0x6718), the CLobbyParameterAndQuery (0x40 bytes, +0x6808),
// GLXPlayerSereverConfig::SendGetServerConfig with its status (1 sets the login observer's configured flag and calls
// SetGCState(1); -1 prints "oconf.bar not found!"), the four packet registrations (types 2 and 3 and 9 to
// sBroadcastPacketReceiverCallback, type 4 to sPacketReceiverCallback; the second argument 2, 1, 0, 1 is the channel),
// the server member id +0x3644 = 1, and the return of the status.
std::int32_t CMatchingGLLive::Initialize(std::int32_t memberCapacity) {
    CMatching::Initialize(memberCapacity);
    if (initialized_) {
        return 0;
    }
    std::int32_t status = initialized_ ? 1 : 0;  // v13 = the byte at +0x0c, which is clear here

    glxServerConfig_ = new GLXPlayerSereverConfig(m_GameVersion.c_str());  // +0x6710
    {
        CSignInGLLiveObserver temporary(*GetGLXPlayerLoginObserver());  // copied by the original, never read
        glxServerConfig_->RegisterObserver(s_GLXPlayerLoginObserver);
    }
    glxUser_ = new GLXPlayerUser();                          // +0x6718
    lobbyQuery_ = new CLobbyParameterAndQuery();             // +0x6808

    glxServerConfig_->SendGetServerConfig(status);
    if (status == 1) {
        GetGLXPlayerLoginObserver()->SetConfigured(true);  // *(observer + 4) = 1
        SetGCState(1);
    } else if (status == -1) {
        XP_DEBUG_OUT("oconf.bar not found!\n");
    }

    CConnectionManager& manager = (*CConnectionManager::GetInstance());
    manager.RegisterPacketType(2, 2, &CMatchingGLLive::sBroadcastPacketReceiverCallback);
    manager.RegisterPacketType(3, 1, &CMatchingGLLive::sBroadcastPacketReceiverCallback);
    manager.RegisterPacketType(9, 0, &CMatchingGLLive::sBroadcastPacketReceiverCallback);
    manager.RegisterPacketType(4, 1, &CMatchingGLLive::sPacketReceiverCallback);

    serverMemberId_ = 1;  // +0x3644
    return status;
}

// 0x81f488 _ZN15CMatchingGLLive16JoinRoomInternalEy
// Returns -1 when the member count (virtual slot +0x60) is above the member capacity (base +0x08). Otherwise,
// under the mutex at +0x675c, it sends mpSendJoinLobby(room id, the byte at +0x0f, the player parameter
// string's data and length), sets the room operation +0x6834 to 9, stores the room id in the int at +0x680c,
// clears the pending flag at +0x3630, and returns 0. The room id argument is 64-bit; the lobby request and the
// stored key use its low 32 bits, as the original does. The player parameter string is the STLport string at
// +0x67f0: its start and finish pointers are the words the decompiled body reads at +0x6804 and +0x6800.
// Deviation: the lobby is the existing s_GLXPlayerMPLobby; the original creates it on first use.
std::int32_t CMatchingGLLive::JoinRoomInternal(std::uint64_t roomId) {
    if (GetMemberCount() > memberCapacity_) {
        return -1;
    }
    serversMutex_.Lock();
    const std::int32_t lobbyId = static_cast<std::int32_t>(roomId);
    GetGLXPlayerMPLobby()->mpSendJoinLobby(lobbyId, unk_0f, &playerParam_[0],
                                           static_cast<std::int32_t>(playerParam_.size()));
    roomOp_ = 9;                 // +0x6834
    roomKey_ = lobbyId;          // +0x680c
    roomOperationPending_ = false;  // +0x3630
    serversMutex_.Unlock();
    return 0;
}

// 0x81f53c _ZN15CMatchingGLLive15WritePacketDataEiiR12NetBitStream
// Reconstructed. The room attributes (vtable +0xa4) have their replicated block (CRoomAttributes +0x08) enabled
// when this object is the host (IsHost, the lobby mpIsMaster); the room serializes (CRoomAttributes::Serialize,
// 0x817ebc; the +0xa4 slot is fetched again, as the listing does); the base NetStructArray<MemberInfoNetStruct,32>
// serializes; then each of the 32 GLLive records at +0x3a00 is enabled when this object is the server or the
// record is the local member slot (GetMemberIndex(+0x3640)), and serialized through its vtable slot +0x08. The
// result is 1 when the base array, the room, or any record wrote.
std::int32_t CMatchingGLLive::WritePacketData(std::int32_t a2, std::int32_t a3, NetBitStream& stream) {
    CRoomAttributes* room = GetRoomAttributes();  // vtable +0xa4
    room->m_netRoomAttributes.SetEnabled(IsHost());  // NetStruct::SetEnabled(room + 8, IsHost())
    const bool roomWrote = GetRoomAttributes()->Serialize(a2, a3, stream);
    bool result = SerializeMemberArray(stream, a2, a3) || roomWrote;
    for (std::int32_t i = 0; i < kMemberInfoCount; ++i) {
        const bool enabled = IsServer() || GetMemberIndex(memberId_) == i;
        memberInfo_[i].SetEnabled(enabled);
        if (memberInfo_[i].Serialize(stream, a2, a3) != 0) {
            result = true;
        }
    }
    return result ? 1 : 0;
}

// 0x82051c _ZN15CMatchingGLLive11GetRoomListEv
// Reconstructed. The lobby observer (created on first use) has its room vector (+0x18, tGLRoomInfo*) copied; the
// room attribute map at +0x6720 is emptied; then each room becomes one tRoomInfo (the 0x3c4-byte record zeroed;
// id = the sign-extended 32-bit lobby id, name = the record name, +0x20 = the record int at +0x10, attributes =
// the 0x80-byte blob unserialized) and the unserialized attributes are inserted under the same key (insert_unique:
// an existing key keeps its first value). The records are returned in order. A null name reads as empty (the
// original would fault).
std::vector<tRoomInfo> CMatchingGLLive::GetRoomList() {
    const std::vector<tGLRoomInfo*> rooms = GetGLXPlayerMPLobbyObserver()->RoomList();
    std::vector<tRoomInfo> result;
    roomAttributes_.clear();
    for (const tGLRoomInfo* room : rooms) {
        tRoomInfo info;
        info.roomId = static_cast<std::int64_t>(room->roomId());
        info.name = room->name() != nullptr ? std::string(room->name()) : std::string();
        info.unk_20 = room->value10();
        CRoomAttributes parsed;
        parsed.Unserialize(room->attributesBlob(), 0x80u);
        roomAttributes_.insert({static_cast<std::uint64_t>(info.roomId), parsed});
        info.attributes = parsed;
        result.push_back(info);
    }
    return result;
}

// 0x81f648 _ZN15CMatchingGLLive18SendGameParametersEv
// Only the host sends. The room attributes (virtual slot +0xa4) are serialized into a 128-byte buffer
// (Serialize(char*, 0x80, 15)), stored as parameter 0 of the CLobbyParameterAndQuery at +0x6808 (its vtable +0x08,
// SetParameterValue), and sent with GLXPlayerMPLobby::mpSendSetGameParameter(buffer, 128, query).
void CMatchingGLLive::SendGameParameters() {
    if (!IsHost()) {
        return;
    }
    char buffer[128];
    GetRoomAttributes()->Serialize(buffer, 0x80u, 15u);
    lobbyQuery_->SetParameterValue(0, buffer);
    GetGLXPlayerMPLobby()->mpSendSetGameParameter(buffer, 128, lobbyQuery_);
}

// 0x81f6f8 _ZN15CMatchingGLLive10KickMemberEi
// Returns 1 when this is not the host or the lobby is not in a room (GLXPlayerMPLobby vtable +0x34). The member entry is
// looked up on the lobby observer (the invalid-member sentinel, id -1, when absent; the original copies the whole entry
// first, with no effect). An absent member returns 1. Otherwise the member's name goes to mpSendKickOut, event
// 0x40000e is queued on the output queue and 0 is returned.
std::int32_t CMatchingGLLive::KickMember(std::int32_t memberId) {
    if (!IsHost()) {
        return 1;
    }
    GLXPlayerMPLobby* lobby = GetGLXPlayerMPLobby();
    if (!lobby->mpIsInRoom()) {
        return 1;
    }
    tMemberInfo* member = GetGLXPlayerMPLobbyObserver()->GetMemberByMemberId(memberId);
    if (member->MemberId() == -1) {
        return 1;
    }
    char name[sizeof(tMemberInfo::name_)];
    std::memcpy(name, member->name_, sizeof(name));
    GetGLXPlayerMPLobby()->mpSendKickOut(name);
    MatchingOutputEventQueue().AddEvent(4194318, nullptr, 0);  // 0x40000e
    return 0;
}

// 0x81f948 _ZN15CMatchingGLLive20CreateJoinRoomInternalEbR15CRoomAttributes
// Returns -1 when the user is not logged in. The byte at +0x67ec takes the negated flag, the login nickname is read
// (GLXPlayerLogin +0x74), the attributes are copied into +0x3650 and serialized into a 128-byte buffer
// (Serialize(char*, 0x80, 15)), which becomes parameter 0 of the CLobbyParameterAndQuery at +0x6808 (vtable +0x08).
// With Game Center active mpSendCreateLobbyWithGameCenter(host UID, 0, the base byte +0x0e, player count, buffer, 128,
// the player parameter text and length, the query, the Game Center player list) is sent; otherwise mpSendCreateLobby(
// nickname, flag, the base byte +0x0e, the member capacity, buffer, 128, the player parameter text and length, query).
// The room operation +0x6834 becomes 3. Returns 0.
std::int32_t CMatchingGLLive::CreateJoinRoomInternal(bool flag, CRoomAttributes& attributes) {
    if (!IsLoggedIn()) {
        return -1;
    }
    unk_67ec = !flag;  // +0x67ec
    char* nickname = const_cast<char*>(GetGLXPlayerLogin()->nickName());
    createRoomAttributes_ = attributes;  // +0x3650, CRoomAttributes::operator=
    char buffer[128];
    attributes.Serialize(buffer, 0x80u, 15u);
    lobbyQuery_->SetParameterValue(0, buffer);
    if (gameCenterActive_) {
        GetGLXPlayerMPLobby()->mpSendCreateLobbyWithGameCenter(
            const_cast<char*>(s_GameCenterInfo.hostUid_), 0, static_cast<std::uint8_t>(baseRoomClosed_),
            s_GameCenterInfo.playerCount_, buffer, 128, &playerParam_[0], static_cast<std::int32_t>(playerParam_.size()),
            lobbyQuery_, s_GameCenterInfo.ids_);
    } else {
        GetGLXPlayerMPLobby()->mpSendCreateLobby(nickname, flag ? 1 : 0, static_cast<std::uint8_t>(baseRoomClosed_),
                                                 memberCapacity_, buffer, 128, &playerParam_[0],
                                                 static_cast<std::int32_t>(playerParam_.size()), lobbyQuery_);
    }
    roomOp_ = 3;  // +0x6834
    return 0;
}

/// 0x82078c _ZN15CMatchingGLLive10UpdateRoomEv
// Returns -1 when the user is not logged in. Consumes the GLLive events from s_eventQueueGLLiveInternal:
//   4 (peeked): with the lobby observer's room id (+0x08) not negative, the event is consumed, the game-started byte
//     (observer +0x06) goes to +0x6810, the room id to +0x680c, player status 3 is sent, and the create-room attributes
//     (+0x3650) are inserted in the room attribute map (+0x6720) under that id (an existing key keeps its value);
//   5 (peeked): with a positive room id the event is consumed and the same two stores are made;
//   6, 7 and 8 are consumed (8 with the observer in state 7 refreshes the room list through GetRoomList, vtable +0x90,
//     stamps +0x6820 with the time and clears the room operation).
// Then the room operation (+0x6834): 7 with the observer in state 7 refreshes the list, stamps the time, clears the
// operation and posts 8388622 on the matching internal queue; 9 with the observer in state 5 and 3 with the observer in
// state 4 clear the operation and post 4194312 on the output queue; any other operation returns -1; the rest returns 0.
std::int32_t CMatchingGLLive::UpdateRoom() {
    if (!IsLoggedIn()) {
        return -1;
    }
    CEventQueueBase& queue = s_eventQueueGLLiveInternal;
    if (queue.HasEventOccured(4, false)) {
        CMatchingGLLiveLobbyObserver* observer = GetGLXPlayerMPLobbyObserver();
        if (observer->RoomId() >= 0) {
            queue.ConsumeEvent(4);
            glLiveEventFlag_ = GetGLXPlayerMPLobbyObserver()->GameStarted() ? 1 : 0;  // +0x6810 = observer +0x06
            roomKey_ = GetGLXPlayerMPLobbyObserver()->RoomId();                        // +0x680c = observer +0x08
            GetGLXPlayerMPLobby()->mpSendSetPlayerStatus(3);
            roomAttributes_.insert({static_cast<std::uint64_t>(static_cast<std::int64_t>(roomKey_)),
                                    createRoomAttributes_});
        }
    }
    if (queue.HasEventOccured(5, false) && GetGLXPlayerMPLobbyObserver()->RoomId() > 0) {
        queue.ConsumeEvent(5);
        glLiveEventFlag_ = GetGLXPlayerMPLobbyObserver()->GameStarted() ? 1 : 0;
        roomKey_ = GetGLXPlayerMPLobbyObserver()->RoomId();
    }
    queue.HasEventOccured(6, true);
    queue.HasEventOccured(7, true);
    if (queue.HasEventOccured(8, true) && GetGLXPlayerMPLobbyObserver()->StateForTest() == 7) {  // observer +0x14
        (void)GetRoomList();  // vtable +0x90; the result is dropped, the room attribute map is rebuilt
        roomListTime_ = static_cast<std::int32_t>(std::time(nullptr));  // +0x6820
        roomOp_ = 0;                                                    // +0x6834
    }
    switch (roomOp_) {
        case 7:
            if (GetGLXPlayerMPLobbyObserver()->StateForTest() != 7) {
                return 0;
            }
            (void)GetRoomList();
            roomListTime_ = static_cast<std::int32_t>(std::time(nullptr));
            roomOp_ = 0;
            MatchingInternalEventQueue().AddEvent(8388622, nullptr, 0);
            return 0;
        case 9:
            if (GetGLXPlayerMPLobbyObserver()->StateForTest() == 5) {
                roomOp_ = 0;
                MatchingOutputEventQueue().AddEvent(4194312, nullptr, 0);
            }
            return 0;
        case 3:
            if (GetGLXPlayerMPLobbyObserver()->StateForTest() != 4) {
                return 0;
            }
            roomOp_ = 0;
            MatchingOutputEventQueue().AddEvent(4194312, nullptr, 0);
            return 0;
        default:
            return -1;
    }
}

// 0x820a6c _ZN15CMatchingGLLive6UpdateEv
// CMatching::Update first. Once the server config is loaded (GLXPlayerSereverConfig::s_isLoadConfig) the message,
// friend and leaderboard services are created one time (+0x6708/+0x670c, +0x6700/+0x6704, +0x671c; the message observer
// serves the message and the leaderboard services, the friend observer the friend one), the base initialized byte
// (+0x0c) is set and 0x800001 is posted on the matching internal queue. The sign-in is updated (CSignIn vtable +0x1c);
// while it is logged in (+0x11) and Game Center is off, the three services get the login UID, the friend list is
// requested once (InitializeFriend) and the three services update (vtable +0x08); the lobby then updates; a sign-in that
// is not logged in updates the server config instead. Nothing more happens until the base is initialized (returns 0).
// A connection event 0x600001 posts 0x800003 and consumes it, and without Game Center stores the sign-in name in the
// local member's name member (NetStructString<16>). With Game Center the state machine runs: the host sends state 7 once
// the lobby holds all players (state 6), a guest in state 4 asks the lobby for the host's room every second. Finally
// UpdateRoom, ProcessGLLiveEvents and ProcessFriendEvents are combined (OR).
std::int32_t CMatchingGLLive::Update() {
    CMatching::Update();
    if (GLXPlayerSereverConfig::s_isLoadConfig && glxComponentsCreated_ == 0) {  // +0x67eb
        glxMessage_ = new GLXPlayerMessage();
        messageObserver_ = new CMatchingGLLiveMessageObserver();
        glxMessage_->RegisterObserver(messageObserver_);
        glxUserFriend_ = new GLXPlayerUserFriend();
        friendObserver_ = new CMatchingGLLiveFriendObserver();
        glxUserFriend_->RegisterObserver(friendObserver_);
        glxLeaderboard_ = new GLXPlayerLeaderboard();
        glxLeaderboard_->RegisterObserver(messageObserver_);
        glxComponentsCreated_ = 1;
        initialized_ = true;  // +0x0c
        MatchingInternalEventQueue().AddEvent(8388609, nullptr, 0);
    }
    CSignIn* signIn = CSignIn::Get();
    signIn->Update();  // vtable +0x1c
    signIn = CSignIn::Get();
    if (signIn->LoggedIn()) {  // +0x11
        if (!gameCenterActive_) {
            glxMessage_->SetUID(GetGLXPlayerLogin()->GetUID());
            glxLeaderboard_->SetUID(GetGLXPlayerLogin()->GetUID());
            if (glFriendsRequested_ == 0) {
                InitializeFriend();
            }
            glxMessage_->Update();
            glxUserFriend_->Update();
            glxLeaderboard_->Update();
        }
        GetGLXPlayerMPLobby()->Update();
    } else {
        glxServerConfig_->Update();
    }
    if (!initialized_) {
        return 0;
    }
    CConnectionManager* connections = GetConnectionMgr();
    if (connections->event_queue_.HasEventOccured(6291457, false)) {  // 0x600001
        MatchingInternalEventQueue().AddEvent(8388611, nullptr, 0);
        connections->event_queue_.ConsumeEvent(6291457);
        if (!gameCenterActive_) {
            const std::int32_t index = GetMemberIndex(memberId_);  // +0x3640
            memberInfo_[index].setName(CSignIn::Get()->CredentialsName());  // the member's name member
        }
    }
    if (gameCenterActive_) {
        if (s_GameCenterInfo.isHost_ != 0) {
            if (gcState_ == 6 && GetMemberCount() == s_GameCenterInfo.playerCount_) {
                SetGCState(7);
            }
        } else if (gcState_ == 4) {
            if (static_cast<COnlineImpl*>(GetOnline())->ElapsedTimeMs(1000)) {
                GetGLXPlayerMPLobby()->mpSendGetLobbyForName(const_cast<char*>(s_GameCenterInfo.hostUid_));
            }
        }
    }
    const std::int32_t updated = UpdateRoom();
    const std::int32_t gl = ProcessGLLiveEvents() | updated;
    return gl | ProcessFriendEvents();
}

// 0x820e7c _ZN15CMatchingGLLive9AddServerEiR10CNetworkIdiR15CRoomAttributes
// Under the mutex at +0x675c, walks the server map at +0x39e8 in key order for an entry whose address equals
// the argument. A match gets its rank (+0x3c) replaced and its last-seen time (+0x20) set to the online clock,
// and the function returns. Otherwise a tMatchingPeer is built with the member id, the address, the online
// clock, the transport name of the address, the rank and a copy of the room attributes, and is inserted under
// the next key (the counter at +0x363c, which is incremented). When the pending flag at +0x3630 is set it posts
// event 8388622 on the matching queue.
// The transport name is what the transport manager reports for the address (vtable +0x1c, GetHostname). The clock
// is OnlineNowMs, the stand-in for the first virtual of GetOnline(), which the COnline vtable names GetAbsoluteTime
// (slot 0): both branches of the decompile store that call's result into +0x20, which tMatchingPeer calls the
// last-seen time. Partial: the peer's time offset (+0x40) is copied from an uninitialised temporary in the
// original; the port keeps 0; and the clock is still the stand-in.
void CMatchingGLLive::AddServer(std::int32_t memberId, CNetworkId& serverId, std::int32_t rank,
                                CRoomAttributes& attributes) {
    serversMutex_.Lock();
    for (auto& entry : servers_) {
        if (entry.second.address.IsEqual(serverId)) {
            entry.second.lastSeenMs = OnlineNowMs();  // +0x20
            entry.second.rank = rank;                 // +0x3c
            serversMutex_.Unlock();
            return;
        }
    }
    tMatchingPeer peer;
    peer.memberId = memberId;
    peer.address = serverId;
    peer.lastSeenMs = OnlineNowMs();
    peer.name = GetTransportMgr()->GetHostname(serverId);
    peer.rank = rank;
    peer.roomAttributes = attributes;
    const std::uint64_t key = static_cast<std::uint64_t>(static_cast<std::int64_t>(nextPeerKey_));
    ++nextPeerKey_;  // +0x363c
    servers_[key] = peer;
    if (roomOperationPending_) {
        MatchingInternalEventQueue().AddEvent(8388622, nullptr, 0);
    }
    serversMutex_.Unlock();
}

/// 0x821110 _ZN15CMatchingGLLive20ProcessServerMessageER10CNetworkIdR12NetBitStream
// Runs only when this is not the server. A 0x28-byte record is read raw from the stream: the 28-byte CNetworkId, the
// member id (+0x1c) and the member count (+0x20); the room attributes are unserialized from the stream, and
// AddServer(member id, address, member count, attributes) is called.
void CMatchingGLLive::ProcessServerMessage(CNetworkId& /*from*/, NetBitStream& stream) {
    if (IsServer()) {
        return;
    }
    struct ServerRecord {
        CNetworkId id;
        std::int32_t memberId;
        std::int32_t memberCount;
        std::int32_t pad;
    } record;
    static_assert(sizeof(ServerRecord) == 0x28, "the record is 0x28 bytes");
    record.id.Reset();
    CRoomAttributes attributes;
    stream.ReadByteArray(&record, 0x28);
    attributes.Unserialize(stream);
    AddServer(record.memberId, record.id, record.memberCount, attributes);
}

// 0x821218 _ZN15CMatchingGLLive30sBroadcastPacketReceiverCallbackER10CNetworkIdPci
// Forwards the packet to CMatchingGLLive::BroadcastPacketReceiverCallback with the static
// CMatching::s_Matching as the object. The assembly is a tail call: it loads s_Matching, moves the three
// arguments along and branches. Deviation: the binary does not check s_Matching for null, but calling a
// member function through a null pointer is undefined in C++, so this port returns when it is null. For a
// type-2 or unknown packet the binary does nothing with a null object either; only a type-1 packet differs,
// where the binary faults in IsServer.
// Partial through the callee: the type-1 branch of BroadcastPacketReceiverCallback runs the stub
// ProcessServerMessage. The forward itself is complete.
void CMatchingGLLive::sBroadcastPacketReceiverCallback(CNetworkId& from, char* data, int size) {
    // The object is CMatching::s_Matching. This callback is registered only by CMatchingGLLive::Initialize,
    // so the object is a CMatchingGLLive here (the binary calls the member without a type check).
    auto* matching = static_cast<CMatchingGLLive*>(CMatching::s_Matching);
    if (matching == nullptr) {
        return;
    }
    matching->BroadcastPacketReceiverCallback(from, data, size);
}
