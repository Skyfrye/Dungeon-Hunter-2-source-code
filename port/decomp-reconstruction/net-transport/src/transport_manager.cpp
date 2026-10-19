// CTransportManager: transport table, receive pass, packet framing and the singleton.
// Reconstructed from libDungeonHunter2.so pseudocode.
#include "net-transport/transport_manager.hpp"
#include "net-transport/socket_platform.hpp"

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>

#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_online_impl.hpp"
#include "net-transport/connection_manager.hpp"
#include "net-transport/transport_factory.hpp"
#include "net-transport/transport_manager_impl.hpp"

namespace {
// Packet header (8 bytes): magic u32 at +0, total length u16 at +4 (header included),
// packet type byte at +6 (bit 7 must be clear), one byte pad at +7, payload from +8.
constexpr std::size_t kHeaderBytes = 8;
constexpr std::size_t kMaxPayload = 0xFF8;
// Port and address the broadcast ids use (6776 = 0x1A78, address word -1).
constexpr std::uint16_t kBroadcastPort = 0x1A78;
constexpr std::uint32_t kBroadcastHi = 0xFFFFFFFFu;

#ifdef DH2_HOST_RUNNER
// Host runner only (not in the original): DH2_NET_TRACE=1 prints every packet the manager sends and receives to stderr.
bool NetTrace() {
    return net_platform::TraceFile() != nullptr;
}
#endif

std::uint16_t ReadU16(const char* p) {
    return static_cast<std::uint16_t>(static_cast<std::uint8_t>(p[0]) |
                                      (static_cast<std::uint8_t>(p[1]) << 8));
}

std::uint32_t ReadU32(const char* p) {
    return static_cast<std::uint32_t>(static_cast<std::uint8_t>(p[0])) |
           (static_cast<std::uint32_t>(static_cast<std::uint8_t>(p[1])) << 8) |
           (static_cast<std::uint32_t>(static_cast<std::uint8_t>(p[2])) << 16) |
           (static_cast<std::uint32_t>(static_cast<std::uint8_t>(p[3])) << 24);
}

// The listening id of the singleton for a transport type. The original reads the singleton
// without a null check; with no manager the port treats the id as empty.
CNetworkId ListeningIdOf(tTRANSPORT_TYPE type) {
    CTransportManager* manager = CTransportManager::GetInstance();
    if (manager == nullptr) {
        CNetworkId empty;
        empty.Reset();
        return empty;
    }
    return manager->GetListenNetworkId(type);
}
}  // namespace

CTransportManager* CTransportManager::s_transportManager = nullptr;

// 0x81b758 _ZN17CTransportManagerC1Ev
// 0x81b7ac _ZN17CTransportManagerC2Ev
// Both variants have the same body: initialized and terminating cleared, timestamp zero.
CTransportManager::CTransportManager() = default;

// 0x81b6d4 _ZN17CTransportManagerD2Ev
// 0x81b724 _ZN17CTransportManagerD1Ev
// The original resets the vtable and destroys the mutex. The table entries are not freed
// here (the transports are owned by their own users, as in the original).
CTransportManager::~CTransportManager() = default;

// 0x81a9dc _ZN17CTransportManager12AbortNetworkEv
// Empty in the original.
void CTransportManager::AbortNetwork() {}

// 0x81aca4 _ZN17CTransportManager6UpdateEv
// A tail-call thunk to SetThreadTimestamp (0x81ac80): CConnectionManager::Update calls it every tick to refresh the
// thread timestamp (+0x100). The 64-bit result is the timestamp; callers do not read it.
void CTransportManager::Update() {
    (void)SetThreadTimestamp();
}

// 0x81a9e0 _ZN17CTransportManager11GetInstanceEv
CTransportManager* CTransportManager::GetInstance() {
    return s_transportManager;
}

// 0x81aa04 _ZN17CTransportManager13IsInitializedEv
bool CTransportManager::IsInitialized() {
    return s_transportManager != nullptr && s_transportManager->initialized_;
}

