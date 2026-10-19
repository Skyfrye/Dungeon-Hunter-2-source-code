// Checks for the lobby observer's message dispatch (0x823fd8) and the member-count guard of the
// join handlers (0x8235f8, 0x822db4). Batch r1n-net-session-online-CMatchingGLLiveLobbyObserver-9d847a-1.

#include "connection_manager_for_tests.hpp"  // real CConnectionManager (GameserverAddr connects through the singleton)

#include <cstdint>
#include <cstdio>
#include <limits>

#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/c_matching_gl_live_observers.hpp"
#include "net-transport/data_packet.hpp"
#include "net-transport/default_data_packet.hpp"

// The two GLLive statics that the observer's bodies touch. Their definitions live in
// src/c_matching_gl_live_glx04.cpp, which pulls in the whole GLLive class, so this test defines them.
bool CMatchingGLLive::s_IsGameStarting = false;
CEventQueueBase CMatchingGLLive::s_eventQueueGLLiveInternal;

// Stand-in for the sign-in handler (c_matching_gl_live_lobby_push.cpp), which pulls in the whole sign-in
// singleton. Case 63 is not exercised here; the dispatch checks only need the symbol to link.
std::int32_t CMatchingGLLiveLobbyObserver::OnMPProcessPushSameAccountLogin(DataPacket* /*packet*/) {
    return 0;
}

namespace {

int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// A packet that counts the two accessors PrintDatapacket calls (vptr +0x64 and +0x60). The blob
// accessors are overridden here so the test does not need net-transport's definitions.
class CountingPacket : public DefaultDataPacket {
public:
    int getMessageLen() override {
        ++lenCalls;
        return length;
    }
    char* getMessageBody() override {
        ++bodyCalls;
        return nullptr;
    }

    int length = 42;
    int lenCalls = 0;
    int bodyCalls = 0;
};

}  // namespace

int main() {
    connection_manager_test::Initialize();
    CMatchingGLLiveLobbyObserver observer;

    // A type with no case returns the PrintDatapacket result: the packet length, after one body read.
    CountingPacket packet;
    CHECK(observer.OnMPProcessPushMessages(&packet, 17 + 100) == 42);
    CHECK(packet.bodyCalls == 1);
    CHECK(packet.lenCalls == 1);

    // Types below 17 wrap to large unsigned values, so they fall to the default as well.
    CountingPacket low;
    CHECK(observer.OnMPProcessPushMessages(&low, 0) == 42);
    CHECK(low.bodyCalls == 1 && low.lenCalls == 1);
    CountingPacket lowest;
    CHECK(observer.OnMPProcessPushMessages(&lowest, std::numeric_limits<std::int32_t>::min()) == 42);
    CHECK(lowest.bodyCalls == 1 && lowest.lenCalls == 1);

    // Cases whose handlers return 0 (an empty packet).
    CountingPacket p24;
    CHECK(observer.OnMPProcessPushMessages(&p24, 17 + 24) == 0);   // OnMPProcessPushSetUserStatus
    CHECK(p24.bodyCalls == 1 && p24.lenCalls == 1);                 // the dump runs before the case
    CountingPacket p34;
    CHECK(observer.OnMPProcessPushMessages(&p34, 17 + 34) == 0);   // OnMPProcessPushGameserverParams
    CountingPacket p59;
    CHECK(observer.OnMPProcessPushMessages(&p59, 17 + 59) == 0);   // OnMPProcessPushAutomatchUser
    CountingPacket p18;
    CHECK(observer.OnMPProcessPushMessages(&p18, 17 + 18) == 0);   // OnMPProcessPushSetGameParameter

    // Case 33 (OnMPProcessPushGameserverAddr) reads the dedicated server record (empty here), sets the game-starting flag and
    // connects member 1 through the connection manager.
    CMatchingGLLive::s_IsGameStarting = false;
    CountingPacket p33;
    CHECK(observer.OnMPProcessPushMessages(&p33, 17 + 33) == 0);
    CHECK(CMatchingGLLive::s_IsGameStarting);

    // The join guard: with 16 entries in the member list, both join handlers return -1 before any read.
    // Case 0 is OnMPProcessPushJoinLobbyUnlaunched and case 1 is OnMPProcessPushJoinLobbyLaunched.
    for (int i = 0; i < 16; ++i) {
        observer.PushMemberForTest(tMemberInfo(i));
    }
    CountingPacket guard0;
    CHECK(observer.OnMPProcessPushMessages(&guard0, 17) == -1);
    CHECK(guard0.bodyCalls == 1 && guard0.lenCalls == 1);
    CountingPacket guard1;
    CHECK(observer.OnMPProcessPushMessages(&guard1, 18) == -1);
    CHECK(observer.OnMPProcessPushJoinLobbyUnlaunched(&guard0) == -1);
    CHECK(observer.MemberCountForTest() == 16);

    std::printf("%s\n", failures ? "r1n-net-session-online-CMatchingGLLiveLobbyObserver-9d847a-1: FAILED"
                                 : "r1n-net-session-online-CMatchingGLLiveLobbyObserver-9d847a-1: ok");
    return failures != 0;
}
