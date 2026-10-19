// NetStruct functions of batch e1-net-transport-NetStruct-0 (part 1 of 2), completed by the
// integrator decisions (decisions-1): the member-mask functions (AreChangesAcknowledgedBy, Resend,
// SetAckedBy, LoadInternal, Load, SetEnabled, HasDataToSend) are written against CMatching
// (net-session-online/deps/matching.hpp: MemberBit vtable +0x84, LocalMemberId vtable +0x6c, GetRoomMask 0x8000dc).
// The class is declared in include/net-transport/net_struct.hpp.
#include "net-transport/net_struct.hpp"

#include <cassert>
#include <cstdint>

#include "net-session-online/deps/matching.hpp"  // CMatching (one definition, net-session-online)

// 0x81324c _ZN9NetStruct13DeclareMemberEP15NetStructMember
// Original: count at +0x104, member stored at +0x04 + 4*count, count incremented. The original has
// no bounds check; the port asserts instead of writing past the array. The original also returns
// this in r0; the C++ method is void.
void NetStruct::DeclareMember(NetStructMember* member) {
    assert(member_count_ < kMaxMembers);
    members_[member_count_] = member;
    ++member_count_;
}

// 0x813264 _ZN9NetStruct15ConditionalLoadEbR12NetBitStreamij
// Virtual Load (vt +0x14) when the flag is set, otherwise virtual Erase (vt +0x1c).
int NetStruct::ConditionalLoad(bool conditional, NetBitStream& stream, int a4, std::uint32_t a5) {
    if (conditional) {
        return Load(stream, a4, a5);
    }
    return Erase(stream);
}

// 0x81329c _ZN9NetStruct11GetSizeBitsEv
// Returns 1 for an empty struct. Otherwise 1 plus the sum of each member's GetSizeBits (vt +0x10).
int NetStruct::GetSizeBits() {
    if (member_count_ <= 0) {
        return 1;
    }
    int bits = 1;
    for (int i = 0; i < member_count_; ++i) {
        bits += members_[i]->GetSizeBits();
    }
    return bits;
}

// 0x8132f0 _ZN9NetStruct12GetSizeBytesEv
// Bits / 8, plus one when there is a remainder. Calls the virtual GetSizeBits (vt +0x38).
std::uint32_t NetStruct::GetSizeBytes() {
    const std::uint32_t bits = static_cast<std::uint32_t>(GetSizeBits());
    return (bits >> 3) + ((bits & 7u) != 0 ? 1u : 0u);
}

// 0x81334c _ZN9NetStruct24AreChangesAcknowledgedByEi
// True when the struct is disabled. Otherwise true only when every member's ack mask holds the bit of
// the member (CMatching vt +0x84), stopping at the first that does not. An empty struct is acknowledged.
bool NetStruct::AreChangesAcknowledgedBy(int memberId) {
    if (!enabled_) {  // +0x124
        return true;
    }
    const std::uint32_t bit = CMatching::Get()->MemberBit(memberId);  // vt +0x84
    for (int i = 0; i < member_count_; ++i) {
        if (!members_[i]->AreChangesAcknowledgedBy(bit)) {
            return false;
        }
    }
    return true;
}

// 0x8133c0 _ZN9NetStruct14ResendInternalEj
// Advances the change counter, then clears the given bits from every member's sent mask for changes
// older than the new counter value, so the next Serialize sends them again. The pseudocode returns the
// last SetSentFlag's leftover R0 (the member's address; the literal 1 when there are no members); the
// port returns void.
void NetStruct::ResendInternal(std::uint32_t mask) {
    ++s_changeCounter;
    for (int i = 0; i < member_count_; ++i) {
        members_[i]->SetSentFlag(mask, false, s_changeCounter);
    }
}

// 0x81344c _ZN9NetStruct6ResendEi
// ResendInternal with the member bit (CMatching vt +0x84) of the given member id.
void NetStruct::Resend(int memberId) {
    ResendInternal(CMatching::Get()->MemberBit(memberId));
}

// 0x81347c _ZN9NetStruct6ResendEv
// ResendInternal with the room mask (CMatching::GetRoomMask, 0x8000dc).
void NetStruct::Resend() {
    ResendInternal(CMatching::Get()->GetRoomMask());
}

// 0x81349c _ZN9NetStruct10SetAckedByEi
// Adds the member bit (CMatching vt +0x84) to every member's ack and sent masks. The pseudocode returns
// the last SetAcked's leftover R0; the port returns void.
void NetStruct::SetAckedBy(int memberId) {
    const std::uint32_t bit = CMatching::Get()->MemberBit(memberId);
    for (int i = 0; i < member_count_; ++i) {
        members_[i]->SetAcked(bit);
    }
}

// 0x8134f4 _ZN9NetStruct12LoadInternalEbR12NetBitStreami
// Reads the struct's presence bit and returns 0 when it is clear. Otherwise visits every member in
// declaration order: acknowledged (Load) reads it with NetStructMember::Load, marks the sender's bit
// acknowledged and arms the post-load flag; not acknowledged (Erase) calls the member's virtual slot +0x00,
// which loads and then restores the old value. Acknowledged returns 2 when every member loaded, else 1;
// the erase form returns 0.
int NetStruct::LoadInternal(bool acknowledged, NetBitStream& stream, int memberId) {
    if (stream.ReadBit() == 0) {
        return 0;
    }
    const std::uint32_t bit = CMatching::Get()->MemberBit(memberId);  // vt +0x84
    int allLoaded = 1;  // v12
    for (int i = 0; i < member_count_; ++i) {
        if (acknowledged) {
            allLoaded &= members_[i]->Load(stream) ? 1 : 0;
            members_[i]->SetAcked(bit);
            post_load_pending_ = true;  // +0x125
        } else {
            members_[i]->Erase(stream);  // vtable +0x00
        }
    }
    if (!acknowledged) {
        return 0;
    }
    return allLoaded ? 2 : 1;
}