// 0x81b800 _ZN17CTransportManager10InitializeEv
// Creates the CTransportManagerImpl singleton (operator new(0x110), the Impl vtable) when none exists,
// then calls InitializeInternal (vtable +0x00) on the instance, every time, as the original does (the
// call is outside its create branch).
int CTransportManager::Initialize() {
    if (s_transportManager == nullptr) {
        s_transportManager = new (std::nothrow) CTransportManagerImpl();
    }
    if (s_transportManager != nullptr) {
        s_transportManager->InitializeInternal();
    }
    return s_transportManager != nullptr ? 0 : -1;
}

// 0x81aa2c _ZN17CTransportManager9TerminateEv
// Calls TerminateInternal (vtable +0x04) on the instance, then deletes it through its deleting
// destructor (vtable +0x18) and clears the pointer.
void CTransportManager::Terminate() {
    CTransportManager* manager = s_transportManager;
    if (manager != nullptr) {
        manager->TerminateInternal();
        // The original re-reads the global after TerminateInternal before it deletes.
        if (s_transportManager != nullptr) {
            delete s_transportManager;
            s_transportManager = nullptr;
        }
    }
}

// 0x81aa8c _ZN17CTransportManager15EnableBroadcastE10CNetworkId
// Finds the transport whose local id (vtable +0x18) equals the id and starts its broadcast (vtable +0x30).
// When no transport matches, the original returns an uninitialised pointer (the stack id); this returns void.
void CTransportManager::EnableBroadcast(const CNetworkId& id) {
    for (int i = 0; i < kTransportSlots; ++i) {
        CTransport* transport = transports_[i];
        if (transport == nullptr) {
            continue;
        }
        CNetworkId local = transport->GetLocalNetworkId();
        if (local.IsEqual(id)) {
            transport->StartBroadcast();
            return;
        }
    }
}

// 0x81ab0c _ZN17CTransportManager16DisableBroadcastE10CNetworkId
// Same shape as EnableBroadcast; the found transport gets StopBroadcast (vtable +0x34). The no-match return
// value is the same leftover (void here).
void CTransportManager::DisableBroadcast(const CNetworkId& id) {
    for (int i = 0; i < kTransportSlots; ++i) {
        CTransport* transport = transports_[i];
        if (transport == nullptr) {
            continue;
        }
        CNetworkId local = transport->GetLocalNetworkId();
        if (local.IsEqual(id)) {
            transport->StopBroadcast();
            return;
        }
    }
}

// 0x81ab8c _ZN17CTransportManager20GetTransportByPeerE15tTRANSPORT_TYPE10CNetworkId
// The first transport whose type (vtable +0x20) is the type and that IsConnectedTo (vtable +0x28) the peer.
CTransport* CTransportManager::GetTransportByPeer(tTRANSPORT_TYPE type, const CNetworkId& peer) const {
    for (int i = 0; i < kTransportSlots; ++i) {
        CTransport* transport = transports_[i];
        if (transport != nullptr && transport->GetType() == type && transport->IsConnectedTo(peer)) {
            return transport;
        }
    }
    return nullptr;
}

// 0x81ac0c _ZN17CTransportManager13IsConnectedToER10CNetworkId
// For the first transport that IsConnectedTo (vtable +0x28) the peer, the result is that transport's
// connected state (vtable +0x24).
bool CTransportManager::IsConnectedTo(const CNetworkId& peer) const {
    for (int i = 0; i < kTransportSlots; ++i) {
        CTransport* transport = transports_[i];
        if (transport != nullptr && transport->IsConnectedTo(peer)) {
            return transport->IsConnected();
        }
    }
    return false;
}

// 0x81ac78 _ZN17CTransportManager18IsMainThreadBlockedEv
// The original returns constant 0.
bool CTransportManager::IsMainThreadBlocked() const {
    return false;
}

// 0x81ac80 _ZN17CTransportManager18SetThreadTimestampEv
// Reads the 64-bit time from GetOnline() (COnline::GetInstance, which is always a COnlineImpl)
// through its vtable slot 0, which is COnlineImpl::GetAbsoluteTime, and stores it at +0x100.
std::int64_t CTransportManager::SetThreadTimestamp() {
    COnline* online = COnline::GetInstance();
    thread_timestamp_ = static_cast<COnlineImpl*>(online)->GetAbsoluteTime();
    return thread_timestamp_;
}

