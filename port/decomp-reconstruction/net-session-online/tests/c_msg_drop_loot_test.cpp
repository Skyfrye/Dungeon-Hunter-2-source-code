#include "net-session-online/c_msg_drop_loot.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

#include "net-session-online/deps/matching.hpp"

// Matching stand-in: the message constructors read the local member id from it.
class FakeMatching : public CMatching {
public:
    std::uint32_t MemberBit(int memberId) const override { return 1u << memberId; }
    int LocalMemberId() const override { return 2; }
    int ServerMemberId() const override { return 1; }
    bool IsInRoom() override { return false; }  // vtable +0x64
    bool IsInRoom(int /*memberIndex*/) override { return false; }  // vtable +0x68
    bool IsServer() const override { return false; }
    std::uint32_t GetRoomMask() const override { return 0x7; }
};

int main() {
    FakeMatching matching;
    CMatching::Set(&matching);
    // A wire message: a 24-byte header whose last word is the block length (3), then 3 bytes.
    unsigned char header[0x18];
    for (int i = 0; i < 0x18; ++i) header[i] = static_cast<unsigned char>(i + 1);
    const std::int32_t length = 3;
    std::memcpy(header + 0x14, &length, sizeof length);
    const char block[3] = {'a', 'b', 'c'};

    NetBitStream in(64);
    in.WriteByteArray(header, 0x18);
    in.WriteByteArray(block, 3);

    CMsgDropLoot m(true);
    CHECK(m.GetDataSize() == 24);  // empty block before the read
    // ReadData returns the size from before the read, as the original does.
    CHECK(m.ReadData(in) == 24);
    CHECK(m.BlockLengthForTest() == 3);
    CHECK(m.GetDataSize() == 27);

    NetBitStream out(64);
    CHECK(m.WriteData(out) == 27);
    unsigned char got[27];
    out.ReadByteArray(got, 27);
    CHECK(std::memcmp(got, header, 0x18) == 0);
    CHECK(std::memcmp(got + 0x18, block, 3) == 0);

    // Payload pointer is the header start.
    CHECK(m.GetDataPtr() != nullptr);

    // ResetData clears the length and the block.
    m.ResetData();
    CHECK(m.BlockLengthForTest() == 0);
    CHECK(m.GetDataSize() == 24);

    // SetProperties sets the send mode to 1 and clears the local-member flag.
    m.SetProperties();
    CHECK(m.SendModeForTest() == 1);
    CHECK(!m.IncludeLocalForTest());

    if (failures == 0) std::printf("all checks passed\n");
    return failures == 0 ? 0 : 1;
}
