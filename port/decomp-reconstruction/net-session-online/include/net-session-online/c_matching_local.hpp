// CMatchingLocal: the matching layer for a local (LAN or Bluetooth-free) session. Only
// the small accessors are reconstructed here. The room list, the server list, the
// packet callbacks and the destructors are queued.
//
// Layout (original 32-bit offsets, kept as comments):
//   +0x3638 local member id (int)
//   +0x4b6d room closed flag (byte)
//   +0x4b8d room hidden flag (byte). When set, IsRoomHidden reads true.
#pragma once

#include <cstdint>
#include <map>
#include <string>
#include <vector>

#include "net-session-online/c_matching_base.hpp"  // CMatching, the base class (one definition)
#include "net-session-online/c_room_attributes.hpp"  // CRoomAttributes (real)
#include "net-session-online/c_room_search_filter.hpp"  // CRoomSearchFilter (real)
#include "net-session-online/deps/platform_stand_ins.hpp"
#include "net-session-online/deps/stream_bytes.hpp"
#include "net-transport/connection_manager.hpp"  // CConnectionManager (real)
#include "net-transport/sync.hpp"
#include "net-session-online/t_friend_info.hpp"
#include "net-session-online/t_matching_peer.hpp"

// The 40-byte record that SendServerResponse writes and ProcessServerMessage reads
// (0x28 bytes on the wire; the last three bytes are padding).
struct RoomServerHeader {
    CNetworkId listenId;       // +0x00 (28 bytes)
    std::int32_t memberId;     // +0x1c
    std::int32_t memberCount;  // +0x20
    std::uint8_t flag;         // +0x24 (true: remove the server)
    std::uint8_t reserved[3];  // +0x25 (padding, zeroed)
};
static_assert(sizeof(RoomServerHeader) == 40, "RoomServerHeader is the 40-byte wire record");

class CMatchingLocal : public CMatching {
public:
    // Nested replicated struct, defined in tb/cmatching_local_server_backup_net_struct.hpp.
    class ServerBackupNetStruct;
    // Nested replicated struct, defined in tb/cmatching_local_room_info_net_struct.hpp.
    class RoomInfoNetStruct;

    // The class's OWN per-member record (32 of them at CMatchingLocal +0x4BE0, stride 408), distinct from
    // the base CMatching's (32 at +0x20, stride 432). The old empty `class MemberInfoNetStruct;` forward
    // declaration that stood here was a misreading: it made the name look like the base's nested type,
    // while the binary's symbols _ZN14CMatchingLocal19MemberInfoNetStruct{C1,D1,D0}Ev (0x806b98, 0x806258,
    // 0x806344) are a separate class with its own vtable (_ZTVN14CMatchingLocal19MemberInfoNetStructE) and
    // no NetStructArray instantiation that mentions it (the base's is
    // NetStructArray<N9CMatching19MemberInfoNetStructELj32EE). This record is what
    // CMatchingLocal::ReadPacketData / WritePacketData / ProcessLostPacket / ProcessAcknowledgedPacket walk
    // with an explicit 408 stride, and what IsInRoom(int) reads at 408*i + 0x4D30.
    //
    // Element layout (32-bit offsets, from 0x806b98 and the 408-stride call sites; element base = 0):
    //   +0x000  NetStruct base (vptr; slots +0x0c Serialize, +0x14 Load, +0x40 ProcessAcknowledgedPacket,
    //           +0x44 ProcessLostPacket)
    //   +0x130  NetStructInt<32> member, value at +0x150   (id; ReadPacketData and WritePacketData read
    //           the int at element +0x150, and IsInRoom(int) the word at element +0x720... which is the
    //           same field in a record whose base is 4 bytes later; see the .cpp note)
    //   +0x158  NetStructNetworkId member (NetStructMemberType<CNetworkId> with NetStructNetworkId's Read
    //           and Write), value at +0x178 (the listen address). IDENTIFIED this pass: the table the
    //           constructor stores at element +0x158 is off_992008, and 0x992008 is
    //           _ZTV18NetStructNetworkId + 8 -- the constructor at 0x806c64..0x806c78 loads
    //           _ZTV18NetStructNetworkId_ptr, adds 8 to the table base 0x992000 and stores it, so the
    //           member IS the net-transport NetStructNetworkId already modelled in
    //           net-transport/net_struct.hpp. Its slots are Erase 0x801bfc,
    //           NetStructNetworkId::Write 0x801f14, NetStructNetworkId::Read 0x801de0, PostLoad 0x36d1f8,
    //           GetSizeBits 0x36d1fc, D1 0x801b04, D0 0x801bc8,
    //           NetStructMemberType<CNetworkId>::SetValue 0x8020b8, TestValue 0x801b8c, GetValue 0x801b84.
    //           So the listen address DOES serialize, through this member (the constructor's second
    //           DeclareMember), and it is modelled as the real member now instead of a plain CNetworkId.
    //
    // The constructor 0x806b98 shows exactly this pair: the int member's value word at +0x150 and the
    // CNetworkId member at +0x158 (built from a Reset() CNetworkId), then two DeclareMember calls.
    struct MemberInfoNetStruct : public NetStruct {
        // 0x806b98 _ZN14CMatchingLocal19MemberInfoNetStructC1Ev. Body in
        // src/tb_session-online-CMatchingLocal_MemberInfoNetStruct-0.cpp.
        MemberInfoNetStruct();

