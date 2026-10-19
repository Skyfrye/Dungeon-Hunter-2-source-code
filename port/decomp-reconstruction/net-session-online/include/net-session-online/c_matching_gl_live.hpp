// CMatchingGLLive: the matching layer on top of the Gameloft Live services. The original class
// derives from CMatching (ported as CMatching, c_matching_base.hpp, the first 0x3630 bytes) and
// adds the members listed below. The object is 0x6c08 bytes on the 32-bit target (operator new
// size in CMatching::Get, 0x800f8c). The port keeps every member in the original order with its
// 32-bit offset as a comment; the 64-bit object is larger and nothing here depends on the
// offsets. Pointer-width members are host pointers, and the STLport containers (std::map,
// std::list, std::vector, std::string) are the host's.
//
// Base members that this class reads (declared in CMatching): +0x08 member capacity,
// +0x0c initialized, +0x0d room hidden, +0x0e room closed, +0x0f byte set to 3 by the constructor.
//
// Layout of the members declared here (original 32-bit offsets):
//   +0x3630 room operation pending flag    +0x3638 room status bytes (2)   +0x363c next peer key
//   +0x3640 local member id                +0x3644 server member id        +0x3648 room status values (2)
//   +0x3650 create-room attributes         +0x39e8 server map              +0x3a00 member info table (32 x 360)
//   +0x6700..+0x671c GLX service pointers  +0x6720 room attributes map     +0x6738 search filter
//   +0x675c server mutex                   +0x67e8 Game Center flags       +0x67f0 player parameter string
//   +0x6808 lobby parameter and query      +0x680c room key                +0x6810 lobby event flag
//   +0x6814 room list                      +0x6834 room operation          +0x6838 Game Center state
//   +0x6840 Game Center room attributes    +0x6bd8 game friend list        +0x6be0 profile (user name, password)
//
// The offsets +0x6800 and +0x6804 that the bodies read are not members: they are the end and the
// start of the STLport string at +0x67f0 (the string is 24 bytes: a 16-byte buffer, then the
// finish pointer, then the start pointer). JoinRoomInternal and CreateJoinRoomInternal pass the
// string's data and length (finish - start) to the lobby.
#pragma once

#include <cstdint>
#include <list>
#include <map>
#include <string>
#include <vector>

#include "net-session-online/c_event_queue_base.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_room_attributes.hpp"
#include "net-session-online/game_center_info.hpp"
#include "net-session-online/c_room_search_filter.hpp"
#include "net-transport/sync.hpp"
#include "net-session-online/gl_friend_info.hpp"
#include "net-transport/net_struct.hpp"
#include "net-transport/tb/net_struct_string.hpp"
#include "net-session-online/t_matching_peer_t.hpp"
#include "net-session-online/t_room_info.hpp"

class CNetworkId;
class NetBitStream;
class CLobbyParameterAndQuery;
class CMatchingGLLiveFriendObserver;
class CMatchingGLLiveLobbyObserver;
class CMatchingGLLiveMessageObserver;
class CSignInGLLiveObserver;
class GLXPlayerLeaderboard;
class GLXPlayerMPLobby;
class GLXPlayerSereverConfig;
class GLXPlayerLogin;
class GLXPlayerUserFriend;
class GLXPlayerUser;
class GLXPlayerMessage;
class tFriendInfo;
class tMemberInfo;

class CMatchingGLLive : public CMatching {
public:
    // The class's OWN per-member record (32 of them at +0x3A00, stride 360 = 0x168), distinct from the
    // base CMatching's record (NetStructArray<CMatching::MemberInfoNetStruct,32> at +0x18, stride 432).
    // It is a real NetStruct since this pass; its recovery notes (element layout, the evidence for each
    // offset, and the difference from the base's record) are at the top of
    // tb/cmatching_gl_live_member_info_net_struct.hpp. Constructor and destructor bodies are in
    // src/tb_session-online-CMatchingGLLive_MemberInfoNetStruct-0.cpp.
    //
    // Element layout (original 32-bit offsets; sizeof 360):
    //   +0x000            NetStruct base, sizeof 0x130 (net-transport/net_struct.hpp). Its +0x18
    //                     (ConditionalLoad) and +0x1c (Load) slots are what
    //                     CMatchingGLLive::ReadPacketData reaches through the record vptr.
    //   +0x130..+0x167    NetStructString<16> member_, value std::string at +0x150: the member's user
    //                     name. ONE DeclareMember call in 0x81e680, so it is the record's member 0.
    class MemberInfoNetStruct : public NetStruct {
    public:
        // 0x81e680 _ZN15CMatchingGLLive19MemberInfoNetStructC1Ev. See the .cpp.
        MemberInfoNetStruct();
        // 0x81d1f4 _ZN15CMatchingGLLive19MemberInfoNetStructD1Ev. See the .cpp.
        ~MemberInfoNetStruct() override;
        // 0x81d298 _ZN15CMatchingGLLive19MemberInfoNetStructD0Ev: the D1 body, then CustomFree(this).
        // The port has no deleting-destructor symbol, so the D0 body lives in a named helper, as the
        // CMatchingLocal records' do. See the .cpp.
        void DeletingDestructor();

