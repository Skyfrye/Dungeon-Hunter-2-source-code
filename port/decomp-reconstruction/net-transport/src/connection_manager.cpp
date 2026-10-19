// CConnectionManager. Reconstructed from the Hex-Rays pseudocode, checked against the ARM
// listing where the pseudocode symbol ranges were noted as misaligned (KeepAliveConnections,
// sReceiverCallback, Update, TerminateInternal). Offsets in comments are the original 32-bit ones.
#include "net-transport/socket_platform.hpp"
#include "net-transport/connection_manager.hpp"

#include <chrono>
#include <cstddef>
#include <cstring>
#include <new>

#include "net-session-online/deps/matching.hpp"  // CMatching (one definition, net-session-online)
#include "net-transport/transport_manager.hpp"  // GetTransportMgr()

namespace {

// CConnection::state values used by the original (+0x18).
constexpr int kStateConnected = 4;  // IsConnected, SendToAll, Disconnect checks
constexpr int kStateDropped = 1;    // Update removes a connection in this state

// Event id posted by Disconnect when notify is set (0x600004).
constexpr int kEventDisconnected = 6291460;

// Packet type 5 carries the connection-management subtypes (first byte of the packet).
constexpr tPACKET_TYPE kConnectionPacketType = 5;
constexpr tPACKET_TYPE kPingPacketType = 0;
constexpr int kDisconnectSubtype = 3;

// Layout of the 16-byte ping packet (memcpy'd from the wire, original v7[] array).
struct PingPacket {
    std::int32_t word0;        // +0x00
    std::int32_t member_id;    // +0x04 (v7[1])
    std::int32_t word2;        // +0x08
    std::uint8_t reply_pending;  // +0x0c (LOBYTE(v7[3]))
    std::uint8_t pad[3];       // +0x0d..+0x0f
};
static_assert(sizeof(PingPacket) == 16, "ping packet is 16 bytes");

// Payload of the disconnect packet: the member id, the notify flag and padding (8 bytes).
struct DisconnectPayload {
    std::int32_t member_id;    // +0x00
    std::uint8_t notify;       // +0x04
    std::uint8_t pad[3];       // +0x05..+0x07
};
static_assert(sizeof(DisconnectPayload) == 8, "disconnect payload is 8 bytes");

// Time source for the keep-alive. The original reads GetOnline() vtable slot 0 (a clock in ms,
// truncated); here it is steady_clock in ms, as in CNetworkEmulation.
std::uint32_t KeepAliveNowMs() {
    using namespace std::chrono;
    return static_cast<std::uint32_t>(
        duration_cast<milliseconds>(steady_clock::now().time_since_epoch()).count());
}

}  // namespace

// Static state. The original stores the singleton and the mutex as globals.
CConnectionManager* CConnectionManager::s_connectionManager = nullptr;
CConnectionManager::RecvCallbacks CConnectionManager::s_recvCBMap[CConnectionManager::kPacketTypes];
CNetMutex CConnectionManager::m_connections_mutex;

// 0x7fc0a8 _ZN18CConnectionManagerC1Ev
// The C2 variant at 0x7fc140 has the same body and is skipped.
CConnectionManager::CConnectionManager() {
    // Original: vptr, CNetMutex at +0x0c, then the event queue at +0x08 (CEventQueue<EVENTS,100>: a
    // self-linked empty list at +0x10 and the template argument 100 at +0x18) and the initialized flag
    // and the 32 connection slots cleared. event_queue_{100} is the queue; its std::list is empty.
    for (CConnection*& slot : connections_) {
        slot = nullptr;
    }
    initialized_ = false;
}

// 0x7fd400 _ZN18CConnectionManagerD1Ev
// The D2 variant at 0x7fd4b4 has the same body and is skipped; D0 at 0x7fd454 is skipped.
CConnectionManager::~CConnectionManager() {
    // Original: clears the CEvent list at +0x10 (the event queue's list), then destroys the CNetMutex at
    // +0x0c. The member destructors do both: CEventQueueBase's destructor destroys its list and mutex_ is
    // destroyed. The mutex goes first here; the two do not interact.
}