        // The id is not a 16-bit count in this record: the call sites read `element + 0x150` as an int.
        std::int32_t id() const { return idMember_.GetValue(); }
        void setId(std::int32_t value) { idMember_.SetValue(value); }

        // The listen address: a real NetStructNetworkId (see the slot dump above), so it takes part in the
        // record's Serialize/Load/change tracking. The writes go through SetValue, which is the
        // NetStructMemberType<CNetworkId>::SetValue the binary's call sites reach (0x8020b8).
        const CNetworkId& networkId() const { return networkIdMember_.GetValue(); }
        void setNetworkId(const CNetworkId& value) { networkIdMember_.SetValue(value); }

        NetStructInt<32> idMember_;           // +0x130, value at +0x150
        NetStructNetworkId networkIdMember_;  // +0x158, value at +0x178
    };

    // 0x807e44 _ZN14CMatchingLocalC2Ev: sets the counters and empty containers, then runs Reset(), which
    // closes and hides the room. The NetStruct member constructors are not in this port yet.
    CMatchingLocal();
    // 0x807f80 _ZN14CMatchingLocalD1Ev: the members release themselves. The NetStruct member
    // teardown of the original is not in this port yet.
    ~CMatchingLocal();

    // 0x801b08 _ZN14CMatchingLocal12IsRoomClosedEv
    // The room-info record's first bool (the byte at +0x4B6D, i.e. element +0x14D). WHAT THE OLD BODY GOT
    // WRONG: it read the port's own plain byte roomClosed_, which was the same value but not the NetStruct
    // member the binary reads and writes; the field is gone and this reads the member. The body is in
    // src/c_matching_local.cpp because the record's own definition follows this class.
    bool IsRoomClosed() override;
    // 0x801b14 _ZN14CMatchingLocal12IsRoomHiddenEv: the hidden flag, else the closed flag.
    bool IsRoomHidden() override;
    // 0x801b3c _ZN14CMatchingLocal11SetMemberIdEi
    void SetMemberId(std::int32_t memberId) { memberId_ = memberId; }
    // 0x805664 _ZN14CMatchingLocal13GetMemberMaskEi: see member_mask.hpp. Deliberately STILL const (the symbol has no K):
    // it serves the const base slot MemberBit(int) below, and a non-const body could not.
    std::int32_t GetMemberMask(std::int32_t memberId) const;
    // 0x805694 _ZN14CMatchingLocal19GetInvitationRoomIdEv: returns 0 (64-bit).
    std::uint64_t GetInvitationRoomId() { return 0; }
    // 0x8056a0 _ZN14CMatchingLocal16GetTransportTypeE14tPROTOCOL_TYPE: table {1, 2, 1}
    // indexed by the protocol type; any type above 2 gives 0. The object is not read.
    static std::int32_t GetTransportType(std::uint32_t protocolType);
    // vtable +0x34 hook of CMatching: the table lookup above.
    int TransportTypeForProtocol(int protocol) override { return GetTransportType(static_cast<std::uint32_t>(protocol)); }
    // 0x801fb0 _ZN14CMatchingLocal14SendInvitationEPKcS1_b: posts event 0x800015, returns 0.
    // The original's names are not used by the body.
    std::int32_t SendInvitation(const char* from, const char* to, bool flag);
    // 0x801fe8 _ZN14CMatchingLocal17ReceiveInvitationEv: posts event 0x800017, returns 0.
    std::int32_t ReceiveInvitation();
    // 0x805998 _ZN14CMatchingLocal26ProcessChangeServerMessageEiR12NetBitStream: reads the
    // 4-byte server id into +0x363c, then posts event 0x80000b carrying it.
    void ProcessChangeServerMessage(std::int32_t from, class NetBitStream& stream);

