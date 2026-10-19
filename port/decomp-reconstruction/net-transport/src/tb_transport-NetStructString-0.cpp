// Batch e1-net-transport-NetStructString-0: NetStructString<16>, <32> and <256>.
// Declarations and layout: include/net-transport/tb/net_struct_string.hpp.
//
// Notes on the pseudocode:
//  - Read(32u) and Read(256u) show ReadString with only the return slot. The assembly (decomp_asm
//    0x371184 and 0x801970) passes the stream in r1, which ReadString uses as `this`, and the
//    return slot in r0. Read is therefore ReadString on the stream, then the virtual SetValue
//    (vtable +0x1c).
//  - Write passes the max length as the third argument. The assembly (0x371b78: mov r2,#0x20;
//    0x800bb4: mov r2,#0x100) confirms it is N. The string copy the original makes for the call
//    is elided: the port passes value_ by const reference.
//  - The NetStructMember base fields (bit limit 8 * N, u64 0, -1 masks, flag byte) are set by the
//    NetStructMember(int) constructor.
//  - The deleting destructors (D0 variants: 0x371244, 0x800980, 0x81d1a4) are compiler-generated
//    and skipped. The port's delete expression runs the non-deleting destructor and operator delete.

#include "net-transport/tb/net_struct_string.hpp"

// 0x371bec NetStructString<32u>::NetStructString(std::string const&)
// 0x800c60 NetStructString<256u>::NetStructString(std::string const&)
// 0x81e5a0 NetStructString<16u>::NetStructString(std::string const&)
// The original copies the argument, sets the NetStructMember base fields (+0x04 = 8 * N, +0x08 = 0,
// +0x10 = -1, +0x14 = -1, +0x18 = 0, +0x1c = 0), allocates the 16-byte string buffer at +0x20, and calls
// NetStructMemberType<std::string>::SetValue. The base fields are written by the NetStructMember(int)
// constructor, the buffer by the std::string member, and SetValue (non-virtual) by the body.
template <unsigned N>
NetStructString<N>::NetStructString(const std::string& value)
    : NetStructMemberType<std::string>(static_cast<int>(8 * N)) {
    NetStructMemberType<std::string>::SetValue(value);
}

// 0x371150 NetStructString<32u>::~NetStructString() (non-deleting body)
// 0x800a00 NetStructString<256u>::~NetStructString() (non-deleting body)
// 0x81d078 NetStructString<16u>::~NetStructString() (non-deleting body)
// reconstructed: the vptr reset and the destruction of the std::string member at +0x20 are done by
// the implicit destructor.
// Skipped deleting destructors (compiler-generated scalar deleting variant):
//   0x371244 NetStructString<32u>::~NetStructString()
//   0x800980 NetStructString<256u>::~NetStructString()
//   0x81d1a4 NetStructString<16u>::~NetStructString()
template <unsigned N>
NetStructString<N>::~NetStructString() = default;

// 0x371184 NetStructString<32u>::Read(NetBitStream&)
// 0x801970 NetStructString<256u>::Read(NetBitStream&)
// 0x81d134 NetStructString<16u>::Read(NetBitStream&)
template <unsigned N>
void NetStructString<N>::Read(NetBitStream& stream) {
    SetValue(stream.ReadString());
}

// 0x371b78 NetStructString<32u>::Write(NetBitStream&) const
// 0x800bb4 NetStructString<256u>::Write(NetBitStream&) const
// 0x81e1e8 NetStructString<16u>::Write(NetBitStream&) const
template <unsigned N>
void NetStructString<N>::Write(NetBitStream& stream) const {
    stream.WriteString(value_, N);
}

// 0x36d3e8 NetStructString<32u>::TestValue(std::string const&) const
// 0x7fe858 NetStructString<256u>::TestValue(std::string const&) const
// 0x81bcb4 NetStructString<16u>::TestValue(std::string const&) const
template <unsigned N>
bool NetStructString<N>::TestValue(const std::string& value) const {
    return value.size() <= N - 1;
}

template class NetStructString<16>;
template class NetStructString<32>;
template class NetStructString<256>;