// 0x81ad30 _ZN17CTransportManager18GetListenNetworkIdE15tTRANSPORT_TYPE
// Collects the local ids of the listening transports (create flags bit 0, CTransport +0x04). A nonzero type
// restricts the walk to transports of that type. Each transport copies the field of its own type from its
// local id (vtable +0x18): type 1 address1, type 2 address0, type 3 field2 and type 4 field3, with the
// presence bit raised. The raw fields are copied whether or not the local id has them set. The copy rules
// for the four types are the Hex-Rays switch.
CNetworkId CTransportManager::GetListenNetworkId(tTRANSPORT_TYPE type) const {
    CNetworkId result;
    result.Reset();
    for (int i = 0; i < kTransportSlots; ++i) {
        CTransport* transport = transports_[i];
        if (transport == nullptr) {
            continue;
        }
        if (type != 0 && transport->GetType() != type) {
            continue;
        }
        if ((transport->create_flags_ & 1u) == 0) {
            continue;
        }
        const int transport_type = transport->GetType();
        CNetworkId local = transport->GetLocalNetworkId();
        std::uint16_t lo = 0;
        std::uint32_t hi = 0;
        switch (transport_type - 1) {
            case 0:  // transport 1 -> address1 (presence bit 0)
                local.GetAddress1(lo, hi);
                result.SetAddress1(lo, hi);
                break;
            case 1:  // transport 2 -> address0 (presence bit 1)
                local.GetAddress0(lo, hi);
                result.SetAddress0(lo, hi);
                break;
            case 2:  // transport 3 -> field2 (presence bit 2)
                result.SetField2(local.Field2());
                break;
            case 3:  // transport 4 -> field3 (presence bit 3)
                result.SetField3(local.Field3());
                break;
            default:
                break;
        }
    }
    return result;
}

// 0x81ae94 _ZN17CTransportManager20IsTransportAvailableE15tTRANSPORT_TYPE
// Types 1 and 2 test the address1 word (+0x0c) of the listening type-1 id; types 3 and 4 test field2
// (+0x10) of the listening type-3 id. Types outside 1..4 are available (constant 1). The singleton is
// read through GetTransportMgr, as the original does; with no singleton the id is empty.
bool CTransportManager::IsTransportAvailable(tTRANSPORT_TYPE type) {
    switch (static_cast<unsigned>(type - 1)) {
        case 0:
        case 1: {
            CNetworkId id = ListeningIdOf(1);
            std::uint16_t lo = 0;
            std::uint32_t hi = 0;
            id.GetAddress1(lo, hi);
            return hi != 0;
        }
        case 2:
        case 3: {
            CNetworkId id = ListeningIdOf(3);
            return id.Field2() != 0;
        }
        default:
            return true;
    }
}

// 0x81af88 _ZN17CTransportManager27PrepareConnectionNetworkIdER10CNetworkId
// Copies the peer id and, for each transport connected to it (vtable +0x28), resets the copy to that
// transport's type (vtable +0x20, CNetworkId::Reset(type)).
CNetworkId CTransportManager::PrepareConnectionNetworkId(const CNetworkId& peer) const {
    CNetworkId result = peer;
    for (int i = 0; i < kTransportSlots; ++i) {
        CTransport* transport = transports_[i];
        if (transport != nullptr && transport->IsConnectedTo(peer)) {
            result.Reset(transport->GetType());
        }
    }
    return result;
}

