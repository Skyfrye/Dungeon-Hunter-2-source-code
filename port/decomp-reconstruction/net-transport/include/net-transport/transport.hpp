// CTransport: base of the concrete transports (CTcp, CUdp, the Bluetooth pair). Reconstructed from
// libDungeonHunter2.so (vtable _ZTV10CTransport, 64 bytes, tools/decomp_vtable.py CTransport).
//
// Layout: +0x00 vptr, +0x04 create_flags_ (the flags a transport is created with: CTcp::CreateByPort
// and CUdp::CreateByPort store their flags argument here; the Bluetooth Open stores its int argument,
// and Listen passes 1). Bit 0 means the transport listens, which CTransportManager::GetListenNetworkId
// reads from every transport. CUdp reads bit 1 as the broadcast option. The derived classes follow at
// +0x08.
//
// The slots after the destructors: +0x08 Connect and +0x14 Disconnect and +0x30 StartBroadcast and
// +0x34 StopBroadcast have bodies in the base; every other slot is pure (null in the base vtable) and
// each concrete transport overrides it. The slot numbers are the offsets the transport manager calls.
#pragma once

#include <cstdint>

#include "net-transport/net_network_id.hpp"

class CTransport {
public:
    virtual ~CTransport() = default;             // 0x8274e8 _ZN10CTransportD1Ev (+0x00, +0x04)
    virtual int Connect(CNetworkId& peer);       // +0x08, 0x8274ec _ZN10CTransport7ConnectER10CNetworkId
    // +0x0c: sends length bytes to the peer; the byte count, or <0 on error.
    virtual int Send(const CNetworkId& peer, const void* data, int length) = 0;
    virtual int Receive() = 0;                   // +0x10: one receive pass
    virtual int Disconnect();                    // +0x14, 0x8274f4 _ZN10CTransport10DisconnectEv
    virtual CNetworkId GetLocalNetworkId() = 0;  // +0x18: the id other devices reach this transport by
    virtual CNetworkId GetPeerNetworkId() = 0;   // +0x1c
    virtual int GetType() = 0;                   // +0x20: tTRANSPORT_TYPE (1 UDP, 2 TCP, 3 and 4 Bluetooth)
    virtual bool IsConnected() = 0;              // +0x24
    virtual bool IsConnectedTo(const CNetworkId& peer) = 0;      // +0x28
    virtual bool CanDisconnectFrom(const CNetworkId& peer) = 0;  // +0x2c
    virtual void StartBroadcast();               // +0x30, 0x8274fc _ZN10CTransport14StartBroadcastEv
    virtual void StopBroadcast();                // +0x34, 0x827500 _ZN10CTransport13StopBroadcastEv

    std::uint32_t create_flags_ = 0;             // +0x04
};
