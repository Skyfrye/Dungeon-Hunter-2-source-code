// Stand-ins for the NetStruct base and its NetStructInt<32> member, owned by net-transport.
// Only the fields that CMatchingLocal::ServerBackupNetStruct writes are declared, at the
// original 32-bit offsets (kept as comments). The virtual slots are not modelled, and the
// methods that the real NetStruct implements (in net-transport) are no-ops here.
#pragma once

#include <cstdint>
#include <string>

// NetStructMember header (the first 0x20 bytes of a member; value follows at +0x20).
class NetStructMemberStub {
public:
    // Stand-in: the real NetStructMember::SetChanged (0x814f84) is in net-transport.
    void SetChanged() {}

    int sizeBits = 0;                 // +0x04
    std::uint64_t changeStamp = 0;    // +0x08
    std::uint32_t ackMask = 0;        // +0x10
    std::uint32_t sentMask = 0;       // +0x14
    std::uint32_t changeMask = 0;     // +0x18
    bool changed = false;             // +0x1c
};

// NetStructInt<32>: a 32-bit integer member. The value is at +0x20 of the member, so the
// member is 40 bytes (0x28) with its 8-byte stamp aligned.
class NetStructInt32Stub : public NetStructMemberStub {
public:
    std::int32_t value = 0;           // +0x20
};

// NetStructBool: a 1-bit boolean member. The value is at +0x1d of the member (the byte after
// the changed flag), so the member is 32 bytes (0x20).
class NetStructBoolStub : public NetStructMemberStub {
public:
    bool value = false;               // +0x1d
};

// NetStructString<16>: a string member. Stand-in for net-transport's tb/net_struct_string.hpp. Only the
// value is modelled, at +0x20 of the member (absolute +0x150 in CMatchingGLLive::MemberInfoNetStruct),
// as in NetStructMemberStub. Replace with the real NetStructString<16> when net-transport is linked
// into this translation unit.
class NetStructStringStub16 : public NetStructMemberStub {
public:
    NetStructStringStub16() = default;
    explicit NetStructStringStub16(const std::string& initial) : value(initial) {}

    std::string value;                // +0x20
};

// NetStruct base. Its own fields are not modelled; the port's NetStruct owns only the
// declaration hook used by the constructors.
class NetStructBaseStub {
public:
    // Stand-in: the real NetStruct::DeclareMember is in net-transport.
    void DeclareMember(NetStructMemberStub*) {}

    // NetStruct::tPacketHistory. Its layout is not recovered, so this is a placeholder.
    struct tPacketHistory {};
};