    // 0x8074a4 _ZN14CMatchingLocal5ResetEv: resets the room state (partial: see the batch source).
    void Reset();

    // Batch e1-net-session-online-CMatchingLocal-0 (tb_session-online-CMatchingLocal-0.cpp).
    // 0x801b30 _ZNK14CMatchingLocal11GetMemberIdEv: the local member id at +0x3638.
    std::int32_t GetMemberId() const;
    // 0x801b48 _ZNK14CMatchingLocal17GetServerMemberIdEv: the server member id at +0x363c.
    std::int32_t GetServerMemberId() const;
    // The CMatching virtuals of the binary's CMatchingLocal vtable: +0x6c GetMemberId, +0x74 GetServerMemberId,
    // +0x84 GetMemberMask.
    int LocalMemberId() const override { return GetMemberId(); }
    int ServerMemberId() const override { return GetServerMemberId(); }
    std::uint32_t MemberBit(int memberId) const override {
        return static_cast<std::uint32_t>(GetMemberMask(memberId));
    }
    // 0x805680 _ZN14CMatchingLocal14GetFriendsListEb (partial: element type inferred).
    std::vector<tFriendInfo> GetFriendsList(bool flag);
    // 0x8057f0 _ZN14CMatchingLocal17ProcessLostPacketEii (partial: returns 0).
    std::int32_t ProcessLostPacket(std::int32_t a2, std::int32_t a3) override;
    // 0x80585c _ZN14CMatchingLocal25ProcessAcknowledgedPacketEii (partial: returns 0).
    std::int32_t ProcessAcknowledgedPacket(std::int32_t a2, std::int32_t a3) override;
    // 0x805b14 _ZN14CMatchingLocal14ReadPacketDataEiiR12NetBitStream (partial: returns 0).
    std::int32_t ReadPacketData(std::int32_t a2, std::int32_t a3, class NetBitStream& stream) override;
    // 0x8063c4 _ZN14CMatchingLocal15WritePacketDataEiiR12NetBitStream (partial: returns 0).
    std::int32_t WritePacketData(std::int32_t a2, std::int32_t a3, class NetBitStream& stream) override;
    // 0x805cc8 _ZN14CMatchingLocal8IsInRoomEv: the local member is the server, or the server is connected,
    // or the connection manager is initialized and has connected members. Vtable slot +0x64 (see the .cpp).
    bool IsInRoom() override;

    // Lifecycle (c_matching_local_lifecycle.cpp). Base CMatching calls are not in this port.
    // 0x807c70 _ZN14CMatchingLocal10InitializeEi
    std::int32_t Initialize(std::int32_t arg);
    // 0x80605c _ZN14CMatchingLocal9TerminateEv
    std::int32_t Terminate();
    // 0x806098 _ZN14CMatchingLocal9PingRoomsEv: posts event 0x800010.
    std::int32_t PingRooms() override;

