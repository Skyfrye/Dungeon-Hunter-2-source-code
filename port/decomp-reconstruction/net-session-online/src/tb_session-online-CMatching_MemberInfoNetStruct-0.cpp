// Batch e1-net-session-online-CMatching_MemberInfoNetStruct-0, re-based on the real NetStruct record.
//
// WHAT THE OLD VERSION OF THIS FILE GOT WRONG: it included
// "net-session-online/tb/cmatching_member_info_net_struct.hpp" and drove a standalone struct
// (CMatchingMemberInfoNetStruct) that held its own byte-image copies of the four NetStructMember
// headers (memberId_/teamId_/roomAttribute_ with hand-written sizeBits/ackMask/sentMask/changeMask
// fields and a direct `.value` store), and it called the DeclareMember/SetChanged stand-ins of
// deps/net_struct_stub.hpp. Every one of those hand-written header stores is already what the
// net-transport NetStructMember/NetStructMemberType constructors do, and the direct value stores
// skipped NetStructMemberType<T>::SetValue, which is the only thing that fires SetChanged in the
// binary. The record is now the class CMatching::MemberInfoNetStruct in
// include/net-session-online/c_matching_base.hpp: a real NetStruct with the three real member objects
// (NetStructInt<32> idMember_ +0x130, NetStructUInt<8> teamMember_ +0x158,
// NetStructByteArray<64> roomAttributeMember_ +0x180) and the cached previousMemberId_ at +0x1a8.
// This file now defines that constructor only.
//
// Offsets in the comments are the original 32-bit element offsets.
//
// The 0x1a8 find came from a SECOND correction, so it is spelled out: the old header said the id was
// "a 40-byte NetStructMemberType<int>, value at +0x150, meaning not identified"
// (tb/cmatching_member_info_net_struct.hpp) and the old ctor set +0x1a8 to -1 as
// `previousMemberId_`, an unrelated "cached id" field. The binary proves +0x1a8 is BOTH, and that the
// whole element is a NetStruct: UpdateMemberIdList (0x8002bc) reads the id at `432*i + 0x170` and the
// cached id at `432*i + 0x1c8`, compares them, and queues event 0x800007/0x800006 on a change; the
// cached id is never a NetStruct member (no vtable call touches it). +0x318 (0x1a8 + 432 - 0x150 +
// 0x170 ...) is not involved: the element stride is 432, so CMatching +0x1c8 is element 0's +0x1a8.

#include "net-session-online/c_matching_base.hpp"

// 0x7ffc28 _ZN9CMatching19MemberInfoNetStructD1Ev: the implicit destructor. The listing resets the vptrs, frees the room-attribute
// buffer (CustomFree, pointer cleared; NetStructByteArray<64>'s destructor does this) and clears the packet-history map when it is
// non-empty (NetStruct's destructor). Verified against the listing; there is no further body.
// 0x7ffd04 _ZN9CMatching19MemberInfoNetStructC1Ev
// Reconstructed. In order, as the pseudocode and the assembly show:
//   1. NetStruct::NetStruct(this) (implicit here).
//   2. The four member headers are built by the net-transport member constructors, which is exactly the
//      inline header store sequence the pseudocode shows for each member (sizeBits 32 for the id, 8 for
//      the team, 512 for the 64-byte attribute array; changeStamp 0; ackMask and sentMask -1;
//      changeMask 0; changed false; value T{}).
//   3. The id member's and the team member's value slots are read BEFORE any store (the pseudocode reads
//      `v2 = *((_DWORD *)this + 84)` at +0x150 and `v4 = *((_DWORD *)this + 94)` at +0x178). In C++ both
//      are already value-initialised, so the two `SetChanged` branches cannot run. There is no
//      behavioural difference: a fresh member's change stamp is 0, so SetChanged at that point would only
//      advance NetStruct::s_changeCounter, exactly the case the category has already settled (see
//      SetCharacterXP / SetCharacterNumPotions and NOTES.md).
//   4. The attribute member is constructed from an empty ByteArray {nullptr, 0}; the temporary is freed
//      when set, which it is not.
//   5. previousMemberId_ = -1 at +0x1a8.
//   6. NetStruct::DeclareMember in order: id, team, attribute.
//   7. Finally the id member gets SetValue(-1) and the team member SetValue(0) through vtable +0x1c, from
//      a stack temporary built for the call. Both differ from the value-initialised 0, so both stores also
//      fire SetChanged -- that part IS observable and is reproduced by calling SetValue.
CMatching::MemberInfoNetStruct::MemberInfoNetStruct()
    : NetStruct(), roomAttributeMember_(ByteArray{}) {  // the ctor takes the empty {nullptr, 0} ByteArray
    idMember_.SetValue(-1);         // +0x150 SetValue(-1) via vtable +0x1c
    teamMember_.SetValue(0u);       // +0x178 SetValue(0)
    previousMemberId_ = -1;         // +0x1a8
    DeclareMember(&idMember_);
    DeclareMember(&teamMember_);
    DeclareMember(&roomAttributeMember_);
}