// 0x7fbd4c _ZN18CConnectionManager7GetImplEv
int CConnectionManager::GetImpl() {
    return 0;
}

// 0x7fcc30 _ZN18CConnectionManager6UpdateEv
int CConnectionManager::Update() {
    GetTransportMgr()->Update();
    for (CConnection*& slot : connections_) {
        if (!slot) {
            continue;
        }
        slot->Update();
        if (slot->State() != kStateDropped) {
            continue;
        }
        GetTransportMgr()->Disconnect(slot->NetworkId());
        m_connections_mutex.Lock();
        if (slot) {
            delete slot;
            slot = nullptr;
        }
        m_connections_mutex.Unlock();
    }
    PingConnections();
    PrintStatistics();
    return 0;
}

// 0x7fbd54 _ZN18CConnectionManager11GetInstanceEv
CConnectionManager* CConnectionManager::GetInstance() {
    return s_connectionManager;
}

// 0x7fbd78 _ZN18CConnectionManager13IsInitializedEv
bool CConnectionManager::IsInitialized() {
    return s_connectionManager != nullptr && s_connectionManager->initialized_;
}

// 0x7fbda0 _ZN18CConnectionManager24GetConnectionByNetworkIdER10CNetworkId
CConnection* CConnectionManager::GetConnectionByNetworkId(CNetworkId& id) {
    for (CConnection* conn : connections_) {
        if (conn && conn->NetworkId().IsEqual(id)) {
            return conn;
        }
    }
    return nullptr;
}

// 0x7fbdf8 _ZN18CConnectionManager11GetMemberIdER10CNetworkId
int CConnectionManager::GetMemberId(CNetworkId& id) {
    for (CConnection* conn : connections_) {
        if (conn && conn->NetworkId().IsEqual(id)) {
            return conn->MemberId();
        }
    }
    return -1;
}

// 0x7fbe54 _ZN18CConnectionManager13DisconnectAllEv
int CConnectionManager::DisconnectAll() {
    for (CConnection* conn : connections_) {
        if (conn) {
            conn->Disconnect();
        }
    }
    return 0;
}

// 0x7fbe94 _ZN18CConnectionManager18GetConnectionCountEb
int CConnectionManager::GetConnectionCount(bool connected_only) {
    int count = 0;
    for (CConnection* conn : connections_) {
        if (conn && (!connected_only || conn->State() == kStateConnected)) {
            ++count;
        }
    }
    return count;
}

// 0x7fbeec _ZN18CConnectionManager9SendToAllE12tPACKET_TYPEPvi
int CConnectionManager::SendToAll(tPACKET_TYPE type, void* data, int size) {
    for (CConnection* conn : connections_) {
        if (conn && conn->State() == kStateConnected) {
            conn->Send(type, data, size);
        }
    }
    return 0;
}

// 0x7fbf5c _ZN18CConnectionManager18RegisterPacketTypeE12tPACKET_TYPE14tPROTOCOL_TYPEPFviPciE
int CConnectionManager::RegisterPacketType(tPACKET_TYPE type, tPROTOCOL_TYPE protocol, MemberCallback cb) {
    RecvCallbacks& entry = s_recvCBMap[type];
    entry.protocol = protocol;
    entry.by_member = cb;
    return 0;
}

// 0x7fbf98 _ZN18CConnectionManager18RegisterPacketTypeE12tPACKET_TYPE14tPROTOCOL_TYPEPFvR10CNetworkIdPciE
int CConnectionManager::RegisterPacketType(tPACKET_TYPE type, tPROTOCOL_TYPE protocol, NetIdCallback cb) {
    RecvCallbacks& entry = s_recvCBMap[type];
    entry.protocol = protocol;
    entry.by_network_id = cb;
    return 0;
}

// 0x7fbfd4 _ZN18CConnectionManager22IsPacketTypeRegisteredE12tPACKET_TYPE
bool CConnectionManager::IsPacketTypeRegistered(tPACKET_TYPE type) {
    const RecvCallbacks& entry = s_recvCBMap[type];
    return entry.by_network_id != nullptr || entry.by_member != nullptr;
}