        // The record's one declared member: the member's user name (+0x130, value at +0x150).
        const std::string& name() const { return member_.GetValue(); }
        void setName(const std::string& value) { member_.SetValue(value); }
        NetStructString<16>& nameMember() { return member_; }
        const NetStructString<16>& nameMember() const { return member_; }

        // Not in the original: test seams. Enabled()/SetEnabled() read and write the NetStruct base's
        // enabled flag (the real field at +0x124) so the layout tests keep working after the record
        // stopped being a stand-in.
        bool Enabled() const { return enabled_; }
        void SetEnabled(bool enabled) { (void)NetStruct::SetEnabled(enabled); }

    private:
        // +0x130: NetStructString<16> member. Its value is at +0x150.
        NetStructString<16> member_;
    };

    // The value type of the server map at +0x39e8 is the global tMatchingPeer (t_matching_peer.hpp).

    // Number of elements of the member info table at +0x3a00 (the table is 0x2d00 bytes of 360-byte elements).
    static constexpr int kMemberInfoCount = 32;

    // Constructors and destructor (C1/C2 and D1/D2 pairs share one definition each).
    // Not in the original: a default constructor that leaves the local member id at 0 and does not read
    // profile.sav. The tests use it.
    CMatchingGLLive() = default;
    // 0x81e7f0 _ZN15CMatchingGLLiveC2Eb (C1 twin at 0x81e9dc). Partial, see the cpp.
    explicit CMatchingGLLive(bool gameCenterActive);
    // 0x81d2b4 _ZN15CMatchingGLLiveD1Ev (D2 twin at 0x81d614, D0 at 0x81d5f8). Partial, see the cpp.
    ~CMatchingGLLive() override;

    CMatchingGLLive(const CMatchingGLLive&) = delete;
    CMatchingGLLive& operator=(const CMatchingGLLive&) = delete;

    // Statics of the original (s_IsGameStarting, the GLLive event queue and the
    // observer singletons). Defined in src/c_matching_gl_live_glx04.cpp.
    static bool s_IsGameStarting;
    // 0x81c37c: GLXPlayerUserFriend singleton (defined in src/c_matching_gl_live_lifecycle.cpp).
    static GLXPlayerUserFriend* s_GLXPlayerUserFriend;
    // 0x81c5e8: GLXPlayerLogin singleton (defined in src/c_matching_gl_live_lifecycle.cpp).
    static GLXPlayerLogin* s_GLXPlayerLogin;
    static CEventQueueBase s_eventQueueGLLiveInternal;             // global queue
    static CMatchingGLLiveFriendObserver* s_GLXPlayerUserFriendObserver;
    static CMatchingGLLiveLobbyObserver* s_GLXPlayerMPLobbyObserver;
    static CSignInGLLiveObserver* s_GLXPlayerLoginObserver;
    // Lobby singleton (0x81ef7c creates it in the original) and the Game Center record.
    // Both are defined in src/c_matching_gl_live_glx05.cpp.
    static GLXPlayerMPLobby* s_GLXPlayerMPLobby;
    // The Game Center record (0xa33878, 0x18 bytes): host flag, user and host UIDs, player count, player list. Its
    // fields at 0xa3387c/0xa33880 are the dword_A3387C/dword_A33880 globals of the listings.
    static GameCenterInfo s_GameCenterInfo;
    // CMatchingGLLive::m_GameVersion (0xa3385c): the game version string. OnlineGameState::Init assigns it; Initialize
    // hands its text (dword_A33870, the string's start pointer) to the GLXPlayerSereverConfig constructor.
    static std::string m_GameVersion;

    // ---- Virtual slots, in vtable order. The byte offset of the slot (32-bit vtable) is in the
    // comment. Slots that CMatching implements and CMatching declares non-virtual (+0x1c
    // UpdateMemberIdList, +0x78 SetTeamId, +0x7c GetTeamId, +0x80 SetRoomMemberAttibute, +0x88
    // GetMemberIdList, +0x9c ReceiveGameBootInvitation, +0xb4 LimitRoomSlots) are inherited.
    // +0x90 GetRoomList and +0x34 GetTransportType (a static here) are noted at their places.

