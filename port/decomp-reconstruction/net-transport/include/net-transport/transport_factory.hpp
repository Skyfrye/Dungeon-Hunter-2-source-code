// CTransportFactory: starts and stops the concrete transports (UDP, TCP, Bluetooth).
// Reconstructed from libDungeonHunter2.so pseudocode.
#pragma once

#include "net-transport/net_network_id.hpp"

class CTransportFactory {
public:
    // 0x827204 _ZN17CTransportFactory18TerminateTransportEv
    static int TerminateTransport();
    // 0x827220 _ZN17CTransportFactory19InitializeTransportE15tTRANSPORT_TYPE (partial)
    static int InitializeTransport(tTRANSPORT_TYPE type);
    // 0x8272c4 _ZN17CTransportFactory16ConnectTransportER10CNetworkId (partial)
    static int ConnectTransport(CNetworkId& peer);
};
