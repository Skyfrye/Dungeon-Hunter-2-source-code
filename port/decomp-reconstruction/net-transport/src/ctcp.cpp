#include "net-transport/ctcp.hpp"

#include <cstring>

#include "net-transport/socket_platform.hpp"
#include "net-transport/deps/transport_manager.hpp"

bool CTcp::s_initialized_ = false;

// 0x82a36c _ZN4CTcpD1Ev
// 0x82a3c8 _ZN4CTcpD2Ev
CTcp::~CTcp() {
    CloseSocket();
}

// 0x82a228 _ZN4CTcp7ConnectER10CNetworkId
// Connects to the address0 of peer; fails when the socket is closed or the id has no address0.
int CTcp::Connect(CNetworkId& peer) {
    std::uint16_t port = 0;
    std::uint32_t address = 0;
    if (!socket_.IsValid() || !peer.GetAddress0(port, address)) {
        return -1;
    }
    in_addr to{};
    to.s_addr = address;
    const int connectResult = socket_.Connect(to, port);
#ifdef DH2_HOST_RUNNER
    DH2_NET_LOG("[net] CTcp::Connect %s:%u -> %d\n", inet_ntoa(to), static_cast<unsigned>(port), connectResult);
#endif
    return connectResult;
}

// 0x82a040 _ZN4CTcp11IsConnectedEv
bool CTcp::IsConnected() {
    return socket_.IsConnected();
}

// 0x82a008 _ZN4CTcp13IsConnectedToER10CNetworkId
// Returns GetPeerNetworkId() (vtable +0x1c) compared with the given id via IsEqual.
bool CTcp::IsConnectedTo(const CNetworkId& peer) {
    return GetPeerNetworkId().IsEqual(peer);
}

// 0x829fc4 _ZN4CTcp17CanDisconnectFromER10CNetworkId
// Tail call into IsConnectedTo (vtable +0x28 in the original; direct here, CTcp has no subclass).
bool CTcp::CanDisconnectFrom(const CNetworkId& peer) {
    return IsConnectedTo(peer);
}

// 0x829fd8 _ZN4CTcp7GetTypeEv
int CTcp::GetType() {
    return 2;
}

// 0x829fe0 _ZN4CTcp18TerminateTransportEv
int CTcp::TerminateTransport() {
    s_initialized_ = false;
    return 0;
}

// 0x82a048 _ZN4CTcp16GetPeerNetworkIdEv
CNetworkId CTcp::GetPeerNetworkId() {
    in_addr peer{};
    peer.s_addr = socket_.GetPeerAddress();
    std::uint16_t port = socket_.GetPeerPort();
    CNetworkId id;
    id.Reset();
    id.SetAddress0(port, peer.s_addr);
    return id;
}

// 0x82a090 _ZN4CTcp17GetLocalNetworkIdEv
CNetworkId CTcp::GetLocalNetworkId() {
    std::uint32_t address = socket_.GetLocalAddress();
    std::uint16_t port = socket_.GetLocalPort();
    CNetworkId id;
    id.Reset();
    id.SetAddress0(port, address);
    return id;
}

// 0x82a0d8 _ZN4CTcp14ReceivePacketsEv
// Reads up to 21 packets of at most 4096 bytes and hands each to the transport manager
// (CTransportManager::ReceiverCallback, 0x81b11c). The ARM call (r0-r3) passes the transport
// (this), the sender id, the buffer and the length; the fifth Hex-Rays argument is the copy
// pointer of the loop, not a register argument. The sender id is read through the virtual
// GetPeerNetworkId (vtable +0x1c in the original); CTcp has no subclass, so the call is direct.
int CTcp::ReceivePackets() {
    CNetworkId from;
    char buffer[0x1000];
    int remaining = 0x14;
    for (;;) {
        from.Reset();
        int got = static_cast<int>(socket_.Receive(buffer, sizeof(buffer)));
        if (got < 1) {
            break;
        }
        from = GetPeerNetworkId();
        CTransportManager::ReceiverCallback(this, from, buffer, got);
        if (remaining == 0) {
            break;
        }
        --remaining;
    }
    return 0;
}

