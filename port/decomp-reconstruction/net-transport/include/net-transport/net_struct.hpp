// NetStruct* members: typed fields of a replicated struct that know how to
// read and write themselves from a NetBitStream. Reconstructed from
// libDungeonHunter2.so pseudocode.
#pragma once

#include <cstdint>
#include <map>
#include <string>

#include "net-transport/deps/byte_array.hpp"
#include "net-transport/net_bit_stream.hpp"
#include "net-transport/net_network_id.hpp"

// NetStruct owns the process-wide change counter (symbol _ZN9NetStruct15s_changeCounterE, 0xa33f30).
// Base of every replicated game struct. The bodies are in src/tb_transport-NetStruct-0.cpp (batch e1)
// and src/e2-net-transport-NetStruct-9cfb4c-0.cpp (batch e2).
// Layout (32-bit offsets, comments only): +0x00 vptr (see the slot list below),
// +0x04 members (member i at +0x04 + 4*i), +0x104 member_count_, +0x108 byte (unidentified, cleared by the
// constructor), +0x10c..+0x11f std::map packet history, +0x124 enabled_, +0x125 post_load_pending_,
// +0x128 post_load_arg_. sizeof 0x130.
class NetStructMember;

class NetStruct {
public:
    static constexpr int kMaxMembers = 64;  // 0x100 bytes at +0x04
    static std::uint64_t s_changeCounter;   // _ZN9NetStruct15s_changeCounterE, 0xa33f30

    NetStruct();                    // 0x81388c (C1), 0x8138f4 (C2)

    // Vtable (_ZTV9NetStruct, 80 bytes). The slots are declared in the original order, so a derived
    // class (CNetPlayerInfo, ...) overrides the same slots the binary does. Slot byte offsets:
    virtual ~NetStruct();                                                                    // +0x00 (D1 0x81395c), +0x04 (D0 0x8139bc)
    virtual int Serialize(NetBitStream& stream, int memberId, int packetId);                 // +0x08, 0x814d00
    virtual int ConditionalSerialize(bool conditional, NetBitStream& stream, int memberId, int packetId); // +0x0c, 0x814cd4
    virtual int SerializeDisabled(NetBitStream& stream);                                     // +0x10, 0x814cd8
    virtual int Load(NetBitStream& stream, int memberId, std::uint32_t a4);                  // +0x14, 0x8135f4
    virtual int ConditionalLoad(bool conditional, NetBitStream& stream, int a4, std::uint32_t a5); // +0x18, 0x813264
    virtual int Erase(NetBitStream& stream);                                                 // +0x1c, 0x8135e4
    virtual bool IsChanged();                                                                // +0x20, 0x81383c
    virtual std::uint32_t GetChangedBitMap();                                                // +0x24, 0x8137ec
    virtual bool HasDataToSend(int memberId);                                                // +0x28, 0x81375c
    virtual bool AreChangesAcknowledged();                                                   // +0x2c, 0x813704
    virtual bool AreChangesAcknowledgedBy(int memberId);                                     // +0x30, 0x81334c
    virtual void SetAckedBy(int memberId);                                                   // +0x34, 0x81349c
    virtual int GetSizeBits();                                                               // +0x38, 0x81329c
    virtual std::uint32_t GetSizeBytes();                                                    // +0x3c, 0x8132f0
    virtual void ProcessAcknowledgedPacket(int memberId, int packetId);                      // +0x40, 0x814d28
    virtual void ProcessLostPacket(int memberId, int packetId);                              // +0x44, 0x814774

    void DeclareMember(NetStructMember* member);                                             // 0x81324c
    // The next four return a value in the pseudocode that is the last callee's leftover R0 (the address of
    // the last member, or the literal 1 for an empty struct); nothing reads it, so they return void.
    void ResendInternal(std::uint32_t mask);                                                 // 0x8133c0
    void Resend(int memberId);                                                               // 0x81344c
    void Resend();                                                                           // 0x81347c
    int LoadInternal(bool acknowledged, NetBitStream& stream, int memberId);                 // 0x8134f4
    // Returns unsigned char*, as Hex-Rays types it: this on the paths that change nothing (disabling, or
    // enabling an enabled struct), otherwise the last member's address (the last SetChanged result) or, for a
    // struct with no members, the member bit mask the CMatching call returns in r0. Only
    // CNetPlayerManager::ReassignPlayer passes it on.
    unsigned char* SetEnabled(bool enabled);                                                 // 0x81366c

