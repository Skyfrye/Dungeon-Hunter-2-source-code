// Acknowledgement bit field, header preparation and the send/receive entry points that do not
// need a live connection.
#include "net-transport/packet_manager.hpp"
#include "fake_matching.hpp"  // CMatching test double

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

static bool NoWrite(int, int, NetBitStream&) { return true; }
static void NoRead(int, int, NetBitStream&) {}
static void NoAck(int, int) {}
static void NoLost(int, int) {}

int main() {
    // Receiving sequence 1 from member 7 (local member id is 0 in the stand-in).
    CPacketManager mgr;
    CPacketManager::tPacketMgrHeader h;
    h.sequence = 1;
    h.ack = 0;
    h.ack_bits = 0;
    h.connection_id = 0;   // addressed to the local member
    h.matching_id = 7;     // sender
    h.slot_mask = 0;
    CHECK(mgr.IsPacketValid(h));
    mgr.AcknowledgePacket(h);
    CHECK(!mgr.IsPacketValid(h));  // already received: not new any more

    // A packet addressed to another member is never valid.
    CPacketManager::tPacketMgrHeader other = h;
    other.connection_id = 3;
    other.sequence = 2;
    CHECK(!mgr.IsPacketValid(other));

    // Header preparation: first packet to member 5 carries sequence 1 and the local member id.
    NetBitStream out(64);
    const std::uint32_t seq = mgr.PreparePacketHeader(5, out);
    CHECK(seq == 1);
    CHECK(out.WritePosition() == 16 + 16 + 32 + 16 + 16 + 8);

    // With no registered remote slots, every slot writes a zero flag bit only.
    NetBitStream data(256);
    mgr.PreparePacketData(5, seq, data);
    CHECK(data.WritePosition() == 8);

    // Slot registration: a registered slot with an unknown remote mask still writes only flags.
    CPacketManager::RegisterPacketSlot(0, NoWrite, NoRead, NoAck, NoLost);
    NetBitStream data2(256);
    mgr.PreparePacketData(5, seq, data2);
    CHECK(data2.WritePosition() == 8);
    CPacketManager::UnregisterPacketSlot(0);

    // Empty queues: the send-side sweeps do nothing and do not need the singletons.
    mgr.ProcessAcknowledgedPackets();
    mgr.ProcessLostPackets();
    mgr.SendWaitingPackets();
    CHECK(mgr.SendPackets() == 0);
    CHECK(mgr.SendPacket(5) == 0);  // no connection manager singleton: nothing is sent

    if (failures == 0) std::printf("packet_manager_ack_test: OK\n");
    return failures == 0 ? 0 : 1;
}
