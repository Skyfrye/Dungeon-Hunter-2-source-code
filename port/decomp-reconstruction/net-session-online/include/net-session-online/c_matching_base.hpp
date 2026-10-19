// CMatching: the room and member layer, the binary's base class of CMatchingLocal and CMatchingGLLive
// (CMatchingBluetooth derives from CMatchingLocal). This header is the one definition
// of the class; deps/matching.hpp includes it. It records the layout recovered from the bodies below.
//
// Source addresses (32-bit ARM, Hex-Rays bodies):
//   ProcessLostPacket(int,int) 0x7fed84, SetRoomMemberAttibute 0x7ff008, GetRoomMemberAttibute 0x7ff054,
//   GetRoomMask 0x8000dc, TestRoomMask 0x8001d4, UpdateMemberIdList 0x8002bc, GetMemberIdList 0x800808,
//   SetTeamId 0x8008ac, WritePacketData 0x8010a4, CMatchingLocal::GetRoomAttributes 0x801b54.
//   Also referenced: GetMemberIndex 0x7fe59c, IsMemberServer 0x7fe544, IsServer (non-virtual), Initialize 0x7ff85c.
//   The constructor initialises data up to +0x3628 (three words at +0x3620..+0x3628 follow the element
//   array); the first member of every derived class (CMatchingLocal, CMatchingBluetooth,
//   CMatchingGLLive) sits at +0x3630.
//
// Layout (original 32-bit offsets, kept as comments; the member array is 32 entries of 432 bytes):
//   +0x00 vptr
//   +0x04 not touched by the constructor or any recovered body.
//   +0x08 member capacity (int). Initialize(int) stores its argument here; CMatchingGLLive::JoinRoomInternal
//         refuses when GetMemberCount() is above it, and CreateJoinRoomInternal sends it to the lobby.
//   +0x0c initialized flag (byte), +0x0d room hidden flag (byte), +0x0e room closed flag (byte; LockRoom
//         sets it), +0x0f byte that the constructor clears. CMatchingGLLive's constructor sets it to 3 and
//         passes it as the byte argument of GLXPlayerMPLobby::mpSendJoinLobby. The role is not identified.
//   +0x10 room mask dirty flag (byte). GetRoomMask recomputes when set, then clears it.
//   +0x18 NetStructArray<MemberInfoNetStruct,32> header. Its vptr is not identified.
//   +0x1c member count (int, 0..32). Loops compare against this.
//   +0x20 MemberInfo[32], stride 432 (0x1b0). Element i base = 0x20 + 432*i.
//         Element-relative offsets:
//         +0x000 NetStruct-derived object (vptr). Virtual slot +0x44 on it is ProcessLostPacket(int,int).
//         +0x130 member id object (NetStructMember, 40 bytes). Cached member id (int, -1 when empty) at +0x150.
//         +0x158 team id object (NetStructMember, 40 bytes). Cached team id (int) at +0x178.
//                SetTeamId stores the uint8 argument here as an int.
//         +0x180 room member attribute buffer (NetStructByteArray<64>, 40 bytes). Data pointer at +0x1a0,
//                size (int) at +0x1a4. GetRoomMemberAttibute reads them. Set copies into the buffer.
//         +0x1a8 previous member id (int). UpdateMemberIdList compares it with the current id and queues
//                an event on a change.
//         +0x1a8..+0x1b0 is the end of the element. Nothing else is identified there.
//   Index-based addressing in the bodies: CMatching+0x20+432*i+elem_off, written as this+432*i+X where
//   X = 0x20 + elem_off (member id = X 0x170, team = X 0x178 object / 0x198 value, buffer = X 0x1a0).
//
// Virtual slots used by these bodies (32-bit byte offsets in the vtable):
//   +0x64 (100)  gate bool on UpdateMemberIdList. Name not identified.
//   +0x6c (108)  LocalMemberId() -> int.
//   +0x74 (116)  ServerMemberId() -> int.
//   +0x84 (132)  MemberBit(int) -> uint32 (bit for a member id in a mask).
//   +0x88 (136)  connected member id list, returned by value through a hidden pointer. Name not identified.
//   +0xa4 (164)  GetRoomAttributes() -> CRoomAttributes*. CMatchingLocal returns this+0x4660 (18016).
// The vtable listing (tools/decomp_vtable.py CMatchingGLLive) names the slots: +0x64 IsInRoom(), +0x6c GetMemberId()
// (LocalMemberId), +0x74 GetServerMemberId() (ServerMemberId), +0x84 GetMemberMask(int) (MemberBit),
// +0x88 CMatching::GetMemberIdList() (ConnectedMemberIds), +0xa4 GetRoomAttributes(). CMatchingGLLive
// overrides them under the names below. Slot +0x28 is Initialize(int), +0x2c Terminate(), +0x30 Update().
//
// Not identified:
//   - Vptr of the NetStructArray header at +0x18.
//   - Layout of the NetStruct base inside each MemberInfo element (its size is not recovered).
//   - Meaning of the event codes 0x800007 and 0x800006 queued by UpdateMemberIdList on
//     CMatching::m_eventQueueInternal (join and leave events are likely; not confirmed).
//   - Static cache CMatching::GetRoomMask()::maskCache is a function-local static, not a member.
//
// Deviation: MemberInfo below is a named struct, not a 432-byte byte image. Use the element offsets
// above when mapping to the original memory. The NetStruct base of each element is not modelled.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "net-session-online/c_room_attributes.hpp"
#include "net-session-online/t_room_info.hpp"
#include "net-session-online/c_room_search_filter.hpp"  // CRoomSearchFilter (SearchRoomInternal, vtable +0x08)
#include "net-transport/net_bit_stream.hpp"
// The member element is a real NetStruct record: the per-element calls in UpdateMemberIdList,
// SetTeamId, JoinRoom/CreateJoinRoom/Initialize, ProcessLostPacket/ProcessAcknowledgedPacket and
// ReadPacketData/WritePacketData go through its NetStruct virtuals (+0x40, +0x44) and through the
// SetValue/GetValue vtable slots (+0x1c, +0x24) of its four NetStructMember fields.
#include "net-transport/tb/net_struct_byte_array.hpp"
#include "net-transport/tb/net_struct_int.hpp"