// 0x8135e4 _ZN9NetStruct5EraseER12NetBitStream
int NetStruct::Erase(NetBitStream& stream) {
    return LoadInternal(false, stream, -1);
}

// 0x8135f4 _ZN9NetStruct4LoadER12NetBitStreamij
// Stores a4 at +0x128, loads with acknowledgement, then, when a member was loaded (the flag at +0x125 is
// set), runs PostLoad (vtable +0x0c) with a4 on every member. The flag is not cleared here; SetEnabled(false)
// clears it.
int NetStruct::Load(NetBitStream& stream, int memberId, std::uint32_t a4) {
    post_load_arg_ = a4;  // +0x128
    const int result = LoadInternal(true, stream, memberId);
    if (post_load_pending_) {  // +0x125
        for (int i = 0; i < member_count_; ++i) {
            members_[i]->PostLoad(a4);
        }
    }
    return result;
}

// 0x81366c _ZN9NetStruct10SetEnabledEb
// Disabling clears the post-load flag. Enabling a disabled struct gives every member the change mask of
// the local member (CMatching vt +0x84 of vt +0x6c) and marks it changed, so the first Serialize sends the
// whole struct. The enabled byte (+0x124) is stored last. The result is what r0 holds at the end, which
// Hex-Rays types as unsigned char*: this when nothing was changed, the address of the last member (the
// SetChanged result) after an enabling loop, or the member bit mask itself when the struct has no members
// (the CMatching call's result, returned as the raw value).
unsigned char* NetStruct::SetEnabled(bool enabled) {
    unsigned char* result = reinterpret_cast<unsigned char*>(this);
    if (enabled) {
        if (!enabled_) {  // +0x124
            CMatching* matching = CMatching::Get();
            const std::uint32_t bit = matching->MemberBit(matching->LocalMemberId());  // vt +0x84, vt +0x6c
            result = reinterpret_cast<unsigned char*>(static_cast<std::uintptr_t>(bit));
            for (int i = 0; i < member_count_; ++i) {
                members_[i]->changeMask_ = bit;  // member +0x18
                result = reinterpret_cast<unsigned char*>(members_[i]->SetChanged());
            }
        }
    } else {
        post_load_pending_ = false;  // +0x125
    }
    enabled_ = enabled;
    return result;
}

// 0x813704 _ZN9NetStruct22AreChangesAcknowledgedEv
// Returns true when the struct is disabled or empty. Otherwise true only when every member reports
// AreChangesAcknowledged, stopping at the first that does not.
bool NetStruct::AreChangesAcknowledged() {
    if (!enabled_ || member_count_ <= 0) {
        return true;
    }
    for (int i = 0; i < member_count_; ++i) {
        if (!members_[i]->AreChangesAcknowledged()) {
            return false;
        }
    }
    return true;
}

// 0x81375c _ZN9NetStruct13HasDataToSendEi
// Disabled: true only for a negative member id (the pseudocode returns memberId >> 31). Enabled: true as
// soon as a member has data for the member's bit within the room mask (NetStructMember::HasDataToSend
// trims the member's masks as it goes); when none has, the same memberId >> 31 value.
bool NetStruct::HasDataToSend(int memberId) {
    if (!enabled_) {
        return memberId < 0;
    }
    CMatching* matching = CMatching::Get();
    const std::uint32_t bit = matching->MemberBit(memberId);  // vt +0x84
    const std::uint32_t roomMask = matching->GetRoomMask();   // 0x8000dc
    for (int i = 0; i < member_count_; ++i) {
        if (members_[i]->HasDataToSend(roomMask, bit)) {
            return true;
        }
    }
    return memberId < 0;
}

// 0x8137ec _ZN9NetStruct16GetChangedBitMapEv
// Bit i is set when member i reports IsChanged. Every member is queried (IsChanged clears the flag).
// The port guards the shift for i >= 32, since ARM LSL by a register is 0 there.
std::uint32_t NetStruct::GetChangedBitMap() {
    if (member_count_ <= 0) {
        return 0;
    }
    std::uint32_t bits = 0;
    for (int i = 0; i < member_count_; ++i) {
        if (members_[i]->IsChanged() && i < 32) {
            bits |= 1u << i;
        }
    }
    return bits;
}

// 0x81383c _ZN9NetStruct9IsChangedEv
// True when any member reports IsChanged. The scan stops at the first changed member, as in the
// original, so the later members' IsChanged flags are left as they are.
bool NetStruct::IsChanged() {
    for (int i = 0; i < member_count_; ++i) {
        if (members_[i]->IsChanged()) {
            return true;
        }
    }
    return false;
}

// 0x81388c _ZN9NetStructC1Ev
// 0x8138f4 _ZN9NetStructC2Ev
// The original sets the vptr, zeroes the member count, the byte at +0x108, the enabled and post-load
// flags and the post-load argument, empties the std::map header at +0x10c, and clears the 64 member
// slots. The default member initialisers in net_struct.hpp do all of it (the map is empty).
NetStruct::NetStruct() {}

// 0x81395c _ZN9NetStructD1Ev
// 0x8139bc _ZN9NetStructD0Ev (deleting form: the same body, then CustomFree(this); skipped)
// The original erases the packet history map when its node count is non-zero and resets the map header;
// the std::map member does the same on destruction.
NetStruct::~NetStruct() {}
