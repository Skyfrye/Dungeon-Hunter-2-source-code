#include "net-session-online/c_msg_quests_sync.hpp"

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
    // Wire message: an 8-byte header (length 2, then a word), then the two block bytes.
    unsigned char header[8] = {2, 0, 0, 0, 7, 0, 0, 0};
    const char block[2] = {'x', 'y'};

    NetBitStream in(32);
    in.WriteByteArray(header, 8);
    in.WriteByteArray(block, 2);

    CMsgQuestsSync m(false);
    CHECK(m.GetDataSize() == 8);
    CHECK(m.ReadData(in) == 8);  // size from before the read
    CHECK(m.BlockLengthForTest() == 2);
    CHECK(m.GetDataSize() == 10);

    NetBitStream out(32);
    CHECK(m.WriteData(out) == 10);
    unsigned char got[10];
    out.ReadByteArray(got, 10);
    CHECK(std::memcmp(got, header, 8) == 0);
    CHECK(std::memcmp(got + 8, block, 2) == 0);

    // A fresh message has no block, so WriteData writes nothing and returns 0.
    CMsgQuestsSync empty(true);
    NetBitStream none(8);
    CHECK(empty.WriteData(none) == 0);

    m.ResetData();
    CHECK(m.BlockLengthForTest() == 0);
    CHECK(m.GetDataSize() == 8);

    if (failures == 0) std::printf("all checks passed\n");
    return failures == 0 ? 0 : 1;
}
