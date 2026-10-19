// CMatchingLocal::ServerBackupNetStruct: a replicated struct element of CMatchingLocal's server
// backup array (NetStructArray<ServerBackupNetStruct,32> at CMatchingLocal +0x7EE0). Bodies are in
// src/tb_session-online-CMatchingLocal_ServerBackupNetStruct-0.cpp.
//
// WHAT THE OLD VERSION OF THIS HEADER GOT WRONG: it declared the class as
// `class CMatchingLocal::ServerBackupNetStruct : public NetStructBaseStub` (the deps/net_struct_stub.hpp
// stand-in whose DeclareMember and SetChanged are no-ops), held its one member as a
// NetStructInt32Stub byte image with hand-written sizeBits/ackMask/sentMask/changeMask fields, and
// carried a std::map packetHistory_ of the stub's placeholder tPacketHistory. The constructor also
// commented the +0x10c history header as "not initialised here in the original", which is wrong: the
// binary builds the std::map node header with `*((_QWORD *)this + 39) = 0` at 0x806ce4. The class is a
// real NetStruct now and the member is the net-transport type, because the array of these elements is
// exactly what CMatchingLocal::ReadPacketData / WritePacketData call
// NetStructArray<ServerBackupNetStruct,32>::Load / Erase on.
//
// Layout (original 32-bit offsets, kept as comments):
//   +0x00            vptr (_ZTVN14CMatchingLocal21ServerBackupNetStructE)
//   +0x04..+0x10b    NetStruct base and fields (its packet history header at +0x10c)
//   +0x130           NetStructInt<32> member (40 bytes). Value at +0x150. Declared after the base by
//                    NetStruct::DeclareMember, so it is member 0 of this record.
//   The object is 344 bytes (0x158) in the original.
#pragma once

#include <cstdint>

#include "net-transport/net_struct.hpp"
#include "net-transport/tb/net_struct_int.hpp"

// See the room-info header: the owner include is skipped only when c_matching_local.hpp is already being
// compiled and is about to define the nested classes itself.
#ifndef NET_SESSION_ONLINE_C_MATCHING_LOCAL_HPP_INCLUDED
#include "net-session-online/c_matching_local.hpp"
#endif

class CMatchingLocal::ServerBackupNetStruct : public NetStruct {
public:
    // 0x806cac _ZN14CMatchingLocal21ServerBackupNetStructC1Ev. Reconstructed, see the .cpp.
    ServerBackupNetStruct();
    // 0x8062d0 _ZN14CMatchingLocal21ServerBackupNetStructD1Ev (and the D2 form).
    ~ServerBackupNetStruct() override;
    // 0x806140 _ZN14CMatchingLocal21ServerBackupNetStructD0Ev: the deleting destructor.
    void DeletingDestructor();

    // +0x130: NetStructInt<32> member (40 bytes). Its value is at +0x150. The only member, so the
    // element's id in the backup array.
    NetStructInt<32> member_;
};
