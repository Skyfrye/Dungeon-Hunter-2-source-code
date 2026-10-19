// CMatchingLocal::RoomInfoNetStruct: the replicated room record of CMatchingLocal (the object at
// CMatchingLocal +0x4A20, 0x1C0 bytes). It declares four members: two NetStructBool and two
// NetStructInt<32>. Bodies are in src/tb_session-online-CMatchingLocal_RoomInfoNetStruct-0.cpp.
//
// WHAT THE OLD VERSION OF THIS HEADER GOT WRONG: it declared the class as
// `class CMatchingLocal::RoomInfoNetStruct : public NetStructBaseStub` (the deps/net_struct_stub.hpp
// stand-in whose DeclareMember and SetChanged are no-ops), held the members as
// NetStructBoolStub / NetStructInt32Stub byte-image copies with hand-written sizeBits/ackMask/
// sentMask/changeMask fields, and carried a std::map packetHistory_ of the stub's placeholder
// tPacketHistory. That meant CMatchingLocal::ProcessLostPacket / ProcessAcknowledgedPacket could not
// call the real NetStruct slots on the room record, and the change flags were never fired. The class
// is a real NetStruct now and the member objects are the net-transport types.
//
// Layout (original 32-bit offsets, kept as comments; element base = 0 here). The member objects are
// 40 bytes each for the ints and 32 bytes each for the bools, which is what puts the value offsets
// where the constructor stores them:
//   +0x130  NetStructBool      member 1 (32 bytes). Value byte at +0x14d.
//   +0x150  NetStructBool      member 2 (32 bytes). Value byte at +0x16d.
//   +0x170  NetStructInt<32>   member 3 (40 bytes). Value at +0x190.
//   +0x198  NetStructInt<32>   member 4 (40 bytes). Value at +0x1b8.
//   The members end at +0x1c0.
// Member names are not identified: the constructor is the only evidence for them, so they are
// named by offset (unk130_ and so on). The two bools and two ints are ordered by the DeclareMember
// calls of 0x806964.
#pragma once

#include <cstdint>

#include "net-transport/net_struct.hpp"
#include "net-transport/tb/net_struct_int.hpp"

// This header defines a nested class of CMatchingLocal, so it needs the owner. When the owner is the
// header being compiled, c_matching_local.hpp defines the macro before including this file (the nested
// definition has to follow the class), so the owner is already being processed and is only included here
// on the standalone path.
#ifndef NET_SESSION_ONLINE_C_MATCHING_LOCAL_HPP_INCLUDED
#include "net-session-online/c_matching_local.hpp"
#endif

class CMatchingLocal::RoomInfoNetStruct : public NetStruct {
public:
    // 0x806964 _ZN14CMatchingLocal17RoomInfoNetStructC1Ev. Reconstructed, see the .cpp.
    RoomInfoNetStruct();
    // 0x8061bc _ZN14CMatchingLocal17RoomInfoNetStructD1Ev (and the D2 complete-object form).
    ~RoomInfoNetStruct() override;
    // 0x80623c _ZN14CMatchingLocal17RoomInfoNetStructD0Ev: the deleting destructor.
    void DeletingDestructor();

    // The four members, in DeclareMember order. Public so CMatchingLocal's own bodies can reach them.
    NetStructBool unk130_;      // +0x130, value at +0x14d
    NetStructBool unk150_;      // +0x150, value at +0x16d
    NetStructInt<32> unk170_;   // +0x170, value at +0x190
    NetStructInt<32> unk198_;   // +0x198, value at +0x1b8

    // Names for the first two, established by CMatchingLocal::IsRoomHidden (0x801b14): it reads the byte
    // at CMatchingLocal +0x4B6D first and returns it when set, otherwise the byte at +0x4B8D. Those are
    // element +0x14D and +0x16D of this record, i.e. unk130_ and unk150_. So unk130_ is the room-closed
    // flag and unk150_ the room-hidden flag -- the same two values CMatchingLocal's old plain fields
    // roomClosed_ (+0x4b6d) and roomHiddenFlag_ (+0x4b8d) held. The aliases below replace them.
    bool roomClosed() const { return unk130_.GetValue(); }
    void setRoomClosed(bool value) { unk130_.SetValue(value); }   // NetStructMemberType<bool>::SetValue
    bool roomHidden() const { return unk150_.GetValue(); }
    void setRoomHidden(bool value) { unk150_.SetValue(value); }   // fires SetChanged when it differs
};