// 0x7fc014 _ZN18CConnectionManager22GetPacketTransportTypeE12tPACKET_TYPE
std::intptr_t CConnectionManager::GetPacketTransportType(tPACKET_TYPE type) {
    if (!IsPacketTypeRegistered(type)) {
        return 0;
    }
    return GetTransportType(s_recvCBMap[type].protocol);
}

// 0x7fc060 _ZN18CConnectionManager16GetTransportTypeE14tPROTOCOL_TYPE
// Partial: the listing is `ADD R1, R0, R1,LSL#2; LDR R0, [R1,#0x9C]; BX LR`, i.e. the table word at
// this + 0x9c + 4 * protocol with no range test. GetPacketTransportType (0x7fc014) inlines the same
// load (`*(this + 4 * protocol + 156)`) behind the registration test, so the two agree for every
// protocol the game registers; those are 1, 2 and 3 (RegisterPacketType calls in
// CConnectionManager::InitializeInternal and CNetPlayerManager), all inside the three-entry table.
// Missing: a protocol outside 0..2. The original then reads past the table - protocol 3 returns the
// initialized word at +0xa8 and 4 the vptr - and hands that word to the caller as a transport pointer.
// The port's bounds test returns 0 instead. That read is behaviour, not a crash, so it is not covered
// by the host-necessitated null-guard allowance; it is not reproduced, and no call site can reach it.
std::intptr_t CConnectionManager::GetTransportType(tPROTOCOL_TYPE protocol) {
    if (protocol < 0 || protocol >= kTransportSlots) {
        return 0;
    }
    return transports_[protocol];
}

// 0x7fc06c _ZN18CConnectionManager15PingConnectionsEv (empty in the original)
void CConnectionManager::PingConnections() {}

// 0x7fc070 _ZN18CConnectionManager21SetConnectionTimeoutsEj
// The pseudocode returns the loop index; the value is not used, so this returns void.
void CConnectionManager::SetConnectionTimeouts(std::uint32_t timeout) {
    for (CConnection* conn : connections_) {
        if (conn) {
            conn->SetTimeout(timeout);
        }
    }
}

// 0x7fc094 _ZN18CConnectionManager15ReportStatisticEi21tCONNECTION_STATISTICi (empty)
void CConnectionManager::ReportStatistic(int transport, tCONNECTION_STATISTIC stat, int value) {
    (void)transport;
    (void)stat;
    (void)value;
}

// 0x7fc098 _ZN18CConnectionManager15ReportStatisticE15tTRANSPORT_TYPER10CNetworkId21tCONNECTION_STATISTICi (empty)
void CConnectionManager::ReportStatistic(tTRANSPORT_TYPE transport, CNetworkId& id,
                                         tCONNECTION_STATISTIC stat, int value) {
    (void)transport;
    (void)id;
    (void)stat;
    (void)value;
}

// 0x7fc09c _ZN18CConnectionManager15PrintStatisticsEv (empty)
void CConnectionManager::PrintStatistics() {}

// 0x7fc0a0 _ZN18CConnectionManager21PrintMergedStatisticsEv (empty)
void CConnectionManager::PrintMergedStatistics() {}

// 0x7fc0a4 _ZN18CConnectionManager12GetBandwidthERiS0_ (empty: the outputs are not written)
void CConnectionManager::GetBandwidth(int& in, int& out) {
    (void)in;
    (void)out;
}

// 0x7fc1d8 _ZN18CConnectionManager20KeepAliveConnectionsEv (ARM checked)
// The time source (GetOnline() slot 0) is replaced by steady_clock in ms.
int CConnectionManager::KeepAliveConnections() {
    const std::uint32_t now = KeepAliveNowMs();
    m_connections_mutex.Lock();
    for (CConnection* conn : connections_) {
        if (conn) {
            conn->SendKeepAlive(now);
        }
    }
    return m_connections_mutex.Unlock();
}