    // Packet history (the std::map at +0x10c): per member id, the packets that carried its changes.
    // The 32-bit node holds an unread int at +0x14, then changeStamp at +0x18 and changeMask at +0x20.
    struct tPacketHistory {
        std::uint64_t changeStamp = 0;  // node +0x18: NetStruct::s_changeCounter when the packet was written
        std::uint64_t changeMask = 0;   // node +0x20: bit i set when member i was sent in this packet
    };
    int SerializeInternal(bool conditional, NetBitStream& stream, int memberId, int packetId); // 0x814b0c
    // The int the pseudocode returns is a leftover (the mask on the first path, Resend()'s leftover on the
    // second); SerializeInternal ignores it, so the port returns void.
    void AddPacketHistory(int memberId, int packetId, int stream_flags, std::uint64_t changeMask); // 0x8149d4

protected:
    NetStructMember* members_[kMaxMembers] = {};    // +0x04
    int member_count_ = 0;                          // +0x104
    bool unk_108_ = false;                          // +0x108 unidentified byte, cleared by the constructor
    // +0x10c: packet history, member id -> (packet id -> tPacketHistory). The STLport map is 24 bytes (+0x10c .. +0x123); the node count is at +0x11c.
    std::map<int, std::map<int, tPacketHistory>> packetHistory_;
    bool enabled_ = false;                          // +0x124
    bool post_load_pending_ = false;                // +0x125
    std::uint32_t post_load_arg_ = 0;               // +0x128
    std::uint32_t unk_12c_ = 0;                     // +0x12c (the object is 0x130 bytes; no recovered function accesses this word)
};

class NetStructMember {
public:
    // Vtable (_ZTV15NetStructMember). Slots +0x00 (Erase), +0x04 (Write) and +0x08 (Read) are pure in
    // the base; NetStructMemberType<T> supplies Erase, the concrete member the other two.
    virtual void Erase(NetBitStream& stream) = 0;                           // +0x00 NetStructMemberType<T>::Erase
    virtual void Write(NetBitStream& stream) const = 0;                     // +0x04
    virtual void Read(NetBitStream& stream) = 0;                            // +0x08
    virtual void PostLoad(std::uint32_t time);                              // +0x0c, 0x36d1f8 (empty)
    virtual int GetSizeBits() const;                                        // +0x10, 0x36d1fc
    virtual ~NetStructMember();                                             // +0x14 (D1 0x36d204), +0x18 (D0 0x36d520)

    bool Load(NetBitStream& stream);                                        // 0x81510c
    bool Serialize(NetBitStream& stream, std::uint32_t mask);               // 0x815168

    bool IsChanged();                                                       // 0x814f70 (reads and clears)
    // Returns this (the pseudocode returns it in r0; NetStruct::SetEnabled passes it on).
    NetStructMember* SetChanged();                                          // 0x814f84
    void SetAcked();                                                        // 0x814fd8
    void SetAcked(std::uint32_t bits);                                      // 0x814fe8
    void AcknowledgeChange(std::uint32_t bits, std::uint64_t stamp);        // 0x815004
    bool AreChangesAcknowledgedBy(std::uint32_t bits) const;                // 0x815028
    void SetSentFlag(std::uint32_t bits, bool sent, std::uint64_t stamp);   // 0x81503c
    bool HasDataToSend(std::uint32_t keep, std::uint32_t mask);             // 0x815078
    static int GetFrameTime();                                              // 0x8150a0 (the object is not used)
    bool AreChangesAcknowledged();                                          // 0x8150b0 (partial)

    NetStructMember() = default;
    // The base-field initialisation every concrete member's constructor does inline (for example
    // CNetPlayerInfo 0x80fc28): +0x04 = bits, +0x08 = 0, +0x10 = +0x14 = -1, +0x18 = 0, +0x1c = 0.
    explicit NetStructMember(int size_bits) : sizeBits_(size_bits), ackMask_(0xFFFFFFFFu), sentMask_(0xFFFFFFFFu) {}

protected:
    friend class NetStruct;  // SetEnabled writes changeMask_ of every declared member (0x81366c)

    // Layout (32-bit offsets). Field names are inferred from how the methods use them.
    int sizeBits_ = 0;                  // +0x04 returned by GetSizeBits; set by derived constructors
    std::uint64_t changeStamp_ = 0;     // +0x08 NetStruct::s_changeCounter value at the last SetChanged
    std::uint32_t ackMask_ = 0;         // +0x10 bits that acknowledged the current change
    std::uint32_t sentMask_ = 0;        // +0x14 bits the current change was sent to
    std::uint32_t changeMask_ = 0;      // +0x18 mask copied into ackMask_ and sentMask_ by SetChanged
    bool changed_ = false;              // +0x1c set by SetChanged, cleared by IsChanged
};

