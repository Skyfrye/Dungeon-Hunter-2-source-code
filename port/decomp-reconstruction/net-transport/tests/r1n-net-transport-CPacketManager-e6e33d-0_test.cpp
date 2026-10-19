// CPacketManager batch r1n-net-transport-CPacketManager-e6e33d-0: constructor and destructor
// registration (packet type 6 and CNetworkEmulation), the slot mask stored by ReceivePackets, and
// the block write in PreparePacketData (success, and revert on a write overflow).
#include "net-transport/packet_manager.hpp"
#include "net-transport/connection_manager.hpp"
#include "net-transport/net_network_emulation.hpp"
#include "fake_matching.hpp"  // CMatching test double (local member id 0)

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

static void NoRead(int, int, NetBitStream&) {}
static void NoAck(int, int) {}
static void NoLost(int, int) {}

// Writes 64 bits, more than the 8-byte stream of the overflow test holds, so the stream flags a
// write overflow and the block must be reverted.
static bool OverflowWrite(int, int, NetBitStream& s) {
    s.WriteU32(0xFFFFFFFFu, 32);
    s.WriteU32(0xFFFFFFFFu, 32);
    return true;
}

// Writes one byte of payload.
static bool SmallWrite(int, int, NetBitStream& s) {
    s.WriteU32(0x5Au, 8);
    return true;
}

// Delivers one packet from `member` whose header carries `slot_mask`, then reads it, so that
// ReceivePackets stores the mask for that member. The packet has no slot data.
static void DeliverHeader(CPacketManager& mgr, std::uint32_t member, std::uint32_t sequence,
                          std::uint32_t slot_mask) {
    NetBitStream pkt(32);
    pkt.WriteU32(sequence, 16);  // sequence
    pkt.WriteU32(0, 16);         // ack
    pkt.WriteU32(0, 32);         // ack_bits
    pkt.WriteU32(member, 16);    // matching_id: the sender
    pkt.WriteU32(0, 16);         // connection_id: the local member (0 in the fake)
    pkt.WriteU32(slot_mask, 8);  // slot_mask
    for (int slot = 0; slot < CPacketManager::kPacketSlotCount; ++slot) {
        pkt.WriteByte(0, 1);     // no slot data
    }
    char raw[32] = {};
    pkt.GetBuffer(raw, sizeof(raw));
    mgr.PacketReceiverCallback(0, raw, static_cast<int>(sizeof(raw)));
    mgr.ReceivePackets();
}

int main() {
    // Constructor: packet type 6 is registered and CNetworkEmulation is initialised.
    // Destructor: packet type 6 is unregistered and CNetworkEmulation is terminated.
    {
        CPacketManager mgr;
        CHECK(CConnectionManager::IsPacketTypeRegistered(6));
        CHECK(CNetworkEmulation::IsInitialized());
    }
    CHECK(!CConnectionManager::IsPacketTypeRegistered(6));
    CHECK(!CNetworkEmulation::IsInitialized());

    CPacketManager mgr;
    CHECK(CConnectionManager::IsPacketTypeRegistered(6));

    // The sender's slot mask is stored from its header, so slot 0 is eligible for member 5.
    DeliverHeader(mgr, 5, 1, 0x01);
    CHECK(!mgr.ArePacketsAvailable());

    // Write overflow: the slot's block is reverted and its flag is 0, so only the eight flag bits
    // remain. Without the overflow check the block would stay and the position would be past 8.
    CPacketManager::RegisterPacketSlot(0, OverflowWrite, NoRead, NoAck, NoLost);
    NetBitStream small(8);  // 64 bits
    mgr.PreparePacketData(5, 1, small);
    CHECK(small.WritePosition() == 8);
    CPacketManager::UnregisterPacketSlot(0);

    // Success: flag 1, tag 32 bits, one payload byte, then the block length (16 bits) = 41 bits.
    // Eight flags in total: 1 + 32 + 8 + 16 + 7 = 64 bits.
    DeliverHeader(mgr, 5, 2, 0x01);
    CPacketManager::RegisterPacketSlot(0, SmallWrite, NoRead, NoAck, NoLost);
    NetBitStream roomy(16);  // 128 bits
    mgr.PreparePacketData(5, 2, roomy);
    CHECK(roomy.WritePosition() == 64);
    CPacketManager::UnregisterPacketSlot(0);

    // A member whose mask has no bit for the registered slot writes only flags.
    DeliverHeader(mgr, 6, 1, 0x02);
    CPacketManager::RegisterPacketSlot(0, SmallWrite, NoRead, NoAck, NoLost);
    NetBitStream unmasked(16);
    mgr.PreparePacketData(6, 1, unmasked);
    CHECK(unmasked.WritePosition() == 8);
    CPacketManager::UnregisterPacketSlot(0);

    if (failures == 0) std::printf("r1n-net-transport-CPacketManager-e6e33d-0_test: OK\n");
    return failures == 0 ? 0 : 1;
}
