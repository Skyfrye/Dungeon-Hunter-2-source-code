#include "net-transport/net_struct.hpp"

#include <cmath>

// --- NetStructUInt<Bits> -----------------------------------------------------

// NetStructUInt<8>::Read 0x36da38, <1> 0x39f5a0, <32> 0x39f5d8, <5> 0x817f34
template <unsigned Bits>
void NetStructUInt<Bits>::Read(NetBitStream& stream) {
    SetValue(stream.ReadU32(Bits));
}

// NetStructUInt<8>::Write 0x36dbf0, <1> 0x39f610, <32> 0x39f624, <5> 0x817f6c
template <unsigned Bits>
void NetStructUInt<Bits>::Write(NetBitStream& stream) const {
    stream.WriteU32(value_, Bits);
}

// NetStructUInt<8>::TestValue 0x36d404, <1> 0x39f518, <32> 0x39f52c (always true), <5> 0x817e28
template <unsigned Bits>
bool NetStructUInt<Bits>::TestValue(const std::uint32_t& value) const {
    if constexpr (Bits >= 32) {
        return true;
    } else {
        return value < (1u << Bits);
    }
}

template class NetStructUInt<1>;
template class NetStructUInt<5>;
template class NetStructUInt<8>;
template class NetStructUInt<32>;

// --- NetStructBool -----------------------------------------------------------

// 0x36f028 _ZN13NetStructBool4ReadER12NetBitStream
void NetStructBool::Read(NetBitStream& stream) {
    SetValue(stream.ReadBit() != 0);
}

// 0x36f064 _ZN13NetStructBool5WriteER12NetBitStream
void NetStructBool::Write(NetBitStream& stream) const {
    stream.WriteBit(value_ ? 1 : 0);
}

// --- NetStructRangedFloat<Bits, Min, Max> ------------------------------------

namespace {

// The original divides by 262140 for the 18-bit form (0x487fffc0), not by 2^18 - 1.
// The 16-bit forms divide by 65535 = 2^16 - 1.
template <unsigned Bits>
constexpr float RangedDivisor() {
    return Bits == 18 ? 262140.0f : static_cast<float>((1u << Bits) - 1);
}

// ARM VCVT.U32.F32 saturates (negative and NaN give 0, large values give 0xffffffff),
// and the original converts with it, so the port does the same.
std::uint32_t SaturatingToU32(float value) {
    if (!(value > 0.f)) {
        return 0;
    }
    if (value >= 4294967296.0f) {
        return 0xffffffffu;
    }
    return static_cast<std::uint32_t>(value);
}

}  // namespace

// Read (0x3a3c64 / 0x3a3cc4 / 0x3a3d24): raw / divisor, mapped onto [Min, Max] as
// Min + fraction * (Max - Min). The 16/-1..1 form computes (f + f) - 1, the same value.
template <unsigned Bits, int Min, int Max>
void NetStructRangedFloat<Bits, Min, Max>::Read(NetBitStream& stream) {
    std::uint32_t raw = stream.ReadU32(Bits);
    float fraction = static_cast<float>(raw) / RangedDivisor<Bits>();
    SetValue(static_cast<float>(Min) + fraction * static_cast<float>(Max - Min));
}

// Write (0x3a3d7c / 0x3a3dc4 / 0x3a3e0c): (value - Min) / (Max - Min) * divisor,
// converted to an unsigned integer by truncation (no rounding, no clamping).
template <unsigned Bits, int Min, int Max>
void NetStructRangedFloat<Bits, Min, Max>::Write(NetBitStream& stream) const {
    float fraction = (value_ - static_cast<float>(Min)) / static_cast<float>(Max - Min);
    stream.WriteU32(SaturatingToU32(fraction * RangedDivisor<Bits>()), Bits);
}

// NetStructRangedFloat<..>::TestValue 0x3a360c (16/-1..1), 0x3a3654 (16/+-50000), 0x3a3698 (18/+-200000)
template <unsigned Bits, int Min, int Max>
bool NetStructRangedFloat<Bits, Min, Max>::TestValue(const float& value) const {
    return value >= static_cast<float>(Min) && value <= static_cast<float>(Max);
}

template class NetStructRangedFloat<16, -1, 1>;
template class NetStructRangedFloat<16, -50000, 50000>;
template class NetStructRangedFloat<18, -200000, 200000>;

// --- NetStructNetworkId ------------------------------------------------------

// 0x801de0 _ZN18NetStructNetworkId4ReadER12NetBitStream
void NetStructNetworkId::Read(NetBitStream& stream) {
    CNetworkId id;
    id.Reset();
    id.Load(stream);
    SetValue(id);
}

// 0x801f14 _ZN18NetStructNetworkId5WriteER12NetBitStream
void NetStructNetworkId::Write(NetBitStream& stream) const {
    value_.Serialize(stream);
}