template <typename T>
class NetStructMemberType : public NetStructMember {
public:
    NetStructMemberType() = default;
    // Constructor (0x8060d0 for CNetworkId, batch e2-net-transport-NetStructMemberType-b42f13-1). Only the
    // CNetworkId instantiation is defined; the explicit specialization is declared below.
    NetStructMemberType(const T& value, std::uint32_t unused);
    ~NetStructMemberType() override;                             // +0x14/+0x18 (the ByteArray form is specialized)

    // NetStructMemberType<T>::Erase(NetBitStream&): loads into the member, then restores the old value
    // (vtable +0x00). Every instantiation is defined by an explicit specialization below. The pseudocode
    // returns Load's leftover R0 for int, unsigned int, bool, float and CNetworkId and returns void for
    // ByteArray and std::string; the slot is only ever called as void (NetStruct::LoadInternal, 0x8134f4)
    // and none of the seven functions has a direct caller, so the port returns void for all of them.
    void Erase(NetBitStream& stream) override;                   // vtable +0x00

    virtual void SetValue(const T& value) { value_ = value; }   // vtable +0x1c
    virtual bool TestValue(const T& /*value*/) const { return true; }  // vtable +0x20; int returns 1 (0x36d474), explicit specializations below
    virtual const T& GetValue() const { return value_; }        // vtable +0x24 (returns a reference: this+0x20)

    // Base-field initialisation with a bit size (see NetStructMember(int)); the value starts at T{}.
    // Public: the net-session-online members (CMatchingLocal::MemberInfoNetStruct) are built with it.
    explicit NetStructMemberType(int size_bits) : NetStructMember(size_bits) {}

protected:
    T value_{};                                                 // +0x20
};

// The generic destructor is empty (0x36d2e4 and its siblings); NetStructMemberType<ByteArray> has its own.
template <typename T>
NetStructMemberType<T>::~NetStructMemberType() {}

// NetStructMemberType<bool>. The original keeps the value in the byte at +0x1d, the first byte after
// the NetStructMember base fields (the base ends with `changed_` at +0x1c), not at +0x20 like the other
// instantiations (0x36d308, 0x36da20, 0x36dd94 all address +29). A full specialization declares
// value_ right after the base, which is where the compiler's tail-padding reuse puts it (checked by
// the test e2-net-transport-NetStructMemberType-b42f13-0).
template <>
class NetStructMemberType<bool> : public NetStructMember {
public:
    NetStructMemberType() = default;
    ~NetStructMemberType() override = default;                   // 0x36d2e4 (D1), 0x36d5f0 (D0)

    void Erase(NetBitStream& stream) override;                   // vtable +0x00, 0x36dd94
    virtual void SetValue(const bool& value);                    // vtable +0x1c, 0x36da20
    virtual bool TestValue(const bool& value) const;             // vtable +0x20, 0x36d484 (always true)
    virtual const bool& GetValue() const;                        // vtable +0x24, 0x36d308

protected:
    explicit NetStructMemberType(int size_bits) : NetStructMember(size_bits) {}

    bool value_ = false;                                         // +0x1d
};

