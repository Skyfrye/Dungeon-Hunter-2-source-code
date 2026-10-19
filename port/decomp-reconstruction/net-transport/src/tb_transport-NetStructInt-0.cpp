#include "net-transport/tb/net_struct_int.hpp"

#include <cstdint>

namespace {

// abs32 as the original computes it. INT32_MIN stays negative (the negation wraps),
// and the TestValue comparisons below see that value too.
std::int32_t Abs32(std::int32_t value) {
    return value < 0 ? static_cast<std::int32_t>(0u - static_cast<std::uint32_t>(value)) : value;
}

}  // namespace

// Destructors. The D1 (complete) destructors of NetStructInt<8|16|17|32> have an empty
// body; the header defaults them. The D0 (deleting) destructors are compiler-generated.
//   0x36d254 NetStructInt<32u>::~NetStructInt() (D1)  - defaulted in header
//   0x36d274 NetStructInt<8u>::~NetStructInt() (D1)   - defaulted in header
//   0x36d278 NetStructInt<16u>::~NetStructInt() (D1)  - defaulted in header
//   0x36d310 NetStructInt<17u>::~NetStructInt() (D1)  - defaulted in header
//   0x36d554 NetStructInt<32u>::~NetStructInt() (D0)  - skipped: C++ delete covers it
//   0x36d658 NetStructInt<16u>::~NetStructInt() (D0)  - skipped: C++ delete covers it
//   0x36d68c NetStructInt<17u>::~NetStructInt() (D0)  - skipped: C++ delete covers it
//   0x36d6c0 NetStructInt<8u>::~NetStructInt() (D0)   - skipped: C++ delete covers it

// TestValue. The 32-bit form accepts every value (the original returns 1). The others
// accept magnitudes below 2^(Bits-1): 8 gives <= 0x7f, 16 gives < 0x8000 and 17 gives
// < 0x10000, which is the same test.
//   0x36d3e0 NetStructInt<32u>::TestValue(int const&)
//   0x36d418 NetStructInt<16u>::TestValue(int const&)
//   0x36d434 NetStructInt<8u>::TestValue(int const&)
//   0x36d450 NetStructInt<17u>::TestValue(int const&)
template <unsigned Bits>
bool NetStructInt<Bits>::TestValue(const std::int32_t& value) const {
    if constexpr (Bits >= 32) {
        return true;
    } else {
        return Abs32(value) < (std::int32_t{1} << (Bits - 1));
    }
}

// Read. Reads the magnitude in Bits-1 bits, then the sign bit, and passes the signed
// value to the virtual SetValue (vtable +0x1c).
//   0x36da70 NetStructInt<32u>::Read(NetBitStream&)
//   0x36dad0 NetStructInt<16u>::Read(NetBitStream&)
//   0x36db30 NetStructInt<17u>::Read(NetBitStream&)
//   0x36db90 NetStructInt<8u>::Read(NetBitStream&)
template <unsigned Bits>
void NetStructInt<Bits>::Read(NetBitStream& stream) {
    std::int32_t magnitude = static_cast<std::int32_t>(stream.ReadU32(Bits - 1));
    std::int32_t sign = stream.ReadByte(1) ? -1 : 1;
    SetValue(magnitude * sign);
}

// Write. Writes abs(value) in Bits-1 bits, then one sign bit (1 when negative).
// The original returns the WriteByte result. The port's NetBitStream::WriteByte is void,
// and NetStructMember::Write is void too, so nothing is lost.
//   0x36dc94 NetStructInt<32u>::Write(NetBitStream&)
//   0x36dcc8 NetStructInt<16u>::Write(NetBitStream&)
//   0x36dcfc NetStructInt<17u>::Write(NetBitStream&)
//   0x36dd30 NetStructInt<8u>::Write(NetBitStream&)
template <unsigned Bits>
void NetStructInt<Bits>::Write(NetBitStream& stream) const {
    std::int32_t value = value_;
    stream.WriteU32(static_cast<std::uint32_t>(Abs32(value)), Bits - 1);
    stream.WriteByte(value < 0 ? 1 : 0, 1);
}

// Instantiations for the four forms in this batch. NetStructInt<6> (0x8100b8..0x81096c)
// belongs to the next batch. Add `template class NetStructInt<6>;` here when that batch runs.
template class NetStructInt<8>;
template class NetStructInt<16>;
template class NetStructInt<17>;
template class NetStructInt<32>;