// =========================================================================================================
// KNOWN DEFECT, DO NOT FIX IN A BATCH PASS: this class's virtual DECLARATION ORDER does not match the
// binary's vtable order. The correct ABI is known (dumps below) but reordering it changes the vtable of
// every CMatching derived class and of every test that fakes these slots, so it is a scheduled project,
// not a row fix. Until then, any row whose only gap is "the call goes through vtable slot +0xNN" stays
// `partial` and its note points back to this block. Integrator decision, recorded after this batch.
//
// Binary order, dumped from _ZTV9CMatching at 0x991f40 (byte offsets; a slot is 4 bytes and the vtable
// pointer points at slot 0):
//   +0x00..+0x08  three pure slots (__cxa_pure_virtual)
//   +0x08  D1Ev (0x800b00)      +0x0c  WritePacketData (0x8010a4)   +0x10  ReadPacketData (0x7fea14)
//   +0x14  ProcessAcknowledgedPacket (0x7fed08)                     +0x18  ProcessLostPacket (0x7fed84)
//   +0x1c  UpdateMemberIdList (0x8002bc)                            +0x20  D1Ev again (complete-object)
//   +0x24  D0Ev (0x800b98)      +0x28  Initialize(int) 0x7ff85c     +0x2c  Terminate (0x7ff5a0)
//   +0x30  Update (0x8018fc)    +0x34..+0x5c pure in the base
//   +0x60  GetMemberCount       +0x64  IsInRoom()                  +0x68  IsInRoom(int)
//   +0x6c  GetMemberId/LocalMemberId  +0x70 SetMemberId            +0x74 GetServerMemberId/ServerMemberId
//   +0x78  SetTeamId            +0x7c  GetTeamId                   +0x80  SetRoomMemberAttibute
//   +0x84  MemberBit/GetMemberMask  +0x88 GetMemberIdList          +0x9c  ReceiveGameBootInvitation
//   +0xb0  GetRoomId            +0xb4  LimitRoomSlots
// Derived middle block, from _ZTV14CMatchingLocal at 0x992230 and _ZTV15CMatchingGLLive at 0x992828
// (CMatchingBluetooth at 0x992060 is CMatchingLocal's block apart from LeaveRoom):
//   +0x3c LeaveRoom  +0x40 KickMember  +0x44 OpenRoom  +0x48 CloseRoom  +0x4c ShowRoom  +0x50 HideRoom
//   +0x54 IsRoomClosed  +0x58 IsRoomHidden  +0x5c GetMemberName  +0x60 GetMemberCount
//   +0x64 IsInRoom()  +0x68 IsInRoom(int)  +0x6c GetMemberId  +0x70 SetMemberId  +0x74 GetServerMemberId
//
// This port's order is different, so the port's "+0xNN" is NOT the binary's "+0xNN". Three consequences
// that are already proved; each affected row's note names the one that applies to it:
//   1. `CMatching::LockRoom` (0x7fe574) calls the +0x48 slot when its argument is true. In the binary that
//      slot is CloseRoom (CMatchingLocal 0x806e4c, CMatchingBluetooth the same, CMatchingGLLive 0x81bc1c).
//      Here `CloseRoom` is a non-virtual CMatchingLocal method, so the +0x48 call cannot be made and the
//      local close (roomHidden_ = IsRoomHidden(), the closed/hidden flags, internal event 0x80000a) does
//      not run.
//   2. `CMatchingLocal::JoinRoomInternal` (0x808774) is declared WITHOUT `override`, so it occupies no
//      vtable slot and `CMatching::JoinRoom`'s (0x7ff120) +0x00 tail dispatch reaches the BASE default,
//      which returns 0 without doing anything. Same class of gap for the other non-virtual room methods
//      (LeaveRoom, OpenRoom, CloseRoom, ShowRoom, HideRoom).
//   3. the explicit `virtual ~CMatching()` below occupies a slot the binary does not put it in (+0x08 is
//      D1Ev in the binary but the port's +=1 slot shift starts here).
//   4. `CMatching::SearchRoom(CRoomSearchFilter, bool, unsigned char)` (0x7feb40) cannot be written. Its
//      listing tail calls the search object's vtable +0x08, and in the binary that slot is
//      CMatchingLocal::SearchRoomInternal (0x807bec) / CMatchingGLLive::SearchRoomInternal (0x81fadc). The
//      port's base declares `JoinRoomInternal` at +0x00 and `CreateJoinRoomInternal` at +0x04 (the destructor
//      shift above puts them there) and has no declaration at +0x08 (and its derived SearchRoomInternal is
//      not an `override`), so the slot is neither declared nor reachable. The two
//      MultiplayerCallback rows that need it (searchRoom 0x49b660, searchRoomPushNotif 0x49b580) stay
//      `partial` on this, not on any missing callee: CRoomSearchFilter and its SetSearchAttributeInt
//      (0x819cf8) are defined (game-world/src/g1-game-world-CRoomSearchFilter-434a1f-0.cpp).
// Already correct: `CMatching::CreateJoinRoom` (0x7ff350) tail-calls +0x04, and
// `CMatchingLocal::CreateJoinRoomInternal` DOES carry `override` with the binary's non-const reference,
// so that dispatch reaches the right function.
// =========================================================================================================

