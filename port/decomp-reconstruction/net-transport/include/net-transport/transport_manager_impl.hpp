// CTransportManagerImpl: the transport manager with its receiver thread. Reconstructed from
// libDungeonHunter2.so pseudocode.
//
// Original layout: the CTransportManager base (0x108 bytes) followed by the receiver thread
// handle at +0x108 (pthread_t in the original, std::thread here). Object size 0x110.
#pragma once

#include <string>
#include <thread>

#include "net-transport/net_network_id.hpp"
#include "net-transport/transport_manager.hpp"

class CTransportManagerImpl : public CTransportManager {
public:
    CTransportManagerImpl() = default;
    ~CTransportManagerImpl() override;   // 0x8250dc (D2/D1); D0 0x8252fc is skipped

    std::string GetHostname(CNetworkId& id) override;   // 0x825110 _ZN22CTransportManagerImpl11GetHostnameER10CNetworkId (+0x1c)
    std::string GetLocalhostname() override;            // 0x825178 _ZN22CTransportManagerImpl16GetLocalhostnameEv (+0x20)
    int StopReceiverThread() override;                  // 0x82521c _ZN22CTransportManagerImpl19StopReceiverThreadEv (+0x0c)
    int Sleep(unsigned int microseconds);      // 0x825240 _ZN22CTransportManagerImpl5SleepEj
    int StartReceiverThread() override;                 // 0x825248 _ZN22CTransportManagerImpl20StartReceiverThreadEv (+0x08)
    int ReceiverThreadInternal();              // 0x8252b4 _ZN22CTransportManagerImpl21ReceiverThreadInternalEv
    int ReceiverThread(void* argument);        // 0x8252ec _ZN22CTransportManagerImpl14ReceiverThreadEPv

private:
    std::thread receiver_thread_;              // +0x108
};
