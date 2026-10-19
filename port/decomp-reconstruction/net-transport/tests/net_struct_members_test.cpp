// Test for the NetStruct functions of batch e1-net-transport-NetStruct-0 that the integrator decisions
// completed: SetEnabled, Resend (both forms), SetAckedBy, LoadInternal / Load / Erase with PostLoad,
// AreChangesAcknowledgedBy, HasDataToSend as a virtual slot, GetChangedBitMap and the declared member
// count. The CMatching test double maps member id n to the bit 1 << n and the local member id is 0.
#include "net-transport/net_struct.hpp"

#include <cstdio>

#include "fake_matching.hpp"  // CMatching test double (net-session-online/deps/matching.hpp)

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// An 8-bit member that counts PostLoad calls (vtable +0x0c).
class CountingMember final : public NetStructMemberType<std::uint32_t> {
public:
    CountingMember() : NetStructMemberType<std::uint32_t>(8) {}
    void Read(NetBitStream& stream) override { SetValue(stream.ReadU32(8)); }
    void Write(NetBitStream& stream) const override { stream.WriteU32(value_, 8); }
    bool TestValue(const std::uint32_t&) const override { return true; }
    void PostLoad(std::uint32_t time) override {
        ++post_loads;
        last_time = time;
    }
    int post_loads = 0;
    std::uint32_t last_time = 0;
};

struct Pair : NetStruct {
    CountingMember a;
    CountingMember b;
    Pair() {
        DeclareMember(&a);
        DeclareMember(&b);
    }
    bool pending() const { return post_load_pending_; }
    std::uint32_t post_arg() const { return post_load_arg_; }
    int count() const { return member_count_; }
};

// HasDataToSend is virtual (vtable +0x28): an override is reached through a NetStruct pointer.
struct Overriding : NetStruct {
    bool HasDataToSend(int memberId) override { return memberId == 7; }
};

}  // namespace

int main() {
    SetRoomMaskForTest(3);

    // HasDataToSend through the base pointer reaches the override.
    {
        Overriding o;
        NetStruct* base = &o;
        CHECK(base->HasDataToSend(7));
        CHECK(!base->HasDataToSend(8));
    }

    // Disabled struct: HasDataToSend is true only for a negative member id (memberId >> 31); an empty
    // struct is acknowledged by everybody; the size is one bit.
    {
        NetStruct empty;
        CHECK(!empty.HasDataToSend(0));
        CHECK(empty.HasDataToSend(-1));
        CHECK(empty.AreChangesAcknowledged());
        CHECK(empty.AreChangesAcknowledgedBy(3));
        CHECK(empty.GetSizeBits() == 1);
        CHECK(empty.GetSizeBytes() == 1);
        CHECK(!empty.IsChanged());
        CHECK(empty.GetChangedBitMap() == 0);
    }

    // SetEnabled(true) gives every member the local member's change mask and marks it changed; enabling
    // twice does not do it again; SetEnabled(false) clears the post-load flag.
    {
        Pair p;
        CHECK(p.count() == 2);
        CHECK(p.GetSizeBits() == 1 + 8 + 8);
        CHECK(p.GetSizeBytes() == 3);
        p.a.SetValue(1);
        p.a.IsChanged();
        p.SetEnabled(true);
        CHECK(p.a.IsChanged() && p.b.IsChanged());
        CHECK(p.a.AreChangesAcknowledgedBy(1) && !p.a.AreChangesAcknowledgedBy(2));   // ack mask = local bit
        p.SetEnabled(true);
        CHECK(!p.a.IsChanged());                 // already enabled: nothing is marked again
        p.SetEnabled(false);
        CHECK(!p.pending());
    }

    // Resend(bits) clears the member bit from every sent mask; SetAckedBy adds it to the ack and sent masks.
    {
        Pair p;
        p.SetEnabled(true);
        NetBitStream out(16);
        CHECK(p.Serialize(out, 1, 1) == 2);                   // marks the members sent to member 1 (bit 2)
        CHECK(!p.HasDataToSend(1));
        p.Resend(1);
        CHECK(p.HasDataToSend(1));                            // the sent flag is gone again
        CHECK(!p.AreChangesAcknowledgedBy(1));
        p.SetAckedBy(1);
        CHECK(p.AreChangesAcknowledgedBy(1));
        const std::uint64_t before = NetStruct::s_changeCounter;
        p.Resend();                                           // room mask form
        CHECK(NetStruct::s_changeCounter == before + 1);
        CHECK(p.GetChangedBitMap() == 3);                     // both members were marked changed by SetEnabled
        CHECK(p.GetChangedBitMap() == 0);                     // IsChanged cleared the flags
    }

    // Load reads the presence bit, loads every member, acknowledges the sender's bit, sets the post-load
    // flag and calls PostLoad(a4) on every member. Erase loads and restores.
    {
        Pair writer;
        writer.a.SetValue(0x11);
        writer.b.SetValue(0x22);
        writer.SetEnabled(true);
        NetBitStream out(16);
        CHECK(writer.Serialize(out, 1, 5) == 2);
        NetBitStream in(16);
        in.WriteStream(out);

        Pair reader;
        const int r = reader.Load(in, 1, 55);
        CHECK(r == 2);                                        // every member loaded
        CHECK(reader.a.GetValue() == 0x11 && reader.b.GetValue() == 0x22);
        CHECK(reader.pending());
        CHECK(reader.post_arg() == 55);
        CHECK(reader.a.post_loads == 1 && reader.b.post_loads == 1);
        CHECK(reader.a.last_time == 55);
        CHECK(reader.a.AreChangesAcknowledgedBy(2));          // SetAcked(MemberBit(1))

        // A struct whose presence bit is clear loads nothing and returns 0.
        NetBitStream none(4);
        none.WriteBit(0);
        NetBitStream none_in(4);
        none_in.WriteStream(none);
        Pair other;
        CHECK(other.Load(none_in, 1, 9) == 0);
        CHECK(!other.pending());

        // Erase: the same stream, the values are restored afterwards, the result is 0.
        NetBitStream in2(16);
        in2.WriteStream(out);
        Pair erased;
        erased.a.SetValue(0x77);
        erased.b.SetValue(0x88);
        CHECK(erased.Erase(in2) == 0);
        CHECK(erased.a.GetValue() == 0x77 && erased.b.GetValue() == 0x88);

        // ConditionalLoad: true goes to Load, false to Erase.
        NetBitStream in3(16);
        in3.WriteStream(out);
        Pair cond;
        CHECK(cond.ConditionalLoad(true, in3, 1, 3) == 2);
        CHECK(cond.a.GetValue() == 0x11);
    }

    SetRoomMaskForTest(0);
    if (failures == 0) {
        std::printf("net_struct_members_test: all checks passed\n");
        return 0;
    }
    std::printf("net_struct_members_test: %d failure(s)\n", failures);
    return 1;
}