// 0x7fc244 _ZN18CConnectionManager17sReceiverCallbackE12tPACKET_TYPER10CNetworkIdPci (ARM checked)
int CConnectionManager::sReceiverCallback(tPACKET_TYPE type, CNetworkId& from, char* data, int size) {
    m_connections_mutex.Lock();
    CConnectionManager* self = GetInstance();
    // Types 7 and 8 bypass the registration check (unsigned (type - 7) <= 1).
    if (static_cast<unsigned int>(type - 7) <= 1u || IsPacketTypeRegistered(type)) {
        NetIdCallback by_netid = nullptr;
        CConnection* conn = self->GetConnectionByNetworkId(from);
        if (conn) {
            const int member = conn->MemberId();
            conn->SetLastRecvTime();
            const RecvCallbacks& entry = s_recvCBMap[type];
            if (entry.by_member) {
                entry.by_member(member, data, size);
                return m_connections_mutex.Unlock();
            }
            by_netid = entry.by_network_id;
        } else {
            by_netid = s_recvCBMap[type].by_network_id;
        }
        if (by_netid) {
            by_netid(from, data, size);
        }
    }
    return m_connections_mutex.Unlock();
}

// 0x7fc33c _ZN18CConnectionManager20UnregisterPacketTypeE12tPACKET_TYPE
// The original returns -1 whatever the outcome.
int CConnectionManager::UnregisterPacketType(tPACKET_TYPE type) {
    RecvCallbacks& entry = s_recvCBMap[type];
    entry.protocol = 0;
    entry.by_member = nullptr;
    entry.by_network_id = nullptr;
    return -1;
}

// 0x7fc3ac _ZN18CConnectionManager6SendToE12tPACKET_TYPER10CNetworkIdPvi
// Calls CTransportManager::Send (0x81b290, reconstructed). The callee's own gaps (the statistics report
// and the transport send shim) are recorded with the callee in transport_manager.cpp.
int CConnectionManager::SendTo(tPACKET_TYPE type, CNetworkId& to, void* data, int size) {
    const std::intptr_t transport = GetPacketTransportType(type);
    return GetTransportMgr()->Send(static_cast<tTRANSPORT_TYPE>(transport), to, type, data,
                                   static_cast<std::size_t>(size));
}

// 0x7fc3ec _ZN18CConnectionManager13SendBroadcastE12tPACKET_TYPEPvi
// Calls the four-argument CTransportManager::Send (0x81b2fc). That callee sends only for transport types
// 1 and 2 (broadcast address); its types 3 and 4 are partial there.
int CConnectionManager::SendBroadcast(tPACKET_TYPE type, void* data, int size) {
    CTransportManager* manager = GetTransportMgr();
    const std::intptr_t transport = GetPacketTransportType(type);
    return manager->Send(static_cast<tTRANSPORT_TYPE>(transport), type, data, static_cast<std::size_t>(size));
}

// 0x7fc438 _ZN18CConnectionManager23GetConnectionByMemberIdEi
CConnection* CConnectionManager::GetConnectionByMemberId(int member_id) {
    const int index = CMatching::Get()->GetMemberIndex(member_id);
    if (index < 0 || index >= kConnectionSlots) {
        return nullptr;
    }
    return connections_[index];
}

// 0x7fc464 _ZN18CConnectionManager20PingReceiverCallbackER10CNetworkIdPci
// The 16 bytes are copied from the data (the pseudocode does not check size). A set reply flag (byte 12)
// is cleared and the packet is sent back to the sender on packet type 0. Otherwise the packet goes to the
// connection of its member id (word 1), passed to ProcessPing as the same three words. The ProcessPing
// result is the value the callback discards, so this returns void.
void CConnectionManager::PingReceiverCallback(CNetworkId& from, char* data, int size) {
    (void)size;
    PingPacket packet{};
    std::memcpy(&packet, data, sizeof(packet));
    if (packet.reply_pending) {
        packet.reply_pending = 0;
        SendTo(kPingPacketType, from, &packet, static_cast<int>(sizeof(packet)));
        return;
    }
    if (CConnection* conn = GetConnectionByMemberId(packet.member_id)) {
        tMsgPing ping{packet.word0, packet.member_id, packet.word2};
        conn->ProcessPing(ping);
    }
}

