#include "net-transport/cudp.hpp"

#include <cstdio>
#include <cstdlib>

#include "net-transport/socket_platform.hpp"

#include "net-transport/deps/transport_manager.hpp"

bool CUdp::s_initialized_ = false;

// 0x827504 _ZN4CUdp11IsConnectedEv
bool CUdp::IsConnected() {
    return true;
}

// 0x82750c _ZN4CUdp17CanDisconnectFromER10CNetworkId
bool CUdp::CanDisconnectFrom(const CNetworkId& peer) {
    (void)peer;
    return false;
}

// 0x827514 _ZN4CUdp7GetTypeEv
int CUdp::GetType() {
    return 1;
}

// 0x82751c _ZN4CUdp18TerminateTransportEv
int CUdp::TerminateTransport() {
    s_initialized_ = false;
    return 0;
}

// 0x827544 _ZN4CUdp13IsConnectedToER10CNetworkId
// The peer is not looked at. `LDR R0,[R0,#4]; EOR R0,R0,#4; UBFX R0,R0,#2,#1` reads the TRANSPORT's own create flags
// (CTransport +0x04) and returns the inverse of bit 2: the 6776 listening socket (flags 4) is never "connected to" a peer,
// so CTransportManager::GetTransportByPeer picks the broadcast-capable socket (flags 3) for every UDP send.
// WHAT THE OLD BODY GOT WRONG: it tested bit 2 of the PEER id's presence flags, which made the first UDP transport (the
// 6776 socket, no SO_BROADCAST) the one every send went through, so no broadcast ever left the machine.
bool CUdp::IsConnectedTo(const CNetworkId& /*peer*/) {
    return (create_flags_ & 4u) == 0;
}

// 0x827554 _ZN4CUdp16GetPeerNetworkIdEv
CNetworkId CUdp::GetPeerNetworkId() {
    CNetworkId id;
    id.Reset();
    return id;
}

// 0x827568 _ZN4CUdp17GetLocalNetworkIdEv
CNetworkId CUdp::GetLocalNetworkId() {
    std::uint32_t address = socket_.GetLocalAddress();
    std::uint16_t port = socket_.GetLocalPort();
    CNetworkId id;
    id.Reset();
    id.SetAddress1(port, address);
    return id;
}

// 0x82770c _ZN4CUdp4SendER10CNetworkIdPvi
// Sends only when the socket is open and the peer id carries an address1 (flag bit 0).
int CUdp::Send(const CNetworkId& peer, const void* data, int len) {
    std::uint16_t port = 0;
    std::uint32_t address = 0;
    if (!socket_.IsValid() || !peer.GetAddress1(port, address)) {
        return -1;
    }
    in_addr to{};
    to.s_addr = address;
    return static_cast<int>(socket_.SendTo(to, port, data, len));
}

// 0x827764 _ZN4CUdp11CloseSocketEv
int CUdp::CloseSocket() {
    if (!socket_.IsValid()) {
        return 0;
    }
    return socket_.Close();
}

// 0x8275b0 _ZN4CUdp7ReceiveEv
// The datagram loop matches the pseudocode and the ARM. The sender is stored as address1
// (presence flag bit 0). The ARM passes this (the transport), the sender id, the buffer and the
// count (r0-r3) to CTransportManager::ReceiverCallback; GetTransportMgr() is the manager instance.
// Returns the count of the last ReceiveFrom, as the original does.
int CUdp::Receive() {
    if (!socket_.IsValid()) {
        return -1;
    }
    char buffer[4096];
    std::int64_t received = 0;
    for (;;) {
        CNetworkId from;
        from.Reset();
        in_addr source{};
        std::uint16_t source_port = 0;
        received = socket_.ReceiveFrom(source, source_port, buffer, sizeof(buffer));
        if (received <= 0) {
            break;
        }
        from.SetAddress1(source_port, source.s_addr);
        CTransportManager::ReceiverCallback(this, from, buffer, static_cast<int>(received));
    }
    return static_cast<int>(received);
}

// 0x827780 _ZN4CUdp10OpenSocketEtb
// Opens the socket only when it is not open yet; the local address and port are then
// looked up and discarded, as the original does (its inet_ntoa of the address is never read).
int CUdp::OpenSocket(std::uint16_t port, bool broadcast) {
    if (!socket_.IsValid()) {
        unsigned int options = broadcast ? 3u : 2u;
        int result = socket_.OpenUDP(port, options);
#ifdef DH2_HOST_RUNNER
        if (net_platform::TraceFile() != nullptr) {
            DH2_NET_LOG("[net] CUdp::OpenSocket port %u options %u -> %d (socket error %d)\n",static_cast<unsigned>(port), options, result, socket_.GetSocketError());
        }
#endif
        if (result < 0) {
            return result;
        }
    }
    socket_.GetLocalAddress();
    socket_.GetLocalPort();
    return 0;
}

// 0x827804 _ZN4CUdpD1Ev
// 0x827860 _ZN4CUdpD2Ev
CUdp::~CUdp() {
    CloseSocket();
}

// 0x8278a0 _ZN4CUdp12CreateByPortEtj
CUdp* CUdp::CreateByPort(std::uint16_t port, unsigned int flags) {
    CUdp* transport = new CUdp();
    transport->create_flags_ = flags;
    transport->OpenSocket(port, ((flags >> 1) & 1) != 0);
    return transport;
}

// 0x8278fc _ZN4CUdp19InitializeTransportEv
// Creates the two UDP transports once: port 0x1a78 with flags 4 (no broadcast; the ARM
// MOVW immediate, which IDA shows as elf_hash_bucket+0x199C) and port 0 with flags 3 (broadcast;
// the ARM passes s_initialized, still 0 here). Both are added to the manager (AddTransport).
int CUdp::InitializeTransport() {
    if (!s_initialized_) {
        CUdp* first = CreateByPort(0x1a78, 4);
        GetTransportMgr()->AddTransport(first);
        CUdp* second = CreateByPort(0, 3);
        GetTransportMgr()->AddTransport(second);
    }
    s_initialized_ = true;
    return 0;
}
