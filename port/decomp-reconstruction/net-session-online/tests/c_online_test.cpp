#include "net-session-online/c_online.hpp"

#include <cstdio>

#include "net-session-online/deps/matching.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
// COnline is abstract (slot 0, GetAbsoluteTime, is pure in the original). The clock is not under test here.
class FakeOnline : public COnline {
public:
    std::int64_t GetAbsoluteTime() const override { return 0; }
};

// A matching object with fixed answers, for the online branch.
class FakeMatching : public CMatching {
public:
    std::uint32_t MemberBit(int) const override { return 0; }
    int LocalMemberId() const override { return localId; }
    int ServerMemberId() const override { return 0; }
    bool IsInRoom() override { return false; }  // vtable +0x64
    bool IsInRoom(int /*memberIndex*/) override { return false; }  // vtable +0x68
    bool IsServer() const override { return server; }
    std::uint32_t GetRoomMask() const override { return 0; }
    int localId = 6;
    bool server = false;
};
}  // namespace

int main() {
    FakeOnline online;
    online.DetectDisconnect();
    CHECK(online.IsAgeRestricted() == 0);
    CHECK(online.GetLocalMemberId() == 1);   // offline
    CHECK(online.IsServer());                // offline: server
    CHECK(online.IsTimeSynced());            // server: synced

    FakeMatching fake;
    CMatching::Set(&fake);
    online.SetIsOnlineGame(true);
    CHECK(online.GetLocalMemberId() == 6);
    CHECK(!online.IsServer());
    online.SetTimeSyncedForTest(false);     // the constructor sets the synced flag (+0x30) to 1
    CHECK(!online.IsTimeSynced());           // client, not synced yet
    online.SetTimeSyncedForTest(true);
    CHECK(online.IsTimeSynced());
    fake.server = true;
    CHECK(online.IsServer());
    CMatching::Set(nullptr);

    std::printf("%s\n", failures ? "c_online: FAILED" : "c_online: ok");
    return failures != 0;
}