// 0x7fc4e0 _ZN18CConnectionManager21sPingReceiverCallbackER10CNetworkIdPci
void CConnectionManager::sPingReceiverCallback(CNetworkId& from, char* data, int size) {
    GetInstance()->PingReceiverCallback(from, data, size);
}

// 0x7fc508 _ZN18CConnectionManager25ProcessConnectionFinalizeER10CNetworkIdR12NetBitStream
// The pseudocode reads 16 bytes and compares word 0 with the sender's member id. Words 1 to 3 are read and
// not used. The original return value (the member id) is not used by the caller, so this returns void.
void CConnectionManager::ProcessConnectionFinalize(CNetworkId& from, NetBitStream& stream) {
    std::uint8_t key[16] = {};
    stream.ReadByteArray(key, sizeof(key));
    std::int32_t key_word0 = 0;
    std::memcpy(&key_word0, key, sizeof(key_word0));
    const int member = GetMemberId(from);
    if (member == key_word0) {
        if (CConnection* conn = GetConnectionByMemberId(member)) {
            conn->ProcessConnectFinalize(from);
        }
    }
}

// 0x7fc568 _ZN18CConnectionManager25ProcessConnectionResponseER10CNetworkIdR12NetBitStream
// Reads 16 bytes. Word 0 must equal the sender's member id before the connection gets the response.
// Word 1 is the local member id to store: when it differs from CMatching::LocalMemberId() (vtable +0x6c),
// it is stored with CMatching::SetMemberId() (vtable +0x70). The pseudocode's CMatching-typed return value
// is the leftover of those calls, so the port returns void.
void CConnectionManager::ProcessConnectionResponse(CNetworkId& from, NetBitStream& stream) {
    std::int32_t key_words[4] = {};
    stream.ReadByteArray(key_words, sizeof(key_words));
    const int member = GetMemberId(from);
    if (member == key_words[0]) {
        if (CConnection* conn = GetConnectionByMemberId(member)) {
            conn->ProcessConnectResponse(from);
        }
    }
    // Key word 1 is compared with the local member id and stored when different.
    CMatching* matching = CMatching::Get();
    if (key_words[1] != matching->LocalMemberId()) {
        CMatching::Get()->SetMemberId(key_words[1]);
    }
}

// 0x7fc5f8 _ZN18CConnectionManager6SendToE12tPACKET_TYPEiPvi
int CConnectionManager::SendTo(tPACKET_TYPE type, int member_id, void* data, int size) {
    CConnection* conn = GetConnectionByMemberId(member_id);
    if (!conn) {
        return 0;
    }
    return conn->Send(type, data, size);
}

// 0x7fc638 _ZN18CConnectionManager12SendToServerE12tPACKET_TYPEPvi
// The server member id is CMatching::ServerMemberId() (vtable +0x74); the send is SendTo(int member, ...).
int CConnectionManager::SendToServer(tPACKET_TYPE type, void* data, int size) {
    const int server = CMatching::Get()->ServerMemberId();
    return SendTo(type, server, data, size);
}

// 0x7fcf94 _ZN18CConnectionManager13GetServerPingEv
// The server returns 0, and so does a client without a connection to the server member. For a client
// with a server connection the original walks the connection's ping samples inline: the CReadWriteLock
// at CConnection +0x17c (LockRead, UnlockRead) and the time-ordered tree at +0x180 with its node count at
// +0x190 are the sample store of stats_[8] (a CDataStats<int>, +0x178). Samples within 30000000 clock()
// ticks of now are summed, newest first, and the result is sum / count in integers (0 when there are
// none): CDataStats<int>::GetAverage(30.0f), which the compiler inlined here.
int CConnectionManager::GetServerPing() {
    if (CMatching::Get()->IsServer()) {
        return 0;
    }
    CConnection* server = GetConnectionByMemberId(CMatching::Get()->ServerMemberId());
    if (server == nullptr) {
        return 0;
    }
    return server->stats_[8].GetAverage(30.0f);
}

// 0x7fc680 _ZN18CConnectionManager14DisconnectPeerEi
int CConnectionManager::DisconnectPeer(int member_id) {
    CConnection* conn = GetConnectionByMemberId(member_id);
    if (!conn) {
        return 0;
    }
    return conn->Disconnect();
}

