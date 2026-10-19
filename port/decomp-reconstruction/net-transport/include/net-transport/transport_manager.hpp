// CTransportManager: the registry of up to 60 transports, a recursive mutex, the receive
// pass and the process-wide instance. Reconstructed from libDungeonHunter2.so pseudocode.
//
// The class is abstract (vtable _ZTV17CTransportManager, 44 bytes): slots +0x08 StartReceiverThread, +0x0c
// StopReceiverThread, +0x1c GetHostname and +0x20 GetLocalhostname are null in it. The singleton is always a
// CTransportManagerImpl (transport_manager_impl.hpp): CTransportManager::Initialize news a 0x110-byte object with
// the Impl vtable (0x81b800). GetTransportMgr() returns that singleton as a CTransportManager*, and the
// manager's own code and its callers reach the Impl through the base's virtual slots.
//
// Original layout (32-bit offsets, kept as comments):
//   +0x00 vtable
//   +0x04 initialized_       bool, set by InitializeInternal, cleared by TerminateInternal
//   +0x08 mutex_             CNetMutex (recursive)
//   +0x0c transports_[60]    CTransport*, 240 bytes; the array is cleared by InitializeInternal
//   +0xfc terminating_       bool, set by TerminateInternal; Receive does nothing when set
//   +0x100 thread_timestamp_ int64, set by SetThreadTimestamp
// CTransportManagerImpl adds its receiver thread at +0x108 (transport_manager_impl.hpp).
#pragma once

#include <cstddef>
#include <cstdint>
#include <string>

#include "net-transport/net_network_id.hpp"
#include "net-transport/sync.hpp"
#include "net-transport/transport.hpp"

// tPACKET_TYPE is declared in connection_manager.hpp; the same alias is repeated here.
using tPACKET_TYPE = int;

class CTransportManager {
public:
    static constexpr int kTransportSlots = 60;  // 0x3c entries at +0x0c
    // Magic word that starts every packet (0xB000BEE5, read as int in the original).
    static constexpr std::uint32_t kPacketMagic = 0xB000BEE5u;

    CTransportManager();                  // 0x81b758 / 0x81b7ac (C1/C2)
    virtual ~CTransportManager();         // 0x81b6d4 / 0x81b724 (D2/D1); D0 0x81b708 is skipped

    // Process-wide instance (s_transportManager).
    static CTransportManager* GetInstance();  // 0x81a9e0 _ZN17CTransportManager11GetInstanceEv
    static bool IsInitialized();              // 0x81aa04 _ZN17CTransportManager13IsInitializedEv
    static int Initialize();                  // 0x81b800 _ZN17CTransportManager10InitializeEv
    static void Terminate();                  // 0x81aa2c _ZN17CTransportManager9TerminateEv

    virtual void AbortNetwork();                          // 0x81a9dc _ZN17CTransportManager12AbortNetworkEv (vtable +0x10)

    // Receiver-thread slots and the host name queries. Pure in the base; CTransportManagerImpl implements them.
    virtual int StartReceiverThread() = 0;                // vtable +0x08
    virtual int StopReceiverThread() = 0;                 // vtable +0x0c
    virtual std::string GetHostname(CNetworkId& id) = 0;  // vtable +0x1c: the remote member's host name
    virtual std::string GetLocalhostname() = 0;           // vtable +0x20: this device's host name
    void Update();                                        // 0x81aca4 _ZN17CTransportManager6UpdateEv (thunk to SetThreadTimestamp)
    void EnableBroadcast(const CNetworkId& id);           // 0x81aa8c _ZN17CTransportManager15EnableBroadcastE10CNetworkId
    void DisableBroadcast(const CNetworkId& id);          // 0x81ab0c _ZN17CTransportManager16DisableBroadcastE10CNetworkId
    CTransport* GetTransportByPeer(tTRANSPORT_TYPE type, const CNetworkId& peer) const;  // 0x81ab8c
    bool IsConnectedTo(const CNetworkId& peer) const;     // 0x81ac0c _ZN17CTransportManager13IsConnectedToER10CNetworkId
    bool IsMainThreadBlocked() const;                     // 0x81ac78 _ZN17CTransportManager18IsMainThreadBlockedEv
    std::int64_t SetThreadTimestamp();                    // 0x81ac80 _ZN17CTransportManager18SetThreadTimestampEv
    CNetworkId GetListenNetworkId(tTRANSPORT_TYPE type) const;  // 0x81ad30
    static bool IsTransportAvailable(tTRANSPORT_TYPE type);     // 0x81ae94
    CNetworkId PrepareConnectionNetworkId(const CNetworkId& peer) const;  // 0x81af88

    // Sends one packet through one transport (transport, peer, packet type, payload, size).
    int Send(CTransport* transport, const CNetworkId& to, tPACKET_TYPE type,
             const void* data, std::size_t size);         // 0x81b010
    // Splits received bytes into packets and dispatches them. Static: the first argument is the
    // transport the bytes came from (CUdp::Receive passes its own object), not the manager.
    static void ReceiverCallback(CTransport* transport, CNetworkId& from, char* data, int size);  // 0x81b11c
    int Send(tTRANSPORT_TYPE type, const CNetworkId& to, tPACKET_TYPE packet_type,
             const void* data, std::size_t size);         // 0x81b290
    int Send(tTRANSPORT_TYPE type, tPACKET_TYPE packet_type,
             const void* data, std::size_t size);         // 0x81b2fc

    void Receive();                                       // 0x81b3c8 _ZN17CTransportManager7ReceiveEv
    int Disconnect(const CNetworkId& peer);               // 0x81b440 (returns 0)
    void AddTransport(CTransport* transport);             // 0x81b4c4
    static void AcceptCallback(tTRANSPORT_TYPE type, CTransport* transport);  // 0x81b52c
    virtual int InitializeInternal();                     // 0x81b544 (vtable +0x00)
    void ReceiverThreadExecute();                         // 0x81b5b4
    int Connect(const CNetworkId& peer);                  // 0x81b604
    int InitializeTransport(tTRANSPORT_TYPE type);        // 0x81b644
    virtual void TerminateInternal();                     // 0x81b64c (vtable +0x04)
    void SendToAllTransport(tPACKET_TYPE type, const CNetworkId& to,
                            const void* data, std::size_t size);  // 0x81baec
    void KeepAlive(const CNetworkId& peer);               // 0x81bb88

    std::int64_t thread_timestamp() const { return thread_timestamp_; }

    // Test seam, not in the original: installs a manager as the singleton (a test manager without a
    // receiver thread), or clears it with nullptr. The caller keeps ownership.
    static void SetInstanceForTest(CTransportManager* manager) { s_transportManager = manager; }

protected:
    bool initialized_ = false;                   // +0x04
    CNetMutex mutex_;                            // +0x08
    CTransport* transports_[kTransportSlots] = {};  // +0x0c
    bool terminating_ = false;                   // +0xfc
    std::int64_t thread_timestamp_ = 0;          // +0x100

private:
    static CTransportManager* s_transportManager;  // _ZN17CTransportManager18s_transportManagerE
};

// 0x81aa00 _Z15GetTransportMgrv: the thunk to CTransportManager::GetInstance, returning the singleton (a
// CTransportManagerImpl) as the base pointer, as the binary's does. game-app defines the out-of-line
// GetTransportMgr (dh2/global/net_singletons.hpp); this inline form is what the net code calls, and
// game-app's translation unit renames it while it includes this header.
inline CTransportManager* GetTransportMgr() {
    return CTransportManager::GetInstance();
}
