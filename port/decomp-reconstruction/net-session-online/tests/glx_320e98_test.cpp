#include "net-session-online/deps/matching.hpp"

#include <cstdint>
#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

void ALicenseCheck_GetUserAgent(char* buffer);

namespace {

class FakeMatching : public CMatching {
public:
    std::uint32_t MemberBit(int memberId) const override {
        if (memberId == 4) return 0x10u;
        if (memberId == 1) return 0x1u;
        return 0u;
    }
    int LocalMemberId() const override { return 0; }
    int ServerMemberId() const override { return 7; }
    bool IsInRoom() override { return false; }  // vtable +0x64
    bool IsInRoom(int /*memberIndex*/) override { return false; }  // vtable +0x68
    bool IsServer() const override { return false; }
    std::uint32_t GetRoomMask() const override { return 0; }

    std::int32_t WritePacketData(std::int32_t a, std::int32_t b, NetBitStream&) override {
        lastSlot = 0x0c;
        lastA = a;
        lastB = b;
        return 11;
    }
    std::int32_t ReadPacketData(std::int32_t a, std::int32_t b, NetBitStream&) override {
        lastSlot = 0x10;
        lastA = a;
        lastB = b;
        return 12;
    }
    std::int32_t ProcessAcknowledgedPacket(std::int32_t a, std::int32_t b) override {
        lastSlot = 0x14;
        lastA = a;
        lastB = b;
        return 14;
    }
    std::int32_t ProcessLostPacket(std::int32_t a, std::int32_t b) override {
        lastSlot = 0x18;
        lastA = a;
        lastB = b;
        return 18;
    }

    int lastSlot = 0;
    std::int32_t lastA = 0;
    std::int32_t lastB = 0;
};

}  // namespace

int main() {
    // Constant returns and the provider store.
    FakeMatching fake;
    CHECK(CMatching::Get() != nullptr);  // created on first use from the provider (binary: CMatching::Get)
    CHECK(fake.ReceiveGameBootInvitation() == 0);
    CHECK(fake.GetRoomId() == 0);
    CHECK(fake.LimitRoomSlots(5) == 0);
    CMatching::SetMatchingProvider(static_cast<CMatching::MATCHING_PROVIDERS>(3));
    CHECK(CMatching::s_matchingProvider == 3);

    // The license check is a no-op.
    char buffer[4] = {1, 2, 3, 4};
    ALicenseCheck_GetUserAgent(buffer);
    CHECK(buffer[0] == 1);

    CMatching::Set(&fake);

    // IsMemberServer compares with ServerMemberId and rejects negative ids.
    CHECK(fake.IsMemberServer(7));
    CHECK(!fake.IsMemberServer(6));
    CHECK(!fake.IsMemberServer(-7));

    // GetMemberIndex returns the lowest set bit of MemberBit, or -1 for an empty mask.
    CHECK(fake.GetMemberIndex(4) == 4);
    CHECK(fake.GetMemberIndex(1) == 0);
    CHECK(fake.GetMemberIndex(9) == -1);

    // Static forwarders reach the vtable slots with the arguments in order.
    NetBitStream stream(16);
    CHECK(CMatching::sWritePacketData(3, 5, stream) == 11);
    CHECK(fake.lastSlot == 0x0c && fake.lastA == 3 && fake.lastB == 5);
    CHECK(CMatching::sReadPacketData(6, 8, stream) == 12);
    CHECK(fake.lastSlot == 0x10 && fake.lastA == 6 && fake.lastB == 8);
    CHECK(CMatching::sProcessAcknowledgedPacket(9, 10) == 14);
    CHECK(fake.lastSlot == 0x14 && fake.lastA == 9 && fake.lastB == 10);
    CHECK(CMatching::sProcessLostPacket(11, 12) == 18);
    CHECK(fake.lastSlot == 0x18 && fake.lastA == 11 && fake.lastB == 12);

    CMatching::Set(nullptr);
    CHECK(CMatching::sProcessLostPacket(1, 2) == 0);  // no instance: default 0

    if (failures == 0) {
        std::printf("glx_320e98_test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
