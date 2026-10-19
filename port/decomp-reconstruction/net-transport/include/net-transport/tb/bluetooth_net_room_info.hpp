// CBluetoothNetRoomInfo: Bluetooth room-info NetStruct from libDungeonHunter2.so.
//
// Layout (32-bit offsets, from the constructor and destructor pseudocode and the vtable listing):
//   +0x000 vptr (CBluetoothNetRoomInfo vtable, 80 bytes; slots +0x00 and +0x04 are the destructors,
//          +0x08..+0x44 are the NetStruct virtuals)
//   +0x000..+0x12f  base NetStruct (vtable off_9924D8 while the base dtor runs), declared as NetStruct
//   +0x130  NetStructString<256u> name_ (the name string; built from an empty std::string)
//   +0x168  NetStructInt<32u> value_ (NetStructMemberType<int> with sizeBits 32; the value word at +0x188)
//   +0x16c  int, initial value 32 (the member's sizeBits)
//   +0x170  u64, initial value 0
//   +0x178  int, initial value -1
//   +0x17c  int, initial value -1
//   +0x180  int, initial value 0
//   +0x184  byte, initial value 0
//   +0x188  int, reset to 0; when it was non-zero, the member at +0x168 gets SetChanged
#pragma once

#include "net-transport/net_struct.hpp"
#include "net-transport/tb/net_struct_int.hpp"
#include "net-transport/tb/net_struct_string.hpp"

class CBluetoothNetRoomInfo : public NetStruct {
public:
    CBluetoothNetRoomInfo();                 // 0x800d7c (partial)
    ~CBluetoothNetRoomInfo() override;       // 0x801a0c

    NetStructString<256u> name_;             // +0x130
    NetStructInt<32u> value_;                // +0x168
};