class CMatching {
public:
    // The matching object. The binary's CMatching::Get() returns the static CMatching::s_Matching and creates
    // it on first use from s_matchingProvider (1 CMatchingLocal, 2 CMatchingBluetooth, 3 and 4 CMatchingGLLive);
    // see src/tb_session-online-CMatching-0.cpp. Set() is a port helper for tests (the binary assigns the
    // static inside Get, not in the constructors).
    static CMatching* Get();
    static void Set(CMatching* matching) { s_Matching = matching; }
    static CMatching* s_Matching;                  // CMatching::s_Matching
    enum MATCHING_PROVIDERS : std::int32_t {};
    static inline std::int32_t s_matchingProvider = 1;  // .data 0x99e234 = 1;  // CMatching::s_matchingProvider (set by SetMatchingProvider)
    static void SetMatchingProvider(MATCHING_PROVIDERS provider);       // 0x7fe4c0
    std::int32_t ReceiveGameBootInvitation() const;                     // 0x7fe4a4, returns 0
    std::uint64_t GetRoomId() const;                                    // 0x7fe4ac, returns 0
    std::int32_t LimitRoomSlots(std::uint32_t slots) const;             // 0x7fe4b8, returns 0
    // Static forwarders to the matching object (s_Matching). Null instance returns 0.
    static std::int32_t sReadPacketData(std::int32_t a1, std::int32_t a2, NetBitStream& stream);    // 0x7fe628
    static std::int32_t sWritePacketData(std::int32_t a1, std::int32_t a2, NetBitStream& stream);   // 0x7fe66c
    static std::int32_t sProcessAcknowledgedPacket(std::int32_t a1, std::int32_t a2);               // 0x7fe6b0
    static std::int32_t sProcessLostPacket(std::int32_t a1, std::int32_t a2);                       // 0x7fe6ec
    // Vtable slots +0x00 and +0x04: the room requests that JoinRoom and CreateJoinRoom forward to.
    // CMatchingGLLive declares the same signatures (c_matching_gl_live.hpp) and overrides them.
    // CMatchingLocal's CreateJoinRoomInternal takes a const reference, so it does not override this one
    // (the binary's mangled name takes a non-const reference; the integrator should fix that header).
    // The base has no room backend, so the defaults return 0.
    virtual std::int32_t JoinRoomInternal(std::uint64_t roomId) { (void)roomId; return 0; }
    // vtable +0x08: CMatchingLocal::SearchRoomInternal (0x807bec) / CMatchingGLLive::SearchRoomInternal (0x81fadc).
    // CMatching::SearchRoom (0x7feb40) tail-calls it. Not pure in the port: the base has no search backend.
    virtual std::int32_t SearchRoomInternal(CRoomSearchFilter& filter, bool flag, std::uint8_t mode) {
        (void)filter; (void)flag; (void)mode;
        return 0;
    }
    // vtable +0x90: CMatchingGLLive::GetRoomList (0x82051c), the lobby room list by value. The base has none
    // (the binary's slot is a pure/empty one for the other providers); the port answers an empty list.
    virtual std::vector<tRoomInfo> GetRoomList() { return {}; }
    // vtable +0x3c: CMatchingLocal / CMatchingGLLive / CMatchingBluetooth::LeaveRoom (Level::_LoadProcess calls it through CMatching::Get()).
    virtual std::int32_t LeaveRoom() { return 0; }
    // vtable +0x40 .. +0x58, the room-control block every derived vtable fills (_ZTV14CMatchingLocal 0x992230,
    // _ZTV15CMatchingGLLive 0x992828). The binary's base leaves them pure; the port keeps inert defaults so
    // the test doubles that derive from CMatching need not declare them. None is const in the binary.
    virtual std::int32_t PingRooms() { return 0; }                            // +0x38
    virtual std::int32_t KickMember(std::int32_t /*memberId*/) { return 0; }  // +0x40
    virtual std::int32_t OpenRoom(bool /*open*/) { return 0; }                // +0x44
    virtual std::int32_t CloseRoom() { return 0; }                            // +0x48, LockRoom calls it
    virtual std::int32_t ShowRoom() { return 0; }                             // +0x4c
    virtual std::int32_t HideRoom() { return 0; }                             // +0x50
    virtual bool IsRoomClosed() { return false; }                             // +0x54
    virtual bool IsRoomHidden() { return false; }                             // +0x58
    // +0x5c: CMatchingLocal::GetMemberName (0x808538) / CMatchingGLLive::GetMemberName (0x81df90). Not const.
    virtual std::string GetMemberName(std::int32_t /*memberId*/) { return {}; }
    // +0x60: CMatchingLocal::GetMemberCount (0x805c04) / CMatchingGLLive::GetMemberCount (0x81c524), both const.
    virtual std::int32_t GetMemberCount() const { return 0; }
    virtual std::int32_t CreateJoinRoomInternal(bool flag, CRoomAttributes& attributes) {
        (void)flag;
        (void)attributes;
        return 0;
    }
    // Vtable slots +0x10, +0x14, +0x18: ReadPacketData (0x7fea14), ProcessAcknowledgedPacket (0x7fed08) and
    // ProcessLostPacket (0x7fed84), overridden by CMatchingLocal and CMatchingGLLive. The static forwarders
    // (sReadPacketData ...) dispatch through them. The ints they return are the r0 left by the last element
    // slot call, which is a void slot of NetStruct: the port returns 0 (CMatchingLocal: 1 once an element ran).
    virtual std::int32_t ProcessAcknowledgedPacket(int a2, int a3);
    virtual std::int32_t ProcessLostPacket(int a2, int a3);
    virtual std::int32_t ReadPacketData(std::int32_t a2, std::int32_t a3, NetBitStream& stream);
    // 0x8010a4 CMatching::WritePacketData(int,int,NetBitStream&). Virtual in the original (CMatchingLocal and
    // CMatchingGLLive override it). Partial, see src/r1n-net-session-online-CMatching-9acceb-1.cpp.
    virtual std::int32_t WritePacketData(std::int32_t a2, std::int32_t a3, NetBitStream& stream);
    // vtable +0x34: CMatchingLocal::GetTransportType(tPROTOCOL_TYPE) (0x8056a0). The port names the hook
    // TransportTypeForProtocol because the derived classes keep their table lookups as statics named
    // GetTransportType. Base: 0 for an unknown protocol.
    virtual int TransportTypeForProtocol(int protocol) { (void)protocol; return 0; }
    // Binary vtable +0x64 / +0x68: both PURE slots of _ZTV9CMatching (0x991f40). CMatchingLocal implements
    // them at 0x805cc8 / 0x805c1c, CMatchingGLLive at 0x81c4ac / 0x81ded4; none is const. (Settled from
    // the -Woverloaded-virtual audit; this replaces the port's earlier `UnknownGate() const` stand-in.)
    virtual bool IsInRoom() = 0;
    virtual bool IsInRoom(int memberIndex) = 0;
    // vtable +0x70: CMatchingLocal::SetMemberId(int), the local member id. Default: no-op.
    virtual void SetMemberId(int memberId) { (void)memberId; }
    // vtable +0xac: CMatchingLocal::GenerateNewMemberId() (0x80675c) and CMatchingGLLive's (0x81bbf4); both
    // NON-const in the binary (_ZN..19GenerateNewMemberIdEv). Default: 0.
    virtual int GenerateNewMemberId() { return 0; }
    // Not in the original's base, kept virtual so tests and the game can fake the room mask. Default: GetRoomMask.
    // Alpha-server switch and SetGCState: not in the port's base; defaults.
    virtual bool UseAlphaServer() const { return false; }
    virtual void SetGCState(std::int32_t /*state*/) {}

