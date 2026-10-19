#include "net-session-online/c_matching_local.hpp"
#include "net-session-online/member_mask.hpp"

// 0x805c04 _ZNK14CMatchingLocal14GetMemberCountEv
std::int32_t CMatchingLocal::GetMemberCount() const {
    return CConnectionManager::GetInstance()->GetConnectionCount(false) + 1;
}

// 0x805c1c _ZN14CMatchingLocal8IsInRoomEi
// Re-verified from the asm/Hex-Rays. The binary, in order:
//   1. `if (*(this+3470 dwords) == memberId) return (*(vtable+100))()` -- this+0x3638 is memberId_, and
//      vtable +0x64 is the no-argument IsInRoom.
//   2. `if (GetConnectionMgr()->IsConnected(memberId)) return 1;`
//   3. `v5 = memberId_; return (v5 < 0 || v5 != serverMemberId_) && (*(vtable+100))() &&
//      *((_DWORD *)this + 102*GetMemberIndex(memberId) + 4940) >= 0;` -- the last term is a member id word
//      of the CMatching member table (the base's element array, 432-byte stride).
// CORRECTION of the earlier note, which is why this row was re-derived: the note said the word at
// `102*index + 4940` dwords is "the member-id word (element +0x150) of the base member table (+0x20)".
// It is not. 102 dwords is 408 bytes, and 4940 dwords is byte 0x4D30, so the read is at
// CMatchingLocal + 408*i + 0x4D30 -- CMatchingLocal's OWN member table (element base +0x4BE0, 408-byte
// stride, id value at element +0x150), not CMatching's 432-byte-stride table at +0x20. The two tables
// are different objects: this class's (32 x 408, +0x4BE0) is the one CMatchingLocal::ReadPacketData /
// WritePacketData / ProcessLostPacket / ProcessAcknowledgedPacket walk with an explicit 408 stride, and
// the base's (32 x 432, +0x20) is the one CMatching walks. Both elements put their id at +0x150, which
// is why the earlier note could not tell them apart. This port does not declare CMatchingLocal's own
// table yet, so the term is reproduced against the base table's element, which carries the same id
// semantics. Deviation (host-necessitated): when GetMemberIndex answers -1, the binary reads element -1
// (out of bounds); the port answers false there.
bool CMatchingLocal::IsInRoom(std::int32_t memberId) {
    if (memberId_ == memberId) {
        return IsInRoom();  // vtable +0x64
    }
    if (CConnectionManager::GetInstance()->IsConnected(memberId)) {
        return true;
    }
    const std::int32_t index = CMatching::GetMemberIndex(memberId);
    if (index < 0 || index >= kMaxMembers) {
        return false;  // the binary reads element -1 here (out of bounds)
    }
    return (memberId_ < 0 || memberId_ != serverMemberId_) && IsInRoom() &&
           members_[index].id() >= 0;
}

// 0x805d38 _ZN14CMatchingLocal10KickMemberEi
std::int32_t CMatchingLocal::KickMember(std::int32_t memberId) {
    CConnectionManager::GetInstance()->Disconnect(memberId, true);
    return 0;
}

// 0x80675c _ZN14CMatchingLocal19GenerateNewMemberIdEv
// Re-verified from the asm/Hex-Rays: RoomMask = CMatching::GetRoomMask(); the loop reads the counter at
// this+4854 dwords (+0x4B98 -> the room-info int object at +0x4BB8 whose value is +0x4BD8), computes
// `v2/17 + 1 + (16*v2) % 272`, stores v2+1 through the member's SetValue slot at +0x4BC8 (which fires
// NetStructMember::SetChanged when the value differs), and repeats while (MemberBit(id) & RoomMask) != 0
// (MemberBit is the CMatching vtable slot +0x84). The body reproduces that arithmetic (with the 16*v2
// wrap kept unsigned), the store and the loop, and reads MemberBit through GetMemberMask.
// Deviation: the value is a plain field here, so the SetChanged notification the original's SetValue
// emits is not produced (no NetStruct base on CMatchingLocal's counter).
std::int32_t CMatchingLocal::GenerateNewMemberId() {
    const std::uint32_t roomMask = CMatching::GetRoomMask();  // 0x8000dc
    std::int32_t id = 0;
    do {
        const std::int32_t counter = memberIdCounter_;
        // The 32-bit original wraps 16 * counter; the unsigned multiply keeps that wrap defined here.
        const auto scaled = static_cast<std::int32_t>(16u * static_cast<std::uint32_t>(counter));
        id = counter / 17 + 1 + scaled % 272;
        memberIdCounter_ = static_cast<std::int32_t>(static_cast<std::uint32_t>(counter) + 1u);
    } while ((static_cast<std::uint32_t>(GetMemberMask(id)) & roomMask) != 0);  // vtable +0x84 = GetMemberMask
    return id;
}

// CConnectionManager::GetConnMemberIdList(false).
std::vector<int> CMatchingLocal::ConnectionMemberIdList() const {
    CConnectionManager* connections = CConnectionManager::GetInstance();
    return connections != nullptr ? connections->GetConnMemberIdList(false) : std::vector<int>();
}

// CConnectionManager::IsConnected(int).
bool CMatchingLocal::IsConnectedMember(int memberId) const {
    CConnectionManager* connections = CConnectionManager::GetInstance();
    return connections != nullptr && connections->IsConnected(memberId);
}

// CConnectionManager::Disconnect(int, false).
void CMatchingLocal::DisconnectMember(int memberId) {
    if (CConnectionManager* connections = CConnectionManager::GetInstance()) {
        connections->Disconnect(memberId, false);
    }
}