    // Rooms (c_matching_local_rooms.cpp). Room flags are set through the NetStruct members in
    // the original; here they are the plain fields below.
    // 0x806d64 _ZN14CMatchingLocal8HideRoomEv
    std::int32_t HideRoom() override;
    // 0x806e4c _ZN14CMatchingLocal9CloseRoomEv
    std::int32_t CloseRoom() override;
    // 0x806fc8 _ZN14CMatchingLocal8ShowRoomEv
    std::int32_t ShowRoom() override;
    // 0x8070bc _ZN14CMatchingLocal8OpenRoomEb
    std::int32_t OpenRoom(bool open) override;
    // 0x80795c _ZN14CMatchingLocal9LeaveRoomEv
    std::int32_t LeaveRoom() override;
    // 0x8079d4 _ZN14CMatchingLocal22CreateJoinRoomInternalEbR15CRoomAttributes
    std::int32_t CreateJoinRoomInternal(bool open, CRoomAttributes& attributes) override;  // non-const reference, as the symbol (link-1)
    // 0x807bec _ZN14CMatchingLocal18SearchRoomInternalER17CRoomSearchFilterbh
    std::int32_t SearchRoomInternal(CRoomSearchFilter& filter, bool flag, std::uint8_t mode) override;  // non-const reference, as the symbol (link-1)
    // 0x808774 _ZN14CMatchingLocal16JoinRoomInternalEy
    std::int32_t JoinRoomInternal(std::uint64_t key) override;
    // 0x808694 _ZN14CMatchingLocal23GetSearchRoomAttributesEy
    CRoomAttributes GetSearchRoomAttributes(std::uint64_t key);  // not const: the symbol is _ZN14CMatchingLocal23GetSearchRoomAttributesEy (link-1)

    // Members (c_matching_local_members.cpp)
    // 0x805c04 _ZNK14CMatchingLocal14GetMemberCountEv
    std::int32_t GetMemberCount() const override;
    // 0x805c1c _ZN14CMatchingLocal8IsInRoomEi (partial: see the .cpp)
    bool IsInRoom(std::int32_t memberId) override;
    // 0x805d38 _ZN14CMatchingLocal10KickMemberEi
    std::int32_t KickMember(std::int32_t memberId) override;
    // 0x80675c _ZN14CMatchingLocal19GenerateNewMemberIdEv (partial: see the .cpp)
    std::int32_t GenerateNewMemberId() override;
    // The CMatching seams for CConnectionManager (the original calls the manager inline from CMatching::UpdateMemberIdList and ProcessEvents).
    // WHAT THE OLD CLASS GOT WRONG: it did not forward them, so the base defaults ({} / false / nothing) made UpdateMemberIdList never give a
    // connected client a slot in the member table (the host saw one member) and ProcessEvents never dropped a disconnected one.
    std::vector<int> ConnectionMemberIdList() const override;
    bool IsConnectedMember(int memberId) const override;
    void DisconnectMember(int memberId) override;

    // Servers (c_matching_local_servers.cpp)
    // 0x8094fc _ZN14CMatchingLocal9AddServerEiR10CNetworkIdiR15CRoomAttributes (partial)
    std::int32_t AddServer(std::int32_t memberId, CNetworkId& address, std::int32_t rank,
                           CRoomAttributes& attributes);  // non-const references, as the symbol (link-1)
    // 0x8072d8 _ZN14CMatchingLocal12RemoveServerER10CNetworkId
    void RemoveServer(const CNetworkId& address);
    // 0x8073c4 _ZN14CMatchingLocal12PurgeServersEv
    std::int32_t PurgeServers();
    // 0x8097c4 _ZN14CMatchingLocal20ProcessServerMessageER10CNetworkIdR12NetBitStream
    void ProcessServerMessage(const CNetworkId& from, class NetBitStream& stream);
    // 0x80838c _ZN14CMatchingLocal11GetRoomListEv: one tRoomInfo per server of the map, in key order.
    std::vector<tRoomInfo> GetRoomList() override;
    // 0x808538 _ZN14CMatchingLocal13GetMemberNameEi (partial: transport names are stand-ins)
    std::string GetMemberName(std::int32_t memberId) override;