    // +0x00 0x81f488 _ZN15CMatchingGLLive16JoinRoomInternalEy
    virtual std::int32_t JoinRoomInternal(std::uint64_t roomId);
    // +0x04 0x81f948 _ZN15CMatchingGLLive20CreateJoinRoomInternalEbR15CRoomAttributes. Partial, see the cpp.
    virtual std::int32_t CreateJoinRoomInternal(bool flag, CRoomAttributes& attributes);
    // +0x08 0x81fadc _ZN15CMatchingGLLive18SearchRoomInternalER17CRoomSearchFilterbh. Partial, see the cpp.
    std::int32_t SearchRoomInternal(CRoomSearchFilter& filter, bool flag, std::uint8_t mode) override;
    // +0x0c 0x81f53c _ZN15CMatchingGLLive15WritePacketDataEiiR12NetBitStream. Partial, see the cpp.
    std::int32_t WritePacketData(std::int32_t a2, std::int32_t a3, NetBitStream& stream) override;
    // +0x10 0x81e4d0 _ZN15CMatchingGLLive14ReadPacketDataEiiR12NetBitStream. Partial, see the cpp.
    std::int32_t ReadPacketData(std::int32_t a2, std::int32_t a3, NetBitStream& stream) override;
    // +0x14 0x81c034 _ZN15CMatchingGLLive23ProcessAcknowledgedPacketEii. Partial, see the cpp.
    std::int32_t ProcessAcknowledgedPacket(std::int32_t a2, std::int32_t a3) override;
    // +0x18 0x81bfe4 _ZN15CMatchingGLLive17ProcessLostPacketEii. Partial, see the cpp.
    std::int32_t ProcessLostPacket(std::int32_t a2, std::int32_t a3) override;
    // +0x20/+0x24 destructors: declared above.
    // +0x28 0x81f264 _ZN15CMatchingGLLive10InitializeEi. Partial, see the cpp.
    std::int32_t Initialize(std::int32_t memberCapacity) override;
    // +0x2c 0x81f858 _ZN15CMatchingGLLive9TerminateEv. Partial, see the cpp.
    virtual std::int32_t Terminate();
    // +0x30 0x820a6c _ZN15CMatchingGLLive6UpdateEv. Partial, see the cpp.
    std::int32_t Update() override;
    // +0x34 0x81bc54 _ZN15CMatchingGLLive16GetTransportTypeEj: table {1, 2, 1}, 0 above 2. The object is not
    // read, so the port declares it static.
    static std::int32_t GetTransportType(std::uint32_t protocolType);
    // vtable +0x34 hook of CMatching: the table lookup above.
    int TransportTypeForProtocol(int protocol) override { return GetTransportType(static_cast<std::uint32_t>(protocol)); }
    // +0x38 0x81c880 _ZN15CMatchingGLLive9PingRoomsEv: posts event 8388624, returns 0.
    virtual std::int32_t PingRooms();
    // +0x3c 0x81f464 _ZN15CMatchingGLLive9LeaveRoomEv
    virtual std::int32_t LeaveRoom();
    // +0x40 0x81f6f8 _ZN15CMatchingGLLive10KickMemberEi. Partial, see the cpp.
    virtual std::int32_t KickMember(std::int32_t memberId);
    // +0x44 0x81bc24 _ZN15CMatchingGLLive8OpenRoomEb: returns 0.
    virtual std::int32_t OpenRoom(bool value);
    // +0x48 0x81bc1c _ZN15CMatchingGLLive9CloseRoomEv: returns 0.
    virtual std::int32_t CloseRoom();
    // +0x4c 0x81bc34 _ZN15CMatchingGLLive8ShowRoomEv: returns 0.
    virtual std::int32_t ShowRoom();
    // +0x50 0x81bc2c _ZN15CMatchingGLLive8HideRoomEv: returns 0.
    virtual std::int32_t HideRoom();
    // +0x54 0x81bc3c _ZN15CMatchingGLLive12IsRoomClosedEv
    virtual bool IsRoomClosed() { return baseRoomClosed_; }
    // +0x58 0x81bc44 _ZN15CMatchingGLLive12IsRoomHiddenEv
    virtual bool IsRoomHidden() { return roomHidden_; }
    // +0x5c 0x81df90 _ZN15CMatchingGLLive13GetMemberNameEi. Partial, see the cpp.
    virtual std::string GetMemberName(std::int32_t memberId);
    // +0x60 0x81c524 _ZNK15CMatchingGLLive14GetMemberCountEv. Partial, see the cpp.
    virtual std::int32_t GetMemberCount() const;
    // +0x64 0x81c4ac _ZN15CMatchingGLLive6IsInRoomEv. Partial, see the cpp. The body only reads state, so
    // it is the CMatching +0x64 pure slot and, like the binary's symbol, not const.
    bool IsInRoom() override;
    // +0x68 0x81ded4 _ZN15CMatchingGLLive6IsInRoomEi. Partial, see the cpp.
    bool IsInRoom(std::int32_t memberId) override;
    // +0x6c 0x81dea0 _ZNK15CMatchingGLLive11GetMemberIdEv
    virtual std::int32_t GetMemberId() const;
    // +0x70 0x81bbe8 _ZN15CMatchingGLLive11SetMemberIdEi
    virtual void SetMemberId(std::int32_t memberId) { memberId_ = memberId; }
    // +0x74 0x81bf98 _ZNK15CMatchingGLLive17GetServerMemberIdEv
    virtual std::int32_t GetServerMemberId() const;
    // +0x84 0x81bc78 _ZN15CMatchingGLLive13GetMemberMaskEi: see member_mask.hpp.
    virtual std::int32_t GetMemberMask(std::int32_t memberId) const;
    // +0x8c 0x81ec5c _ZN15CMatchingGLLive14GetFriendsListEb. Partial, see the cpp.
    virtual std::vector<tFriendInfo> GetFriendsList(bool notInState3);
    // +0x90 0x82051c _ZN15CMatchingGLLive11GetRoomListEv: the lobby observer's rooms as tRoomInfo records; it also
    // rebuilds the room attribute map at +0x6720.
    std::vector<tRoomInfo> GetRoomList() override;
    // +0x94 0x81cf30 _ZN15CMatchingGLLive14SendInvitationEPKcS1_b. Partial, see the cpp.
    virtual std::int32_t SendInvitation(const char* from, const char* to, bool flag);
    // +0x98 0x81bc08 _ZN15CMatchingGLLive17ReceiveInvitationEv: returns 0.
    virtual std::int32_t ReceiveInvitation();
    // +0xa0 0x81bc10 _ZN15CMatchingGLLive19GetInvitationRoomIdEv: returns 0 (64-bit).
    virtual std::uint64_t GetInvitationRoomId();
    // +0xa4 0x820508 _ZN15CMatchingGLLive17GetRoomAttributesEv: &roomAttributes_[roomKey_] (creates the entry).
    // The original uses std::map<unsigned long long, CRoomAttributes> at +0x6720; the key is the int at +0x680c.
    CRoomAttributes* GetRoomAttributes() override;
    // +0xa8 0x820318 _ZN15CMatchingGLLive23GetSearchRoomAttributesEy: copy of the room settings stored
    // under the key, or default settings when the key is not in the map.
    virtual CRoomAttributes GetSearchRoomAttributes(std::uint64_t key);  // not const: _ZN15CMatchingGLLive23GetSearchRoomAttributesEy (link-1)
    // +0xac 0x81bbf4 _ZN15CMatchingGLLive19GenerateNewMemberIdEv: always -1 (no generation here).
    std::int32_t GenerateNewMemberId() override;  // NON-const: the binary symbol has no K
    // +0xb0 0x81c460 _ZN15CMatchingGLLive9GetRoomIdEv. Partial, see the cpp.
    virtual std::int64_t GetRoomId();

