// CBluetoothReliable and CBluetoothUnreliable: Bluetooth transports. There is no
// Bluetooth stack on Windows, and the original Android build's leaf bodies return fixed
// values, so the port keeps those. The leaf functions are declared here. CBluetoothReliable's
// Connect, Open, Listen, Create, AcceptConnections and the constructors are in the .cpp; its
// GetPeerNetworkId, GetLocalNetworkId and InitializeTransport are partial (see there).
//
// Original layout shared by both (32-bit offsets):
//   +0x00 vptr (CTransport base)
//   +0x04 create_flags_ (CTransport; Open stores its int argument here)
//   +0x08 CBluetoothSocket
//   +0x2c flags (bit 0: listening)
//   +0x68 initialized flag (set by Initialize, cleared by Disconnect)
#pragma once

#include <cstdint>
#include <string>

#include "net-transport/bluetooth_socket.hpp"
#include "net-transport/net_network_id.hpp"
#include "net-transport/transport.hpp"

class CBluetoothReliable : public CTransport {
public:
    CBluetoothReliable();                            // 0x82900c _ZN18CBluetoothReliableC2Ev (C1 at 0x829330)
    // 0x829260 _ZN18CBluetoothReliableC2Ejb (C1 at 0x8295c4); the arguments are not used by the pseudocode.
    CBluetoothReliable(unsigned int channel, bool listen);
    ~CBluetoothReliable() override;                  // 0x82917c _ZN18CBluetoothReliableD1Ev (D2 at 0x8291fc, D0 at 0x8291e0)
    CBluetoothReliable(const CBluetoothReliable&) = delete;
    CBluetoothReliable& operator=(const CBluetoothReliable&) = delete;

    int Connect(CNetworkId& peer) override;          // 0x828df0 _ZN18CBluetoothReliable7ConnectER10CNetworkId
    // 0x828e58 _ZN18CBluetoothReliable4OpenESsSsi
    int Open(std::string address, std::string name, int channel);
    int Listen(std::string address, std::string name);  // 0x828ec8 _ZN18CBluetoothReliable6ListenESsSs
    CNetworkId GetPeerNetworkId() override;          // 0x8290dc _ZN18CBluetoothReliable16GetPeerNetworkIdEv
    CNetworkId GetLocalNetworkId() override;         // 0x829694 _ZN18CBluetoothReliable17GetLocalNetworkIdEv
    // 0x829400 _ZN18CBluetoothReliable6CreateESsSsi
    static CBluetoothReliable* Create(std::string first, std::string second, int channel);
    static int InitializeTransport();                // 0x8294cc _ZN18CBluetoothReliable19InitializeTransportEv (partial)

    int GetType() override;                          // 0x828cb4 _ZN18CBluetoothReliable7GetTypeEv (returns 4)
    bool CanDisconnectFrom(const CNetworkId& peer) override;  // 0x828cbc _ZN18CBluetoothReliable17CanDisconnectFromER10CNetworkId
    int Initialize();                                // 0x828cc4 _ZN18CBluetoothReliable10InitializeEv
    int Disconnect() override;                       // 0x828ce0 _ZN18CBluetoothReliable10DisconnectEv
    bool IsConnected() override;                     // 0x828cfc _ZN18CBluetoothReliable11IsConnectedEv
    bool IsConnectedTo(const CNetworkId& peer) override;  // 0x828d04 _ZN18CBluetoothReliable13IsConnectedToER10CNetworkId
    bool IsPeer() const;                             // 0x828d0c _ZN18CBluetoothReliable6IsPeerEv
    bool IsClient() const;                           // 0x828d14 _ZN18CBluetoothReliable8IsClientEv
    bool IsListening() const;                        // 0x828d1c _ZN18CBluetoothReliable11IsListeningEv
    void StartBroadcast() override;                  // 0x828d5c _ZN18CBluetoothReliable14StartBroadcastEv
    void StopBroadcast() override;                   // 0x828d60 _ZN18CBluetoothReliable13StopBroadcastEv
    int Send(const CNetworkId& peer, const void* data, int len) override;  // 0x828d64 _ZN18CBluetoothReliable4SendER10CNetworkIdPvi (returns -1)
    int Receive() override;                          // 0x828d6c _ZN18CBluetoothReliable7ReceiveEv (returns -1)
    void SetMode(int session);                       // 0x828d74 _ZN18CBluetoothReliable7SetModeE19_tBLUETOOTH_SESSION
    static int TerminateTransport();                 // 0x828d78 _ZN18CBluetoothReliable18TerminateTransportEv

private:
    int AcceptConnections();                         // 0x828da0 _ZN18CBluetoothReliable17AcceptConnectionsEv

