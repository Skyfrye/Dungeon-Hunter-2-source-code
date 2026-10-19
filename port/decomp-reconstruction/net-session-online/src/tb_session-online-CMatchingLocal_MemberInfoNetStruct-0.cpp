// CMatchingLocal::MemberInfoNetStruct: the per-member record of CMatchingLocal's OWN member table
// (32 elements at +0x4BE0, stride 408), the table CMatchingLocal::ReadPacketData / WritePacketData /
// ProcessLostPacket / ProcessAcknowledgedPacket walk and that CMatchingLocal::IsInRoom(int) reads.
//
// WHAT THE OLD HEADER GOT WRONG: c_matching_local.hpp declared this name only as an empty forward
// declaration, so nothing defined it and the four 408-stride bodies above were left partial for want of
// it. The name is NOT a re-declaration of CMatching::MemberInfoNetStruct: the symbol
// _ZN14CMatchingLocal19MemberInfoNetStructC1Ev (0x806b98) and its own vtable
// _ZTVN14CMatchingLocal19MemberInfoNetStructE prove a separate class, and the only NetStructArray
// instantiation in the binary names the base one
// (NetStructArray<N9CMatching19MemberInfoNetStructELj32EE). This file defines the constructor; the
// destructor (0x806258 D1, 0x806344 D0) and the record layout are declared in the owner header.
//
// Layout evidence, from 0x806b98 and the 408-stride call sites:
//   NetStruct::NetStruct(this) first, then the derived vptr, then one int member built inline with
//   sizeBits 32 at member+0x04, stamp 0, ackMask/sentMask -1, changeMask 0, changed false and its value
//   word, then a NetStructMemberType<CNetworkId> built from a CNetworkId::Reset() local at member +0x28
//   whose vptr is then overwritten with off_992008, then DeclareMember for the int member and for the
//   CNetworkId member, in that order.
// IDENTIFIED THIS PASS: off_992008 is not an unknown table. The instruction at 0x806c64 loads
// _ZTV18NetStructNetworkId_ptr, 0x806c74 adds 8 to the table base (0x992000) and 0x806c78 stores it at
// element +0x158, so the member is net-transport's NetStructNetworkId -- i.e. a
// NetStructMemberType<CNetworkId> carrying NetStructNetworkId::Read (0x801de0) and ::Write (0x801f14).
// Its slot list, read from the bytes at 0x992008, is exactly the port's NetStructNetworkId vtable:
//   +0x00 Erase 0x801bfc, +0x04 Write 0x801f14, +0x08 Read 0x801de0, +0x0c PostLoad 0x36d1f8,
//   +0x10 GetSizeBits 0x36d1fc, +0x14 D1 0x801b04, +0x18 D0 0x801bc8, +0x1c SetValue 0x8020b8,
//   +0x20 TestValue 0x801b8c, +0x24 GetValue 0x801b84  (0x992038 is the base template's table, with
//   __cxa_pure_virtual 0xa36490 in the Read/Write slots).
// The port therefore holds a real NetStructNetworkId member (the listen address does serialize now) and
// declares it, matching the binary's second DeclareMember call.
#include "net-session-online/c_matching_local.hpp"

// 0x806b98 _ZN14CMatchingLocal19MemberInfoNetStructC1Ev
// Reconstructed. The two "read the value before any store, clear it and SetChanged when nonzero" branches
// the pseudocode shows cannot run in C++ (the members are value-initialised) and are not a behavioural
// difference: a fresh member's change stamp is 0, so SetChanged there would only advance
// NetStruct::s_changeCounter -- the case this category has already settled (NOTES.md). (In the binary the
// read at 0x806bbc touches the allocator's leftover word at element +0x150, so which branch runs depends
// on the pool; the port always takes the "already zero" branch.)
CMatchingLocal::MemberInfoNetStruct::MemberInfoNetStruct() : NetStruct() {
    // The binary builds the int member inline and then writes it through the SetValue slot from a stack
    // temporary; NetStructInt<32>'s constructor plus SetValue is that sequence.
    idMember_.SetValue(0);
    DeclareMember(&idMember_);
    // 0x806c3c..0x806c78: CNetworkId::Reset() into a stack temporary,
    // NetStructMemberType<CNetworkId>(this+0x158, temporary), then the NetStructNetworkId vptr store.
    // The member is default-constructed from a Reset() CNetworkId, which is the same sequence.
    DeclareMember(&networkIdMember_);
}