    // ---- CMatching slots served by the methods above (the base names them by use).
    // +0x6c LocalMemberId(), +0x74 ServerMemberId(), +0x84 MemberBit(int), +0x64 IsInRoom(),
    // +0x88 ConnectedMemberIds(): CMatching::GetMemberIdList(), +0xa4 GetRoomAttributes() (above).
    int LocalMemberId() const override { return GetMemberId(); }
    int ServerMemberId() const override { return GetServerMemberId(); }
    std::uint32_t MemberBit(int memberId) const override {
        return static_cast<std::uint32_t>(GetMemberMask(memberId));
    }
    std::vector<int> ConnectedMemberIds() const override { return GetMemberIdList(); }
    // CMatching::IsServer is non-virtual in the original; the base keeps it virtual so tests can override.
    bool IsServer() const override { return CMatching::IsServer(); }
    // Seams for CConnectionManager ((*CConnectionManager::GetInstance()) in the original), served by the stand-in in
    // deps/net-transport/connection_manager.hpp.
    std::vector<int> ConnectionMemberIdList() const override;
    bool IsConnectedMember(int memberId) const override;
    void DisconnectMember(int memberId) override;

    // ---- Non-virtual methods.

    // 0x81bbfc _ZN15CMatchingGLLive25SendConnectRequestMessageE12tPACKET_TYPEi: returns 0.
    std::int32_t SendConnectRequestMessage(int packetType, std::int32_t target) const;
    // 0x81bc04 _ZN15CMatchingGLLive28ProcessConnectRequestMessageER10CNetworkIdR12NetBitStream: no-op.
    void ProcessConnectRequestMessage(CNetworkId& from, NetBitStream& stream) const;
    // 0x81bc74 _ZN15CMatchingGLLive29ProcessConnectResponseMessageER10CNetworkIdR12NetBitStream: no-op.
    void ProcessConnectResponseMessage(CNetworkId& from, NetBitStream& stream) const;
    // 0x81bc94 _ZN15CMatchingGLLive20ProcessClientMessageER10CNetworkIdR12NetBitStream: no-op.
    void ProcessClientMessage(CNetworkId& from, NetBitStream& stream) const;
    // 0x81bc4c _ZN15CMatchingGLLive19ProcessFriendEventsEv: returns 0.
    std::int32_t ProcessFriendEvents() const;
    // 0x81bc98 _ZN15CMatchingGLLive13InitGLFriendsEv: no-op.
    void InitGLFriends() const;
    // The four GL friend accessors below use the friend list at +0x6700 (glxUserFriend_),
    // which may be null.
    // 0x81c098 _ZNK15CMatchingGLLive17GetGLFriendsCountEv: count, or 0 when the list is null.
    std::int32_t GetGLFriendsCount() const;
    // 0x81c0ac _ZNK15CMatchingGLLive16GetGLFriendStateEi: state of a friend, -1 out of range.
    std::int32_t GetGLFriendState(std::int32_t index) const;
    // 0x81c0e8 _ZNK15CMatchingGLLive18SendGLFriendInviteEPKc: returns the result of sendAddUserFriend.
    std::int32_t SendGLFriendInvite(const char* name) const;
    // 0x81c0fc _ZNK15CMatchingGLLive16GetGLFriendsNameEi: name of a friend, null out of range.
    const char* GetGLFriendsName(std::int32_t index) const;
    // 0x81bc9c _ZN15CMatchingGLLive19GLFriendsListLoadedEv
    bool GLFriendsListLoaded() const { return glFriendsListLoaded_ != 0; }
    // 0x81bca8 _ZN15CMatchingGLLive19GLFriendsListLoadedEb
    void GLFriendsListLoaded(bool loaded) { glFriendsListLoaded_ = loaded ? 1 : 0; }

