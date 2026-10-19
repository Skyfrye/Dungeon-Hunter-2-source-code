// Test for batch e2-net-transport-pack0-e3f33b-0: NetStructInt<6u> TestValue, Write and Read, and the
// CNetPlayerInfo constructor, Create and Delete.
#include <cstdint>
#include <cstdio>

#include "net-transport/net_bit_stream.hpp"
#include "net-transport/tb/c_net_player_manager.hpp"
#include "net-transport/tb/cnet_player_info.hpp"
#include "net-transport/tb/net_struct_int.hpp"

namespace {

int failures = 0;

#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++failures;                                                \
        }                                                              \
    } while (0)

}  // namespace


int main() {
    NetStructInt<6u> member;

    // TestValue: magnitudes up to 0x1f pass, 0x20 and above fail (5 magnitude bits).
    CHECK(member.TestValue(0));
    CHECK(member.TestValue(31));
    CHECK(member.TestValue(-31));
    CHECK(!member.TestValue(32));
    CHECK(!member.TestValue(-32));

    // Write then Read round trip. The stream is written, copied into a reader, and read back.
    const std::int32_t values[] = {0, 1, -1, 5, -5, 31, -31};
    for (std::int32_t v : values) {
        NetBitStream out(64);
        member.SetValue(v);
        member.Write(out);

        NetBitStream in(64);
        in.WriteStream(out);

        NetStructInt<6u> reader;
        reader.Read(in);
        CHECK(reader.GetValue() == v);
    }

    // Write layout: 5 magnitude bits, then one sign bit (1 for negative). Value -3 gives the
    // bits 00011 (magnitude) then 1 (sign): six bits in all.
    {
        NetBitStream out(16);
        member.SetValue(-3);
        member.Write(out);
        NetBitStream in(16);
        in.WriteStream(out);
        CHECK(in.ReadU32(5) == 3u);
        CHECK(in.ReadByte(1) == 1u);
    }

    // CNetPlayerInfo constructor: the member blocks end at the values the original leaves after its
    // constructor and Reset(), and the eight blocks are declared in order.
    {
        CNetPlayerInfo info;
        CHECK(info.member_id_.GetValue() == 0);
        CHECK(info.matching_member_id_.GetValue() == -1);
        CHECK(info.gamepad_id_.GetValue() == -1);
        CHECK(info.state_.GetValue() == 0);
        CHECK(info.unk_150.GetValue() == 0 && info.unk_218.GetValue() == 0 && info.unk_240.GetValue() == 0);
        CHECK(info.name_.GetValue().empty());
        CHECK(info.applied_state_ == 0);
        CHECK(!info.IsActive());
        // Bit sizes of the blocks (constructor 0x80fc28): 17, 8, 17, 16, 8, 8, 8 and 8 * 32 for the name.
        CHECK(info.unk_150.GetSizeBits() == 17 && info.member_id_.GetSizeBits() == 8);
        CHECK(info.matching_member_id_.GetSizeBits() == 17 && info.gamepad_id_.GetSizeBits() == 16);
        CHECK(info.state_.GetSizeBits() == 8 && info.unk_218.GetSizeBits() == 8 && info.unk_240.GetSizeBits() == 8);
        CHECK(info.name_.GetSizeBits() == 256);
        // The NetStruct base sees all eight: 1 bit for the struct plus the member sizes.
        CHECK(info.GetSizeBits() == 1 + 17 + 8 + 17 + 16 + 8 + 8 + 8 + 256);
        // Reset() changed matching_member_id_ and gamepad_id_ (0 to -1); the others were never changed.
        CHECK(info.matching_member_id_.IsChanged() && info.gamepad_id_.IsChanged());
        CHECK(!info.member_id_.IsChanged() && !info.state_.IsChanged());
    }

    // Create and Delete: Create returns a fresh object, Delete accepts null and frees one.
    {
        CNetPlayerInfo* created = CNetPlayerInfo::Create();
        CHECK(created != nullptr);
        CHECK(created->state_.GetValue() == 0);
        CNetPlayerInfo::Delete(created);
        CNetPlayerInfo::Delete(nullptr);
    }

    if (failures == 0) {
        std::printf("e2-net-transport-pack0-e3f33b-0 test OK\n");
        return 0;
    }
    std::printf("%d failure(s)\n", failures);
    return 1;
}
