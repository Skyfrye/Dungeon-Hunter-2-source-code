#include "net-transport/net_network_id.hpp"

#include <cstring>

// 0x7fc384 _ZN10CNetworkId5ResetEv
void CNetworkId::Reset() {
    std::memset(this, 0, sizeof(*this));
}

// 0x81af10 _ZN10CNetworkId5ResetE15tTRANSPORT_TYPE
// Clears the field for one transport and its presence bit. Transport 0 clears nothing.
void CNetworkId::Reset(tTRANSPORT_TYPE transport) {
    switch (transport - 1) {
        case 0:
            address1_ = {};
            break;
        case 1:
            address0_ = {};
            break;
        case 2:
            field2_ = 0;
            break;
        case 3:
            field3_ = 0;
            break;
        default:
            break;
    }
    if (transport != 0) {
        flags_ &= ~(1u << static_cast<unsigned>(transport - 1));
    }
}

// 0x8264d8 _ZN10CNetworkId3SetES_
void CNetworkId::Set(const CNetworkId& src) {
    std::uint32_t mask = src.flags_;
    if ((mask & 1) != 0) {
        address1_ = src.address1_;
        flags_ |= 1;
    }
    if ((mask & 2) != 0) {
        address0_ = src.address0_;
        flags_ |= 2;
    }
    if ((mask & 4) != 0) {
        field2_ = src.field2_;
        flags_ |= 4;
    }
    if ((mask & 8) != 0) {
        field3_ = src.field3_;
        flags_ |= 8;
    }
}

// Sum of the fields selected by mask, each widened to 64 bits. The original does
// the same arithmetic in two 32-bit halves with explicit carries.
std::uint64_t CNetworkId::SumFields(const CNetworkId& id, std::uint32_t mask) {
    auto value48 = [](const Address48& a) {
        return (static_cast<std::uint64_t>(a.hi) << 16) + a.lo;
    };
    std::uint64_t sum = 0;
    if ((mask & 1) != 0) sum += value48(id.address1_);
    if ((mask & 2) != 0) sum += value48(id.address0_);
    if ((mask & 4) != 0) sum += id.field2_;
    if ((mask & 8) != 0) sum += id.field3_;
    return sum;
}

// 0x7fb93c _ZNK10CNetworkId7IsEqualERS_
// Equal when the two ids share at least one present field and their sums over
// the fields present in either mask agree (the original's two comparison passes).
bool CNetworkId::IsEqual(const CNetworkId& other) const {
    std::uint32_t mine = flags_;
    std::uint32_t theirs = other.flags_;
    if ((mine & theirs) == 0) {
        return false;
    }
    if (SumFields(other, theirs) == SumFields(*this, theirs)) {
        return true;
    }
    return SumFields(other, mine) == SumFields(*this, mine);
}

// 0x801cf0 _ZN10CNetworkId4LoadER12NetBitStream
void CNetworkId::Load(NetBitStream& stream) {
    flags_ = stream.ReadU32(32);
    if ((flags_ & 1) != 0) {
        stream.ReadByteArray(&address1_, sizeof(address1_));
    }
    if ((flags_ & 2) != 0) {
        stream.ReadByteArray(&address0_, sizeof(address0_));
    }
    if ((flags_ & 4) != 0) {
        field2_ = stream.ReadU32(32);
    }
    if ((flags_ & 8) != 0) {
        field3_ = stream.ReadU32(32);
    }
}

// 0x801e24 _ZN10CNetworkId9SerializeER12NetBitStream
void CNetworkId::Serialize(NetBitStream& stream) const {
    stream.WriteU32(flags_, 32);
    if ((flags_ & 1) != 0) {
        stream.WriteByteArray(&address1_, sizeof(address1_));
    }
    if ((flags_ & 2) != 0) {
        stream.WriteByteArray(&address0_, sizeof(address0_));
    }
    if ((flags_ & 4) != 0) {
        stream.WriteU32(field2_, 32);
    }
    if ((flags_ & 8) != 0) {
        stream.WriteU32(field3_, 32);
    }
}

// 0x81b970 _ZN10CNetworkId20GetTransportTypeListEv
std::vector<tTRANSPORT_TYPE> CNetworkId::GetTransportTypeList() const {
    std::vector<tTRANSPORT_TYPE> types;
    for (int bit = 0; bit < 4; ++bit) {
        if ((flags_ & (1u << bit)) != 0) {
            types.push_back(bit + 1);
        }
    }
    return types;
}

// Accessors used by the transports (not in the original).
void CNetworkId::SetAddress0(std::uint16_t lo, std::uint32_t hi) {
    address0_.lo = lo;
    address0_.pad = 0;
    address0_.hi = hi;
    flags_ |= 2;
}

void CNetworkId::SetAddress1(std::uint16_t lo, std::uint32_t hi) {
    address1_.lo = lo;
    address1_.pad = 0;
    address1_.hi = hi;
    flags_ |= 1;
}

bool CNetworkId::GetAddress0(std::uint16_t& lo, std::uint32_t& hi) const {
    lo = address0_.lo;
    hi = address0_.hi;
    return (flags_ & 2) != 0;
}

bool CNetworkId::GetAddress1(std::uint16_t& lo, std::uint32_t& hi) const {
    lo = address1_.lo;
    hi = address1_.hi;
    return (flags_ & 1) != 0;
}