// 0x82a1dc _ZN4CTcp4SendER10CNetworkIdPvi
// Sends when the socket is valid and IsConnectedTo(peer) (vtable +0x28 in the original).
int CTcp::Send(const CNetworkId& peer, const void* data, int len) {
    if (!socket_.IsValid() || !IsConnectedTo(peer)) {
        return -1;
    }
    return static_cast<int>(socket_.Send(data, len));
}

// 0x82a5dc _ZN4CTcp7ReceiveEv
int CTcp::Receive() {
    if (socket_.IsValid()) {
        if (socket_.IsListening()) {
            return AcceptConnections();
        }
        return ReceivePackets();
    }
    return 0;
}

// 0x82a284 _ZN4CTcp11CloseSocketEv
int CTcp::CloseSocket() {
    if (socket_.IsValid()) {
        socket_.Close();
    }
    return 0;
}

// 0x82a2a4 _ZN4CTcp10OpenSocketEtb
// Opens a TCP socket with option 6 and listens when asked. Failures return the negative
// result of the failing call, as the original does.
int CTcp::OpenSocket(std::uint16_t port, bool listen) {
    if (!socket_.IsValid()) {
        int result = socket_.OpenTCP(port, 6);
#ifdef DH2_HOST_RUNNER
        DH2_NET_LOG("[net] CTcp::OpenSocket port %u listen %d -> %d (socket error %d)\n", static_cast<unsigned>(port), static_cast<int>(listen), result, socket_.GetSocketError());
#endif
        if (result < 0) {
            return result;
        }
        if (listen && socket_.IsValid()) {
            result = socket_.Listen();
            if (result < 0) {
                return result;
            }
        }
    }
    socket_.GetLocalAddress();
    socket_.GetLocalPort();
    return 0;
}

// 0x82a408 _ZN4CTcp12CreateByPortEtj
CTcp* CTcp::CreateByPort(std::uint16_t port, unsigned int flags) {
    CTcp* transport = new CTcp();
    transport->create_flags_ = flags;
    transport->OpenSocket(port, (flags & 1) != 0);
    return transport;
}

// 0x82a4b8 _ZN4CTcp16CreateBySocketIdEij
// The accepted handle is adopted with options 4 (TCP_NODELAY), as CSocketAbstract::Assign does.
CTcp* CTcp::CreateBySocketId(int handle, unsigned int flags) {
    CTcp* transport = new CTcp();
    transport->create_flags_ = flags;
    transport->socket_.Assign(handle, 4);
    return transport;
}

// 0x82a540 _ZN4CTcp17AcceptConnectionsEv
// The accepted handle is wrapped in a new CTcp (options 0 at CreateBySocketId) and handed to the
// transport manager through AcceptCallback with type 2 (TCP). The original also builds a peer
// CNetworkId (address0 = port and IPv4) that is never read, so it is not built here.
int CTcp::AcceptConnections() {
    if (socket_.IsValid() && socket_.IsListening()) {
        in_addr from{};
        std::uint16_t from_port = 0;
        int handle = socket_.Accept(from, from_port);
#ifdef DH2_HOST_RUNNER
        if (handle != 0) {
            DH2_NET_LOG("[net] CTcp::AcceptConnections accept -> %d\n", handle);
        }
#endif
        if (handle > 0) {
            CTcp* accepted = CreateBySocketId(handle, 0);
            CTransportManager::AcceptCallback(2, accepted);
        }
    }
    return 0;
}

// 0x82a464 _ZN4CTcp19InitializeTransportEv
// Registers one listening TCP transport on port 0 with create flags 5 (CreateByPort(0, 5), as
// the original's first two arguments), once.
int CTcp::InitializeTransport() {
    if (!s_initialized_) {
        CTcp* listener = CreateByPort(0, 5);
        GetTransportMgr()->AddTransport(listener);
    }
    s_initialized_ = true;
    return 0;
}