    CBluetoothSocket socket_;                        // +0x08
    bool accept_enabled_ = false;                    // +0x30 byte (read by AcceptConnections; no writer recovered yet)
    std::uint32_t flags_ = 0;                        // +0x2c
    bool initialized_ = false;                       // +0x68
    CNetworkId peer_;                                // +0x6c (CNetworkId, 0x1c bytes; Connect stores the peer)
    static bool s_initialized_;                      // _ZN18CBluetoothReliable13s_initializedE
};

class CBluetoothUnreliable : public CTransport {
public:
    CBluetoothUnreliable();                          // 0x829980 _ZN20CBluetoothUnreliableC2Ev (C1 at 0x829c2c)
    // 0x829b5c _ZN20CBluetoothUnreliableC2Ejb (C1 at 0x829ecc); the arguments are not used by the pseudocode.
    CBluetoothUnreliable(unsigned int channel, bool listen);
    ~CBluetoothUnreliable() override;                // 0x829a78 _ZN20CBluetoothUnreliableD1Ev (D2 at 0x829af8)
    CBluetoothUnreliable(const CBluetoothUnreliable&) = delete;
    CBluetoothUnreliable& operator=(const CBluetoothUnreliable&) = delete;

    int Connect(CNetworkId& peer) override;          // 0x8297f8 _ZN20CBluetoothUnreliable7ConnectER10CNetworkId
    // 0x829860 _ZN20CBluetoothUnreliable4OpenESsSsi (stores channel at +0x04)
    int Open(std::string address, std::string name, int channel);
    int Listen(std::string address, std::string name);  // 0x8298d0 _ZN20CBluetoothUnreliable6ListenESsSs
    CNetworkId GetPeerNetworkId() override;          // 0x829a50 _ZN20CBluetoothUnreliable16GetPeerNetworkIdEv
    CNetworkId GetLocalNetworkId() override;         // 0x829f9c _ZN20CBluetoothUnreliable17GetLocalNetworkIdEv
    // 0x829cfc _ZN20CBluetoothUnreliable6CreateESsSsi
    static CBluetoothUnreliable* Create(std::string first, std::string second, int channel);
    static int InitializeTransport();                // 0x829dc8 _ZN20CBluetoothUnreliable19InitializeTransportEv (partial)

    int GetType() override;                          // 0x8296bc _ZN20CBluetoothUnreliable7GetTypeEv (returns 3)
    bool CanDisconnectFrom(const CNetworkId& peer) override;  // 0x8296c4 _ZN20CBluetoothUnreliable17CanDisconnectFromER10CNetworkId
    int Initialize();                                // 0x8296cc _ZN20CBluetoothUnreliable10InitializeEv
    int Disconnect() override;                       // 0x8296e8 _ZN20CBluetoothUnreliable10DisconnectEv
    bool IsConnected() override;                     // 0x829704 _ZN20CBluetoothUnreliable11IsConnectedEv
    bool IsConnectedTo(const CNetworkId& peer) override;  // 0x82970c _ZN20CBluetoothUnreliable13IsConnectedToER10CNetworkId
    bool IsPeer() const;                             // 0x829714 _ZN20CBluetoothUnreliable6IsPeerEv
    bool IsClient() const;                           // 0x82971c _ZN20CBluetoothUnreliable8IsClientEv
    bool IsListening() const;                        // 0x829724 _ZN20CBluetoothUnreliable11IsListeningEv
    void StartBroadcast() override;                  // 0x829764 _ZN20CBluetoothUnreliable14StartBroadcastEv
    void StopBroadcast() override;                   // 0x829768 _ZN20CBluetoothUnreliable13StopBroadcastEv
    int Send(const CNetworkId& peer, const void* data, int len) override;  // 0x82976c _ZN20CBluetoothUnreliable4SendER10CNetworkIdPvi (returns -1)
    int Receive() override;                          // 0x829774 _ZN20CBluetoothUnreliable7ReceiveEv (returns -1)
    void SetMode(int session);                       // 0x82977c _ZN20CBluetoothUnreliable7SetModeE19_tBLUETOOTH_SESSION
    static int TerminateTransport();                 // 0x829780 _ZN20CBluetoothUnreliable18TerminateTransportEv

private:
    int AcceptConnections();                         // 0x8297a8 _ZN20CBluetoothUnreliable17AcceptConnectionsEv

    CBluetoothSocket socket_;                        // +0x08
    bool accept_enabled_ = false;                    // +0x30 byte (set by no recovered code)
    std::uint32_t flags_ = 0;                        // +0x2c
    bool initialized_ = false;                       // +0x68
    CNetworkId peer_;                                // +0x6c (CNetworkId, 0x1c bytes; Connect stores the peer)
    static bool s_initialized_;                      // _ZN20CBluetoothUnreliable13s_initializedE
};
