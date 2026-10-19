// Call shims for the connection code (CConnection, ConnectionLobby). The classes these calls
// reach are owned by other slices: CMatching, COnline, CConnectionManager (and its event
// queue), CTransportManager, CLobbyParameterAndQuery and the XP_API / LC_API platform layer.
// Each shim keeps the original call's name and arguments, and returns a neutral value, so the
// connection code compiles and runs on its own. Replace each namespace with the real calls
// when the categories are merged.
#pragma once

#include <chrono>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <vector>

#include "net-transport/net_network_id.hpp"

class CLobbyParameterAndQuery;

// CMatching::Get() and its members used by the connection code.
namespace matching_calls {
// The three calls reach the live CMatching object (src/connection_env.cpp). When no matching object exists (the unit tests of this
// slice) they keep the old stand-in answers: not the server, local id 0, matching key 0.
// CMatching::IsServer().
bool IsServer();
// CMatching::Get()->(vtable +0x6c): the local id written into the connect handshake.
std::int32_t LocalId();
// CMatching::Get()->(vtable +0x74): compared with CConnection::matching_key_ by IsToServer.
std::int32_t MatchingKey();
}  // namespace matching_calls

// GetOnline() and its members used by the connection code.
namespace online_calls {
// GetOnline()->(vtable +0x00): the 32-bit millisecond clock.
inline std::int32_t Now() {
    auto now = std::chrono::steady_clock::now().time_since_epoch();
    return static_cast<std::int32_t>(std::chrono::duration_cast<std::chrono::milliseconds>(now).count());
}
// GetOnline()->+0x20: reference time read by CConnection::ProcessPing (the online start time). 0 without a connection manager.
std::int32_t PingReference();
// COnline::ReportDisconnect(reason, detail). Nothing is reported without a connection manager.
void ReportDisconnect(int reason, int detail);
}  // namespace online_calls

// GetConnectionMgr() and the event queue at its +0x08.
namespace connection_manager_calls {
// CEventQueueBase::AddEvent on GetConnectionMgr()'s queue (the event is dropped when there is no connection manager).
int AddEvent(int event, const void* data, int size);
// CConnectionManager::GetPacketTransportType(packet_type) (transport 0 without a connection manager).
int PacketTransportType(int packet_type);
}  // namespace connection_manager_calls

// GetTransportMgr() and the CTransportManager calls the connection code makes.
// One packet handed to a transport stand-in. The send paths record here so that tests can check what
// was sent (the stand-ins send nothing).
struct SentPacketRecord {
    int packetType;
    bool broadcast;  // true for a send to every peer (no peer given)
    std::vector<std::uint8_t> bytes;
};
// Packets handed to the transport stand-ins, in order.
inline std::vector<SentPacketRecord>& SentPacketLog() {
    static std::vector<SentPacketRecord> log;
    return log;
}
inline void RecordSentPacket(int packetType, bool broadcast, const void* data, int size) {
    const auto* bytes = static_cast<const std::uint8_t*>(data);
    const std::size_t count = size > 0 ? static_cast<std::size_t>(size) : 0;
    SentPacketLog().push_back({packetType, broadcast, std::vector<std::uint8_t>(bytes, bytes + count)});
}

namespace transport_calls {
// CTransportManager::SendToAllTransport(transport, peer, data, size). Stand-in: nothing is sent.
inline void SendToAllTransport(int transport_type, CNetworkId* peer, const void* data, int size) {
    (void)transport_type;
    (void)peer;
    (void)data;
    (void)size;
}
// CTransportManager::Send(transport, peer, packet_type, data, size). Stand-in: returns 0 bytes.
inline int Send(int transport_type, CNetworkId& peer, int packet_type, const void* data, int size) {
    (void)transport_type;
    (void)peer;
    RecordSentPacket(packet_type, false, data, size);  // a point-to-point send
    return 0;
}
// CTransportManager::Connect(peer). Stand-in: returns 0.
inline int Connect(CNetworkId& peer) {
    (void)peer;
    return 0;
}
// CTransportManager::KeepAlive(peer). Stand-in: nothing is sent.
inline void KeepAlive(CNetworkId& peer) { (void)peer; }
// CTransportManager::GetListenNetworkId(transport). Stand-in: an empty id.
inline CNetworkId GetListenNetworkId(int transport_type) {
    (void)transport_type;
    return CNetworkId{};
}
}  // namespace transport_calls

// CLobbyParameterAndQuery's packing slot (vtable +0x10). Returns a malloc'ed buffer of *length
// bytes, freed with platform_calls::Free, or nullptr. Stand-in: nothing to pack.
namespace lobby_query {
inline void* Pack(CLobbyParameterAndQuery* query, int* length) {
    (void)query;
    *length = 0;
    return nullptr;
}
}  // namespace lobby_query

// The XP_API_* / LC_API_* platform layer. XP_DEBUG_OUT is not reproduced.
namespace platform_calls {
// XP_API_GET_TIME: the millisecond clock truncated to 32 bits.
inline std::int32_t GetTime() { return online_calls::Now(); }
// XP_API_GET_RANDOM: a random 32-bit value. Stand-in: the C library generator.
inline std::int32_t GetRandom() { return static_cast<std::int32_t>(std::rand()); }
// XP_API_STRLEN: the length as a 16-bit value, as the packet fields take it.
inline std::int16_t StrLen(const char* text) { return static_cast<std::int16_t>(std::strlen(text)); }
// LC_API_FREE_0 and CustomFree: the original's allocator frees.
inline void Free(void* p) { std::free(p); }
}  // namespace platform_calls