    static constexpr int kMaxMembers = 32;           // NetStructArray<MemberInfoNetStruct,32>
    static constexpr int kMemberInfoStride = 432;    // 0x1b0 bytes per element
    static constexpr int kElementsBase = 0x20;       // first element, CMatching-relative

    // Element-relative offsets of MemberInfoNetStruct (see the layout above).
    static constexpr int kElemMemberIdObject = 0x130;
    static constexpr int kElemMemberIdValue = 0x150;
    static constexpr int kElemTeamObject = 0x158;
    static constexpr int kElemTeamValue = 0x178;
    static constexpr int kElemRoomAttrBuffer = 0x180;
    static constexpr int kElemRoomAttrData = 0x1a0;
    static constexpr int kElemRoomAttrSize = 0x1a4;
    static constexpr int kElemPreviousMemberId = 0x1a8;

    // One member record, element stride 432 (0x1b0). This was modelled before as the plain field struct
    // `MemberInfo` whose "memberId"/"teamId"/"roomAttribute"/"previousMemberId" were the VALUES of the
    // corresponding NetStructMemberType fields, laid out at the element offsets. That was wrong in one way
    // that matters: every value write in the binary is NetStructMemberType<T>::SetValue through vtable
    // +0x1c, and the element itself is a NetStruct whose +0x40/+0x44 slots ProcessAcknowledgedPacket /
    // ProcessLostPacket are called for every element by CMatching and CMatchingLocal. A plain struct cannot
    // carry those calls, so the four fields are the real net-transport member objects now and the values
    // are read and written through id()/setId()/team()/setTeam()/roomAttribute()/setRoomAttribute()/
    // previousMemberId()/setPreviousMemberId().
    //
    // Element offset -> member -> value offset (all 32-bit ARM offsets, as before):
    //   +0x000 NetStruct base (vptr; slots +0x40 ProcessAcknowledgedPacket, +0x44 ProcessLostPacket)
    //   +0x130 NetStructInt<32>        member, value at +0x150  (id())
    //   +0x158 NetStructUInt<8>        member, value at +0x178  (team(); SetTeamId stores a byte)
    //   +0x180 NetStructByteArray<64>  member, value at +0x1a0  (roomAttribute(); data ptr +0x1a0, size +0x1a4)
    //   +0x1a8 cached id (int)                                  (previousMemberId(); not a NetStruct member)
    class MemberInfoNetStruct : public NetStruct {
    public:
        // 0x7ffd04 _ZN9CMatching19MemberInfoNetStructC1Ev. Declared here so the element type is complete;
        // the body is in src/tb_session-online-CMatching_MemberInfoNetStruct-0.cpp.
        MemberInfoNetStruct();

