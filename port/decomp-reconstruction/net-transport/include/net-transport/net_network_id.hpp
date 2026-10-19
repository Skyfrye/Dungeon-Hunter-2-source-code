// CNetworkId: peer address record. Up to two 48-bit addresses (stored as a
// 16-bit low part plus 32-bit high part) and two 32-bit ids, selected by the
// presence bits in flags. Reconstructed from libDungeonHunter2.so pseudocode.
//
// Original layout:
//   +0x00 address0  (flag bit 1), +0x04 pad
//   +0x08 address1  (flag bit 0)
//   +0x10 field2    (flag bit 2)
//   +0x14 field3    (flag bit 3)
//   +0x18 flags
#pragma once

#include <cstdint>
#include <vector>

#include "net-transport/net_bit_stream.hpp"

// tTRANSPORT_TYPE: transport index 1..4 (names are not recovered; kept numeric).
using tTRANSPORT_TYPE = int;

class CNetworkId {
public:
    // 0x7fc384 _ZN10CNetworkId5ResetEv
    void Reset();
    // 0x81af10 _ZN10CNetworkId5ResetE15tTRANSPORT_TYPE
    void Reset(tTRANSPORT_TYPE transport);
    // 0x8264d8 _ZN10CNetworkId3SetES_
    void Set(const CNetworkId& src);
    // 0x7fb93c _ZNK10CNetworkId7IsEqualERS_
    bool IsEqual(const CNetworkId& other) const;
    // 0x801cf0 _ZN10CNetworkId4LoadER12NetBitStream
    void Load(NetBitStream& stream);
    // 0x801e24 _ZN10CNetworkId9SerializeER12NetBitStream
    void Serialize(NetBitStream& stream) const;
    // 0x81b970 _ZN10CNetworkId20GetTransportTypeListEv
    std::vector<tTRANSPORT_TYPE> GetTransportTypeList() const;

    std::uint32_t Flags() const { return flags_; }
    // Field words at +0x10 and +0x14 (read by NetStructMemberType<CNetworkId>::SetValue, batch e2-...-b42f13-1).
    std::uint32_t Field2() const { return field2_; }
    std::uint32_t Field3() const { return field3_; }
    // Setters for the field words. Each sets its presence bit as CNetworkId::Set does:
    // SetField2 stores +0x10 and raises bit 2 (flags |= 4), SetField3 stores +0x14 and
    // raises bit 3 (flags |= 8). The binary writes these inline (CBluetoothUnreliable id
    // getters, InitializeTransport).
    void SetField2(std::uint32_t value) {
        field2_ = value;
        flags_ |= 4;
    }
    void SetField3(std::uint32_t value) {
        field3_ = value;
        flags_ |= 8;
    }

    // Address accessors for the transports (not in the original, which reads the fields directly).
    // Address0 is presence bit 1 (flags 0x2); Address1 is presence bit 0 (flags 0x1).
    void SetAddress0(std::uint16_t lo, std::uint32_t hi);
    void SetAddress1(std::uint16_t lo, std::uint32_t hi);
    bool GetAddress0(std::uint16_t& lo, std::uint32_t& hi) const;
    bool GetAddress1(std::uint16_t& lo, std::uint32_t& hi) const;

private:
    struct Address48 {
        std::uint16_t lo;   // 16 low bits
        std::uint16_t pad;  // padding, copied with the raw bytes
        std::uint32_t hi;   // 32 high bits
    };
    static std::uint64_t SumFields(const CNetworkId& id, std::uint32_t mask);

    Address48 address0_{};          // +0x00
    Address48 address1_{};          // +0x08
    std::uint32_t field2_ = 0;      // +0x10
    std::uint32_t field3_ = 0;      // +0x14
    std::uint32_t flags_ = 0;       // +0x18
};
