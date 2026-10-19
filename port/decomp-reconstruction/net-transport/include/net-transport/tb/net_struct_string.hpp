// NetStructString<N>: replicated std::string member from libDungeonHunter2.so.
// Instantiated for N = 16, 32 and 256 (the explicit instantiations are in
// src/tb_transport-NetStructString-0.cpp). N is the wire length limit: the value is
// written with max length N and TestValue accepts at most N-1 characters.
//
// Layout (32-bit offsets, from the constructors and Write):
//   +0x00 vptr
//   +0x04 int, 8 * N (bit limit). NetStructMember::sizeBits_.
//   +0x08 u64 0, +0x10 int -1, +0x14 int -1, +0x18 int 0, +0x1c byte 0. The other NetStructMember fields,
//         set by NetStructMember(int).
//   +0x20 std::string value (NetStructMemberType<std::string>::value_)
#pragma once

#include <string>

#include "net-transport/net_struct.hpp"

template <unsigned N>
class NetStructString final : public NetStructMemberType<std::string> {
public:
    NetStructString(const std::string& value);     // 0x371bec (N=32), 0x800c60 (N=256), 0x81e5a0 (N=16)
    ~NetStructString() override;                   // 0x371150 (N=32), 0x800a00 (N=256), 0x81d078 (N=16)
    void Read(NetBitStream& stream) override;      // 0x371184 (N=32), 0x801970 (N=256), 0x81d134 (N=16)
    void Write(NetBitStream& stream) const override; // 0x371b78 (N=32), 0x800bb4 (N=256), 0x81e1e8 (N=16)
    bool TestValue(const std::string& value) const override; // 0x36d3e8 (N=32), 0x7fe858 (N=256), 0x81bcb4 (N=16)
};
