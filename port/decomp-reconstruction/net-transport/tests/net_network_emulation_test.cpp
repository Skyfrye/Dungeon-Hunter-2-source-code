#include "net-transport/net_network_emulation.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CHECK(!CNetworkEmulation::IsInitialized());
    CHECK(CNetworkEmulation::Initialize() == 0);
    CHECK(CNetworkEmulation::IsInitialized());
    CHECK(CNetworkEmulation::GetInstance() != nullptr);
    CNetworkEmulation::Terminate();
    CHECK(!CNetworkEmulation::IsInitialized());

    CNetworkEmulation* emu = new CNetworkEmulation();
    CHECK(emu->Set(0).delay_ms == 90 && emu->Set(0).delay_jitter_ms == 15);   // preset 2 in set 0
    CHECK(emu->Set(1).delay_ms == 300 && emu->Set(1).loss_rate == 15.f);      // preset 3 in set 1
    CHECK(emu->Set(1).reorder_param_b == 50);
    emu->SetPacketDelay(0, 10, 0);
    CHECK(emu->Set(0).delay_ms == 10 && emu->Set(0).delay_jitter_ms == 0);
    emu->Clear();
    CHECK(emu->Set(0).delay_ms == 0 && emu->Set(1).loss_rate == 0.f);
    delete emu;
    std::printf("%s\n", failures ? "net_network_emulation: FAILED" : "net_network_emulation: ok");
    return failures != 0;
}
