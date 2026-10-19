// tRoomInfo: one room of the lobby room list (the element of the std::vector<tRoomInfo> that
// CMatchingGLLive keeps at +0x6814 and that GetRoomList (0x82051c) returns). The original object is
// 968 bytes (0x3c8).
//
// Layout (original 32-bit offsets, kept as comments), recovered from the copy constructor 0x43fb60,
// operator= 0x43f8d0 and the field stores of CMatchingGLLive::GetRoomList:
//   +0x00 room id (int64; GetRoomList sign-extends the 32-bit lobby id of the tGLRoomInfo)
//   +0x08 room name (std::string)
//   +0x20 int copied from tGLRoomInfo +0x10 (role not identified)
//   +0x28 room attributes (CRoomAttributes, 920 bytes)
//   +0x3c0 int, zeroed by GetRoomList (role not identified)
// The copy constructor and operator= copy these five fields in order; the compiler-generated
// ones do the same. The two rows (0x43fb60, 0x43f8d0) are not reconstructed by this header alone.
#pragma once

#include <cstdint>
#include <string>

#include "net-session-online/c_room_attributes.hpp"

struct tRoomInfo {
    std::int64_t roomId = 0;           // +0x00
    std::string name;                  // +0x08
    std::int32_t unk_20 = 0;           // +0x20
    CRoomAttributes attributes;        // +0x28
    std::int32_t unk_3c0 = 0;          // +0x3c0
};