// 0x7fc6a8 _ZN18CConnectionManager18GetMemberNetworkIdEi
CNetworkId CConnectionManager::GetMemberNetworkId(int member_id) {
    CNetworkId out;
    if (CConnection* conn = GetConnectionByMemberId(member_id)) {
        out = conn->NetworkId();
    } else {
        out.Reset();
    }
    return out;
}

// 0x7fc6f4 _ZN18CConnectionManager11IsConnectedEi
bool CConnectionManager::IsConnected(int member_id) {
    CConnection* conn = GetConnectionByMemberId(member_id);
    return conn != nullptr && conn->State() == kStateConnected;
}

// 0x7fc718 _ZN18CConnectionManager10DisconnectEib
// Verified against the ARM listing 0x7fc718: v15 = member id at var_34 [sp+4], the notify byte stored
// with STRB at var_8 [sp+30] (i.e. payload byte 4, the rest of the DWORD left alone), then the subtype
// byte 3, the 0x800-bit stream, the two WriteByteArray calls, SendToAll on type 5 with the rounded-up
// byte count, the CMatching::IsServer / LocalMemberId choice between DisconnectPeer (0x7fc680) and
// DisconnectAll, and the 0x600004 event with a 4-byte member id when notify is set.
// Deviation: the original sends 8 bytes from var_C while only writing bytes 0..4, so bytes 5..7 of the
// payload are uninitialised stack. The port's zero-initialised payload sends zeros. The receiver
// (ProcessDisconnect 0x7fc830, which reads a DisconnectPayload) reads only the member id and the notify
// byte and ignores bytes 5..7, so the deviation is not observable in the protocol; the padding bytes
// are nondeterministic in the original, hence not reproducible.
int CConnectionManager::Disconnect(int member_id, bool notify) {
    if (CMatching::Get()->IsServer() && IsConnected(member_id)) {
        DisconnectPayload payload{};
        payload.member_id = member_id;
        payload.notify = notify ? 1 : 0;
        NetBitStream stream(0x800);
        std::uint8_t subtype = kDisconnectSubtype;
        stream.WriteByteArray(&subtype, 1);
        stream.WriteByteArray(&payload, sizeof(payload));
        const std::uint32_t bits = stream.WritePosition();
        const std::uint32_t bytes = (bits >> 3) + ((bits & 7u) ? 1u : 0u);
        std::vector<char> data(bytes);
        stream.GetBuffer(data.data(), bytes);
        GetInstance()->SendToAll(kConnectionPacketType, data.data(), static_cast<int>(bytes));
    }

    if (CMatching::Get()->IsServer()) {
        DisconnectPeer(member_id);
    } else if (CMatching::Get()->LocalMemberId() != member_id) {
        DisconnectPeer(member_id);
    } else {
        DisconnectAll();
    }

    if (notify) {
        event_queue_.AddEvent(kEventDisconnected, &member_id, static_cast<int>(sizeof(member_id)));
    }
    return 0;
}

// 0x7fc830 _ZN18CConnectionManager17ProcessDisconnectER10CNetworkIdR12NetBitStream
int CConnectionManager::ProcessDisconnect(CNetworkId& from, NetBitStream& stream) {
    (void)from;
    DisconnectPayload payload{};
    stream.ReadByteArray(&payload, sizeof(payload));
    return Disconnect(payload.member_id, payload.notify != 0);
}

// 0x7fc864 _ZN18CConnectionManager21ProcessDisconnectPeerER10CNetworkIdR12NetBitStream
int CConnectionManager::ProcessDisconnectPeer(CNetworkId& from, NetBitStream& stream) {
    (void)from;
    std::int32_t member_id = 0;
    stream.ReadByteArray(&member_id, sizeof(member_id));
    if (!IsConnected(member_id)) {
        return 0;
    }
    if (CMatching::Get()->IsServer()) {
        return Disconnect(member_id, false);
    }
    return DisconnectPeer(member_id);
}