    // 0x81bcd4 _ZN15CMatchingGLLive17SetGLLivePasswordEPKc: copies the password when it is
    // at most 15 characters (16-byte buffer). Partial: a rejected password returns nullptr;
    // the original returns the length in the same register.
    char* SetGLLivePassword(const char* password);
    // 0x81bd08 _ZN15CMatchingGLLive17SetGLLiveUserNameEPKc: same rule as the password.
    char* SetGLLiveUserName(const char* userName);
    // 0x81bd3c _ZN15CMatchingGLLive17SaveGLLiveProfileEv: writes profile.sav.
    int SaveGLLiveProfile();
    // 0x81be2c _ZN15CMatchingGLLive17LoadGLLiveProfileEv: reads profile.sav.
    int LoadGLLiveProfile();
    // 0x81bf88 _ZN15CMatchingGLLive10IsLoggedInEv: reads the sign-in logged-in flag (CSignIn::LoggedIn).
    int IsLoggedIn();
    // 0x81c084 _ZN15CMatchingGLLive15GLSendHighScoreEi: returns the result of sendHighScore.
    std::int32_t GLSendHighScore(std::int32_t score);
    // 0x81c18c _ZN15CMatchingGLLive6GetGGIEv: GGI of the GLX server config component (+0x6710), 0 when none.
    unsigned long GetGGI();
    // 0x81c32c _ZN15CMatchingGLLive30GetGLXPlayerUserFriendObserverEv
    static CMatchingGLLiveFriendObserver* GetGLXPlayerUserFriendObserver();
    // 0x81c410 _ZN15CMatchingGLLive27GetGLXPlayerMPLobbyObserverEv. Only the static singleton is touched and the
    // original never uses `this`; declaring it static keeps the very same mangled name (no K) and lets the const
    // slots (GetMemberCount, GetGLLiveMemberId) call it.
    static CMatchingGLLiveLobbyObserver* GetGLXPlayerMPLobbyObserver();
    // 0x81c598 _ZN15CMatchingGLLive25GetGLXPlayerLoginObserverEv
    static CSignInGLLiveObserver* GetGLXPlayerLoginObserver();
    // 0x81c1a0 _ZN15CMatchingGLLive26ProcessChangeServerMessageEiR12NetBitStream
    void ProcessChangeServerMessage(int from, NetBitStream& stream);
    // 0x81c8b8 _ZN15CMatchingGLLive24ProcessRoomStatusMessageEiR12NetBitStream
    void ProcessRoomStatusMessage(int from, NetBitStream& stream);
    // 0x81c938 _ZN15CMatchingGLLive22PacketReceiverCallbackEiPci. Partial: the case for
    // message type 3 (ProcessMemberJoinMessage, 0x81c200) is not dispatched yet.
    void PacketReceiverCallback(int from, char* data, int size);
    // 0x81ca24 _ZN15CMatchingGLLive19ProcessGLLiveEventsEv
    std::int32_t ProcessGLLiveEvents();

    // 0x81ef7c _ZN15CMatchingGLLive19GetGLXPlayerMPLobbyEv. Creates the lobby on first use (socket URL from the login
    // observer, the lobby observer singleton, a 0x94-byte allocation).
    static GLXPlayerMPLobby* GetGLXPlayerMPLobby();
    // 0x81c5e8 _ZN15CMatchingGLLive17GetGLXPlayerLoginEv. Creates the singleton on first use and
    // registers the login observer on it.
    static GLXPlayerLogin* GetGLXPlayerLogin();