// Explicit specializations for the instantiations in libDungeonHunter2.so. The bodies are in
// src/tb_transport-NetStructMemberType-0.cpp and src/e2-net-transport-NetStructMemberType-b42f13-*.cpp.
template <> void NetStructMemberType<std::int32_t>::SetValue(const std::int32_t& value);       // 0x36d9f0
template <> void NetStructMemberType<std::uint32_t>::SetValue(const std::uint32_t& value);     // 0x36da08
template <> void NetStructMemberType<std::int32_t>::Erase(NetBitStream& stream);               // 0x36dd64
template <> const std::int32_t& NetStructMemberType<std::int32_t>::GetValue() const;            // 0x36d2f0
template <> bool NetStructMemberType<std::int32_t>::TestValue(const std::int32_t& value) const;  // 0x36d474
template <> const std::uint32_t& NetStructMemberType<std::uint32_t>::GetValue() const;         // 0x36d2e8
template <> bool NetStructMemberType<std::uint32_t>::TestValue(const std::uint32_t& value) const; // 0x36d47c
template <> const std::string& NetStructMemberType<std::string>::GetValue() const;             // 0x36d2f8
template <> bool NetStructMemberType<std::string>::TestValue(const std::string& value) const;   // 0x36d46c
template <> const ByteArray& NetStructMemberType<ByteArray>::GetValue() const;                 // 0x36d390
template <> bool NetStructMemberType<ByteArray>::TestValue(const ByteArray& value) const;       // 0x36d388
// Batch e2-net-transport-NetStructMemberType-b42f13-0.
template <> void NetStructMemberType<ByteArray>::SetValue(const ByteArray& value);             // 0x36f264
template <> void NetStructMemberType<std::string>::SetValue(const std::string& value);         // 0x36fc4c
template <> void NetStructMemberType<std::uint32_t>::Erase(NetBitStream& stream);               // 0x36dd7c
template <> void NetStructMemberType<ByteArray>::Erase(NetBitStream& stream);                   // 0x3704e8
template <> void NetStructMemberType<std::string>::Erase(NetBitStream& stream);                 // 0x371ae8
template <> NetStructMemberType<ByteArray>::~NetStructMemberType();                             // 0x36ff88 (D2), 0x370778 (D0)
template <> void NetStructMemberType<float>::SetValue(const float& value);                     // 0x3a3c30
template <> void NetStructMemberType<float>::Erase(NetBitStream& stream);                       // 0x3a3e4c
template <> const float& NetStructMemberType<float>::GetValue() const;                         // 0x3a364c
template <> bool NetStructMemberType<float>::TestValue(const float& value) const;              // 0x3a36dc
template <> const CNetworkId& NetStructMemberType<CNetworkId>::GetValue() const;               // 0x801b84
template <> bool NetStructMemberType<CNetworkId>::TestValue(const CNetworkId& value) const;    // 0x801b8c
// Batch e2-net-transport-NetStructMemberType-b42f13-1 (CNetworkId): constructor, SetValue and Erase.
template <> NetStructMemberType<CNetworkId>::NetStructMemberType(const CNetworkId& value, std::uint32_t unused);  // 0x8060d0
template <> void NetStructMemberType<CNetworkId>::SetValue(const CNetworkId& value);           // 0x8020b8
template <> void NetStructMemberType<CNetworkId>::Erase(NetBitStream& stream);                 // 0x801bfc

// Unsigned integer member of Bits bits on the wire.
template <unsigned Bits>
class NetStructUInt final : public NetStructMemberType<std::uint32_t> {
public:
    NetStructUInt() : NetStructMemberType<std::uint32_t>(static_cast<int>(Bits)) {}   // inline constructor, sizeBits = Bits
    void Read(NetBitStream& stream) override;                         // NetStructUInt<N>::Read
    void Write(NetBitStream& stream) const override;                  // NetStructUInt<N>::Write
    bool TestValue(const std::uint32_t& value) const override;        // NetStructUInt<N>::TestValue
};

// Single bit member. Derives from NetStructMemberType<bool> (vtable _ZTV13NetStructBool: Erase,
// SetValue, TestValue and GetValue are the NetStructMemberType<bool> ones); the value is the byte at +0x1d.
class NetStructBool final : public NetStructMemberType<bool> {
public:
    NetStructBool() : NetStructMemberType<bool>(1) {}                 // inline constructor (Door::NetStructDoor 0x3e80d4): sizeBits = 1
    void Read(NetBitStream& stream) override;                         // 0x36f028
    void Write(NetBitStream& stream) const override;                  // 0x36f064
};

// Float in [Min, Max] sent as Bits-bit fixed point.
template <unsigned Bits, int Min, int Max>
class NetStructRangedFloat : public NetStructMemberType<float> {   // not final: NetStructInterpolatedRangedFloat derives from it (its vtable holds these Read, Write and TestValue)
public:
    NetStructRangedFloat() : NetStructMemberType<float>(static_cast<int>(Bits)) {}    // sizeBits = Bits (see 0x3a681c)
    void Read(NetBitStream& stream) override;                         // NetStructRangedFloat<...>::Read
    void Write(NetBitStream& stream) const override;                  // NetStructRangedFloat<...>::Write
    bool TestValue(const float& value) const override;                // NetStructRangedFloat<...>::TestValue
};

// CNetworkId member (value at +0x20 in the original). Derives from NetStructMemberType<CNetworkId>
// (vtable _ZTV18NetStructNetworkId): Erase, SetValue and GetValue are the NetStructMemberType ones.
class NetStructNetworkId final : public NetStructMemberType<CNetworkId> {
public:
    NetStructNetworkId() : NetStructMemberType<CNetworkId>(CNetworkId(), 0u) {}
    void Read(NetBitStream& stream) override;                         // 0x801de0
    void Write(NetBitStream& stream) const override;                  // 0x801f14
    bool TestValue(const CNetworkId& value) const override { return NetStructMemberType<CNetworkId>::TestValue(value); }
};