// 0x7fc8d0 _ZN18CConnectionManager13AddConnectionEiP11CConnection
int CConnectionManager::AddConnection(int member_id, CConnection* conn) {
    const int index = CMatching::Get()->GetMemberIndex(member_id);
    if (!conn || index < 0 || index > kConnectionSlots - 1) {
        return -1;
    }
    if (connections_[index]) {
        return -1;
    }
    connections_[index] = conn;
    return index;
}

// 0x7fc930 _ZN18CConnectionManager7ConnectEiR10CNetworkId
// The original allocates 0x1c0 bytes with a custom operator new; this uses nothrow new.
int CConnectionManager::Connect(int member_id, CNetworkId& id) {
#ifdef DH2_HOST_RUNNER
    DH2_NET_LOG("[net] CConnectionManager::Connect member %d flags %u\n", member_id, id.Flags());
#endif
    CConnection* conn = GetConnectionByMemberId(member_id);
    if (!conn) {
        conn = new (std::nothrow) CConnection();
        if (!conn) {
            return -1;
        }
        const int added = AddConnection(member_id, conn);
        if (added < 0) {
            delete conn;
            return added;
        }
    }
    return conn->Connect(member_id, id);
}

// 0x7fc9cc _ZN18CConnectionManager6AcceptEiR10CNetworkIdy
// The original's vtable call at +0x0c (CConnection::Accept, 0x826640) also passes the connection's first
// word in r3. CConnection::Accept never reads its fourth argument (its body uses the member id, the peer and
// the 64-bit key, which is on the stack), so passing the key directly is the same call. A new connection is
// allocated with nothrow new (the original's operator new(0x1c0) is a custom allocator; Connect does the same)
// and is deleted when AddConnection refuses it.
int CConnectionManager::Accept(int member_id, CNetworkId& id, std::uint64_t key) {
#ifdef DH2_HOST_RUNNER
    DH2_NET_LOG("[net] CConnectionManager::Accept member %d\n", member_id);
#endif
    if (CConnection* existing = GetConnectionByMemberId(member_id)) {
        return existing->Accept(member_id, id, key);
    }
    CConnection* conn = new (std::nothrow) CConnection();
    const int added = AddConnection(member_id, conn);
    if (added < 0) {
        delete conn;
        return added;
    }
    if (!conn) {
        return -1;
    }
    return conn->Accept(member_id, id, key);
}

// 0x7fca74 _ZN18CConnectionManager24ProcessConnectionRequestER10CNetworkIdR12NetBitStream
// Words: member id, unused, key low, key high. A negative member id searches the 32 slots for a connection
// with the same key (CConnection::Key, +0x1b8). A match with a member id >= 0 is accepted under that id.
// Otherwise CMatching::GenerateNewMemberId() (vtable +0xac) supplies the id. A non-negative id is accepted
// as sent.
int CConnectionManager::ProcessConnectionRequest(CNetworkId& from, NetBitStream& stream) {
    // Words: [0] member id, [1] unused here, [2] key low, [3] key high.
    std::int32_t words[4] = {};
    stream.ReadByteArray(words, sizeof(words));
    std::int32_t member = words[0];
    const std::uint64_t key =
        (static_cast<std::uint64_t>(static_cast<std::uint32_t>(words[3])) << 32) |
        static_cast<std::uint32_t>(words[2]);

    if (member < 0) {
        CConnection* found = nullptr;
        for (CConnection* conn : connections_) {
            if (conn && conn->Key() == key) {
                found = conn;
                break;
            }
        }
        if (found && found->MemberId() >= 0) {
            return Accept(found->MemberId(), from, key);
        }
        member = CMatching::Get()->GenerateNewMemberId();
    }
    return Accept(member, from, key);
}

// 0x7fcb2c _ZN18CConnectionManager22PacketReceiverCallbackER10CNetworkIdPci
void CConnectionManager::PacketReceiverCallback(CNetworkId& from, char* data, int size) {
    NetBitStream stream(static_cast<std::uint32_t>(size));
    stream.SetBuffer(data, static_cast<std::size_t>(size));
    std::uint8_t subtype = 0;
    stream.ReadByteArray(&subtype, 1);
    switch (subtype) {
        case 0:
            ProcessConnectionRequest(from, stream);
            break;
        case 1:
            ProcessConnectionResponse(from, stream);
            break;
        case 2:
            ProcessConnectionFinalize(from, stream);
            break;
        case 3:
            ProcessDisconnect(from, stream);
            break;
        case 4:
            ProcessDisconnectPeer(from, stream);
            break;
        default:
            break;
    }
}

