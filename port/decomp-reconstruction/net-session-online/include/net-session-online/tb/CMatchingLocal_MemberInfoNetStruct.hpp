// CMatchingLocal::MemberInfoNetStruct: the per-member NetStruct record of the local matching
// room. Bodies are in src/tb_session-online-CMatchingLocal_MemberInfoNetStruct-0.cpp.
//
// Naming: the original nests this class in CMatchingLocal. c_matching_local.hpp belongs to
// another batch, so the class is declared here at top level under the flattened name.
// The integrator can add a nested alias in CMatchingLocal when that header is next edited.
//
// Source addresses (32-bit ARM, Hex-Rays bodies):
//   ctor 0x806b98, D1/D2 dtor 0x806258, D0 deleting dtor 0x806344.
//
// Layout (original 32-bit offsets, kept as comments; NetStruct base is 0x130 bytes):
//   +0x00 vptr (CMatchingLocal::MemberInfoNetStruct vtable)
//   +0x04..+0x130  NetStruct base (member pointers, member count, enabled flag)
//   +0x10c..+0x11f NetStruct packet history std::map (the base's protected packetHistory_; the dtor clears it)
//   +0x130 intMember_: NetStructMemberType<int>, 40 bytes. Base fields: sizeBits 32 at +0x134,
//          change stamp at +0x138, ackMask -1 at +0x140, sentMask -1 at +0x144, changeMask 0 at
//          +0x148, changed flag at +0x14c. Value (int) at +0x150. Meaning of the value not identified.
//   +0x158 networkIdMember_: NetStructMemberType<CNetworkId>, 40 bytes. Value (CNetworkId, 28 bytes)
//          at +0x178. The ctor overwrites its vptr with an unidentified vtable (see the .cpp).
//
// Not identified:
//   - Virtual slots of this class (the vtable is not dumped with names).
//   - Meaning of the int member and of the CNetworkId member (type-based names only).
#pragma once

#include <cstdint>

#include "net-transport/net_network_id.hpp"
#include "net-transport/net_struct.hpp"

class CMatchingLocal_MemberInfoNetStruct : public NetStruct {
public:
    // 0x806b98 CMatchingLocal::MemberInfoNetStruct::MemberInfoNetStruct(void). Partial, see the .cpp.
    CMatchingLocal_MemberInfoNetStruct();

    // 0x806258 CMatchingLocal::MemberInfoNetStruct::~MemberInfoNetStruct() (D1/D2). Partial, see the .cpp.
    ~CMatchingLocal_MemberInfoNetStruct() override;

    // 0x806344 CMatchingLocal::MemberInfoNetStruct::~MemberInfoNetStruct() (D0, deleting variant).
    // Runs the complete-object destructor, then releases the block with CustomFree. Partial.
    static void DeletingDestructor(CMatchingLocal_MemberInfoNetStruct* self);

    // The two members. NetStructMemberType<T> leaves Read and Write to its subclasses; the binary's
    // vtables for these two members are not identified, so Read and Write are no-ops here (the
    // stand-in this replaces never called them either).
    class IntMember final : public NetStructMemberType<std::int32_t> {
    public:
        IntMember() : NetStructMemberType<std::int32_t>(32) {}  // base fields: size 32
        void Read(NetBitStream& /*stream*/) override {}
        void Write(NetBitStream& /*stream*/) const override {}
    };
    class NetworkIdMember final : public NetStructMemberType<CNetworkId> {
    public:
        explicit NetworkIdMember(const CNetworkId& id) : NetStructMemberType<CNetworkId>(id, 0) {}
        void Read(NetBitStream& /*stream*/) override {}
        void Write(NetBitStream& /*stream*/) const override {}
    };

    // Member accessors used by tests and the rest of the category.
    IntMember& GetIntMember() { return intMember_; }
    NetworkIdMember& GetNetworkIdMember() { return networkIdMember_; }

private:
    IntMember intMember_;                 // +0x130
    NetworkIdMember networkIdMember_;     // +0x158
};
