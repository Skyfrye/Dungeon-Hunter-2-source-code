// CMatching member and room layer (base of CMatchingLocal, CMatchingGLLive, CMatchingBluetooth).
// The class is ported as CMatching (see c_matching_base.hpp); the demangled owner in each
// comment is the original CMatching.
//
// The member element array is a real NetStruct record now (CMatching::MemberInfoNetStruct). Earlier
// passes of this file treated it as a field struct and left every per-element NetStruct call
// unported; the rows below that said so (ProcessLostPacket, ProcessAcknowledgedPacket,
// SetRoomMemberAttibute, UpdateMemberIdList, SetTeamId, GetMemberIdList, GetMemberIdByIndex) are
// re-derived here against 0x7fed84 / 0x7fed08 / 0x7ff008 / 0x8002bc / 0x8008ac / 0x800808 / 0x7fe618.
#include "net-session-online/c_matching_base.hpp"

#include <cstring>

#include "net-session-online/deps/matching_queue.hpp"

// 0x7fed84 _ZN9CMatching17ProcessLostPacketEii
// Reconstructed. GetRoomAttributes() (vtable +0xa4), CRoomAttributes::ProcessLostPacket(a2, a3) on it,
// then NetStruct::ProcessLostPacket(a2, a3) (its slot +0x44) on member element i for i in
// 0..memberCount_-1 (element base stride 432; the pseudocode's `v9 = this + 24` and `432*v10 + 8` name
// the same elements, see the element-base note in the header). The result returned is the last call's.
std::int32_t CMatching::ProcessLostPacket(int a2, int a3) {
    if (CRoomAttributes* room = GetRoomAttributes()) room->ProcessLostPacket(a2, a3);
    for (std::int32_t i = 0; i < memberCount_; ++i) {
        members_[i].ProcessLostPacket(a2, a3);  // NetStruct slot +0x44
    }
    return 0;  // the binary returns r0 left by the last (void) slot call
}

// 0x7fed08 _ZN9CMatching25ProcessAcknowledgedPacketEii
// Reconstructed. Same shape as ProcessLostPacket: the room attributes first, then
// NetStruct::ProcessAcknowledgedPacket (slot +0x40) on every member element.
std::int32_t CMatching::ProcessAcknowledgedPacket(int a2, int a3) {
    if (CRoomAttributes* room = GetRoomAttributes()) room->ProcessAcknowledgedPacket(a2, a3);
    for (std::int32_t i = 0; i < memberCount_; ++i) {
        members_[i].ProcessAcknowledgedPacket(a2, a3);  // NetStruct slot +0x40
    }
    return 0;  // the binary returns r0 left by the last (void) slot call
}

// 0x7ff008 _ZN9CMatching21SetRoomMemberAttibuteEiPKvi
// Reconstructed. GetMemberIndex(memberId) bounds the access against memberCount_ (the pseudocode's
// `index >= memberCount` early out returns the index); the element's attribute member (+0x180) gets
// NetStructByteArray<64>::SetBuffer(data, size) (0x7fefb8), which copies into the member's ByteArray and
// fires its Set slot. SetBuffer with a null source or a non-positive size clears the buffer, which is
// what the port's setRoomAttribute(data, size) does. A negative size is not verified by the original
// either (it forwards it to SetBuffer), so a negative size is treated as empty here.
void CMatching::SetRoomMemberAttibute(int memberId, const void* data, int size) {
    const std::int32_t index = GetMemberIndex(memberId);
    if (index < 0 || index >= memberCount_) return;
    MemberInfoNetStruct& element = members_[index];
    if (data == nullptr || size <= 0) {
        element.setRoomAttribute(nullptr, 0);
        return;
    }
    element.setRoomAttribute(data, static_cast<std::size_t>(size));
}

// 0x7ff054 _ZN9CMatching21GetRoomMemberAttibuteEiPvi
// Reconstructed. The fourth argument is not read by the body. With an index inside
// 0..memberCount_, the stored size (element attribute member, value +0x1a4) is copied out and returned;
// an index outside that range returns 0.
int CMatching::GetRoomMemberAttibute(int memberId, void* out, int /*outSize*/) {
    const std::int32_t index = GetMemberIndex(memberId);
    if (index < 0 || index >= memberCount_) return 0;
    const ByteArray& buffer = members_[index].roomAttribute();  // element +0x1a0 / +0x1a4
    if (buffer.size == 0 || buffer.data == nullptr) return 0;
    std::memcpy(out, buffer.data, buffer.size);
    return static_cast<int>(buffer.size);
}

// 0x8000dc _ZN9CMatching11GetRoomMaskEv
// The cache is a function-local static in the original, so it is shared by every instance. Kept so.
std::uint32_t CMatching::GetRoomMask() const {
    static std::uint32_t maskCache = 0;  // CMatching::GetRoomMask()::maskCache
    if (!roomMaskDirty_) return maskCache;

    std::uint32_t mask = MemberBit(ServerMemberId());
    if (IsServer()) {
        for (int memberId : ConnectedMemberIds()) mask |= MemberBit(memberId);
    } else {
        mask |= MemberBit(LocalMemberId());
    }
    maskCache = mask;
    roomMaskDirty_ = false;
    return mask;
}

// 0x8001d4 _ZN9CMatching12TestRoomMaskEj
bool CMatching::TestRoomMask(std::uint32_t bits) const {
    const std::uint32_t mask = GetRoomMask();
    return (mask & bits) == mask;
}

