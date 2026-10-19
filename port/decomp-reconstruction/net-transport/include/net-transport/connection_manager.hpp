// CConnectionManager: the 32-slot connection table (indexed by member id), the packet-type
// callback table and the connect/disconnect handshake. Reconstructed from libDungeonHunter2.so
// pseudocode and the ARM listing.
//
// Original layout (32-bit offsets):
//   +0x00 vptr
//   +0x08 event queue (CEventQueueBase base, CEventQueue<EVENTS,100>)
//   +0x0c CNetMutex (constructed and destroyed only)
//   +0x1c connection slots, 32 x CConnection* (index = member id)
//   +0x9c transport handles, 3 entries (indexed by protocol)
//   +0xa8 initialized flag
// Statics: s_connectionManager (the singleton), s_recvCBMap (10 entries of 12 bytes:
// protocol, member callback, network id callback), m_connections_mutex.
#pragma once

#include <cstdint>
#include <vector>

#include "net-session-online/c_event_queue_base.hpp"  // CEventQueueBase (one definition, net-session-online)
#include "net-transport/connection.hpp"
#include "net-transport/net_bit_stream.hpp"
#include "net-transport/net_network_id.hpp"
#include "net-transport/sync.hpp"

using tPACKET_TYPE = int;
using tPROTOCOL_TYPE = int;
using tCONNECTION_STATISTIC = int;

class CConnectionManager {
public:
    static constexpr int kConnectionSlots = 32;  // +0x1c, 0x80 bytes of CConnection*
    static constexpr int kPacketTypes = 10;      // s_recvCBMap, 120 bytes / 12
    static constexpr int kTransportSlots = 3;    // +0x9c, +0xa0, +0xa4

    // Callback taking the member id of the sender (int) and the packet bytes.
    using MemberCallback = void (*)(int member, char* data, int size);
    // Callback taking the sender's network id.
    using NetIdCallback = void (*)(CNetworkId& from, char* data, int size);

    struct RecvCallbacks {
        tPROTOCOL_TYPE protocol = 0;                // +0x00
        MemberCallback by_member = nullptr;         // +0x04
        NetIdCallback by_network_id = nullptr;      // +0x08
    };

    CConnectionManager();
    virtual ~CConnectionManager();  // D1 (0x7fd400); D2 and D0 are compiler-generated
    CConnectionManager(const CConnectionManager&) = delete;
    CConnectionManager& operator=(const CConnectionManager&) = delete;

    virtual int Update();   // vtable +0x08, 0x7fcc30
    virtual int GetImpl();  // vtable +0x0c, 0x7fbd4c

    // Singleton access.
    static CConnectionManager* GetInstance();      // 0x7fbd54
    static bool IsInitialized();                   // 0x7fbd78
    static int Initialize();                       // 0x7fcec0
    static void Terminate();                       // 0x7fcd98

    // Connection table lookups.
    CConnection* GetConnectionByNetworkId(CNetworkId& id);  // 0x7fbda0
    int GetMemberId(CNetworkId& id);                        // 0x7fbdf8
    CConnection* GetConnectionByMemberId(int member_id);    // 0x7fc438
    CNetworkId GetMemberNetworkId(int member_id);           // 0x7fc6a8
    bool IsConnected(int member_id);                        // 0x7fc6f4
    int GetConnectionCount(bool connected_only);            // 0x7fbe94
    std::vector<int> GetConnMemberIdList(bool all);         // 0x7fd284

    // Connection management.
    int Connect(int member_id, CNetworkId& id);                      // 0x7fc930
    int Accept(int member_id, CNetworkId& id, std::uint64_t key);    // 0x7fc9cc
    int AddConnection(int member_id, CConnection* conn);             // 0x7fc8d0
    int Disconnect(int member_id, bool notify);                      // 0x7fc718
    int DisconnectPeer(int member_id);                               // 0x7fc680
    int DisconnectAll();                                             // 0x7fbe54
    void SetConnectionTimeouts(std::uint32_t timeout);               // 0x7fc070
    int KeepAliveConnections();                                      // 0x7fc1d8
    void PingConnections();                                          // 0x7fc06c
    int GetServerPing();                                             // 0x7fcf94 _ZN18CConnectionManager13GetServerPingEv