        // The value accessors. setId/setTeam/setRoomAttribute/setPreviousMemberId are the element-local
        // halves of the binary's SetValue calls (the net-transport member does the change bookkeeping).
        std::int32_t id() const { return idMember_.GetValue(); }
        void setId(const std::int32_t value) { idMember_.SetValue(value); }
        std::int32_t team() const { return static_cast<std::int32_t>(teamMember_.GetValue()); }
        void setTeam(const std::uint8_t value) { teamMember_.SetValue(static_cast<std::uint32_t>(value)); }
        const ByteArray& roomAttribute() const { return roomAttributeMember_.GetValue(); }
        void setRoomAttribute(const void* data, std::size_t size) {
            roomAttributeMember_.SetBuffer(data, size);
        }
        std::int32_t previousMemberId() const { return previousMemberId_; }
        void setPreviousMemberId(const std::int32_t value) { previousMemberId_ = value; }

        // The four NetStructMember fields, in element order. Each DeclareMember'd by the constructor, so
        // the base NetStruct's (Serialize/Load/Resend/SetEnabled/changed) layer reaches them.
        NetStructInt<32> idMember_;                    // +0x130
        NetStructUInt<8> teamMember_;                  // +0x158
        NetStructByteArray<64> roomAttributeMember_;   // +0x180
        std::int32_t previousMemberId_ = -1;           // +0x1a8
    };

