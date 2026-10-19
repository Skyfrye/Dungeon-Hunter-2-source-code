// Track B batch e1-net-session-online-CMatching-0.
// The original class CMatching is ported as CMatching (c_matching_base.hpp), the same convention
// c_matching_base.cpp uses. Functions whose callees or layout are not in this category are listed
// with no body; the ledger notes name what is missing.

#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_messaging.hpp"    // CMessaging::GetInstance, ResetQueues
#include "net-session-online/c_sign_in.hpp"      // CSignIn::Get, Destroy
#include "net-transport/connection_manager.hpp"  // CConnectionManager::Initialize
#include "net-transport/packet_manager.hpp"
#include "net-transport/tb/c_net_player_manager.hpp"  // CNetPlayerManager::GetInstance, ResetPlayers

#include "net-session-online/deps/matching_queue.hpp"

// 0x7fe4e0 _ZN9CMatching8IsServerEv
// The original is non-virtual; the port keeps the existing pure virtual declaration, so this is its
// out-of-line definition. Reads the initialized flag (+0x0c), then compares the local member id with
// the server member id (vtable +0x6c and +0x74).
bool CMatching::IsServer() const {
    if (!initialized_ || LocalMemberId() < 0) return false;
    const int local = LocalMemberId();
    return local == ServerMemberId();
}

// 0x7fe574 _ZN9CMatching8LockRoomEb
// `if (a2) this = (*(this+72))(this); *(BYTE*)(v2+14) = 1; return this;` The +0x48 slot is CloseRoom in every
// derived vtable (CMatchingLocal 0x806e4c, CMatchingBluetooth the same, CMatchingGLLive 0x81bc1c); the base
// now declares it as a virtual (c_matching_base.hpp), so the call reaches the derived close. The +0x0e store
// follows the call, unconditionally. The return value is the slot's result when the argument was true and
// the object pointer otherwise (the binary leaves the same address in r0; the port returns it as int).
int CMatching::LockRoom(bool callSlot) {
    std::int32_t result = static_cast<std::int32_t>(reinterpret_cast<std::uintptr_t>(this));
    if (callSlot) {
        result = CloseRoom();  // vtable +0x48
    }
    baseRoomClosed_ = true;  // +0x0e
    return result;
}

// 0x7fe5e0 _ZN9CMatching9GetTeamIdEi
// Reconstructed. The team value is the byte held by the element's team member (value at element
// +0x178; a NetStructUInt<8>, so it is an unsigned byte). 0 when the index is outside
// 0..memberCount_.
int CMatching::GetTeamId(int memberId) const {
    const std::int32_t index = GetMemberIndex(memberId);
    if (index < 0 || index >= memberCount_) return 0;
    return members_[index].team();  // element +0x178
}

// 0x7fe618 _ZN9CMatching18GetMemberIdByIndexEj
// Asm/Hex-Rays: `return *((_DWORD*)this + 108*a2 + 92)` -- the member id of element a2 with NO range check
// (108 dwords = 432 bytes = the element stride; 92 dwords = 0x170 = element base 0x20 + the id value at
// +0x150). Callers pass the member count as the bound, so an index of 32 reads 432 bytes past element 31,
// i.e. past the whole 32-slot table. That read has no defensible reconstructed value: the function's own
// contract is "the id of element index", and there is no element 32.
// Host-necessitated deviation, named here because the test pins it: an index at or past the 32 slots
// returns -1, which is exactly the id an empty element holds (JoinRoom writes -1 into every element's id
// member, and GetMemberIdList skips ids < 0). So the answer for an out-of-range index is the same as the
// answer for an in-range empty slot -- the value the binary would read for an untouched slot -- and it can
// never collide with a real member id (0 would alias the id of a real member 0). No production caller
// reaches this: CMatchingGLLive::GetMemberIdList walks 0..count-1 and all other call sites test the range.
std::int32_t CMatching::GetMemberIdByIndex(std::uint32_t index) const {
    if (index >= static_cast<std::uint32_t>(kMaxMembers)) return -1;  // out of the table: the empty-slot id
    return members_[index].id();  // element +0x150
}