    // Messages (c_matching_local_messages.cpp)
    // 0x805d58 _ZN14CMatchingLocal23SendChangeServerMessageEv
    std::int32_t SendChangeServerMessage();
    // 0x805de0 _ZN14CMatchingLocal18SendServerResponseEb (partial: the room attributes come from the game-world CRoomAttributes::Serialize)
    std::int32_t SendServerResponse(bool flag);
    // 0x805f2c _ZN14CMatchingLocal17SendClientRequestEv
    std::int32_t SendClientRequest();
    // 0x805ee0 _ZN14CMatchingLocal20ProcessClientMessageER10CNetworkIdR12NetBitStream: when this is the server,
    // a response is sent unless IsRoomHidden() (vtable slot +0x58, see the vtable dump).
    void ProcessClientMessage(const CNetworkId& from, class NetBitStream& stream);
    // 0x805fa8 _ZN14CMatchingLocal22PacketReceiverCallbackEiPci
    void PacketReceiverCallback(std::int32_t from, char* data, std::uint32_t size);
    // 0x80601c _ZN14CMatchingLocal23sPacketReceiverCallbackEiPci
    static void sPacketReceiverCallback(std::int32_t from, char* data, int size);
    // 0x8098cc _ZN14CMatchingLocal31BroadcastPacketReceiverCallbackER10CNetworkIdPci
    void BroadcastPacketReceiverCallback(CNetworkId& from, char* data, std::uint32_t size);
    // 0x80995c _ZN14CMatchingLocal32sBroadcastPacketReceiverCallbackER10CNetworkIdPci
    static void sBroadcastPacketReceiverCallback(CNetworkId& from, char* data, int size);
    // 0x80890c _ZN14CMatchingLocal6UpdateEv (partial: see update.cpp)
    std::int32_t Update();
    // 0x801b54 _ZN16CMatchingLocal17GetRoomAttributesEv: the room attributes at +0x4660.
    CRoomAttributes* GetRoomAttributes() { return &roomAttributes_; }

    // The static callbacks route to CMatching::s_Matching (the base class's global, set by CMatching::Get). WHAT THE OLD CODE GOT
    // WRONG: this class declared its own `static CMatchingLocal* s_Matching` that nothing ever set, so the first broadcast packet
    // (a room announcement from a host) dereferenced null and the LAN lobby crashed on the joiner.

    // Test seams. Not in the original. The two room flags are the room-info record's bool members now, so
    // the seam drives those members (and therefore their SetChanged notifications) instead of the two
    // plain bytes this class used to keep at +0x4b6d / +0x4b8d. Body in src/c_matching_local.cpp.
    void SetRoomFlagsForTest(bool closed, bool hiddenFlag);
    std::int32_t MemberIdForTest() const { return memberId_; }
    std::int32_t ServerMemberIdForTest() const { return serverMemberId_; }
    void SetInitializedForTest(bool value) { initialized_ = value; }
    void SetBaseRoomClosedForTest(bool value) { baseRoomClosed_ = value; }
    void SetJoinThresholdForTest(std::int32_t value) { memberCapacity_ = value; }
    void SetRoomOperationPendingForTest(bool value) { roomOperationPending_ = value; }
    void SetServerPollTimeForTest(std::int32_t value) { serverPollTime_ = value; }
    std::int32_t ServerPollTimeForTest() const { return serverPollTime_; }
    std::size_t ServerCountForTest() const { return servers_.size(); }
    bool IsInitializedForTest() const { return initialized_; }

public:  // members are public (Track B decision 9)
    std::int32_t memberId_ = 0;     // +0x3638
    std::int32_t serverMemberId_ = 0;  // +0x363c (name inferred, as in CMatchingGLLive)
    // The two room flag bytes the port used to keep here (+0x4b6d roomClosed_, +0x4b8d
    // roomHiddenFlag_) are gone: they were the value bytes of roomInfo_'s first two NetStructBool
    // members (roomInfo_->roomClosed() / roomInfo_->roomHidden()), and keeping separate copies let the
    // NetStruct change notifications go missing. See tb/cmatching_local_room_info_net_struct.hpp.

