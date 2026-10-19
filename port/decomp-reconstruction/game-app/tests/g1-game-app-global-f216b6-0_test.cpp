// Test for batch g1-game-app-global-f216b6-0. Covers the allocator forwarders, the hinted operator new
// overloads, the empty marker and path helpers, and the CMessage factories. Exit status 0 means every
// check passed.
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "core-platform/memory.hpp"
#include "dh2/global/message_factory.hpp"
#include "dh2/global/runtime_support.hpp"
#include "net-session-online/c_msg_drop_loot.hpp"
#include "net-session-online/c_msg_fixed.hpp"
#include "net-session-online/c_msg_quests_sync.hpp"
#include "net-session-online/deps/matching.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// The message base constructor reads the local member id through CMatching, so the factories need a
// provider. This one reports member 1 as local and the room server as member 0.
class FakeMatching : public CMatching {
public:
    std::uint32_t MemberBit(int memberId) const override { return 1u << (memberId & 31); }
    int LocalMemberId() const override { return 1; }
    int ServerMemberId() const override { return 0; }
    bool IsInRoom() override { return false; }  // vtable +0x64
    bool IsInRoom(int /*memberIndex*/) override { return false; }  // vtable +0x68
    bool IsServer() const override { return false; }
    std::uint32_t GetRoomMask() const override { return 0x3u; }
};

void TestLuaAlloc() {
    void* p = LuaAlloc(32);
    Check(p != nullptr, "LuaAlloc returns memory");
    if (p != nullptr) {
        std::memset(p, 0xAB, 32);
        Check(static_cast<unsigned char*>(p)[31] == 0xAB, "LuaAlloc block is writable");
    }
    LuaFree(p);
}

void TestHintedOperatorNew() {
    void* a = ::operator new(16, MHS_UNRECOVERED);
    Check(a != nullptr, "operator new(size, hint) returns memory");
    CustomFree(a);
    void* b = ::operator new[](24, MHS_UNRECOVERED);
    Check(b != nullptr, "operator new[](size, hint) returns memory");
    CustomFree(b);
}

void TestEmptyHelpers() {
    char buf[16];
    std::memset(buf, '#', sizeof buf);
    PushProfilingContext("frame");
    PopProfilingContext("frame");
    GetConfigFilePath(buf, "config.dat");
    GetSaveFilePath(buf, "save.dat");
    Check(buf[0] == '#' && buf[15] == '#', "config and save path helpers leave the buffer unchanged");
}

void TestFactories() {
    FakeMatching matching;
    CMatching::Set(&matching);

    CMessage* isHost = GetNewInstance<CMsgIsHost>(false);
    Check(isHost != nullptr && dynamic_cast<CMsgIsHost*>(isHost) != nullptr, "IsHost factory builds a CMsgIsHost");
    if (isHost != nullptr) {
        Check(isHost->GetDataSize() == 4, "IsHost payload is 4 bytes");
    }
    delete isHost;

    CMessage* death = GetNewInstance<CMsgGlobalDeath>(false);
    Check(death != nullptr && death->IsReliable(), "GlobalDeath is reliable");
    delete death;

    CMessage* ctrl = GetNewInstance<CMsgControllerAction>(false);
    Check(ctrl != nullptr && ctrl->GetDataSize() == 20, "ControllerAction payload is 20 bytes");
    delete ctrl;

    CMessage* start = GetNewInstance<CMsgStartGame>(false);
    Check(start != nullptr && start->GetDataSize() == 28, "StartGame payload is 28 bytes");
    delete start;

    CMessage* init = GetNewInstance<CMsgInitialSetup>(false);
    Check(init != nullptr && init->GetDataSize() == 12, "InitialSetup payload is 12 bytes");
    delete init;

    CMessage* drop = GetNewInstance<CMsgDropLoot>(true);
    Check(drop != nullptr && dynamic_cast<CMsgDropLoot*>(drop) != nullptr, "DropLoot factory builds a CMsgDropLoot");
    delete drop;

    CMessage* quests = GetNewInstance<CMsgQuestsSync>(false);
    Check(quests != nullptr && dynamic_cast<CMsgQuestsSync*>(quests) != nullptr,
          "QuestsSync factory builds a CMsgQuestsSync");
    delete quests;

    CMatching::Set(nullptr);
}

}  // namespace

int main() {
    TestLuaAlloc();
    TestHintedOperatorNew();
    TestEmptyHelpers();
    TestFactories();
    if (g_failures == 0) {
        std::printf("g1-game-app-global-f216b6-0 test: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
