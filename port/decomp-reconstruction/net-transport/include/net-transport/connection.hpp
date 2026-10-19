// CConnection: one peer connection of the matching layer. Reconstructed from
// libDungeonHunter2.so pseudocode. Members are public (TRACK-B decision 9).
//
// Original layout (32-bit offsets, kept as comments):
//   +0x00 vptr (CConnection)
//   +0x04 event_queue_: CEventQueue<CConnection::EVENTS, 100>, a CEventQueueBase of 0x14 bytes (vptr +0x04,
//         CNetMutex +0x08, event list +0x0c, expiry 100 at +0x14). The constructor sets its vptr to the
//         CEventQueue<EVENTS,100> table; the destructor clears it.
//   +0x18 state_: 0 idle, 1 disconnected, 2 connect requested, 3 accept pending, 4 connected
//   +0x1c member_id_: set by Connect; IsToServer compares it with CMatching's slot 116 (ctor sentinel -14531089)
//   +0x20 peer_id_ (CNetworkId, 28 bytes)
//   +0x3c last_recv_time_, +0x40 last_send_time_, +0x44 last_keepalive_time_,
//   +0x48 last_update_time_, +0x4c lag_start_time_, +0x50 timeout_ms_, +0x54 lag_flag_
//   +0x58 stats_[9] (CDataStats<int>, 36 bytes each in the original)
//   +0x17c..+0x190: the sample store of stats_[8] (the ping statistic): its CReadWriteLock at +0x17c, the
//         red-black tree header at +0x180 (colour, root, leftmost, rightmost) and the node count at +0x190.
//         CConnection::ReportStatistic(8, ...) writes it, and CConnectionManager::GetServerPing reads it.
//   +0x19c handshake_id_ (CNetworkId, 28 bytes)
//   +0x1b8 key_ (64-bit connection key)
//
// Virtual slots (vtable offsets): +0x08 Connect, +0x0c Accept, +0x10 Disconnect,
// +0x14 Update, +0x18 Send.
#pragma once

#include <cstddef>
#include <cstdint>

#include "net-session-online/c_event_queue_base.hpp"  // CEventQueueBase (one definition, net-session-online)
#include "net-transport/deps/c_data_stats.hpp"
#include "net-transport/net_network_id.hpp"

// Ping message. Only the fields the connection code reads are named.
struct tMsgPing {
    std::int32_t seq;        // [0] sequence number
    std::int32_t reserved;   // [1] not read by the connection code
    std::int32_t timestamp;  // [2] sender's time, subtracted from the receive time
};

class CConnection {
public:
    CConnection();                                           // 0x8259a8 _ZN11CConnectionC1Ev (C2 0x825ab8, same body)
    virtual ~CConnection();                                  // 0x826370 _ZN11CConnectionD2Ev (D1 0x8263f4, D0 0x826478)
    CConnection(const CConnection&) = delete;
    CConnection& operator=(const CConnection&) = delete;

    virtual int Connect(int matching_key, CNetworkId& peer);                     // +0x08, 0x8261c4
    virtual int Accept(int matching_key, CNetworkId& peer, std::uint64_t key);   // +0x0c, 0x826640
    virtual int Disconnect();                                                    // +0x10, 0x82582c
    virtual void Update();                                                       // +0x14, 0x826780
    virtual int Send(int packet_type, const void* data, int size);               // +0x18, 0x8258f0

    bool IsToServer() const;                                 // 0x825338 _ZN11CConnection10IsToServerEv
    bool PrintStatistics() const;                            // 0x825360 _ZN11CConnection15PrintStatisticsEv
    int Ping();                                              // 0x8255c4 _ZN11CConnection4PingEv
    void CheckForLag(std::uint32_t now);                     // 0x8255f4 _ZN11CConnection11CheckForLagEj
    void SendKeepAlive(std::uint32_t now);                   // 0x825688 _ZN11CConnection13SendKeepAliveEj
    void SendConnectFinalize();                              // 0x8256e4 _ZN11CConnection19SendConnectFinalizeEv
    void SendConnectResponse();                              // 0x825788 _ZN11CConnection19SendConnectResponseEv
    void SendConnectRequest();                               // 0x82605c _ZN11CConnection18SendConnectRequestEv
    int Timeout();                                           // 0x82596c _ZN11CConnection7TimeoutEv
    void MergeStatistics(CDataStats<int>* dst);              // 0x825f08 _ZN11CConnection15MergeStatisticsEP10CDataStatsIiE
    void ReportStatistic(int statistic, int value);          // 0x82600c _ZN11CConnection15ReportStatisticE21tCONNECTION_STATISTICi
    int ProcessPing(tMsgPing& ping);                         // 0x826114 _ZN11CConnection11ProcessPingER8tMsgPing
    int SetLastRecvTime();                                   // 0x8261a4 _ZN11CConnection15SetLastRecvTimeEv
    void ProcessConnectFinalize(CNetworkId& id);             // 0x8266ec _ZN11CConnection22ProcessConnectFinalizeER10CNetworkId
    void ProcessConnectResponse(CNetworkId& id);             // 0x826730 _ZN11CConnection22ProcessConnectResponseER10CNetworkId

    // Accessors used by CConnectionManager (offsets as in the layout comment above).
    int State() const { return state_; }                              // +0x18
    int MemberId() const { return member_id_; }                       // +0x1c
    CNetworkId& NetworkId() { return peer_id_; }                      // +0x20
    const CNetworkId& NetworkId() const { return peer_id_; }
    std::uint64_t Key() const { return key_; }                        // +0x1b8
    void SetTimeout(std::uint32_t ms) { timeout_ms_ = static_cast<std::int32_t>(ms); }  // +0x50
    void SetState(int state) { state_ = state; }                      // test hook
    void SetMemberId(int member_id) { member_id_ = member_id; }       // test hook

    // Sends one message: a type byte, then `bytes` bytes of payload, to every transport.
    void SendPacket(std::uint8_t type, const void* payload, std::size_t bytes);
    // Handshake payload size and layout, as in the original (16 bytes).
    static constexpr std::size_t kHandshakeBytes = 16;

    CEventQueueBase event_queue_{100};                 // +0x04 (CEventQueue<CConnection::EVENTS, 100>)
    std::int32_t state_ = 0;                           // +0x18
    std::int32_t member_id_ = -14531089;               // +0x1c
    CNetworkId peer_id_{};                             // +0x20
    std::int32_t last_recv_time_ = 0;                  // +0x3c
    std::int32_t last_send_time_ = 0;                  // +0x40
    std::int32_t last_keepalive_time_ = 0;             // +0x44
    std::int32_t last_update_time_ = 0;                // +0x48
    std::int32_t lag_start_time_ = 0;                  // +0x4c
    std::int32_t timeout_ms_ = 30000;                  // +0x50
    bool lag_flag_ = false;                            // +0x54
    CDataStats<int> stats_[9];                         // +0x58 (stats_[8], +0x178, holds the ping samples)
    CNetworkId handshake_id_{};                        // +0x19c
    std::uint64_t key_ = 0;                            // +0x1b8
};
