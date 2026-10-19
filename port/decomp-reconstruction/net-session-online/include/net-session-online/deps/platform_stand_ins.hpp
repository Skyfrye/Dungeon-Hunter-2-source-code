// Stand-ins for engine services used by the session layer. Each one names the
// original symbol it replaces.
#pragma once

#include <cstddef>
#include <cstdint>
#include <cstdlib>
#include <map>
#include <string>

#include "core-platform/memory.hpp"            // _Z10CustomFreePv (CustomFree, out of line in core-platform/src/memory.cpp)
#include "dh2/global/runtime_support.hpp"      // _Znaj15MemoryHintState: operator new[](size, MemoryHintState)
#include "dh2/global/net_singletons.hpp"       // GetOnline
#include "net-session-online/c_online.hpp"           // COnline::GetAbsoluteTime
#include "net-transport/net_network_id.hpp"

// The online clock in milliseconds: the first virtual of GetOnline() (COnline vtable slot 0, GetAbsoluteTime), low 32
// bits. The tests drive the clock by calling OnlineClockStorage(), which switches the clock to that test value; the
// production code never calls it and so reads the real COnline clock.
inline std::int32_t*& OnlineClockOverride() {
    static std::int32_t* override = nullptr;
    return override;
}
inline std::int32_t& OnlineClockStorage() {
    static std::int32_t clockMs = 0;
    OnlineClockOverride() = &clockMs;
    return clockMs;
}
inline std::int32_t OnlineNowMs() {
    if (const std::int32_t* test = OnlineClockOverride()) {
        return *test;
    }
    return static_cast<std::int32_t>(GetOnline()->GetAbsoluteTime());
}

// The transport manager calls that used to be stand-ins here (the listen id and the host names) are the real
// CTransportManager::GetListenNetworkId, GetHostname and GetLocalhostname (net-transport/transport_manager.hpp).
