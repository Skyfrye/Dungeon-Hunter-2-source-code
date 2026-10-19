// CMatchingGLLive::MemberInfoNetStruct: the replicated per-member record of CMatchingGLLive's member
// table (32 of them at +0x3a00, stride 360 = 0x168). The class is nested in CMatchingGLLive, so its
// definition is in c_matching_gl_live.hpp and this header exists only to keep the old include path
// working and to carry the recovery notes.
//
// Element layout (original 32-bit offsets, from the constructor 0x81e680 and the destructor 0x81d1f4):
//   +0x000            NetStruct base, sizeof 0x130 (net-transport/net_struct.hpp: vptr; slots
//                     +0x08 Serialize, +0x0c ConditionalSerialize, +0x10 SerializeDisabled,
//                     +0x14 Load, +0x18 ConditionalLoad, +0x1c Erase, ... +0x48/+0x4c
//                     ProcessAcknowledgedPacket / ProcessLostPacket; packet history std::map at
//                     +0x10c, enabled at +0x124, post-load fields at +0x125/+0x128)
//   +0x130..+0x167    NetStructString<16> member, sizeof 0x38, value std::string at +0x150: the
//                     member's user name. This is the record's ONLY declared member (one
//                     NetStruct::DeclareMember call, on +0x130).
//   sizeof = 0x130 + 0x38 = 0x168 = 360.
//
// The base record CMatching::MemberInfoNetStruct is the same shape but declares three members and is
// 432 bytes: NetStructInt<32> at +0x130, NetStructUInt<8> at +0x158, NetStructByteArray<64> at +0x180.
// The handover note for this record said the difference is a NetStructString<16> where the base holds a
// NetStructUInt<8>; that is only half of it -- the GLLive record has ONE member where the base has
// THREE. Both facts are visible in the two constructors (0x81e680 has one DeclareMember call;
// 0x7ffd04 has three) and in the two destructors (0x81d1f4 vs 0x7ffc28, which additionally frees the
// attribute array).
#pragma once

#include "net-session-online/c_matching_gl_live.hpp"