    // Packet type registration.
    static int RegisterPacketType(tPACKET_TYPE type, tPROTOCOL_TYPE protocol, MemberCallback cb);     // 0x7fbf5c
    static int RegisterPacketType(tPACKET_TYPE type, tPROTOCOL_TYPE protocol, NetIdCallback cb);      // 0x7fbf98
    static int UnregisterPacketType(tPACKET_TYPE type);                                               // 0x7fc33c
    static bool IsPacketTypeRegistered(tPACKET_TYPE type);                                            // 0x7fbfd4
    std::intptr_t GetPacketTransportType(tPACKET_TYPE type);                                          // 0x7fc014
    std::intptr_t GetTransportType(tPROTOCOL_TYPE protocol);                                          // 0x7fc060

    // Sending.
    int SendTo(tPACKET_TYPE type, CNetworkId& to, void* data, int size);   // 0x7fc3ac
    int SendTo(tPACKET_TYPE type, int member_id, void* data, int size);    // 0x7fc5f8
    int SendToAll(tPACKET_TYPE type, void* data, int size);                // 0x7fbeec
    int SendBroadcast(tPACKET_TYPE type, void* data, int size);            // 0x7fc3ec
    int SendToServer(tPACKET_TYPE type, void* data, int size);             // 0x7fc638

    // Receive callbacks (static, registered as NetIdCallback).
    static int sReceiverCallback(tPACKET_TYPE type, CNetworkId& from, char* data, int size);  // 0x7fc244
    static void sPacketReceiverCallback(CNetworkId& from, char* data, int size);              // 0x7fcc08
    static void sPingReceiverCallback(CNetworkId& from, char* data, int size);                // 0x7fc4e0
    void PacketReceiverCallback(CNetworkId& from, char* data, int size);                      // 0x7fcb2c
    void PingReceiverCallback(CNetworkId& from, char* data, int size);                        // 0x7fc464

    // Handshake and disconnect packets (subtypes 0..4 of PacketReceiverCallback).
    int ProcessConnectionRequest(CNetworkId& from, NetBitStream& stream);    // 0x7fca74
    void ProcessConnectionResponse(CNetworkId& from, NetBitStream& stream);  // 0x7fc568
    void ProcessConnectionFinalize(CNetworkId& from, NetBitStream& stream);  // 0x7fc508
    int ProcessDisconnect(CNetworkId& from, NetBitStream& stream);           // 0x7fc830
    int ProcessDisconnectPeer(CNetworkId& from, NetBitStream& stream);       // 0x7fc864

    // Statistics hooks (empty in the original).
    void ReportStatistic(int transport, tCONNECTION_STATISTIC stat, int value);                 // 0x7fc094
    void ReportStatistic(tTRANSPORT_TYPE transport, CNetworkId& id,
                         tCONNECTION_STATISTIC stat, int value);                                // 0x7fc098
    void PrintStatistics();                                                                     // 0x7fc09c
    void PrintMergedStatistics();                                                               // 0x7fc0a0
    void GetBandwidth(int& in, int& out);                                                       // 0x7fc0a4

    int InitializeInternal();     // 0x7fcdec
    int TerminateInternal();      // 0x7fcd04

    // Static state (public with the rest, decision 9).
    static CConnectionManager* s_connectionManager;
    static RecvCallbacks s_recvCBMap[kPacketTypes];
    static CNetMutex m_connections_mutex;

    CEventQueueBase event_queue_{100};                  // +0x08 (CEventQueue<EVENTS, 100>)
    CNetMutex mutex_;                                   // +0x0c
    CConnection* connections_[kConnectionSlots] = {};   // +0x1c
    std::intptr_t transports_[kTransportSlots] = {};    // +0x9c
    bool initialized_ = false;                          // +0xa8
};
