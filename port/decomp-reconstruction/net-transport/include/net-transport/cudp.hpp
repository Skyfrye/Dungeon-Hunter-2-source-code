// CUdp: UDP transport over a CSocket. Reconstructed from libDungeonHunter2.so pseudocode.
//
// Original layout (32-bit offsets):
//   +0x00 vptr (CTransport base)
//   +0x04 create_flags_ (CTransport; the flags argument of CreateByPort)
//   +0x08 CSocket (its valid flag is the +0x10 byte that CUdp tests)
// Peer addresses use CNetworkId address1 (flag bit 0): the 16-bit port and the IPv4 address.
#pragma once

#include <cstdint>

#include "net-transport/csocket.hpp"
#include "net-transport/net_network_id.hpp"
#include "net-transport/transport.hpp"

class CUdp : public CTransport {
public:
    CUdp() = default;
    ~CUdp() override;                                // 0x827804 _ZN4CUdpD1Ev, 0x827860 _ZN4CUdpD2Ev
    CUdp(const CUdp&) = delete;
    CUdp& operator=(const CUdp&) = delete;

    bool IsConnected() override;                     // 0x827504 _ZN4CUdp11IsConnectedEv
    bool CanDisconnectFrom(const CNetworkId& peer) override;  // 0x82750c _ZN4CUdp17CanDisconnectFromER10CNetworkId
    int GetType() override;                          // 0x827514 _ZN4CUdp7GetTypeEv
    bool IsConnectedTo(const CNetworkId& peer) override;  // 0x827544 _ZN4CUdp13IsConnectedToER10CNetworkId
    CNetworkId GetPeerNetworkId() override;          // 0x827554 _ZN4CUdp16GetPeerNetworkIdEv
    CNetworkId GetLocalNetworkId() override;         // 0x827568 _ZN4CUdp17GetLocalNetworkIdEv
    int Send(const CNetworkId& peer, const void* data, int len) override;  // 0x82770c _ZN4CUdp4SendER10CNetworkIdPvi
    int CloseSocket();                               // 0x827764 _ZN4CUdp11CloseSocketEv
    // Reads datagrams until none is left and passes each one to the transport manager. Returns the last count.
    int Receive() override;                          // 0x8275b0 _ZN4CUdp7ReceiveEv
    // Opens the socket on port; broadcast selects SO_BROADCAST as well as SO_REUSEADDR.
    int OpenSocket(std::uint16_t port, bool broadcast);  // 0x827780 _ZN4CUdp10OpenSocketEtb

    // Creates a UDP transport on port. Bit 1 of flags selects broadcast. Ownership passes to the caller.
    static CUdp* CreateByPort(std::uint16_t port, unsigned int flags);  // 0x8278a0 _ZN4CUdp12CreateByPortEtj
    static int TerminateTransport();                 // 0x82751c _ZN4CUdp18TerminateTransportEv
    static int InitializeTransport();                // 0x8278fc _ZN4CUdp19InitializeTransportEv

private:
    CSocket socket_;                                 // +0x08
    static bool s_initialized_;                      // _ZN4CUdp13s_initializedE
};