    // 0x81c37c _ZN15CMatchingGLLive22GetGLXPlayerUserFriendEv.
    static GLXPlayerUserFriend* GetGLXPlayerUserFriend();
    // 0x81c138 _ZN15CMatchingGLLive18GetGLFriendsNumberEi
    const char* GetGLFriendsNumber(std::int32_t index);
    // 0x81c174 _ZN15CMatchingGLLive23SendRequestLostPasswordEPc
    std::int32_t SendRequestLostPassword(char* name);
    // 0x81c748 _ZN15CMatchingGLLive16InitializeFriendEv
    std::int32_t InitializeFriend();
    // 0x81c78c _ZN15CMatchingGLLive23SendGLFriendsGameInviteEPc. Partial, see the cpp.
    std::int32_t SendGLFriendsGameInvite(char* name);
    // 0x81ee10 _ZN15CMatchingGLLive19AddFriendInGameListE12GLFriendInfo: appends the entry to the list at +0x6bd8.
    void AddFriendInGameList(GLFriendInfo info);
    // 0x81ee6c _ZN15CMatchingGLLive16GetGLFriendsListEv: a copy of the list at +0x6bd8, in order.
    std::list<GLFriendInfo> GetGLFriendsList() const;
    // 0x81dd04 _ZNK15CMatchingGLLive17GetGLLiveMemberIdEv. Partial: the name lookup is not reproduced.
    std::int32_t GetGLLiveMemberId() const;
    // 0x81f04c _ZN15CMatchingGLLive14SetPlayerParamESsb. Partial, see the cpp.
    void SetPlayerParam(std::string value, bool sendToLobby);
    // 0x81f128 _ZN15CMatchingGLLive9StartGameEv
    void StartGame();
    // 0x81f178 _ZN15CMatchingGLLive10SetGCStateEi. Partial: the CSignIn event (state 1) is not reconstructed.
    // State 3 calls CreateJoinRoom (partial callee). States 2 and 7 are reconstructed.
    void SetGCState(std::int32_t state);
    // 0x81f44c _ZN15CMatchingGLLive19SendSetPlayerStatusEc. Partial: the original returns the
    // lobby call's result; the port returns 0 because mpSendSetPlayerStatus is void here.
    std::int32_t SendSetPlayerStatus(std::uint8_t status);
    // 0x81f524 _ZN15CMatchingGLLive6IsHostEv: the lobby's mpIsMaster (vtable slot 60).
    bool IsHost();
    // The high-score / ranking service at +0x671c (NativeShowLeaderboard reads it through CMatching::Get()).
    GLXPlayerLeaderboard* Leaderboard() const { return glxLeaderboard_; }
    // 0x81c200 _ZN15CMatchingGLLive24ProcessMemberJoinMessageEiR12NetBitStream. Partial, see the cpp.
    void ProcessMemberJoinMessage(std::int32_t a2, NetBitStream& stream);
    // 0x81c2c4 _ZN15CMatchingGLLive17SendClientRequestEv. Partial, see the cpp.
    std::int32_t SendClientRequest();
    // 0x81c494 _ZN15CMatchingGLLive20GetMemberByMemberIdEi. The original returns the observer's tMemberInfo pointer
    // in its int result register; the return type is not part of the symbol, so the port returns the pointer.
    tMemberInfo* GetMemberByMemberId(std::int32_t memberId);
    // 0x81c6cc _ZN15CMatchingGLLive10IsMyFriendEPc. Partial, see the cpp.
    std::int32_t IsMyFriend(char* name);
    // 0x81c9e8 _ZN15CMatchingGLLive23sPacketReceiverCallbackEiPci. Partial, see the cpp.
    static void sPacketReceiverCallback(std::int32_t from, char* data, int size);
    // 0x81cec0 _ZN15CMatchingGLLive12IsFriendWithEPKcb. Partial, see the cpp.
    bool IsFriendWith(const char* name, bool flag);
    // 0x81dba0 _ZN15CMatchingGLLive19GetGLLiveMemberIdListEv. Partial, see the cpp.
    std::vector<std::int32_t> GetGLLiveMemberIdList();
    // 0x81e25c _ZN15CMatchingGLLive12SyncMemberIdEv. Partial, see the cpp.
    void SyncMemberId();
    // 0x82078c _ZN15CMatchingGLLive10UpdateRoomEv. Partial, see the cpp.
    std::int32_t UpdateRoom();
    // 0x81f648 _ZN15CMatchingGLLive18SendGameParametersEv. Partial, see the cpp.
    void SendGameParameters();
    // 0x821188 _ZN15CMatchingGLLive31BroadcastPacketReceiverCallbackER10CNetworkIdPci. Partial: the
    // type 1 (server) branch calls ProcessServerMessage, which is a stub (see the cpp).
    void BroadcastPacketReceiverCallback(CNetworkId& from, char* data, int size);
    // 0x820e7c _ZN15CMatchingGLLive9AddServerEiR10CNetworkIdiR15CRoomAttributes. See the cpp.
    void AddServer(std::int32_t memberId, CNetworkId& serverId, std::int32_t rank, CRoomAttributes& attributes);
    // 0x821110 _ZN15CMatchingGLLive20ProcessServerMessageER10CNetworkIdR12NetBitStream. Partial, see the cpp.
    void ProcessServerMessage(CNetworkId& from, NetBitStream& stream);
    // 0x821218 _ZN15CMatchingGLLive30sBroadcastPacketReceiverCallbackER10CNetworkIdPci. Partial, see the cpp.
    static void sBroadcastPacketReceiverCallback(CNetworkId& from, char* data, int size);