    // 0x7fff9c / 0x80003c CMatching::CMatching(): partial, see src/tb_session-online-CMatching-0.cpp.
    CMatching();
    virtual ~CMatching() = default;

    // Virtual slots (32-bit byte offsets in the comment). Names are the ones the bodies suggest.
    virtual int LocalMemberId() const = 0;                   // +0x6c
    virtual int ServerMemberId() const = 0;                  // +0x74
    virtual std::uint32_t MemberBit(int memberId) const = 0; // +0x84
    virtual std::vector<int> ConnectedMemberIds() const { return GetMemberIdList(); } // +0x88 (CMatching::GetMemberIdList() in the vtables of CMatchingLocal, CMatchingBluetooth and CMatchingGLLive; the old default returned {} so a LAN host saw no connected member: no room mask bits, no full-update queue)
    virtual CRoomAttributes* GetRoomAttributes() { return nullptr; }// +0xa4

    // Non-virtual in the original. The port keeps it virtual so tests can override.
    virtual bool IsServer() const;  // 0x7fe4e0 CMatching::IsServer (c_matching_base.cpp)

    // Seams for CConnectionManager (net-transport, (*CConnectionManager::GetInstance()) in the original).
    // Not virtual slots of CMatching: the derived class forwards them to the manager.
    virtual std::vector<int> ConnectionMemberIdList() const { return {}; }  // GetConnMemberIdList(false)
    virtual bool IsConnectedMember(int memberId) const { (void)memberId; return false; }// CConnectionManager::IsConnected
    // CConnectionManager::Disconnect(id, false). Not pure: a derived class that does not forward it keeps
    // the no-op. Added for CMatching::ProcessEvents (e2 batch); CMatchingLocal and the others do not forward it yet.
    virtual void DisconnectMember(int /*memberId*/) {}