// 0x7fcc08 _ZN18CConnectionManager23sPacketReceiverCallbackER10CNetworkIdPci
void CConnectionManager::sPacketReceiverCallback(CNetworkId& from, char* data, int size) {
    GetInstance()->PacketReceiverCallback(from, data, size);
}

// 0x7fcd04 _ZN18CConnectionManager17TerminateInternalEv (ARM checked)
// CTransportManager::Terminate is a static that calls TerminateInternal (vtable +0x04) on the
// CTransportManagerImpl singleton (which owns the receiver thread) and deletes it.
int CConnectionManager::TerminateInternal() {
    initialized_ = false;
    DisconnectAll();
    for (CConnection*& slot : connections_) {
        m_connections_mutex.Lock();
        if (slot) {
            delete slot;
            slot = nullptr;
        }
        m_connections_mutex.Unlock();
    }
    CTransportManager::Terminate();
    UnregisterPacketType(5);
    UnregisterPacketType(0);
    return event_queue_.Clear();
}

// 0x7fcd98 _ZN18CConnectionManager9TerminateEv
// The pseudocode returns the value left by the last call (the deleting destructor's r0); that
// value is not meaningful, so this returns void.
void CConnectionManager::Terminate() {
    if (!s_connectionManager) {
        return;
    }
    s_connectionManager->TerminateInternal();
    if (s_connectionManager) {
        delete s_connectionManager;
        s_connectionManager = nullptr;
    }
}

// 0x7fcdec _ZN18CConnectionManager18InitializeInternalEv (ARM checked)
// CTransportManager::Initialize is a static (the ARM passes this+0x1c, which it ignores): it creates and
// starts the CTransportManagerImpl singleton. The transport types come from CMatching::TransportTypeForProtocol
// (vtable +0x34), and InitializeTransport runs for each of the three.
int CConnectionManager::InitializeInternal() {
    RegisterPacketType(kConnectionPacketType, 0, &CConnectionManager::sPacketReceiverCallback);
    RegisterPacketType(kPingPacketType, 0, &CConnectionManager::sPingReceiverCallback);
    for (int protocol = 0; protocol < kTransportSlots; ++protocol) {
        transports_[protocol] = CMatching::Get()->TransportTypeForProtocol(protocol);
    }
    for (CConnection*& slot : connections_) {
        slot = nullptr;
    }
    CTransportManager::Initialize();
    CTransportManager* manager = GetTransportMgr();
    for (std::intptr_t transport : transports_) {
        manager->InitializeTransport(static_cast<tTRANSPORT_TYPE>(transport));
    }
    initialized_ = true;
    return 0;
}

// 0x7fcec0 _ZN18CConnectionManager10InitializeEv
int CConnectionManager::Initialize() {
    if (s_connectionManager) {
        return s_connectionManager->InitializeInternal();
    }
    CConnectionManager* self = new (std::nothrow) CConnectionManager();
    s_connectionManager = self;
    if (self) {
        return self->InitializeInternal();
    }
    return -1;
}

// 0x7fd284 _ZN18CConnectionManager19GetConnMemberIdListEb
// Server (or all): the member ids of the non-null slots, in slot order. Otherwise: the server member id
// (CMatching::ServerMemberId, vtable +0x74).
std::vector<int> CConnectionManager::GetConnMemberIdList(bool all) {
    std::vector<int> ids;
    if (CMatching::Get()->IsServer() || all) {
        for (CConnection* conn : connections_) {
            if (conn) {
                ids.push_back(conn->MemberId());
            }
        }
    } else {
        ids.push_back(CMatching::Get()->ServerMemberId());
    }
    return ids;
}

// 0x7fd454 D0 and 0x7fd4b4 D2 are compiler-generated; see the destructor above.