// 0x7fff9c _ZN9CMatchingC1Ev and 0x80003c _ZN9CMatchingC2Ev
// Both bodies are the same. Sets the vptr, the NetStructArray header's vptr (+0x18, no slot in the port: the count is
// the plain int memberCount_), the room mask dirty flag (+0x10 = 1), the count (+0x1c = 32), the capacity (+0x08 = 0),
// clears the four flags at +0x0c..+0x0f, constructs the 32 member elements in place (element base +0x20, stride 432) and
// clears the three words of the container at +0x3620 (an empty vector). All of it is member initialisation here.
CMatching::CMatching() {
    memberCapacity_ = 0;       // +0x08
    initialized_ = false;      // +0x0c
    roomHidden_ = false;       // +0x0d
    baseRoomClosed_ = false;   // +0x0e
    unk_0f = 0;                // +0x0f
    roomMaskDirty_ = true;     // +0x10
    memberCount_ = kMaxMembers;  // +0x1c (the NetStructArray count)
}

// 0x800a68 _ZN9CMatchingD2Ev, 0x800b00 _ZN9CMatchingD1Ev
// The implicit `virtual ~CMatching() = default`: the container at +0x3620 is freed by the vector, the NetStructArray
// vptr is reset (no slot here) and the 32 member elements are destroyed from element 31 down to 0 through their
// destructor, which is the order of the array member's destruction. 0x800b98 _ZN9CMatchingD0Ev is the deleting
// destructor, generated by the compiler.

// Functions below have no body yet. Each one needs callees or layout that are not in this category
// (see the ledger notes and the layout requests in the batch report).

// 0x7fea14 _ZN9CMatching14ReadPacketDataEiiR12NetBitStream: the body is in
// src/r1n-net-session-online-CMatching-9acceb-1.cpp (reconstructed against 0x7fea14).

// 0x7feac4 _ZN9CMatching16ResendMemberDataEv: the body is in src/c_matching_base.cpp (reconstructed).

// 0x7feb40 _ZN9CMatching10SearchRoomE17CRoomSearchFilterbh
// CRoomSearchFilter::SetSearchAttributeInt(filter, 0, 0, -1342128411 = 0xB000BEE5), then the tail call to
// vtable +0x08 (SearchRoomInternal) with the same filter, flag and mode; its result is returned.
std::int32_t CMatching::SearchRoom(CRoomSearchFilter filter, bool flag, std::uint8_t mode) {
    filter.SetSearchAttributeInt(ROOM_INT_ATTRIBUTE_0, static_cast<ROOM_SEARCH_OPERATOR>(0), -1342128411);
    return SearchRoomInternal(filter, flag, mode);  // vtable +0x08
}

// 0x7feb8c _ZN9CMatching7DestroyEv
// Partial. When s_Matching is set: Terminate() on it (vtable +0x2c, its result is discarded by the
// binary), CSignIn::Get()->Destroy() (CSignIn vtable +0x24), then delete s_Matching through its deleting
// destructor (vtable +0x24) and clear the pointer. The binary's Destroy takes this and never uses it, so it
// is non-static here. Partial: the CSignIn pointer is null-checked; the original dereferences it.
void CMatching::Destroy() {
    if (s_Matching == nullptr) return;
    s_Matching->Terminate();
    if (CSignIn* signIn = CSignIn::Get()) signIn->Destroy();
    if (s_Matching != nullptr) {
        delete s_Matching;
        s_Matching = nullptr;
    }
}

// 0x7fed08 _ZN9CMatching25ProcessAcknowledgedPacketEii
// Body in src/c_matching_base.cpp (room attributes call only; partial there). Not repeated here.

