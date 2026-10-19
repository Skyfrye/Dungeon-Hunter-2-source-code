// Test support for the real CConnectionManager (net-transport/connection_manager.hpp). The binary
// initializes it from the matching layer (CMatching::Initialize reaches CConnectionManager::Initialize
// through CSignIn); a test binary does it here. It installs a transport manager without a receiver thread
// and recording transports (net-transport/deps/transport_test_support.hpp), so the send paths record into
// SentPacketLog() (net-transport/deps/connection_env.hpp).
#pragma once

#include <cstdint>

#include "net-session-online/deps/matching.hpp"
#include "net-transport/connection.hpp"
#include "net-transport/connection_manager.hpp"
#include "net-transport/deps/connection_env.hpp"
#include "net-transport/deps/transport_test_support.hpp"

namespace connection_manager_test {

// The matching object used when a test has not installed one: InitializeInternal reads the transport
// types through CMatching::Get().
class NullMatching : public CMatching {
public:
    // Protocol n runs on transport type 1 (UDP), where the recording transport of the test manager takes
    // a packet type that a test registers; the base value 0 would route every broadcast to nothing.
    int TransportTypeForProtocol(int) override { return 1; }
    std::uint32_t MemberBit(int memberId) const override {
        return (memberId >= 0 && memberId < 32) ? (1u << memberId) : 0u;
    }
    int LocalMemberId() const override { return 0; }
    int ServerMemberId() const override { return 0; }
    bool IsInRoom() override { return false; }  // vtable +0x64
    bool IsInRoom(int /*memberIndex*/) override { return false; }  // vtable +0x68
    bool IsServer() const override { return false; }
    std::uint32_t GetRoomMask() const override { return 0; }
};

// Initializes the connection manager once (the binary's CMatching::Initialize does this).
inline void Initialize() {
    if (CMatching::s_Matching == nullptr) {
        static NullMatching fallback;
        CMatching::Set(&fallback);
    }
    if (!CConnectionManager::IsInitialized()) {
        // The binary's transport manager is a CTransportManagerImpl with a receiver thread; a test installs the
        // thread-less one and recording transports, so that sends can be read back from SentPacketLog().
        transport_test_support::Install();
        CConnectionManager::Initialize();
        if (auto* manager = dynamic_cast<transport_test_support::TestTransportManager*>(CTransportManager::GetInstance())) {
            manager->UseRecorders();
        }

    }
}

// A connected peer for a member id: Connect, then the handshake result (state 4, kStateConnected), which
// the test sets through the CConnection test hook. IsConnected needs that state.
inline int ConnectPeer(int memberId) {
    CNetworkId peer;
    const int result = CConnectionManager::GetInstance()->Connect(memberId, peer);
    if (CConnection* conn = CConnectionManager::GetInstance()->GetConnectionByMemberId(memberId)) {
        conn->SetState(4);
    }
    return result;
}

// Whether a connection was requested for the member (Connect ran); it may not be established yet.
inline bool ConnectionRequested(int memberId) {
    return CConnectionManager::GetInstance()->GetConnectionByMemberId(memberId) != nullptr;
}

// Replaces ResetForTest: connections, packet registrations and the send log start empty.
inline void Reset() {
    CConnectionManager::Terminate();
    // The packet registrations live in the static table (s_recvCBMap), which Terminate does not clear.
    for (int type = 0; type < 10; ++type) {
        CConnectionManager::UnregisterPacketType(type);
    }
    SentPacketLog().clear();
    Initialize();
}

// Reset(), then every packet type is registered on protocol 0 (with a callback that ignores the packet), so that
// CConnectionManager::SendTo and SendBroadcast find a transport type for it (protocol 0 is transport type 1,
// where the recording transport takes the packet). For tests that read the broadcast sends back from SentPacketLog().
inline void ResetForSends() {
    Reset();
    for (int type = 0; type < 10; ++type) {
        CConnectionManager::RegisterPacketType(
            type, 0, static_cast<CConnectionManager::NetIdCallback>([](CNetworkId&, char*, int) {}));
    }
}

}  // namespace connection_manager_test
