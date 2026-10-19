#include "net-transport/connection.hpp"

#include <vector>

#include "net-transport/deps/connection_env.hpp"
#include "net-transport/net_bit_stream.hpp"
#include "net-transport/transport_manager.hpp"

namespace {

// Event ids the connection queues on the connection manager (meanings inferred from the call sites).
constexpr int kEventConnectDone = 6291457;   // 0x600001, queued when the handshake keys match
constexpr int kEventDisconnect = 6291458;    // 0x600002, queued by Disconnect
constexpr int kEventLag = 6291459;           // 0x600003, queued when the link starts to lag

// Packet type of every connection message (CTransportManager::SendToAllTransport(.., 5, ..)).
constexpr int kMessagePacketType = 5;

// The 16-byte handshake payload. Field order and widths match the original stack layout
// (two 32-bit words, then the 64-bit key), little-endian as on the device.
struct HandshakePayload {
    std::int32_t local_id;      // CMatching vtable +0x6c
    std::int32_t matching_key;  // +0x1c of the connection
    std::uint64_t key;          // +0x1b8 of the connection
};
static_assert(sizeof(HandshakePayload) == 16, "handshake payload is 16 bytes");

// Elapsed time as the original computes it: unsigned difference, read back as signed.
std::int32_t Elapsed(std::uint32_t now, std::int32_t then) {
    return static_cast<std::int32_t>(now - static_cast<std::uint32_t>(then));
}

// Connection key of a network id (Connect, Update): the present address and id fields are summed
// (address1 for flag bit 0, address0 for bit 1, field2 for bit 2, field3 for bit 3), the sum is
// masked to 56 bits and the presence flags are added in the top bits (flags << 55).
std::uint64_t KeyOf(const CNetworkId& id) {
    std::uint16_t lo = 0;
    std::uint32_t hi = 0;
    std::uint64_t sum = 0;
    if (id.GetAddress1(lo, hi)) {
        sum += (static_cast<std::uint64_t>(hi) << 16) + lo;
    }
    if (id.GetAddress0(lo, hi)) {
        sum += (static_cast<std::uint64_t>(hi) << 16) + lo;
    }
    if ((id.Flags() & 4) != 0) {
        sum += id.Field2();
    }
    if ((id.Flags() & 8) != 0) {
        sum += id.Field3();
    }
    constexpr std::uint64_t kMask56 = (std::uint64_t{1} << 56) - 1;
    return (sum & kMask56) + (static_cast<std::uint64_t>(id.Flags()) << 55);
}

}  // namespace

// 0x8259a8 _ZN11CConnectionC1Ev
// 0x825ab8 _ZN11CConnectionC2Ev (same body; the C2 copy is skipped in the ledger)
// Sets the vptr, builds the event queue base at +0x04 (CEventQueue<EVENTS,100>: mutex, empty list, expiry
// 100) and the nine CDataStats<int> (each cap 500), state 0, member id -14531089, timeout 30000, the lag
// flag clear, the peer and handshake ids reset and the key 0. The member initialisers do all of it.
CConnection::CConnection() {
    peer_id_.Reset();
    handshake_id_.Reset();
}

// 0x826370 _ZN11CConnectionD2Ev (D1 0x8263f4 is the same body)
// Disconnects, clears the event queue at +0x04 (CEventQueueBase::Clear), destroys the nine statistics in
// reverse order, resets the queue vptr to the base table, clears its list and destroys its mutex. The
// members do the destruction in that order (stats_ before event_queue_).
CConnection::~CConnection() {
    CConnection::Disconnect();
    event_queue_.Clear();
}

// 0x825338 _ZN11CConnection10IsToServerEv
bool CConnection::IsToServer() const {
    return member_id_ == matching_calls::MatchingKey();
}

// 0x825360 _ZN11CConnection15PrintStatisticsEv
// The name is kept from the symbol. The body only returns the server or to-server test; nothing is printed.
bool CConnection::PrintStatistics() const {
    return matching_calls::IsServer() || IsToServer();
}

// 0x8255c4 _ZN11CConnection4PingEv
// The static counter is incremented as in the original; nothing reads it in this export.
int CConnection::Ping() {
    static int seq = 0;
    ++seq;
    return online_calls::Now();
}

// 0x8255f4 _ZN11CConnection11CheckForLagEj
void CConnection::CheckForLag(std::uint32_t now) {
    if (state_ != 4) {
        return;
    }
    const std::int32_t last_update = last_update_time_;
    const std::int32_t last_recv = last_recv_time_;
    if (last_update - last_recv <= 2000) {
        if (lag_flag_ && static_cast<std::int32_t>(last_update - lag_start_time_) > 1000) {
            lag_flag_ = false;
        }
    } else {
        if (!lag_flag_) {
            connection_manager_calls::AddEvent(kEventLag, &member_id_, 4);
            lag_flag_ = true;
        }
        lag_start_time_ = static_cast<std::int32_t>(now);
    }
}