// 0x7ff120 _ZN9CMatching8JoinRoomEy
// Reconstructed from the 0x7ff120 pseudocode, including the parts the earlier note listed as missing.
// Documented order:
//   1. CMessaging::Get()->ResetQueues(true); GetNetPlayerMgr()->ResetPlayers().
//   2. while (memberCount_ > 0), for every element 0..memberCount_-1 (v7 walks with stride 432 while v6
//      counts, so the element base is this + 432*i + 0x20):
//        - a stack NetStructInt<32> temporary is built (sizeBits 32, stamp 0, ackMask/sentMask -1,
//          changeMask 0, changed false) and SetChanged is called on it when its value word is not -1.
//          That word is never written by the original, so this only advances NetStruct::s_changeCounter
//          -- the case this category has already settled (NOTES.md: SetCharacterXP/SetCharacterNumPotions).
//        - the element's id member (+0x130) gets SetValue(-1) through vtable +0x1c (the stack temporary
//          is the argument). The port's idMember_.SetValue(-1) does exactly that, and it fires the real
//          change notification when the value differs.
//        - the same for the team member (+0x158) with the 8-bit temporary and value 0.
//        - the attribute member (+0x180) gets SetBuffer(nullptr, 0).
//        - the cached id (element +0x1a8) is set to -1 without a NetStruct call.
//   3. Then, for every element, NetStruct::SetEnabled(element, 0) (the +0x20 address is the element
//      base: 432*i + 32).
//   4. Tail call to vtable +0x00 (JoinRoomInternal). CMatchingLocal::JoinRoomInternal (0x808774) now carries
//      `override`, so the call reaches it (it used to reach the base default).
std::int32_t CMatching::JoinRoom(std::uint64_t roomId) {
    CMessaging::GetInstance()->ResetQueues(true);
    CNetPlayerManager::GetInstance()->ResetPlayers();
    for (std::int32_t i = 0; i < memberCount_; ++i) {
        MemberInfoNetStruct& element = members_[i];
        element.setId(-1);                        // id member SetValue, element +0x150
        element.setTeam(0);                       // team member SetValue, element +0x178
        element.setRoomAttribute(nullptr, 0);     // attribute member SetBuffer, element +0x1a0
        element.setPreviousMemberId(-1);          // element +0x1a8
    }
    for (std::int32_t i = 0; i < memberCount_; ++i) {
        members_[i].SetEnabled(false);            // NetStruct::SetEnabled(element, 0)
    }
    return JoinRoomInternal(roomId);  // vtable +0x00
}

// 0x7ff350 _ZN9CMatching14CreateJoinRoomEb15CRoomAttributes
// Reconstructed from the 0x7ff350 pseudocode. Same two resets and the same per-element reset as
// JoinRoom (id member SetValue(-1), team member SetValue(0), attribute member SetBuffer(nullptr, 0),
// cached id -1). Then CRoomAttributes::SetAttributeInt(0, -1342128411) on the by-value attributes
// (0xB000BEE5), then NetStruct::SetEnabled(element, 1) on every element (the +0x20 element base again),
// then the tail call to CreateJoinRoomInternal (vtable +0x04), which CMatchingLocal and CMatchingGLLive
// do carry with the binary's signature. The attributes argument is a copy, as the binary's is.
std::int32_t CMatching::CreateJoinRoom(bool flag, CRoomAttributes attributes) {
    CMessaging::GetInstance()->ResetQueues(true);
    CNetPlayerManager::GetInstance()->ResetPlayers();
    for (std::int32_t i = 0; i < memberCount_; ++i) {
        MemberInfoNetStruct& element = members_[i];
        element.setId(-1);                        // id member SetValue, element +0x150
        element.setTeam(0);                       // team member SetValue, element +0x178
        element.setRoomAttribute(nullptr, 0);     // attribute member SetBuffer, element +0x1a0
        element.setPreviousMemberId(-1);          // element +0x1a8
    }
    attributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_0, -1342128411);
    for (std::int32_t i = 0; i < memberCount_; ++i) {
        members_[i].SetEnabled(true);             // NetStruct::SetEnabled(element, 1)
    }
    return CreateJoinRoomInternal(flag, attributes);  // vtable +0x04
}

// 0x7ff5a0 _ZN9CMatching9TerminateEv
// Leaves the room when in one (IsInRoom() then LeaveRoom(), vtable +0x64 and +0x3c), unregisters packet slot 0,
// clears the initialized flag and terminates the player manager, messaging, packet manager, connection manager and
// the sign-in (CSignIn vtable +0x20). Both matching queues are cleared, the room attributes are cleared (CRoomAttributes
// slot +0x10, Clear), every member element is reset (id -1, team 0, empty attribute buffer, cached id -1) and disabled,
// and the output event 0x400002 is posted. Returns 0.
// The Hex-Rays' stack NetStructInt/NetStructUInt temporaries are the SetValue calls of the element members.
std::int32_t CMatching::Terminate() {
    if (IsInRoom()) {
        LeaveRoom();
    }
    CPacketManager::UnregisterPacketSlot(0);
    initialized_ = false;  // +0x0c
    CNetPlayerManager::Terminate();
    CMessaging::Terminate();
    CPacketManager::Terminate();
    CConnectionManager::Terminate();
    // Unchecked in the original: Get() is null only for a provider other than 0 or 1.
    if (CSignIn* signIn = CSignIn::Get()) {
        signIn->Terminate();  // vtable +0x20
    }
    MatchingOutputEventQueue().Clear();    // CMatching::m_eventQueue
    MatchingInternalEventQueue().Clear();  // CMatching::m_eventQueueInternal
    if (CRoomAttributes* attributes = GetRoomAttributes()) {
        attributes->Clear();  // vtable +0x10
    }
    ResetMemberElements();
    MatchingOutputEventQueue().AddEvent(0x400002, nullptr, 0);  // 4194306
    return 0;
}