// 0x81b010 _ZN17CTransportManager4SendEP10CTransportR10CNetworkIdiPvi
// Packet: magic u32 at +0, length u16 at +4 (header included), packet type byte at +6 (stored as
// given, bit 7 not cleared, as the original does), byte +7 zeroed, payload at +8. A null transport
// returns -1 after the packet is built. The packet is sent with the transport's Send (vtable +0x0c).
// The Hex-Rays call passes the length twice; the second word is a leftover register (Send takes the
// peer, the packet and the length).
// Deviation: Hex-Rays shows v13 = a4 (the type) with the length written as a 16-bit store at +4 and
// nothing ever storing byte +7, so byte +7 is uninitialised stack in the original; the port writes 0
// there. ReceiverCallback (0x81b11c) tests the magic, the length and packet[6] and dispatches the
// payload from +8, so byte +7 is never read by the receiver and the deviation is not observable in the
// protocol; the value is nondeterministic in the original, hence not reproducible.
// Before the send the original asks the transport for its type (vtable +0x20) and passes it to
// CConnectionManager::ReportStatistic, which is empty; the query is kept, the empty call is not.
int CTransportManager::Send(CTransport* transport, const CNetworkId& to, tPACKET_TYPE type,
                            const void* data, std::size_t size) {
    if (size > kMaxPayload) {
        return -1;
    }
    const std::size_t total = size + kHeaderBytes;
    char packet[kMaxPayload + kHeaderBytes];
    const std::uint32_t magic = kPacketMagic;
    packet[0] = static_cast<char>(magic & 0xFF);
    packet[1] = static_cast<char>((magic >> 8) & 0xFF);
    packet[2] = static_cast<char>((magic >> 16) & 0xFF);
    packet[3] = static_cast<char>((magic >> 24) & 0xFF);
    packet[4] = static_cast<char>(total & 0xFF);
    packet[5] = static_cast<char>((total >> 8) & 0xFF);
    packet[6] = static_cast<char>(type);
    packet[7] = 0;
    if (size != 0) {
        std::memcpy(packet + kHeaderBytes, data, size);
    }
    if (transport == nullptr) {
        return -1;
    }
    (void)transport->GetType();  // vtable +0x20; the result only feeds the empty ReportStatistic
#ifdef DH2_HOST_RUNNER
    if (NetTrace()) {
        std::uint16_t tracePort = 0;
        std::uint32_t traceAddress = 0;
        to.GetAddress1(tracePort, traceAddress);
        DH2_NET_LOG("[net] send type=%d len=%zu transport=%d to=%u.%u.%u.%u:%u%s", static_cast<int>(type), total, transport->GetType(), traceAddress & 255u,
                     (traceAddress >> 8) & 255u, (traceAddress >> 16) & 255u, traceAddress >> 24, tracePort, "\n");
    }
#endif
    const int sent = transport->Send(to, packet, static_cast<int>(total));
#ifdef DH2_HOST_RUNNER
    if (NetTrace()) {
        DH2_NET_LOG("[net]   send result %d (%d bytes asked)\n", sent, static_cast<int>(total));
    }
#endif
    return sent;
}

// 0x81b11c _ZN17CTransportManager16ReceiverCallbackEP10CTransportR10CNetworkIdPci
// Static: the first argument is the transport the bytes came from (CUdp::Receive and
// CTcp::ReceivePackets pass themselves), not the manager. Each packet must fit in the remaining bytes,
// carry the magic, and have type bit 7 clear. An initialized manager that is not blocked answers a
// type 7 (keep-alive) packet with a type 8 packet to the sender. Every packet is then dispatched to
// CConnectionManager::sReceiverCallback with its payload.
// Partial: the deviations are the short buffer and the short packet length. The original's first header
// read at 0x81b138/0x81b16c (`*((__int16 *)a3 + 2)`, `*(_DWORD *)a3`, `*((char *)a3 + 6)`) is unguarded,
// so a buffer shorter than a header reads past it, and its loop condition accepts any non-negative
// length, so a length below 8 makes `i += v7` fail to advance (v7 == 0 spins forever, 1..7 walks
// backwards) and passes `v7 - 8` as a negative payload size to CConnectionManager::sReceiverCallback.
// The port ends the pass on either. Everything else matches: the magic, the type's bit-7 test, the
// keep-alive reply on type 7, the payload at +8 and the resynchronisation on the next length.
// The transport type query (vtable +0x20, result unused, it feeds the empty ReportStatistic) is made
// for every packet, but is skipped for a null transport, which the original would crash on.
void CTransportManager::ReceiverCallback(CTransport* transport, CNetworkId& from, char* data, int size) {
    if (size <= 0) {
        return;
    }
    int remaining = size;
    char* packet = data;
    while (true) {
        if (remaining < static_cast<int>(kHeaderBytes)) {
            return;
        }
        const int length = static_cast<std::int16_t>(ReadU16(packet + 4));
        // A length below the header size would never advance the loop (the original spins
        // here); such a packet ends the pass instead. Deviation, see the comment above.
        if (length < static_cast<int>(kHeaderBytes) || length > remaining ||
            ReadU32(packet) != kPacketMagic || (packet[6] & 0x80) != 0) {
            return;
        }
        const int type = packet[6] & 0x7F;
#ifdef DH2_HOST_RUNNER
        if (NetTrace()) {
            std::uint16_t tracePort = 0;
            std::uint32_t traceAddress = 0;
            from.GetAddress1(tracePort, traceAddress);
            DH2_NET_LOG("[net] recv type=%d len=%d from=%u.%u.%u.%u:%u%s", type, length, traceAddress & 255u, (traceAddress >> 8) & 255u, (traceAddress >> 16) & 255u,
                         traceAddress >> 24, tracePort, "\n");
        }
#endif
        if (transport != nullptr) {
            (void)transport->GetType();  // vtable +0x20; the result only feeds the empty ReportStatistic
        }
        if (IsInitialized() && type == 7 && !GetTransportMgr()->IsMainThreadBlocked()) {
            GetTransportMgr()->Send(transport, from, 8, nullptr, 0);
        }
        remaining -= length;
        CConnectionManager::sReceiverCallback(type, from, packet + kHeaderBytes, length - static_cast<int>(kHeaderBytes));
        if (remaining <= 0) {
            return;
        }
        packet += length;
    }
}

