#include "net-transport/packet_manager.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

static bool WriteCb(int, int, NetBitStream&) { return true; }
static void ReadCb(int, int, NetBitStream&) {}
static void AckCb(int, int) {}
static void LostCb(int, int) {}

int main() {
    // Slot registry: register sets the bit, a second register keeps the first callbacks.
    CPacketManager::RegisterPacketSlot(2, WriteCb, ReadCb, AckCb, LostCb);
    CHECK(CPacketManager::IsPacketSlotUsed(2));
    CHECK(CPacketManager::s_packetSlotBitMap == 0x04);
    CPacketManager::RegisterPacketSlot(2, nullptr, nullptr, nullptr, nullptr);
    CHECK(CPacketManager::s_PacketSlots[2].write == WriteCb);
    CPacketManager::UnregisterPacketSlot(2);
    CHECK(!CPacketManager::IsPacketSlotUsed(2));
    CHECK(CPacketManager::s_packetSlotBitMap == 0);

    // Sequence arithmetic, including wrap-around.
    CHECK(CPacketManager::SequenceMoreRecent(10, 5));
    CHECK(!CPacketManager::SequenceMoreRecent(5, 10));
    CHECK(CPacketManager::SequenceMoreRecent(5, 0xFFFFFFF0u));
    CHECK(CPacketManager::GetSequenceOffset(10, 5) == 5);
    CHECK(CPacketManager::GetSequenceOffset(5, 10) == -5);
    CHECK(CPacketManager::GetSequenceOffset(1, 0xFFFFFFFFu) == 2);

    // Header round trip through a bit stream.
    CPacketManager::tPacketMgrHeader h;
    h.sequence = 0x1234;
    h.ack = 0x0042;
    h.ack_bits = 0xDEADBEEF;
    h.connection_id = 7;
    h.matching_id = 0x9ABC;
    h.slot_mask = 0x05;
    NetBitStream out(64);
    CPacketManager::WriteHeader(h, out);
    char raw[64] = {};
    out.GetBuffer(raw, sizeof(raw));
    NetBitStream in(64);
    in.WriteByteArray(raw, sizeof(raw));
    CPacketManager::tPacketMgrHeader r = CPacketManager::ReadHeader(in);
    CHECK(r.sequence == 0x1234);
    CHECK(r.ack == 0x0042);
    CHECK(r.ack_bits == 0xDEADBEEF);
    CHECK(r.connection_id == 7);
    CHECK(r.matching_id == 0x9ABC);
    CHECK(r.slot_mask == 0x05);

    // Incoming queue: callback appends, GetNextPacket pops in order.
    CPacketManager mgr;
    CHECK(!mgr.ArePacketsAvailable());
    char first[8] = {1, 2, 3, 4, 5, 6, 7, 8};
    char second[8] = {9, 9, 9, 9, 9, 9, 9, 9};
    mgr.PacketReceiverCallback(0, first, 8);
    mgr.PacketReceiverCallback(0, second, 8);
    CHECK(mgr.GetPacketCount() == 2);
    CHECK(mgr.ArePacketsAvailable());
    NetBitStream p = mgr.GetNextPacket();
    CHECK(mgr.GetPacketCount() == 1);
    CHECK(p.Size() >= 4088);

    if (failures == 0) std::printf("packet_manager_test: OK\n");
    return failures == 0 ? 0 : 1;
}