    // Not in the original: test seams.
    void SetRoomFlagsForTest(bool closed, bool hidden) {
        baseRoomClosed_ = closed;
        roomHidden_ = hidden;
    }
    std::int32_t MemberIdForTest() const { return memberId_; }
    std::int32_t ServerMemberIdForTest() const { return serverMemberId_; }
    std::int32_t RoomValue0ForTest() const { return roomValue0_; }
    std::int32_t RoomValue1ForTest() const { return roomValue1_; }
    std::uint8_t RoomStatusForTest(int index) const { return roomStatus_[index]; }
    const char* UserNameForTest() const { return userName_; }
    const char* PasswordForTest() const { return password_; }
    bool ProfileFlagForTest() const { return profileFlag_ != 0; }
    void SetProfileFlagForTest(bool value) { profileFlag_ = value ? 1 : 0; }
    bool GLLiveEventFlagForTest() const { return glLiveEventFlag_ != 0; }
    std::int32_t RoomOpForTest() const { return roomOp_; }
    std::int32_t GcStateForTest() const { return gcState_; }
    void SetGameCenterActiveForTest(bool value) { gameCenterActive_ = value; }
    // Production accessor for the Game Center flag at +0x67e8 (read inline by OnMPProcessPushLeaveLobby and
    // CSignInGLLive; the constructor argument).
    bool GameCenterActive() const { return gameCenterActive_; }
    void SetRoomKeyForTest(std::int32_t key) { roomKey_ = key; }
    std::int32_t RoomKeyForTest() const { return roomKey_; }
    const CRoomSearchFilter& SearchFilterForTest() const { return searchFilter_; }
    void SetGLFriendListForTest(GLXPlayerUserFriend* list) { glxUserFriend_ = list; }
    void SetMemberCapacityForTest(std::int32_t capacity) { memberCapacity_ = capacity; }
    std::int32_t MemberCapacityForTest() const { return memberCapacity_; }
    void SetInitializedForTest(bool value) { initialized_ = value; }
    bool RoomOperationPendingForTest() const { return roomOperationPending_; }
    void SetRoomOperationPendingForTest(bool value) { roomOperationPending_ = value; }
    std::int32_t NextPeerKeyForTest() const { return nextPeerKey_; }
    const std::map<std::uint64_t, tMatchingPeer>& ServersForTest() const { return servers_; }
    const CRoomAttributes& CreateRoomAttributesForTest() const { return createRoomAttributes_; }
    bool Unk67ecForTest() const { return unk_67ec; }
    const std::string& PlayerParamForTest() const { return playerParam_; }
    const MemberInfoNetStruct& MemberInfoForTest(int index) const { return memberInfo_[index]; }
    GLXPlayerSereverConfig* ServerConfigForTest() const { return glxServerConfig_; }
    GLXPlayerUser* UserForTest() const { return glxUser_; }
    CLobbyParameterAndQuery* LobbyQueryForTest() const { return lobbyQuery_; }
    std::uint8_t UnkByte0fForTest() const { return unk_0f; }
    const std::list<GLFriendInfo>& GLFriendListForTest() const { return glFriends_; }
    std::list<GLFriendInfo>& GLFriendListForTest() { return glFriends_; }

