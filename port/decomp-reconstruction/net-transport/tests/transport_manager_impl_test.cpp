#include "net-transport/transport_manager_impl.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
// Lets the test ask the receiver loop to end.
class ProbeImpl : public CTransportManagerImpl {
public:
    void RequestTermination() { terminating_ = true; }
};
}  // namespace

int main() {
    CTransportManagerImpl impl;
    CHECK(impl.StopReceiverThread() == -1);
    CHECK(impl.Sleep(1) == 0);
    CHECK(impl.GetLocalhostname().size() < 1024);

    ProbeImpl probe;
    CHECK(probe.StartReceiverThread() == 0);
    CHECK(probe.StartReceiverThread() == 0);  // the first thread is detached, a second one starts
    probe.RequestTermination();
    CHECK(probe.StopReceiverThread() == 0);
    CHECK(probe.StopReceiverThread() == -1);  // not joinable any more

    if (failures == 0) {
        std::printf("transport_manager_impl_test: ok\n");
    }
    return failures == 0 ? 0 : 1;
}
