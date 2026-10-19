// NetStruct functions of batch e2-net-transport-NetStruct-9cfb4c-0: the packet history
// (AddPacketHistory and the lost/acknowledged handlers), the serialize entry points and the
// deleting destructor. The class and the packet history map are declared in
// include/net-transport/net_struct.hpp. Functions without a body are not reconstructed yet: the
// comment above each one names what is missing.
#include "net-transport/net_struct.hpp"

#include "net-session-online/deps/matching.hpp"  // CMatching (one definition, net-session-online)

// 0x8139bc _ZN9NetStructD0Ev
// skipped: deleting destructor (D0). The compiler generates it for `delete`; the original sets the
// vptr, runs the complete-object destructor (D1, 0x81395c, partial in tb_transport-NetStruct-0.cpp)
// and calls CustomFree(this). The packet history map is destroyed with the object.

// 0x814774 _ZN9NetStruct17ProcessLostPacketEii
// Looks up the packet in the member id's history. When it is there, the entry is erased and every member
// whose bit is set in the packet's mask, and whose ack mask does not yet hold the member's bit
// (CMatching vt +0x84), gets that bit cleared from its sent mask for changes up to the packet's stamp, so the
// change is sent again. operator[] creates the member id's inner map, as the original does.
void NetStruct::ProcessLostPacket(int memberId, int packetId) {
    if (packetHistory_.empty()) {
        return;
    }
    auto& byPacket = packetHistory_[memberId];
    const auto entry = byPacket.find(packetId);
    if (entry == byPacket.end()) {
        return;
    }
    const std::uint32_t bit = CMatching::Get()->MemberBit(memberId);  // vt +0x84
    const tPacketHistory history = entry->second;                       // stamp (node +0x18), mask (node +0x20)
    byPacket.erase(entry);
    for (int i = 0; i < member_count_; ++i) {
        if (((history.changeMask >> i) & 1u) != 0) {
            if (!members_[i]->AreChangesAcknowledgedBy(bit)) {
                members_[i]->SetSentFlag(bit, false, history.changeStamp);
            }
        }
    }
}

// 0x8149d4 _ZN9NetStruct16AddPacketHistoryEiiy
// stream_flags is the caller's register at the call (SerializeInternal passes the stream's overflow
// flags or the member count); the body never reads it, so it is kept only for the signature.
// Records the packet's change stamp (the counter now) and member mask under the member id, unless that
// member already has more than 64 packets, in which case its history is dropped and everything is sent
// again (Resend()). The pseudocode returns a leftover (the mask on the first path, Resend's leftover on
// the second); SerializeInternal ignores it, so the port returns void.
void NetStruct::AddPacketHistory(int memberId, int packetId, int stream_flags, std::uint64_t changeMask) {
    (void)stream_flags;
    auto& byPacket = packetHistory_[memberId];  // operator[] creates the entry, as the original does
    if (byPacket.size() <= 0x40u) {
        // Read the change counter before the entry is found (no side effects in between).
        const std::uint64_t stamp = s_changeCounter;
        tPacketHistory& entry = byPacket[packetId];  // find-or-insert, zero-initialised when new
        entry.changeStamp = stamp;
        entry.changeMask = changeMask;
        return;
    }
    // Over 64 packets for this member: drop the whole history for it, then resend.
    byPacket.clear();
    Resend();
}

// 0x814b0c _ZN9NetStruct17SerializeInternalEbR12NetBitStreamii
// Writes a 0 bit and returns 0 unless the struct is conditional and HasDataToSend(memberId) (vtable +0x28)
// is true. Otherwise writes a 1 bit and serialises every member with the member's bit (CMatching vt +0x84),
// stopping when the stream overflows; bit i of the packet's mask records that member i wrote its value.
// When the loop completed without overflow every member is marked sent (SetSentFlag(bit, true, ~0)).
// The packet is then recorded with AddPacketHistory. Returns 2 when every member was written, else 1.
int NetStruct::SerializeInternal(bool conditional, NetBitStream& stream, int memberId, int packetId) {
    if (!conditional || !HasDataToSend(memberId)) {  // vtable +0x28
        stream.WriteBit(0);
        return 0;
    }
    stream.WriteBit(1);
    const std::uint32_t bit = CMatching::Get()->MemberBit(memberId);  // vt +0x84
    const int count = member_count_;
    std::uint64_t writtenMask = 0;  // v19: bit i set when member i wrote its value
    int historyArg = count;         // v12: the register AddPacketHistory receives (it never reads it)
    bool loopCompleted = count <= 0;
    if (count > 0 && stream.Flags() == 0) {
        for (int i = 0;;) {
            if (members_[i]->Serialize(stream, bit)) {
                writtenMask |= std::uint64_t{1} << i;
            }
            ++i;
            if (i >= member_count_) {
                loopCompleted = true;
                break;
            }
            historyArg = static_cast<int>(stream.Flags());
            if (historyArg != 0) {  // the stream overflowed: stop, and do not mark the members sent
                break;
            }
        }
    }
    if (loopCompleted && stream.Flags() == 0) {  // LABEL_19
        for (int i = 0; i < member_count_; ++i) {
            members_[i]->SetSentFlag(bit, true, ~std::uint64_t{0});
        }
    }
    AddPacketHistory(memberId, packetId, historyArg, writtenMask);
    const std::uint64_t full = member_count_ >= 64 ? ~std::uint64_t{0} : (std::uint64_t{1} << member_count_) - 1;
    return writtenMask == full ? 2 : 1;
}

// 0x814cd4 _ZN9NetStruct20ConditionalSerializeEbR12NetBitStreamii
// A tail jump to SerializeInternal (0x814b0c).
int NetStruct::ConditionalSerialize(bool conditional, NetBitStream& stream, int memberId, int packetId) {
    return SerializeInternal(conditional, stream, memberId, packetId);
}

// 0x814cd8 _ZN9NetStruct17SerializeDisabledER12NetBitStream
// Forwards to SerializeInternal(false, stream, -1, -1) (0x814b0c).
int NetStruct::SerializeDisabled(NetBitStream& stream) {
    return SerializeInternal(false, stream, -1, -1);
}

// 0x814d00 _ZN9NetStruct9SerializeER12NetBitStreamii
// Forwards to SerializeInternal(true, stream, memberId, packetId) (0x814b0c).
int NetStruct::Serialize(NetBitStream& stream, int memberId, int packetId) {
    return SerializeInternal(true, stream, memberId, packetId);
}

// 0x814d28 _ZN9NetStruct25ProcessAcknowledgedPacketEii
// Same lookup as ProcessLostPacket. The entry is erased and every member whose bit is set in the packet's
// mask acknowledges the change up to the packet's stamp for the member's bit (NetStructMember::AcknowledgeChange).
void NetStruct::ProcessAcknowledgedPacket(int memberId, int packetId) {
    if (packetHistory_.empty()) {
        return;
    }
    auto& byPacket = packetHistory_[memberId];
    const auto entry = byPacket.find(packetId);
    if (entry == byPacket.end()) {
        return;
    }
    const std::uint32_t bit = CMatching::Get()->MemberBit(memberId);  // vt +0x84
    const tPacketHistory history = entry->second;
    byPacket.erase(entry);
    for (int i = 0; i < member_count_; ++i) {
        if (((history.changeMask >> i) & 1u) != 0) {
            members_[i]->AcknowledgeChange(bit, history.changeStamp);
        }
    }
}
