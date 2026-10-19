// The call shims of net-transport/deps/connection_env.hpp, wired to the live objects. The first version of the connection code kept
// neutral stand-ins here (local id 0, events dropped, transport 0), so no LAN handshake could finish: the joiner sent member id 0,
// CConnectionManager::ProcessConnectionRequest accepted it as member 0, the connected event 0x600001 was never queued and every packet
// went out on transport 0. Each call now reaches the same object the original does; without that object the old answer is returned.
#include "net-transport/deps/connection_env.hpp"

#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_online.hpp"
#include "net-transport/connection_manager.hpp"

namespace matching_calls {
bool IsServer() {
    CMatching* matching = CMatching::s_Matching;
    return matching != nullptr && matching->IsServer();
}
std::int32_t LocalId() {
    CMatching* matching = CMatching::s_Matching;
    return matching != nullptr ? matching->LocalMemberId() : 0;  // vtable +0x6c
}
std::int32_t MatchingKey() {
    CMatching* matching = CMatching::s_Matching;
    return matching != nullptr ? matching->ServerMemberId() : 0;  // vtable +0x74
}
}  // namespace matching_calls

namespace online_calls {
std::int32_t PingReference() {
    if (CConnectionManager::GetInstance() == nullptr) {
        return 0;
    }
    return static_cast<std::int32_t>(GetOnline()->StartTimeForTest());  // GetOnline() +0x20
}
void ReportDisconnect(int reason, int detail) {
    if (CConnectionManager::GetInstance() == nullptr) {
        return;
    }
    GetOnline()->ReportDisconnect(static_cast<COnline::tDisconnectCause>(reason), detail);
}
}  // namespace online_calls

namespace connection_manager_calls {
int AddEvent(int event, const void* data, int size) {
    CConnectionManager* manager = CConnectionManager::GetInstance();
    if (manager == nullptr) {
        return 0;
    }
    return manager->event_queue_.AddEvent(event, const_cast<void*>(data), size);
}
int PacketTransportType(int packet_type) {
    CConnectionManager* manager = CConnectionManager::GetInstance();
    if (manager == nullptr) {
        return 0;
    }
    return static_cast<int>(manager->GetPacketTransportType(static_cast<tPACKET_TYPE>(packet_type)));
}
}  // namespace connection_manager_calls

#ifdef DH2_HOST_RUNNER
#include <cstdarg>
#include <cstdio>

#include "net-transport/socket_platform.hpp"

void Dh2NetTrace(const char* format, ...) {
    std::FILE* file = net_platform::TraceFile();
    if (file == nullptr) {
        return;
    }
    va_list args;
    va_start(args, format);
    std::vfprintf(file, format, args);
    va_end(args);
    std::fflush(file);
}
#endif
