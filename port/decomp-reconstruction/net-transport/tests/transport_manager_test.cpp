#include "net-transport/deps/transport_test_support.hpp"
#include "net-transport/transport_manager.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
// Exposes the transport table of a manager instance for the test.
class ProbeManager : public transport_test_support::TestTransportManager {
public:
    CTransport* slot(int index) const { return transports_[index]; }
};
}  // namespace

int main() {
    CHECK(!CTransportManager::IsInitialized());
    CHECK(CTransportManager::GetInstance() == nullptr);
    CHECK(CTransportManager::Initialize() == 0);
    CHECK(CTransportManager::GetInstance() != nullptr);
    // Initialize calls InitializeInternal on the instance, which sets the initialized flag.
    CHECK(CTransportManager::IsInitialized());
    CTransportManager::Terminate();
    CHECK(!CTransportManager::IsInitialized());
    CHECK(CTransportManager::GetInstance() == nullptr);

    {
        ProbeManager manager;
        CTransport* first = new transport_test_support::RecordingTransport(1);
        CTransport* second = new transport_test_support::RecordingTransport(2);
        manager.AddTransport(first);
        manager.AddTransport(second);
        CHECK(manager.slot(0) == first);
        CHECK(manager.slot(1) == second);
        CHECK(manager.slot(2) == nullptr);
        manager.AddTransport(nullptr);
        CHECK(manager.slot(2) == nullptr);

        CNetworkId id;
        CHECK(manager.Send(static_cast<CTransport*>(nullptr), id, 1, "x", 1) == -1);
        CHECK(manager.Send(first, id, 1, "x", 0x1000) == -1);
        CHECK(CTransportManager::IsTransportAvailable(9));
        manager.KeepAlive(id);
        manager.Disconnect(id);
        CHECK(manager.slot(0) == first);

        // A buffer shorter than a packet header is rejected without dispatch.
        char short_buffer[4] = {0, 0, 0, 0};
        manager.ReceiverCallback(first, id, short_buffer, 4);

        // Bad magic: rejected without dispatch.
        char bad[16] = {0};
        manager.ReceiverCallback(first, id, bad, 16);

        delete first;
        delete second;
    }

    if (failures == 0) {
        std::printf("transport_manager_test: ok\n");
    }
    return failures == 0 ? 0 : 1;
}