// 0x825688 _ZN11CConnection13SendKeepAliveEj
void CConnection::SendKeepAlive(std::uint32_t now) {
    if (state_ != 4) {
        return;
    }
    const std::int32_t since_keepalive = Elapsed(now, last_keepalive_time_);
    const std::int32_t since_recv = Elapsed(now, last_recv_time_);
    bool recent = since_keepalive <= 1000;
    if (since_keepalive > 1000) {
        recent = since_recv <= 1000;
    }
    if (!recent || Elapsed(now, last_send_time_) > 1000) {
        last_keepalive_time_ = static_cast<std::int32_t>(now);
        last_send_time_ = static_cast<std::int32_t>(now);
        GetTransportMgr()->KeepAlive(peer_id_);
    }
}

// Helper (not an original function): shared body of the connect messages: a type byte, then the payload, sent on transport 5
// to the peer. The byte count is the write position rounded up to whole bytes.
void CConnection::SendPacket(std::uint8_t type, const void* payload, std::size_t bytes) {
    NetBitStream stream(0x800);
    stream.WriteByteArray(&type, 1);
    if (bytes != 0) {
        stream.WriteByteArray(payload, static_cast<std::uint32_t>(bytes));
    }
    const std::uint32_t bits = stream.WritePosition();
    const std::uint32_t length = (bits + 7) >> 3;
    std::vector<char> buffer(length);
    stream.GetBuffer(buffer.data(), length);
    GetTransportMgr()->SendToAllTransport(kMessagePacketType, peer_id_, buffer.data(), length);
}

// 0x8256e4 _ZN11CConnection19SendConnectFinalizeEv
void CConnection::SendConnectFinalize() {
    const HandshakePayload payload{matching_calls::LocalId(), member_id_, key_};
    SendPacket(2, &payload, kHandshakeBytes);
}

// 0x825788 _ZN11CConnection19SendConnectResponseEv
void CConnection::SendConnectResponse() {
    const HandshakePayload payload{matching_calls::LocalId(), member_id_, key_};
    SendPacket(1, &payload, kHandshakeBytes);
}

// 0x82605c _ZN11CConnection18SendConnectRequestEv
void CConnection::SendConnectRequest() {
    last_send_time_ = online_calls::Now();
    const HandshakePayload payload{matching_calls::LocalId(), member_id_, key_};
    SendPacket(0, &payload, kHandshakeBytes);
}

// 0x82596c _ZN11CConnection7TimeoutEv
int CConnection::Timeout() {
    if (IsToServer()) {
        online_calls::ReportDisconnect(5, 0);
    }
    return Disconnect();
}

// 0x825f08 _ZN11CConnection15MergeStatisticsEP10CDataStatsIiE
// dst[i] takes the sum of stats_[i] for i = 0..3, and the average for 4..8 (windows 5, 1, 1, 1, 30
// as in the original). Only when this device is the server or the peer is
// the server, as in the original.
void CConnection::MergeStatistics(CDataStats<int>* dst) {
    if (!(matching_calls::IsServer() || IsToServer())) {
        return;
    }
    dst[0].AddData(stats_[0].GetSum());
    dst[1].AddData(stats_[1].GetSum());
    dst[2].AddData(stats_[2].GetSum());
    dst[3].AddData(stats_[3].GetSum());
    dst[4].AddData(stats_[4].GetAverage(5.0f));
    dst[5].AddData(stats_[5].GetAverage(1.0f));
    dst[6].AddData(stats_[6].GetAverage(1.0f));
    dst[7].AddData(stats_[7].GetAverage(1.0f));
    dst[8].AddData(stats_[8].GetAverage(30.0f));
}

// 0x82600c _ZN11CConnection15ReportStatisticE21tCONNECTION_STATISTICi
// Statistic 8 is recorded in stats_[8] (+0x178 in the original), clamped at zero.
void CConnection::ReportStatistic(int statistic, int value) {
    if (statistic == 8) {
        stats_[8].AddData(value < 0 ? 0 : value);
    }
}

// 0x826114 _ZN11CConnection11ProcessPingER8tMsgPing
int CConnection::ProcessPing(tMsgPing& ping) {
    static std::int32_t last_seq = 0;  // CConnection::ProcessPing(tMsgPing&)::lastSeq
    const std::int32_t now = online_calls::Now();
    const std::int32_t delay = now - online_calls::PingReference() - ping.timestamp;
    bool stale = ping.seq < last_seq;
    if (delay > 3000) {
        stale = true;
    }
    if (!stale) {
        ReportStatistic(8, delay);
        last_seq = ping.seq;
    }
    const std::int32_t result = online_calls::Now();
    last_recv_time_ = result;
    return result;
}

