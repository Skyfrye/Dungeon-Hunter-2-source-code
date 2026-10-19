// Test for batch g1-game-app-global-f216b6-21. Covers GetTimeDT (arithmetic), the seven network thunks that forward to
// their owners' GetInstance, and GetDedicatedServer (lazy creation of a zeroed 0x30-byte record through
// operator new with MemoryHintState 2). The owners' GetInstance functions and operator new are defined in other
// categories, so this test provides stand-ins for them at link time. Exit status 0 means every check passed.
#include <cmath>
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <limits>

#include "dh2/global/GetTimeDT.hpp"
#include "dh2/global/net_singletons.hpp"
#include "dh2/global/runtime_support.hpp"

#include "net-session-online/c_online.hpp"
#include "net-transport/connection_manager.hpp"
#include "net-transport/net_log.hpp"
#include "net-transport/net_network_emulation.hpp"
#include "net-transport/packet_manager.hpp"
// Same stand-in renames as g1-game-app-global-f216b6-21.cpp (see the note there).
#define GetOnline GetOnline_standin_net_player_manager
#include "net-transport/tb/c_net_player_manager.hpp"
#undef GetOnline
#define GetTransportMgr GetTransportMgr_standin_transport_manager
#include "net-transport/transport_manager.hpp"
#undef GetTransportMgr

namespace {

int g_failures = 0;
unsigned char g_markers[8];  // each stand-in GetInstance returns the address of its own marker byte
int g_newCalls = 0;
int g_lastHint = -1;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

void TestTimeDT() {
    Check(GetTimeDT(1.0, 3.5) == 2.5, "GetTimeDT(1.0, 3.5) is 2.5");
    Check(GetTimeDT(3.5, 1.0) == 0.0, "GetTimeDT clamps a negative step to 0");
    Check(GetTimeDT(2.0, 2.0) == 0.0, "GetTimeDT of an equal pair is 0");
    Check(GetTimeDT(-4.0, -1.5) == 2.5, "GetTimeDT works for negative inputs");
    const double nan = std::numeric_limits<double>::quiet_NaN();
    Check(std::isnan(GetTimeDT(0.0, nan)), "GetTimeDT passes a NaN step through, as the compare does");
}

void TestThunks() {
    Check(GetConnectionMgr() == reinterpret_cast<CConnectionManager*>(&g_markers[0]), "GetConnectionMgr forwards");
    Check(GetOnline() == reinterpret_cast<COnline*>(&g_markers[1]), "GetOnline forwards");
    Check(GetNetLog() == reinterpret_cast<CNetLog*>(&g_markers[2]), "GetNetLog forwards");
    Check(GetNetPlayerMgr() == reinterpret_cast<CNetPlayerManager*>(&g_markers[3]), "GetNetPlayerMgr forwards");
    Check(GetPacketManager() == reinterpret_cast<CPacketManager*>(&g_markers[4]), "GetPacketManager forwards");
    Check(GetTransportMgr() == reinterpret_cast<CTransportManager*>(&g_markers[5]), "GetTransportMgr forwards");
    Check(GetNetEmul() == reinterpret_cast<CNetworkEmulation*>(&g_markers[6]), "GetNetEmul forwards");
}

void TestDedicatedServer() {
    Check(s_DedicatedServerInfo == nullptr, "the dedicated-server record starts null");
    Check(g_newCalls == 0, "no allocation before the first call");

    _tDedicatedServerInfo* first = GetDedicatedServer();
    Check(first != nullptr, "GetDedicatedServer creates the record");
    Check(g_newCalls == 1, "the first call allocates once");
    Check(g_lastHint == 2, "the record is allocated with MemoryHintState 2");
    Check(s_DedicatedServerInfo == first, "the record is cached in s_DedicatedServerInfo");

    if (first != nullptr) {
        const unsigned char* bytes = reinterpret_cast<const unsigned char*>(first);
        bool zeroed = true;
        for (std::size_t i = 0; i < 0x30; ++i) {
            if (bytes[i] != 0) {
                zeroed = false;
            }
        }
        Check(zeroed, "the 0x30-byte record is zeroed");
    }

    _tDedicatedServerInfo* second = GetDedicatedServer();
    Check(second == first, "a second call returns the same record");
    Check(g_newCalls == 1, "a second call does not allocate again");
}

}  // namespace

// Stand-ins for the owners' static accessors. Each returns the address of one marker byte, so the thunks are checked
// by identity.
CConnectionManager* CConnectionManager::GetInstance() { return reinterpret_cast<CConnectionManager*>(&g_markers[0]); }
COnline* COnline::GetInstance() { return reinterpret_cast<COnline*>(&g_markers[1]); }
CNetLog* CNetLog::GetInstance() { return reinterpret_cast<CNetLog*>(&g_markers[2]); }
CNetPlayerManager* CNetPlayerManager::GetInstance() { return reinterpret_cast<CNetPlayerManager*>(&g_markers[3]); }
CPacketManager* CPacketManager::GetInstance() { return reinterpret_cast<CPacketManager*>(&g_markers[4]); }
CTransportManager* CTransportManager::GetInstance() { return reinterpret_cast<CTransportManager*>(&g_markers[5]); }
CNetworkEmulation* CNetworkEmulation::GetInstance() { return reinterpret_cast<CNetworkEmulation*>(&g_markers[6]); }

// Stand-in for the tagged allocator (defined in core-platform and game-app runtime support in the real build). It
// records the hint it was called with.
void* operator new(std::size_t size, MemoryHintState hint) {
    ++g_newCalls;
    g_lastHint = static_cast<int>(hint);
    return std::malloc(size);
}

int main() {
    TestTimeDT();
    TestThunks();
    TestDedicatedServer();
    if (g_failures == 0) {
        std::printf("g1-game-app-global-f216b6-21: all checks passed\n");
        return 0;
    }
    return 1;
}
