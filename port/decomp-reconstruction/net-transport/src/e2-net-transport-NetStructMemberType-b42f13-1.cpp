// Batch e2-net-transport-NetStructMemberType-b42f13-1: the CNetworkId instantiation of NetStructMemberType<T>
// (Erase, SetValue and the constructor). The value is a 28-byte CNetworkId at +0x20.
//
// The declarations are in include/net-transport/net_struct.hpp (the template's constructor and the
// CNetworkId specializations). The CNetworkId field accessors Field2() and Field3() are in
// include/net-transport/net_network_id.hpp.

#include <cstdint>

#include "net-transport/net_struct.hpp"

namespace {

// Change key used by NetStructMemberType<CNetworkId>::SetValue. The original adds the fields selected
// by the presence flags into a 64-bit sum (a 48-bit address is hi << 16 plus lo; the two 32-bit fields
// are added as they are), keeps the low 56 bits, and adds (flags << 23) << 32. Two ids with the same
// key count as unchanged. The flags are part of the key, so ids with equal sums but other presence
// bits still differ.
std::uint64_t ChangeKey(const CNetworkId& id) {
    const std::uint32_t flags = id.Flags();
    std::uint64_t sum = 0;
    std::uint16_t lo = 0;
    std::uint32_t hi = 0;
    if ((flags & 1) != 0) {  // address1 (+0x08)
        id.GetAddress1(lo, hi);
        sum += (static_cast<std::uint64_t>(hi) << 16) + lo;
    }
    if ((flags & 2) != 0) {  // address0 (+0x00)
        id.GetAddress0(lo, hi);
        sum += (static_cast<std::uint64_t>(hi) << 16) + lo;
    }
    if ((flags & 4) != 0) {  // field2 (+0x10)
        sum += id.Field2();
    }
    if ((flags & 8) != 0) {  // field3 (+0x14)
        sum += id.Field3();
    }
    // The original keeps flags << 23 in 32 bits and places it in the high word.
    const std::uint32_t flagWord = flags << 23;
    return (sum & 0xFFFFFFFFFFFFFFull) + (static_cast<std::uint64_t>(flagWord) << 32);
}

}  // namespace

// 0x801bfc NetStructMemberType<CNetworkId>::Erase(NetBitStream &)
// Copies the 28-byte value to the stack, calls NetStructMember::Load (non-virtual, 0x81510c), then
// restores the copy. The original compares this+0x20 with the stack copy before the restore; they never
// alias, so the restore always runs. The pseudocode returns the saved field2 word (the restore's LDMNE
// leaves the +0x30 word in R0); it is a leftover like the other Erase forms, the slot is called as void by
// NetStruct::LoadInternal and there is no direct caller, so the port returns void.
template <>
void NetStructMemberType<CNetworkId>::Erase(NetBitStream& stream) {
    const CNetworkId saved = value_;                        // +0x20..+0x38 copied to the stack
    NetStructMember::Load(stream);                          // BL NetStructMember::Load (result discarded)
    value_ = saved;                                         // restore the 28 bytes
}

// 0x8020b8 NetStructMemberType<CNetworkId>::SetValue(CNetworkId const&)
// Compares the change keys of the new value and the stored value (see ChangeKey). When they differ, it
// copies the new value (skipped when the argument is the member itself) and calls SetChanged. The
// original returns an int: SetChanged's result on the changed path and (flags & 8 ? field3 : 0) on the
// unchanged path. The port returns void, as the other instantiations in this category do.
template <>
void NetStructMemberType<CNetworkId>::SetValue(const CNetworkId& value) {
    if (ChangeKey(value) != ChangeKey(value_)) {
        if (&value != &value_) {
            value_ = value;  // 28-byte copy
        }
        SetChanged();        // NetStructMember::SetChanged (0x814f84)
    }
}

// 0x8060d0 NetStructMemberType<CNetworkId>::NetStructMemberType(CNetworkId, unsigned int) [clone .clone.2]
// Sets the NetStructMember fields (sizeBits 3, ackMask and sentMask all ones, changeMask 0, changeStamp 0,
// changed false), the vtable (the compiler sets it), resets the value (CNetworkId::Reset) and calls
// SetValue(value). The mangled name lists an unsigned int, but the body overwrites R2 before any use, so
// the parameter is unused and the port keeps it unnamed.
template <>
NetStructMemberType<CNetworkId>::NetStructMemberType(const CNetworkId& value, std::uint32_t /*unused*/) {
    sizeBits_ = 3;                  // +0x04
    ackMask_ = 0xFFFFFFFFu;         // +0x10
    sentMask_ = 0xFFFFFFFFu;        // +0x14
    changeMask_ = 0;                // +0x18
    changeStamp_ = 0;               // +0x08
    changed_ = false;               // +0x1c
    value_.Reset();                 // CNetworkId::Reset(this + 0x20)
    NetStructMemberType<CNetworkId>::SetValue(value);  // direct BL in the original, not virtual
}
