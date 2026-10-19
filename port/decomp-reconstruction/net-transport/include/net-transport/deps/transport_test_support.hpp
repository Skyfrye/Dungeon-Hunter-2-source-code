// Test support for the transport manager (used by tests only; not part of the reconstruction).
//
// The binary's CTransportManager singleton is a CTransportManagerImpl, whose InitializeInternal starts a receiver
// thread that polls the transports and keeps connections alive every few microseconds. A unit test that
// initialises CConnectionManager must not run that thread against a connection table it is mutating, so a test
// installs TestTransportManager first: the same CTransportManager base (the table, the framing, Send, Receive,
// Disconnect), with the four pure slots filled in and no thread. UseRecorders() then replaces the transports that
// InitializeTransport created (real UDP and TCP sockets) with RecordingTransport objects, which keep what they are
// asked to send in SentPacketLog().
#pragma once

#include <cstdint>
#include <map>
#include <string>

#include "net-transport/deps/connection_env.hpp"  // SentPacketLog, RecordSentPacket
#include "net-transport/transport.hpp"
#include "net-transport/transport_manager.hpp"

namespace transport_test_support {

// The host names the test manager reports (GetHostname, vtable +0x1c): the name of a peer by its address0 value
// (low 16 bits, high 32 bits), and the local host name (vtable +0x20). A peer with no entry has an empty name.
// The tables outlive the manager object, which CConnectionManager::Terminate deletes.
inline std::map<std::uint64_t, std::string>& HostnamesForTest() {
    static std::map<std::uint64_t, std::string> names;
    return names;
}
inline std::string& LocalHostnameForTest() {
    static std::string name = "test-local";
    return name;
}
inline std::uint64_t HostnameKeyOf(const CNetworkId& id) {
    std::uint16_t lo = 0;
    std::uint32_t hi = 0;
    if (!id.GetAddress0(lo, hi)) {
        return 0;
    }
    return static_cast<std::uint64_t>(lo) | (static_cast<std::uint64_t>(hi) << 32);
}

// A transport that records the packets it is asked to send. The manager frames each packet (8-byte header,
// packet type byte at +6, payload from +8); the record holds the packet type and the payload.
class RecordingTransport : public CTransport {
public:
    explicit RecordingTransport(int type) : type_(type) {}

    int Send(const CNetworkId& peer, const void* data, int length) override {
        const auto* bytes = static_cast<const std::uint8_t*>(data);
        const int packet_type = length > 6 ? (bytes[6] & 0x7F) : 0;
        std::uint16_t lo = 0;
        std::uint32_t hi = 0;
        peer.GetAddress1(lo, hi);
        bool broadcast = hi == 0xFFFFFFFFu;
        peer.GetAddress0(lo, hi);
        broadcast = broadcast || hi == 0xFFFFFFFFu;
        broadcast = broadcast || peer.Field2() == 0xFFFFFFFFu || peer.Field3() == 0xFFFFFFFFu;
        RecordSentPacket(packet_type, broadcast, bytes + 8, length > 8 ? length - 8 : 0);
        return length;
    }
    int Receive() override { return 0; }
    CNetworkId GetLocalNetworkId() override { return CNetworkId(); }
    CNetworkId GetPeerNetworkId() override { return CNetworkId(); }
    int GetType() override { return type_; }
    bool IsConnected() override { return true; }
    bool IsConnectedTo(const CNetworkId&) override { return true; }
    bool CanDisconnectFrom(const CNetworkId&) override { return false; }

private:
    int type_;
};

class TestTransportManager : public CTransportManager {
public:
    int StartReceiverThread() override { return 0; }
    int StopReceiverThread() override { return 0; }
    std::string GetHostname(CNetworkId& id) override {
        const auto it = HostnamesForTest().find(HostnameKeyOf(id));
        return it == HostnamesForTest().end() ? std::string() : it->second;
    }
    std::string GetLocalhostname() override { return LocalHostnameForTest(); }

    // The number of registered transports of a type (GetType).
    int Count(int type) const {
        int count = 0;
        for (CTransport* transport : transports_) {
            if (transport != nullptr && transport->GetType() == type) {
                ++count;
            }
        }
        return count;
    }

    // Replaces every registered transport with the given one (the manager owns it from here on).
    void UseOnly(CTransport* transport) {
        mutex_.Lock();
        for (CTransport*& slot : transports_) {
            delete slot;
            slot = nullptr;
        }
        transports_[0] = transport;
        mutex_.Unlock();
    }

    // Replaces every registered transport with one RecordingTransport for each transport type 0 to 4.
    void UseRecorders() {
        mutex_.Lock();
        for (CTransport*& slot : transports_) {
            delete slot;
            slot = nullptr;
        }
        for (int type = 0; type <= 4; ++type) {
            transports_[type] = new RecordingTransport(type);
        }
        mutex_.Unlock();
    }
};

// Installs a TestTransportManager as the singleton when there is none. CTransportManager::Initialize then only
// calls InitializeInternal on it, and Terminate deletes it as it does the Impl.
inline TestTransportManager* Install() {
    if (CTransportManager::GetInstance() == nullptr) {
        CTransportManager::SetInstanceForTest(new TestTransportManager());
    }
    return dynamic_cast<TestTransportManager*>(CTransportManager::GetInstance());
}

// Install(), then CTransportManager::Initialize() and the recorders, for tests that need the manager but not
// CConnectionManager.
inline TestTransportManager* InstallInitialized() {
    TestTransportManager* manager = Install();
    CTransportManager::Initialize();
    if (manager != nullptr) {
        manager->UseRecorders();
    }
    return manager;
}

}  // namespace transport_test_support