    // The message observer sets unk_6c02 for response codes 0x6f and 0x70 (0x8241e0). Access only.
    friend class CMatchingGLLiveMessageObserver;

public:  // members are public (Track B decision 9)
    // Members in the original order. Offsets are 32-bit; the CMatching part occupies +0x00..+0x362f.
    bool roomOperationPending_ = false;            // +0x3630 (set by Create/Search in the sibling classes, cleared by Join; AddServer posts 8388622 when set)
    std::uint8_t pad_3631[7] = {};                 // +0x3631
    std::uint8_t roomStatus_[2] = {0, 0};          // +0x3638, +0x3639 (ProcessRoomStatusMessage bytes 0 and 1)
    std::uint8_t pad_363a[2] = {};                 // +0x363a
    std::int32_t nextPeerKey_ = 0;                 // +0x363c (key of the next server map entry; the constructor does not set it)
    std::int32_t memberId_ = 0;                    // +0x3640 (local member id, -1 from the constructor)
    std::int32_t serverMemberId_ = 0;              // +0x3644 (Initialize sets 1)
    std::int32_t roomValue0_ = 0;                  // +0x3648 (ProcessRoomStatusMessage bytes 4..7)
    std::int32_t roomValue1_ = 0;                  // +0x364c (ProcessRoomStatusMessage bytes 8..11)
    CRoomAttributes createRoomAttributes_;         // +0x3650 (copy of the attributes given to CreateJoinRoomInternal; 0x394 bytes)
    std::uint8_t pad_39e4[4] = {};                 // +0x39e4 (alignment of the map)
    std::map<std::uint64_t, tMatchingPeer> servers_;  // +0x39e8 (the rb-tree header, 0x14 bytes; node count at +0x39f8)
    std::uint8_t pad_39fc[4] = {};                 // +0x39fc (alignment of the member info table)
    MemberInfoNetStruct memberInfo_[kMemberInfoCount];  // +0x3a00 (32 elements of 360 bytes, ends at +0x6700)
    GLXPlayerUserFriend* glxUserFriend_ = nullptr;  // +0x6700 (friend list, null until created)
    CMatchingGLLiveFriendObserver* friendObserver_ = nullptr;  // +0x6704 (flag at +4 of the observer)
    GLXPlayerMessage* glxMessage_ = nullptr;        // +0x6708 (sends invitations and game invites)
    CMatchingGLLiveMessageObserver* messageObserver_ = nullptr;  // +0x670c (4-byte object, vtable only; freed with CustomFree)
    GLXPlayerSereverConfig* glxServerConfig_ = nullptr;  // +0x6710 (GGI source; created by Initialize, 0x44 bytes)
    std::uint8_t pad_6714[4] = {};                  // +0x6714 (no recovered access)
    GLXPlayerUser* glxUser_ = nullptr;              // +0x6718 (created by Initialize, 0x130 bytes; password retrieval)
    GLXPlayerLeaderboard* glxLeaderboard_ = nullptr;  // +0x671c (high-score sender)
    std::map<std::uint64_t, CRoomAttributes> roomAttributes_;  // +0x6720 (room id -> room settings; node count at +0x6730)
    std::uint8_t pad_6734[4] = {};                  // +0x6734
    CRoomSearchFilter searchFilter_;                // +0x6738 (copied by SearchRoomInternal; 0x24 bytes)
    CNetMutex serversMutex_;                        // +0x675c (taken by AddServer and JoinRoomInternal)
    CNetMutex unk_6760;                             // +0x6760 (constructed and destroyed only)
    std::int32_t unk_6764 = 0;                      // +0x6764 (zeroed by the constructor)
    std::uint8_t pad_6768[0x80] = {};               // +0x6768..+0x67e7 (no recovered access)
    bool gameCenterActive_ = false;                 // +0x67e8 (Game Center mode, gates SetGCState; constructor argument)
    std::uint8_t glFriendsRequested_ = 0;           // +0x67e9 (set by InitializeFriend)
    std::uint8_t unk_67ea = 0;                      // +0x67ea (zeroed by the constructor)
    std::uint8_t glxComponentsCreated_ = 0;         // +0x67eb (Update creates the message, friend and leaderboard services once)
    bool unk_67ec = false;                          // +0x67ec (CreateJoinRoomInternal stores the negated first argument; no reader recovered)
    bool useAlphaServer_ = false;                   // +0x67ed (read by the sign-in observer; OnlineGameState::Init sets it; Terminate clears it)
    std::uint8_t pad_67ee[2] = {};                  // +0x67ee
    std::string playerParam_;                       // +0x67f0 (player parameter text, at most 0x80 bytes; the STLport string is 24 bytes: its finish pointer is at +0x6800 and its start pointer at +0x6804)
    CLobbyParameterAndQuery* lobbyQuery_ = nullptr;  // +0x6808 (created by Initialize, 0x40 bytes)
    std::int32_t roomKey_ = 0;                      // +0x680c (room id used by GetRoomAttributes)
    std::uint8_t glLiveEventFlag_ = 0;              // +0x6810 (set by event 5, cleared by 6; UpdateRoom copies the lobby observer's +0x06 byte)
    std::uint8_t unk_6811 = 0;                      // +0x6811 (zeroed by the constructor)
    std::uint8_t pad_6812[2] = {};                  // +0x6812
    std::vector<tRoomInfo> roomList_;               // +0x6814 (refreshed by UpdateRoom through GetRoomList; 12-byte STLport vector)
    std::int32_t roomListTime_ = 0;                 // +0x6820 (time(nullptr) at the last room list refresh)
    std::vector<std::int32_t> unk_6824;             // +0x6824 (12-byte vector, constructed and destroyed only)
    std::int32_t unk_6830 = 0;                      // +0x6830 (zeroed by the constructor)
    std::int32_t roomOp_ = 0;                       // +0x6834 (room operation state: 3 create, 5 leave, 7 search, 9 join)
    std::int32_t gcState_ = 0;                      // +0x6838 (Game Center state, see SetGCState)
    std::uint8_t pad_683c[4] = {};                  // +0x683c
    CRoomAttributes gcRoomAttributes_;              // +0x6840 (Game Center room settings; SetGCState(3) creates the room with a copy; 0x394 bytes)
    std::uint8_t pad_6bd4[4] = {};                  // +0x6bd4
    std::list<GLFriendInfo> glFriends_;             // +0x6bd8 (game friend list: 8-byte STLport list head)
    std::uint8_t glFriendsListLoaded_ = 0;          // +0x6be0
    char userName_[16] = {};                        // +0x6be1 (GLLive user name, 16 bytes)
    std::uint8_t profileFlag_ = 0;                  // +0x6bf1 (remember flag in profile.sav)
    char password_[16] = {};                        // +0x6bf2 (GLLive password, 16 bytes)
    std::uint8_t unk_6c02 = 0;                      // +0x6c02 (the message observer sets it for response codes 0x6f and 0x70; no reader recovered)
    std::uint8_t pad_6c03[5] = {};                  // +0x6c03 (the object ends at +0x6c08)
};
