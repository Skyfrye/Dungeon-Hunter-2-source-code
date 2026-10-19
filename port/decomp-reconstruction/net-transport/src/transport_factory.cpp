#include "net-transport/transport_factory.hpp"

#include <string>

#include "net-transport/bluetooth_transport.hpp"
#include "net-transport/ctcp.hpp"
#include "net-transport/cudp.hpp"
#include "net-transport/transport_manager.hpp"

// 0x827204 _ZN17CTransportFactory18TerminateTransportEv
// The original chains the four TerminateTransport calls through their return values; the
// static callees ignore their argument, so the chain is written as four calls.
int CTransportFactory::TerminateTransport() {
    CTcp::TerminateTransport();
    CUdp::TerminateTransport();
    CBluetoothReliable::TerminateTransport();
    CBluetoothUnreliable::TerminateTransport();
    return 0;
}

// 0x827220 _ZN17CTransportFactory19InitializeTransportE15tTRANSPORT_TYPE
// Dispatch on type - 1: 0 UDP, 1 TCP, 2 Bluetooth unreliable (type 3), 3 Bluetooth reliable
// (type 4). Other values do nothing. Every case returns 0, as in the original. The Bluetooth
// InitializeTransport bodies are partial in the port (their own rows in bluetooth_transport.cpp).
int CTransportFactory::InitializeTransport(tTRANSPORT_TYPE type) {
    switch (type - 1) {
        case 0:
            CUdp::InitializeTransport();
            break;
        case 1:
            CTcp::InitializeTransport();
            break;
        case 2:
            CBluetoothUnreliable::InitializeTransport();
            break;
        case 3:
            CBluetoothReliable::InitializeTransport();
            break;
        default:
            break;
    }
    return 0;
}

// 0x8272c4 _ZN17CTransportFactory16ConnectTransportER10CNetworkId
// The argument is the peer id; its presence flags select the transports, in this order: bit 1 TCP, bit 2
// Bluetooth unreliable (type 3), bit 3 Bluetooth reliable (type 4). Each branch creates its transport, adds
// it to the manager and connects it to the peer (vtable +0x08), ignoring the connect result. The TCP
// transport is created with CreateByPort(0, 0) (the assembly clears both argument registers). The two
// Bluetooth branches build a reset id, ask the manager for its host name (vtable +0x1c) and call
// Create("Default Bluetooth Session", hostname, 0). A failed creation returns -1; otherwise 0.
int CTransportFactory::ConnectTransport(CNetworkId& peer) {
    std::uint32_t flags = peer.Flags();
    if ((flags & 2u) != 0) {
        CTcp* tcp = CTcp::CreateByPort(0, 0);
        if (tcp == nullptr) {
            return -1;
        }
        GetTransportMgr()->AddTransport(tcp);
        tcp->Connect(peer);
        flags = peer.Flags();
    }
    if ((flags & 4u) != 0) {
        CNetworkId id;
        id.Reset();
        const std::string name = "Default Bluetooth Session";
        const std::string host = GetTransportMgr()->GetHostname(id);
        CBluetoothUnreliable* transport = CBluetoothUnreliable::Create(name, host, 0);
        if (transport == nullptr) {
            return -1;
        }
        GetTransportMgr()->AddTransport(transport);
        transport->Connect(peer);
        flags = peer.Flags();
    }
    if ((flags & 8u) != 0) {
        CNetworkId id;
        id.Reset();
        const std::string name = "Default Bluetooth Session";
        const std::string host = GetTransportMgr()->GetHostname(id);
        CBluetoothReliable* transport = CBluetoothReliable::Create(name, host, 0);
        if (transport == nullptr) {
            return -1;
        }
        GetTransportMgr()->AddTransport(transport);
        transport->Connect(peer);
    }
    return 0;
}
