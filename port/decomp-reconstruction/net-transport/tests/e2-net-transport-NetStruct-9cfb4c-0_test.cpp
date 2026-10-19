// Test for batch e2-net-transport-NetStruct-9cfb4c-0 (packet history, the serialize entry points,
// ProcessLostPacket / ProcessAcknowledgedPacket and SerializeInternal).
// The test links the whole library, so it uses the real NetStruct (constructor, destructor, Load, Erase,
// Resend, HasDataToSend, SetEnabled) and the CMatching test double (fake_matching.hpp). The double's
// MemberBit(id) is 1 << id for ids 0..31 and its LocalMemberId() is 0.
#include "net-transport/net_struct.hpp"

#include <cstdio>

#include "fake_matching.hpp"  // CMatching test double (net-session-online/deps/matching.hpp)
#include "net-transport/tb/net_struct_int.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// Exposes the protected packet history to the test.
struct Probe : NetStruct {
    std::size_t total() const { return packetHistory_.size(); }
    std::size_t count(int member) { return packetHistory_[member].size(); }
    bool has(int member, int packet) { return packetHistory_[member].count(packet) != 0; }
    tPacketHistory get(int member, int packet) { return packetHistory_[member][packet]; }
};

// Two 8-bit members, declared in order.
struct TwoMembers : Probe {
    NetStructUInt<8> a;
    NetStructUInt<8> b;
    TwoMembers() {
        DeclareMember(&a);
        DeclareMember(&b);
    }
};

}  // namespace

int main() {
    // AddPacketHistory stores the change counter and the mask.
    {
        Probe p;
        NetStruct::s_changeCounter = 42;
        p.AddPacketHistory(3, 7, 0, 0xABCDEF0123456789ull);
        CHECK(p.get(3, 7).changeStamp == 42);
        CHECK(p.get(3, 7).changeMask == 0xABCDEF0123456789ull);

        NetStruct::s_changeCounter = 50;
        p.AddPacketHistory(3, 8, 0, 5);
        CHECK(p.count(3) == 2);
        CHECK(p.get(3, 8).changeStamp == 50 && p.get(3, 8).changeMask == 5);

        // Adding the same packet id again replaces the mask and the stamp of that entry.
        p.AddPacketHistory(3, 7, 0, 9);
        CHECK(p.count(3) == 2);
        CHECK(p.get(3, 7).changeMask == 9);
        CHECK(p.get(3, 7).changeStamp == 50);
    }

    // ProcessLostPacket erases only the entry for that packet.
    {
        Probe p;
        p.AddPacketHistory(3, 7, 0, 1);
        p.AddPacketHistory(3, 8, 0, 2);
        p.ProcessLostPacket(3, 7);
        CHECK(!p.has(3, 7));
        CHECK(p.has(3, 8));
        p.ProcessLostPacket(3, 99);  // no such packet: nothing erased
        CHECK(p.count(3) == 1);
    }

    // With no history at all, ProcessLostPacket returns before creating an entry.
    {
        Probe p;
        p.ProcessLostPacket(5, 1);
        CHECK(p.total() == 0);
    }

    // An unknown member with existing history: operator[] creates an empty entry, nothing is erased.
    {
        Probe p;
        p.AddPacketHistory(3, 7, 0, 1);
        p.ProcessLostPacket(4, 7);
        CHECK(p.total() == 2);
        CHECK(p.count(4) == 0);
        CHECK(p.has(3, 7));
    }

    // ProcessAcknowledgedPacket erases the entry the same way.
    {
        Probe p;
        p.AddPacketHistory(2, 5, 0, 1);
        p.ProcessAcknowledgedPacket(2, 5);
        CHECK(!p.has(2, 5));
        CHECK(p.count(2) == 0);
    }

    // More than 64 packets for one member: the history is cleared and Resend() runs, which advances the
    // change counter once (ResendInternal).
    {
        Probe p;
        for (int i = 0; i < 65; ++i) {
            p.AddPacketHistory(1, i, 0, static_cast<std::uint64_t>(i));
        }
        CHECK(p.count(1) == 65);
        NetStruct::s_changeCounter = 100;
        p.AddPacketHistory(1, 100, 0, 7);
        CHECK(NetStruct::s_changeCounter == 101);
        CHECK(p.count(1) == 0);
    }

    // The serialize entry points forward to SerializeInternal with the original constant arguments. A
    // disabled struct writes a 0 bit and returns 0 whatever the arguments are.
    {
        Probe p;
        NetBitStream stream(8);
        CHECK(p.Serialize(stream, 4, 9) == 0);            // true, disabled: HasDataToSend(4) is false
        CHECK(p.SerializeDisabled(stream) == 0);          // false, -1, -1
        CHECK(p.ConditionalSerialize(false, stream, 2, 3) == 0);
        CHECK(p.ConditionalSerialize(true, stream, 6, 7) == 0);
        CHECK(stream.WritePosition() == 4);               // four 0 bits
        CHECK(p.total() == 0);                            // no packet was recorded
    }

    // SerializeInternal on an enabled struct with two 8-bit members. Member id 1 has the stand-in bit 2 and
    // the room mask is bits 0 and 1.
    {
        SetRoomMaskForTest(3);
        TwoMembers p;
        p.a.SetValue(0x11);
        p.b.SetValue(0x22);
        p.SetEnabled(true);   // local member 0: every member gets change mask 1 and is marked changed
        NetStruct::s_changeCounter = 1000;

        NetBitStream stream(16);
        CHECK(p.HasDataToSend(1));
        // HasDataToSend trimmed the masks to the room mask; the sent mask holds bit 0 (local) only.
        const int r = p.Serialize(stream, 1, 77);
        // struct bit + two members of (presence bit + 8 bits) = 19 bits
        CHECK(stream.WritePosition() == 19);
        CHECK(r == 2);        // every member was written
        CHECK(p.has(1, 77));
        CHECK(p.get(1, 77).changeMask == 3);   // members 0 and 1
        CHECK(p.get(1, 77).changeStamp == 1000);

        // The members are marked sent to member 1 now: nothing more to send for it.
        NetBitStream again(16);
        CHECK(!p.HasDataToSend(1));
        CHECK(p.Serialize(again, 1, 78) == 0);
        CHECK(again.WritePosition() == 1);     // a single 0 bit
        CHECK(!p.has(1, 78));

        // A lost packet clears the sent flag of the member bit again (the members never acknowledged it).
        p.ProcessLostPacket(1, 77);
        CHECK(!p.has(1, 77));
        CHECK(p.HasDataToSend(1));

        // An acknowledged packet makes AreChangesAcknowledgedBy(1) true for the members in the packet.
        NetBitStream third(16);
        CHECK(p.Serialize(third, 1, 79) == 2);
        CHECK(!p.AreChangesAcknowledgedBy(1));
        p.ProcessAcknowledgedPacket(1, 79);
        CHECK(!p.has(1, 79));
        CHECK(p.AreChangesAcknowledgedBy(1));
        SetRoomMaskForTest(0);
    }

    if (failures == 0) {
        std::printf("e2-net-transport-NetStruct-9cfb4c-0 test: all checks passed\n");
        return 0;
    }
    std::printf("e2-net-transport-NetStruct-9cfb4c-0 test: %d failure(s)\n", failures);
    return 1;
}