    // Base-class fields of the original (CMatching). Their writers are not in this port yet.
    // (+0x0c initialized_, +0x0d roomHidden_, +0x0e baseRoomClosed_ are the CMatching base fields.)
    // +0x08 is the CMatching base memberCapacity_ (the Initialize argument): the rank limit of JoinRoomInternal / ProcessServerMessage.
    // WHAT THE OLD BODY GOT WRONG: a separate joinThreshold_ field shadowed it and stayed 0, so every join answered "room full" (0x80000d).

    bool roomOperationPending_ = false;    // +0x3630
    std::int32_t nextPeerKey_ = 1;         // +0x3634 (key of the next server entry)
    std::int32_t memberIdCounter_ = 0;     // +0x4bd8 (value of the member-id counter, see GenerateNewMemberId)
    std::int32_t serverPollTime_ = 0;      // +0x465c (online clock at the last server poll)
    CNetMutex serversMutex_;               // +0x463c
    std::map<std::uint64_t, tMatchingPeer> servers_;  // +0x4644 (the map; its count is at +0x4654)
    CRoomAttributes roomAttributes_;       // +0x4660
    CRoomSearchFilter roomSearchFilter_;   // +0x49f8

    // The class's own replicated records, in the binary's constructor order (0x807e44):
    // RoomInfoNetStruct at +0x4A20 (0x1C0 bytes), the 32 member records at +0x4BE0, then the server
    // backup array's header at +0x7EE0 with its 32 elements at +0x7EE8.
    // WHAT THE OLD HEADER GOT WRONG: it declared only a forward `class MemberInfoNetStruct;` and none of
    // these members, and its comment called the member records "not declared in this class yet (layout
    // request)". They are declared now, which is what the four 408-stride bodies below needed.
    // Host-necessitated deviation: roomInfo_ and serverBackup_ are POINTERS. The records are nested classes
    // whose definitions must follow the owner (they cannot be complete earlier), and C++ cannot hold an
    // incomplete nested type by value, so the two members that would be values in the binary are heap
    // objects here. Their lifetime is the owner's (constructor allocates, destructor deletes) and nothing
    // else observes the difference.
    RoomInfoNetStruct* roomInfo_ = nullptr;       // +0x4A20 (owner allocates)
    static constexpr int kLocalMemberCount = 32;   // the class's own record array is 32 elements
    MemberInfoNetStruct localMembers_[kLocalMemberCount];  // +0x4BE0, stride 408 (complete: see the .cpp)
    int serverBackupCount_ = 32;                  // +0x7EE0 (the NetStructArray header's count)
    ServerBackupNetStruct* serverBackup_ = nullptr;  // +0x7EE8, 32 elements (owner allocates)

};

// The two nested records above are members by value, so their definitions have to follow the class. The
// macro lets them be checked (and included) on their own without pulling this header in a second time:
// when this header is the one being compiled, the macro is set, so the tb headers skip their own
// `#include "net-session-online/c_matching_local.hpp"` and only contribute the nested class bodies.
#define NET_SESSION_ONLINE_C_MATCHING_LOCAL_HPP_INCLUDED 1
#include "net-session-online/tb/cmatching_local_room_info_net_struct.hpp"
#include "net-session-online/tb/cmatching_local_server_backup_net_struct.hpp"