// 0x8261a4 _ZN11CConnection15SetLastRecvTimeEv
int CConnection::SetLastRecvTime() {
    const std::int32_t result = online_calls::Now();
    last_recv_time_ = result;
    return result;
}

// 0x8266ec _ZN11CConnection22ProcessConnectFinalizeER10CNetworkId
// Stores the handshake id with CNetworkId::Set. The pseudocode's int return is the value left in the
// register by the Set call (CNetworkId::Set is void in this port and its own result is the same kind of
// leftover). The port's only caller (connection_manager.cpp) discards it, so the return is void. The
// IsEqual call before the Set is const and has no effect, so it is dropped.
void CConnection::ProcessConnectFinalize(CNetworkId& id) {
    handshake_id_.Set(id);
}

// 0x826730 _ZN11CConnection22ProcessConnectResponseER10CNetworkId
void CConnection::ProcessConnectResponse(CNetworkId& id) {
    handshake_id_.Set(id);
    SendConnectFinalize();
}

// 0x8261c4 _ZN11CConnection7ConnectEiR10CNetworkId
// Stores the member id, copies the peer id, moves to state 2, connects the transports to the peer
// (CTransportManager::Connect), then computes the key from the listen id of every transport
// (GetListenNetworkId(0)) and stamps the receive, send and update times. The original's dead stores
// (+0x1bc and +0x1b8, overwritten by the key) are not reproduced. The result is the value of
// CTransportManager::Connect (0, or -1 when the manager is not initialised).
int CConnection::Connect(int matching_key, CNetworkId& peer) {
    member_id_ = matching_key;
    if (&peer_id_ != &peer) {
        peer_id_ = peer;
    }
    state_ = 2;
    const int result = GetTransportMgr()->Connect(peer);
    key_ = KeyOf(GetTransportMgr()->GetListenNetworkId(0));
    last_recv_time_ = online_calls::Now();
    last_send_time_ = online_calls::Now();
    last_update_time_ = online_calls::Now();
    return result;
}

// 0x826640 _ZN11CConnection6AcceptEiR10CNetworkIdy
int CConnection::Accept(int matching_key, CNetworkId& peer, std::uint64_t key) {
    member_id_ = matching_key;
    peer_id_.Set(peer);
    state_ = 3;
    const int result = GetTransportMgr()->Connect(peer);
    key_ = key;
    last_recv_time_ = online_calls::Now();
    last_send_time_ = online_calls::Now();
    last_update_time_ = online_calls::Now();
    SendConnectResponse();
    return result;
}

// 0x82582c _ZN11CConnection10DisconnectEv
int CConnection::Disconnect() {
    if (state_ != 1) {
        state_ = 1;
        const std::int32_t local_id = matching_calls::LocalId();
        SendPacket(4, &local_id, 4);
        connection_manager_calls::AddEvent(kEventDisconnect, &member_id_, 4);
    }
    return 0;
}

// 0x826780 _ZN11CConnection6UpdateEv
// The connected test compares KeyOf(peer_id_) with KeyOf(handshake_id_) (address and field terms).
// The pseudocode's return type is a Hex-Rays artifact: the value is the last callee's result (void
// CheckForLag, then AddEvent or Timeout). The virtual slot is void here, as in the port's callers.
void CConnection::Update() {
    const std::uint32_t now = static_cast<std::uint32_t>(online_calls::Now());
    if (state_ == 2 && Elapsed(now, last_send_time_) > 50) {
        SendConnectRequest();
    } else if (state_ == 3 && Elapsed(now, last_send_time_) > 50) {
        SendConnectResponse();
    }
    SendKeepAlive(now);
    CheckForLag(now);

    if (state_ == 2 || state_ == 3) {
        if (KeyOf(peer_id_) == KeyOf(handshake_id_)) {
            connection_manager_calls::AddEvent(kEventConnectDone, &member_id_, 4);
            state_ = 4;
        }
    }
    if (timeout_ms_ > 0 && state_ == 4 &&
        timeout_ms_ < static_cast<std::int32_t>(last_update_time_ - last_recv_time_)) {
        Timeout();
    }
    last_update_time_ = static_cast<std::int32_t>(now);
}

// 0x8258f0 _ZN11CConnection4SendE12tPACKET_TYPEPvi
int CConnection::Send(int packet_type, const void* data, int size) {
    if (state_ == 1) {
        return 0;
    }
    const int transport = connection_manager_calls::PacketTransportType(packet_type);
    const int result = GetTransportMgr()->Send(static_cast<tTRANSPORT_TYPE>(transport), peer_id_, packet_type, data,
                                               static_cast<std::size_t>(size));
    if (result >= 0) {
        last_send_time_ = online_calls::Now();
    }
    return result;
}