    // 0x7fe59c CMatching::GetMemberIndex (glx_320e98.cpp has the ledgered copy on CMatching).
    // Lowest set bit of MemberBit(memberId); -1 when the mask is empty.
    std::int32_t GetMemberIndex(int memberId) const {
        std::uint32_t mask = MemberBit(memberId);
        if (mask == 0) return -1;
        std::int32_t index = 0;
        while ((mask & 1u) == 0) {
            mask >>= 1;
            ++index;
        }
        return index;
    }
    // 0x7fe544 CMatching::IsMemberServer: memberId >= 0 and equal to ServerMemberId().
    bool IsMemberServer(int memberId) const { return memberId >= 0 && memberId == ServerMemberId(); }

    // 0x7fe5e0 CMatching::GetTeamId(int): team value of the member's slot, 0 when the member is not in the table.
    int GetTeamId(int memberId) const;
    // 0x7fe618 CMatching::GetMemberIdByIndex(unsigned int). The binary indexes the element array with no
    // range check (`*(this + 108*index + 92)`, element +0x150, stride 432), so index 32 reads past the end
    // of the 32-slot table. Host-necessitated deviation: an index at or past the 32 slots returns -1, the
    // id an empty element holds, which is the value an untouched slot would give and cannot collide with a
    // real member id (see src/tb_session-online-CMatching-0.cpp).
    std::int32_t GetMemberIdByIndex(std::uint32_t index) const;
    // 0x7fe574 CMatching::LockRoom(bool). Partial: the virtual slot +0x48 call is not ported (see the
    // KNOWN DEFECT block at the top of this header).
    int LockRoom(bool callSlot);
    // 0x7fed84 CMatching::ProcessLostPacket(int,int) and 0x7fed08 ProcessAcknowledgedPacket(int,int) are the
    // virtual slots +0x18 / +0x14 declared above: the room attributes receive the call, then every member
    // element NetStruct slot (+0x44 lost, +0x40 acknowledged).
    // 0x7ff008 CMatching::SetRoomMemberAttibute(int,void const*,int). The value is copied into the
    // element's NetStructByteArray<64> member through its SetBuffer (+0x1c slot).
    void SetRoomMemberAttibute(int memberId, const void* data, int size);
    // 0x7ff054 CMatching::GetRoomMemberAttibute(int,void*,int). The fourth argument is unused by
    // the body: the stored size is copied and returned.
    int GetRoomMemberAttibute(int memberId, void* out, int outSize);
    // 0x8000dc CMatching::GetRoomMask(). Non-virtual. Cache is a function-local static, as decompiled.
    virtual std::uint32_t GetRoomMask() const;
    // 0x8001d4 CMatching::TestRoomMask(unsigned int): true when every bit of the room mask is in bits.
    bool TestRoomMask(std::uint32_t bits) const;
    // 0x8002bc CMatching::UpdateMemberIdList(). The stored values go through the element NetStruct
    // members' SetValue slots and the queued events are reproduced.
    void UpdateMemberIdList();
    // 0x800808 CMatching::GetMemberIdList(): ids of the members whose id is >= 0, in slot order.
    std::vector<int> GetMemberIdList() const;
    // 0x8008ac CMatching::SetTeamId(int,unsigned char). Stores the byte through the element's team
    // NetStructUInt<8> member.
    void SetTeamId(int memberId, std::uint8_t teamId);