// The per-element reset shared by Initialize and Terminate: id member -1, team member 0, attribute member
// SetBuffer(nullptr, 0), cached id -1 (element +0x1a8); then NetStruct::SetEnabled(element, false) on each.
void CMatching::ResetMemberElements() {
    for (std::int32_t i = 0; i < memberCount_; ++i) {
        MemberInfoNetStruct& element = members_[i];
        element.setId(-1);                     // id member SetValue, element +0x150
        element.setTeam(0);                    // team member SetValue, element +0x178
        element.setRoomAttribute(nullptr, 0);  // attribute member SetBuffer, element +0x1a0
        element.setPreviousMemberId(-1);       // element +0x1a8
    }
    for (std::int32_t i = 0; i < memberCount_; ++i) {
        members_[i].SetEnabled(false);  // NetStruct::SetEnabled(element, 0)
    }
}

// 0x7ff85c _ZN9CMatching10InitializeEi
// When the object is already initialized (+0x0c) it posts 0x400001 on the output queue and returns 0. Otherwise it
// registers packet slot 0 with the four static forwarders (write, read, acknowledged, lost), stores the capacity (+0x08),
// clears the room hidden (+0x0d) and room closed (+0x0e) flags, clears both matching queues, initializes the sign-in
// (CSignIn vtable +0x08) and the connection manager, clears the room attributes (GetRoomAttributes() at vtable +0xa4,
// then CRoomAttributes slot +0x10, Clear) and resets and disables every member element. Returns 0 on both paths.
// The element loop count is memberCount_ (+0x1c, 32 from the constructor), not the capacity argument.
int CMatching::Initialize(int memberCapacity) {
    if (initialized_) {
        MatchingOutputEventQueue().AddEvent(0x400001, nullptr, 0);  // 4194305
        return 0;
    }
    CPacketManager::RegisterPacketSlot(
        0,
        [](int a, int b, NetBitStream& stream) -> bool { return CMatching::sWritePacketData(a, b, stream) != 0; },
        [](int a, int b, NetBitStream& stream) { (void)CMatching::sReadPacketData(a, b, stream); },
        [](int a, int b) { (void)CMatching::sProcessAcknowledgedPacket(a, b); },
        [](int a, int b) { (void)CMatching::sProcessLostPacket(a, b); });
    memberCapacity_ = memberCapacity;  // +0x08
    baseRoomClosed_ = false;           // +0x0e
    roomHidden_ = false;               // +0x0d
    MatchingOutputEventQueue().Clear();    // CMatching::m_eventQueue
    MatchingInternalEventQueue().Clear();  // CMatching::m_eventQueueInternal
    // Unchecked in the binary: Get() returns null only for a provider other than 0 or 1.
    if (CSignIn* signIn = CSignIn::Get()) {
        signIn->Initialize();  // CSignIn vtable +0x08: sets the active flag
    }
    CConnectionManager::Initialize();
    if (CRoomAttributes* attributes = GetRoomAttributes()) {
        attributes->Clear();  // vtable +0x10
    }
    ResetMemberElements();
    return 0;
}

// 0x800f8c _ZN9CMatching3GetEv: the body is in src/glx_320e98.cpp (the one definition of CMatching::Get).
// 0x8010a4 _ZN9CMatching15WritePacketDataEiiR12NetBitStream: the body is in
// src/r1n-net-session-online-CMatching-9acceb-1.cpp (partial: the two serialize steps are stubs).