// 0x81b290 _ZN17CTransportManager4SendE15tTRANSPORT_TYPE10CNetworkIdiPvi
int CTransportManager::Send(tTRANSPORT_TYPE type, const CNetworkId& to, tPACKET_TYPE packet_type,
                            const void* data, std::size_t size) {
    CTransport* transport = GetTransportByPeer(type, to);
    return Send(transport, to, packet_type, data, size);
}

// 0x81b2fc _ZN17CTransportManager4SendE15tTRANSPORT_TYPEiPvi
// Broadcast: builds the destination id for the type (types 1 and 2: port 6776 and address word -1 on
// address1 and address0; types 3 and 4: field2 and field3 = -1), raises the presence bit of the type
// and sends through the id overload. Other types send nothing and return 0.
int CTransportManager::Send(tTRANSPORT_TYPE type, tPACKET_TYPE packet_type, const void* data,
                            std::size_t size) {
    CNetworkId id;
    id.Reset();
    switch (type) {
        case 1:
            id.SetAddress1(kBroadcastPort, kBroadcastHi);
            break;
        case 2:
            id.SetAddress0(kBroadcastPort, kBroadcastHi);
            break;
        case 3:
            id.SetField2(0xFFFFFFFFu);
            break;
        case 4:
            id.SetField3(0xFFFFFFFFu);
            break;
        default:
            return 0;
    }
    return Send(type, id, packet_type, data, size);
}

// 0x81b3c8 _ZN17CTransportManager7ReceiveEv
// Lock, then one receive pass over all transports (vtable +0x10), skipped while terminating.
// Returns void; the original returns the unlock result (leftover r0), which its caller does not use.
void CTransportManager::Receive() {
    if (!initialized_ || terminating_) {
        return;
    }
    mutex_.Lock();
    for (int i = 0; i < kTransportSlots; ++i) {
        if (!terminating_ && transports_[i] != nullptr) {
            transports_[i]->Receive();
        }
    }
    mutex_.Unlock();
}

// 0x81b440 _ZN17CTransportManager10DisconnectER10CNetworkId
// Under the lock, removes every transport that CanDisconnectFrom (vtable +0x2c) accepts for the peer,
// deleting it through its deleting destructor (+0x04). Returns 0, as the original does.
int CTransportManager::Disconnect(const CNetworkId& peer) {
    mutex_.Lock();
    for (int i = 0; i < kTransportSlots; ++i) {
        if (transports_[i] != nullptr && transports_[i]->CanDisconnectFrom(peer)) {
            // The original reads the slot again after the call.
            CTransport* transport = transports_[i];
            if (transport != nullptr) {
                delete transport;
                transports_[i] = nullptr;
            }
        }
    }
    mutex_.Unlock();
    return 0;
}

// 0x81b4c4 _ZN17CTransportManager12AddTransportEP10CTransport
// Stores the transport in the first free slot.
void CTransportManager::AddTransport(CTransport* transport) {
    if (transport == nullptr) {
        return;
    }
    mutex_.Lock();
    for (int i = 0; i < kTransportSlots; ++i) {
        if (transports_[i] == nullptr) {
            transports_[i] = transport;
            break;
        }
    }
    mutex_.Unlock();
}

