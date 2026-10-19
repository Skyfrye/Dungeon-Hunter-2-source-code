#include "net-transport/transport.hpp"

// 0x8274ec _ZN10CTransport7ConnectER10CNetworkId
// The base transport accepts every connect request without doing anything.
int CTransport::Connect(CNetworkId& peer) {
    (void)peer;
    return 0;
}

// 0x8274f4 _ZN10CTransport10DisconnectEv
int CTransport::Disconnect() {
    return 0;
}

// 0x8274fc _ZN10CTransport14StartBroadcastEv
void CTransport::StartBroadcast() {}

// 0x827500 _ZN10CTransport13StopBroadcastEv
void CTransport::StopBroadcast() {}
