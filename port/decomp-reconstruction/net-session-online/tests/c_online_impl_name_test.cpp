#include "net-session-online/c_online_impl.hpp"

#include <cstdio>
#include <string>

#include "net-transport/deps/transport_test_support.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    COnlineImpl online;
    // The transport manager is not initialized: the fallback name.
    CHECK(online.GetPlayerName() == std::string("PLAYER"));

    // Initialized: the local host name of the transport manager (vtable +0x20).
    transport_test_support::InstallInitialized();
    CHECK(online.GetPlayerName() == std::string("test-local"));
    CTransportManager::Terminate();
    CHECK(online.GetPlayerName() == std::string("PLAYER"));
    return failures == 0 ? 0 : 1;
}
