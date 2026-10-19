#include "net-transport/deps/transport_test_support.hpp"
#include "net-transport/transport_factory.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // The factory registers its transports with the transport manager singleton.
    transport_test_support::Install();
    CHECK(CTransportFactory::TerminateTransport() == 0);
    CHECK(CTransportFactory::InitializeTransport(99) == 0);
    CHECK(CTransportFactory::InitializeTransport(1) == 0);
    CHECK(CTransportManager::GetInstance()->GetTransportByPeer(1, CNetworkId()) != nullptr);

    // No transport bits set: nothing is created, the result is 0.
    CNetworkId none;
    none.Reset();
    CHECK(CTransportFactory::ConnectTransport(none) == 0);

    if (failures == 0) std::printf("transport_factory_test: OK\n");
    return failures == 0 ? 0 : 1;
}