// 0x81b52c _ZN17CTransportManager14AcceptCallbackE15tTRANSPORT_TYPEP10CTransport
// The type is not used; the accepted transport is added to the singleton, as in the original.
void CTransportManager::AcceptCallback(tTRANSPORT_TYPE type, CTransport* transport) {
    (void)type;
    GetTransportMgr()->AddTransport(transport);
}

// 0x81b544 _ZN17CTransportManager17InitializeInternalEv
// Clears the transport table, sets the thread timestamp, starts the receiver thread (vtable
// +0x08, the Impl's StartReceiverThread) and sets the initialized flag. The original passes the
// high word of the timestamp in a register; StartReceiverThread does not read it, so it is not
// passed here. Deviation: the start slot is called on this object; the original calls it on the
// global singleton, which is the same object on every path that reaches it (Initialize).
int CTransportManager::InitializeInternal() {
    mutex_.Lock();
    for (auto& transport : transports_) {
        transport = nullptr;
    }
    SetThreadTimestamp();
    StartReceiverThread();
    initialized_ = true;
    mutex_.Unlock();
    return 0;
}

// 0x81b5b4 _ZN17CTransportManager21ReceiverThreadExecuteEv
// The original's return value is dropped: CTransportManagerImpl::ReceiverThreadInternal ignores it.
// While the main thread is blocked, a server calls AbortNetwork (vtable +0x10, empty body). Otherwise
// one receive pass runs and the connection manager keeps its connections alive. Deviation: the
// connection manager is null-checked; the original calls it unguarded (GetConnectionMgr is a thunk
// to CConnectionManager::GetInstance).
void CTransportManager::ReceiverThreadExecute() {
    if (IsMainThreadBlocked()) {
        if (CMatching::Get()->IsServer()) {
            AbortNetwork();
        }
        return;
    }
    Receive();
    CConnectionManager* connections = CConnectionManager::GetInstance();
    if (connections != nullptr) {
        connections->KeepAliveConnections();
    }
}

// 0x81b604 _ZN17CTransportManager7ConnectER10CNetworkId
// The prepared id (sret buffer in the original) is the only argument: CTransportFactory::ConnectTransport
// takes one CNetworkId&, so the second register value in the pseudocode is not passed. Its Bluetooth
// branches are partial in transport_factory.cpp.
int CTransportManager::Connect(const CNetworkId& peer) {
    if (!initialized_) {
        return -1;
    }
    CNetworkId prepared = PrepareConnectionNetworkId(peer);
    CTransportFactory::ConnectTransport(prepared);
    return 0;
}

// 0x81b644 _ZN17CTransportManager19InitializeTransportE15tTRANSPORT_TYPE
int CTransportManager::InitializeTransport(tTRANSPORT_TYPE type) {
    return CTransportFactory::InitializeTransport(type);
}

// 0x81b64c _ZN17CTransportManager17TerminateInternalEv
// Sets the terminating flag, clears the initialized flag, stops the receiver thread (vtable
// +0x0c, StopReceiverThread) and then deletes every transport and terminates the factory.
void CTransportManager::TerminateInternal() {
    terminating_ = true;
    initialized_ = false;
    StopReceiverThread();
    mutex_.Lock();
    for (int i = 0; i < kTransportSlots; ++i) {
        if (transports_[i] != nullptr) {
            delete transports_[i];
            transports_[i] = nullptr;
        }
    }
    // The original clears the 240-byte table again with LC_API_MEMSET_0 (a no-op after the loop).
    std::memset(transports_, 0, sizeof(transports_));
    CTransportFactory::TerminateTransport();
    mutex_.Unlock();
}

// 0x81baec _ZN17CTransportManager17SendToAllTransportE10tPACKET_TYPER10CNetworkIdPvi
// Sends to every transport type listed in the id, in list order.
void CTransportManager::SendToAllTransport(tPACKET_TYPE type, const CNetworkId& to,
                                           const void* data, std::size_t size) {
    for (tTRANSPORT_TYPE transport_type : to.GetTransportTypeList()) {
        Send(transport_type, to, type, data, size);
    }
}

// 0x81bb88 _ZN17CTransportManager9KeepAliveER10CNetworkId
// Keep-alive is packet type 7 sent to every transport type of the peer id.
void CTransportManager::KeepAlive(const CNetworkId& peer) {
    SendToAllTransport(7, peer, nullptr, 0);
}