// 0x8002bc _ZN9CMatching18UpdateMemberIdListEv
// Reconstructed from the assembly at 0x8002bc (the pseudocode loses the NetStruct calls inside it).
// Order of the binary body:
//   1. `(*vt+0x64)` (IsInRoom in every derived class) -- return when false.
//   2. When the +0x64 slot is true and IsServer() is true: the server path. Already-server members keep
//      their slot; the connection manager's member list (GetConnMemberIdList(false)) plus LocalMemberId
//      (slot +0x6c) are offered slots through GetMemberIndex. A candidate takes the first slot whose id
//      (element +0x150) is < 0 and which IsMemberServer or CConnectionManager::IsConnected accepts: the
//      element's id member SetValue(memberId), the team member SetValue(0) and the attribute member
//      SetBuffer(nullptr, 0) all run. Members 0..memberCount_-1 whose id is >= 0 and which are neither the
//      server nor connected lose their id (SetValue(-1)), team (SetValue(0)) and attributes (SetBuffer 0).
//   3. When the +0x64 slot is false, or after the server path, every element 0..memberCount_-1 is
//      compared: its cached id (element +0x1a8) against its id (element +0x150). On a difference the
//      events are queued and the cached id is overwritten with the live id:
//        id < 0, cached >= 0          -> event 0x800007 with the CACHED id (addressed through a stack copy)
//        id < 0, cached < 0           -> event 0x800006 with the LIVE id
//        id >= 0, cached < 0          -> event 0x800006 with the LIVE id
//        id >= 0, cached >= 0         -> no event, but the cached id is still updated
//      (0x800007 = 8388615, 0x800006 = 8388614; the names of the codes are not identified.)
// Deviation: none known. The change notifications are the real net-transport NetStruct members' SetValue
// and SetBuffer, so NetStructMember::SetChanged and NetStruct::s_changeCounter behave as in the binary.
void CMatching::UpdateMemberIdList() {
    if (!IsInRoom()) return;  // slot +0x64

    if (IsServer() && IsInRoom()) {
        // Server: connected members that have no slot get one (id, team 0, empty attribute buffer).
        std::vector<int> candidates = ConnectionMemberIdList();
        candidates.push_back(LocalMemberId());
        for (int memberId : candidates) {
            const std::int32_t index = GetMemberIndex(memberId);
            if (index < 0 || index >= memberCount_) continue;
            MemberInfoNetStruct& element = members_[index];
            if (element.id() >= 0) continue;  // element +0x150 already holds an id
            if (IsMemberServer(memberId) || IsConnectedMember(memberId)) {
                element.setId(memberId);                 // id member SetValue, element +0x150
                element.setTeam(0);                      // team member SetValue, element +0x178
                element.setRoomAttribute(nullptr, 0);    // attribute member SetBuffer, element +0x1a0
            }
        }

        // Server: members that are no longer connected lose their id, team and attribute buffer.
        for (std::int32_t i = 0; i < memberCount_; ++i) {
            MemberInfoNetStruct& element = members_[i];
            if (element.id() < 0) continue;
            if (IsMemberServer(element.id()) || IsConnectedMember(element.id())) continue;
            element.setId(-1);
            element.setTeam(0);
            element.setRoomAttribute(nullptr, 0);
        }
    }

    // Every member: queue the change of the id against the cached id, then remember the live id.
    for (std::int32_t i = 0; i < memberCount_; ++i) {
        MemberInfoNetStruct& element = members_[i];
        const std::int32_t id = element.id();                       // element +0x150
        const std::int32_t cached = element.previousMemberId();     // element +0x1a8
        if (id == cached) continue;

        if (id < 0) {
            if (cached >= 0) {
                int previous = cached;  // the event carries the cached id
                MatchingInternalEventQueue().AddEvent(0x800007, &previous, 4);
            } else {
                int current = id;       // the event carries the live (negative) id
                MatchingInternalEventQueue().AddEvent(0x800006, &current, 4);
            }
        } else if (cached < 0) {
            int current = id;
            MatchingInternalEventQueue().AddEvent(0x800006, &current, 4);
        }
        element.setPreviousMemberId(id);
    }
}

// 0x800808 _ZN9CMatching15GetMemberIdListEv
// Reconstructed. Returns the ids (element +0x150) of the members that hold one, in slot order.
std::vector<int> CMatching::GetMemberIdList() const {
    std::vector<int> ids;
    for (std::int32_t i = 0; i < memberCount_; ++i) {
        const std::int32_t memberId = members_[i].id();
        if (memberId >= 0) ids.push_back(memberId);
    }
    return ids;
}

// 0x8008ac _ZN9CMatching9SetTeamIdEih
// Reconstructed. GetMemberIndex(memberId) bounds the access against memberCount_ (+0x1c); an index
// outside that range returns the index (the pseudocode's `return result`). The element's team member
// (+0x158, a NetStructUInt<8>) gets the byte through its SetValue (vtable +0x1c). The temporal
// NetStructUInt<8> the binary builds on the stack, whose own SetChanged is decided by a value slot the
// original never writes, is not a behavioural difference: it only advances NetStruct::s_changeCounter
// (the same case already recorded for SetCharacterXP and the CMatchingLocal rows -- the member's own
// SetValue is what sets the real change flag). The port's NetStructMember::SetChanged does advance the
// counter, so the port reaches that state whenever the byte actually changes.
void CMatching::SetTeamId(int memberId, std::uint8_t teamId) {
    const std::int32_t index = GetMemberIndex(memberId);
    if (index < 0 || index >= memberCount_) return;
    members_[index].setTeam(teamId);  // team member SetValue, element +0x178
}

// 0x7feac4 _ZN9CMatching16ResendMemberDataEv
// Reconstructed. Calls NetStruct::Resend() (0x81347c) on each member element in turn, so every element's
// packet history is re-sent. Nothing is read back; the original's return is the last call's leftover R0.
void CMatching::ResendMemberData() {
    for (std::int32_t i = 0; i < memberCount_; ++i) {
        members_[i].NetStruct::Resend();
    }
}