    // 0x801120 CMatching::ProcessEvents(). Partial, see src/e2-net-session-online-pack0-9acceb-0.cpp.
    // The original returns the last callee's pointer; the port returns void.
    void ProcessEvents();
    // 0x8018fc CMatching::Update() (vtable +0x30, the vtables of CMatchingLocal and CMatchingGLLive replace
    // it). Partial: the initialized branch is not ported.
    virtual int Update();
    // 0x7ff85c CMatching::Initialize(int) (vtable +0x28).
    virtual int Initialize(int memberCapacity);
    // 0x7ff5a0 CMatching::Terminate() (vtable +0x2c). CMatchingLocal and CMatchingGLLive override it and call this.
    virtual std::int32_t Terminate();
    // 0x7ff120 CMatching::JoinRoom(unsigned long long). Partial: the NetStruct SetEnabled(element, 0) loop is
    // not ported (see src/tb_session-online-CMatching-0.cpp). Returns the JoinRoomInternal result.
    std::int32_t JoinRoom(std::uint64_t roomId);
    // 0x7feb40 CMatching::SearchRoom(CRoomSearchFilter, bool, unsigned char): stamps the filter's attribute 0 with
    // 0xB000BEE5, then tail-calls SearchRoomInternal (vtable +0x08). The filter is a by-value copy, as the symbol says.
    std::int32_t SearchRoom(CRoomSearchFilter filter, bool flag, std::uint8_t mode);
    // 0x7ff350 CMatching::CreateJoinRoom(bool, CRoomAttributes). Partial: the SetEnabled(element, 1) loop is not
    // ported. The attributes are passed by value, as the binary's copy is.
    std::int32_t CreateJoinRoom(bool flag, CRoomAttributes attributes);
    // 0x7feac4 CMatching::ResendMemberData(). NetStruct::Resend() on every element, so the packet
    // history of each element's members is re-sent. Body in src/c_matching_base.cpp.
    void ResendMemberData();
    // NetStructArray<CMatching::MemberInfoNetStruct,32>::Load (0x7fe964) and ::Serialize (0x7fe894) over the
    // element array at +0x18, shared by CMatching and CMatchingGLLive ReadPacketData / WritePacketData (the port
    // keeps the elements in a plain array, so the template is inlined here). Load returns whether an element
    // loaded; Serialize returns whether an element wrote.
    bool LoadMemberArray(NetBitStream& stream, std::int32_t a2, std::int32_t a3);
    bool SerializeMemberArray(NetBitStream& stream, std::int32_t a2, std::int32_t a3);
    // 0x7fea14 CMatching::ReadPacketData(int,int,NetBitStream&) is the virtual slot +0x10 declared above: the
    // room attributes unserialize, then NetStructArray<MemberInfoNetStruct,32>::Load on the element array. Body
    // in src/r1n-net-session-online-CMatching-9acceb-1.cpp.

    // 0x7feb8c CMatching::Destroy(). Non-static: the binary's Destroy takes this and does not use it.
    // Partial: the CSignIn::Get() result is checked for null, the original dereferences it.
    void Destroy();

protected:
    // Initialize/Terminate share this reset of the 32 elements (not a function of the original).
    void ResetMemberElements();

    std::uint32_t unk_04_ = 0;                   // +0x04 not accessed by any recovered function
    std::int32_t memberCapacity_ = 0;            // +0x08 (Initialize(int) argument)
    bool initialized_ = false;                   // +0x0c (IsServer requires it; same field as CMatchingLocal::initialized_)
    bool roomHidden_ = false;                    // +0x0d (IsRoomHidden of CMatchingGLLive; CMatchingLocal saves the hidden state here)
    bool baseRoomClosed_ = false;                // +0x0e (set by LockRoom)
    std::uint8_t unk_0f = 0;                     // +0x0f (cleared by the constructor; CMatchingGLLive sets 3)
    mutable bool roomMaskDirty_ = false;         // +0x10 (cleared by GetRoomMask, which is const)
    std::uint8_t pad_11_[7] = {};                // +0x11 .. +0x17
    std::uint32_t arrayVptr_ = 0;                // +0x18 the NetStructArray header's vptr (not modelled)
    int memberCount_ = 0;                        // +0x1c (32 from the constructor; the NetStructArray count)
    std::uint32_t unk_20_ = 0;                   // +0x20 not accessed by any recovered function
    // The element array. The header it sits in (the NetStructArray at +0x18: its vptr at +0x18 and its
    // count at +0x1c) is represented by memberCount_ above rather than by net-transport's NetStructArray
    // template, because the port's element type is declared inside CMatching and the template's count_ is
    // protected. The element array itself is the real record: stride 432 and element base +0x24.
    // Element 0's id word is at this+0x170 either way (0x1c + 4 + 0x150 = 0x170, the `432*i + 0x170`
    // UpdateMemberIdList uses).
    MemberInfoNetStruct members_[kMaxMembers];   // +0x24, stride 432
    // +0x3620 begin, +0x3624 end, +0x3628 end of storage: an empty vector in the constructor, freed by the destructor
    // (node allocator up to 0x80 bytes, else CustomFree). No recovered function reads or writes it, so the element
    // type is not identified; 32-bit words are a placeholder.
    std::vector<std::int32_t> unk_3620_;
};
