// CTcp: TCP transport over a CSocket: a listening socket accepts peers, and
// connected sockets exchange packets. Reconstructed from libDungeonHunter2.so pseudocode.
//
// Original layout (32-bit offsets):
//   +0x00 vptr (CTransport base)
//   +0x04 create_flags_ (CTransport; the flags argument of CreateByPort / CreateBySocketId)
//   +0x08 CSocket (its valid flag is the +0x10 byte, its listening flag is +0x13)
// Peer addresses use CNetworkId address0 (flag bit 1): the 16-bit port and the IPv4 address.
#pragma once

#include <cstdint>

#include "net-transport/csocket.hpp"
#include "net-transport/net_network_id.hpp"
#include "net-transport/transport.hpp"

class CTcp : public CTransport {
public:
    CTcp() = default;
    ~CTcp() override;                                // 0x82a3c8 _ZN4CTcpD2Ev, 0x82a36c _ZN4CTcpD1Ev
    CTcp(const CTcp&) = delete;
    CTcp& operator=(const CTcp&) = delete;

    int Connect(CNetworkId& peer) override;          // 0x82a228 _ZN4CTcp7ConnectER10CNetworkId
    bool IsConnected() override;                     // 0x82a040 _ZN4CTcp11IsConnectedEv
    bool IsConnectedTo(const CNetworkId& peer) override;      // 0x82a008 _ZN4CTcp13IsConnectedToER10CNetworkId
    bool CanDisconnectFrom(const CNetworkId& peer) override;  // 0x829fc4 _ZN4CTcp17CanDisconnectFromER10CNetworkId
    int GetType() override;                          // 0x829fd8 _ZN4CTcp7GetTypeEv
    CNetworkId GetPeerNetworkId() override;          // 0x82a048 _ZN4CTcp16GetPeerNetworkIdEv
    CNetworkId GetLocalNetworkId() override;         // 0x82a090 _ZN4CTcp17GetLocalNetworkIdEv
    int Send(const CNetworkId& peer, const void* data, int len) override;  // 0x82a1dc _ZN4CTcp4SendER10CNetworkIdPvi
    int Receive() override;                          // 0x82a5dc _ZN4CTcp7ReceiveEv
    int CloseSocket();                               // 0x82a284 _ZN4CTcp11CloseSocketEv
    // Opens the socket on port and listens when listen is set. Returns 0 or -1.
    int OpenSocket(std::uint16_t port, bool listen); // 0x82a2a4 _ZN4CTcp10OpenSocketEtb

    static CTcp* CreateByPort(std::uint16_t port, unsigned int flags);     // 0x82a408 _ZN4CTcp12CreateByPortEtj
    // Wraps an accepted socket handle (no listen, options TCP_NODELAY).
    static CTcp* CreateBySocketId(int handle, unsigned int flags);         // 0x82a4b8 _ZN4CTcp16CreateBySocketIdEij
    static int TerminateTransport();                 // 0x829fe0 _ZN4CTcp18TerminateTransportEv
    static int InitializeTransport();                // 0x82a464 _ZN4CTcp19InitializeTransportEv

private:
    int AcceptConnections();                         // 0x82a540 _ZN4CTcp17AcceptConnectionsEv
    int ReceivePackets();                            // 0x82a0d8 _ZN4CTcp14ReceivePacketsEv

    CSocket socket_;                                 // +0x08
    static bool s_initialized_;                      // _ZN4CTcp13s_initializedE
};
