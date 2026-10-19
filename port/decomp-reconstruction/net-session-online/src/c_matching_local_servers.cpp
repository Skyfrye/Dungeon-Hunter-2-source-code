#include "net-session-online/c_matching_local.hpp"
#include "net-transport/net_trace.hpp"  // DH2_NET_TRACE_LOG (host runner only)
#include "net-session-online/deps/matching_queue.hpp"
#include "net-session-online/c_room_attributes.hpp"  // CRoomAttributes (real)
#include "net-session-online/c_room_search_filter.hpp"  // CRoomSearchFilter (real)
#include "net-session-online/deps/platform_stand_ins.hpp"
#include "net-session-online/deps/stream_bytes.hpp"
#include "net-transport/connection_manager.hpp"  // CConnectionManager (real)
#include "net-transport/transport_manager.hpp"   // CTransportManager (host names)

// 0x8094fc _ZN14CMatchingLocal9AddServerEiR10CNetworkIdiR15CRoomAttributes
// The room filter is the real CRoomSearchFilter::TestRoomAttributes. An existing address is refreshed
// (last-seen time and rank); a new one is added under the next key when the filter accepts it, with the host
// name the transport manager reports for the address (vtable +0x1c). The original reads the online clock twice
// for a new entry (last-seen time, then the time offset); so does this. Partial only because the clock is
// OnlineNowMs, the stand-in for the COnline virtual at slot 0 (GetAbsoluteTime).
std::int32_t CMatchingLocal::AddServer(std::int32_t memberId, CNetworkId& address,
                                       std::int32_t rank, CRoomAttributes& attributes) {
    serversMutex_.Lock();
    for (auto& entry : servers_) {
        if (entry.second.address.IsEqual(address)) {
            entry.second.lastSeenMs = OnlineNowMs();
            entry.second.rank = rank;
            DH2_NET_TRACE_LOG("[mp] AddServer refresh key %llu member %d rank %d\n", static_cast<unsigned long long>(entry.first), memberId, rank);
            serversMutex_.Unlock();
            return 0;
        }
    }
    const bool accepted = roomSearchFilter_.TestRoomAttributes(attributes);
    if (!accepted) {
        DH2_NET_TRACE_LOG("[mp] AddServer filter rejected member %d (attr1 %d attr2 %d attr4 %d attr5 %d)\n", memberId, attributes.GetAttributeInt(static_cast<tROOM_ATTRIBUTES_INT>(1)),
                          attributes.GetAttributeInt(static_cast<tROOM_ATTRIBUTES_INT>(2)), attributes.GetAttributeInt(static_cast<tROOM_ATTRIBUTES_INT>(4)),
                          attributes.GetAttributeInt(static_cast<tROOM_ATTRIBUTES_INT>(5)));
    }
    if (accepted) {
        tMatchingPeer peer;
        peer.memberId = memberId;
        peer.address = address;
        peer.lastSeenMs = OnlineNowMs();
        CNetworkId peerId = address;  // GetHostname takes a non-const reference
        peer.name = GetTransportMgr()->GetHostname(peerId);
        peer.rank = rank;
        peer.timeOffset = OnlineNowMs() - serverPollTime_;
        peer.roomAttributes = attributes;
        const std::uint64_t key = static_cast<std::uint64_t>(static_cast<std::int64_t>(nextPeerKey_));
        ++nextPeerKey_;
        servers_[key] = peer;
        DH2_NET_TRACE_LOG("[mp] AddServer new key %llu member %d rank %d\n", static_cast<unsigned long long>(key), memberId, rank);
        if (roomOperationPending_) {
            MatchingInternalEventQueue().AddEvent(8388622, nullptr, 0);  // 0x80000e
        }
    }
    serversMutex_.Unlock();
    return 0;
}

// 0x8072d8 _ZN14CMatchingLocal12RemoveServerER10CNetworkId
// The original walks the tree in key order and erases the first entry whose address matches.
void CMatchingLocal::RemoveServer(const CNetworkId& address) {
    serversMutex_.Lock();
    for (auto it = servers_.begin(); it != servers_.end(); ++it) {
        if (it->second.address.IsEqual(address)) {
            servers_.erase(it);
            break;
        }
    }
    serversMutex_.Unlock();
}

// 0x8073c4 _ZN14CMatchingLocal12PurgeServersEv
// Erases every server not seen for more than 20000 ms. The clock is read per entry, as in the original.
std::int32_t CMatchingLocal::PurgeServers() {
    serversMutex_.Lock();
    for (auto it = servers_.begin(); it != servers_.end();) {
        const std::uint32_t age = static_cast<std::uint32_t>(OnlineNowMs()) -
                                  static_cast<std::uint32_t>(it->second.lastSeenMs);
        if (age > 0x4E20) {
            it = servers_.erase(it);
        } else {
            ++it;
        }
    }
    serversMutex_.Unlock();
    return 0;
}

// 0x8097c4 _ZN14CMatchingLocal20ProcessServerMessageER10CNetworkIdR12NetBitStream
// The sender's id (from) is not used by the original body; the record carries the address.
void CMatchingLocal::ProcessServerMessage(const CNetworkId& /*from*/, NetBitStream& stream) {
    if (memberId_ < 0 || memberId_ != serverMemberId_) {
        RoomServerHeader header{};
        stream.ReadByteArray(&header, sizeof header);
        CRoomAttributes attributes;
        attributes.Unserialize(stream);
        if (CConnectionManager::GetInstance()->IsConnected(header.memberId) && header.memberCount > memberCapacity_) {
            CConnectionManager::GetInstance()->Disconnect(header.memberId, false);
            MatchingInternalEventQueue().AddEvent(8388621, nullptr, 0);  // 0x80000d
        }
        if (header.flag != 0) {
            RemoveServer(header.listenId);
        } else {
            AddServer(header.memberId, header.listenId, header.memberCount, attributes);
        }
    }
}

// 0x808538 _ZN14CMatchingLocal13GetMemberNameEi
// The local member gets the local host name whole (transport manager vtable +0x20); a remote member gets the
// part of the host name (vtable +0x1c, asked with the member network id) before the first '.'.
std::string CMatchingLocal::GetMemberName(std::int32_t memberId) {
    if (memberId == memberId_) {
        return GetTransportMgr()->GetLocalhostname();
    }
    CNetworkId memberNetworkId = CConnectionManager::GetInstance()->GetMemberNetworkId(memberId);
    const std::string full = GetTransportMgr()->GetHostname(memberNetworkId);
    const std::size_t dot = full.find('.');
    return dot == std::string::npos ? full : full.substr(0, dot);
}

// 0x80838c _ZN14CMatchingLocal11GetRoomListEv
// Under the servers mutex (+0x463c), each server of the map (key order) becomes one tRoomInfo: the room id is the map key,
// the name the peer's transport name, +0x20 the peer's rank, the attributes a copy of the peer's room attributes and
// +0x3c0 the peer's +0x40 word (the time offset).
std::vector<tRoomInfo> CMatchingLocal::GetRoomList() {
    std::vector<tRoomInfo> rooms;
    serversMutex_.Lock();
    for (const auto& entry : servers_) {
        tRoomInfo info;
        info.roomId = static_cast<std::int64_t>(entry.first);
        info.name = entry.second.name;
        info.unk_20 = entry.second.rank;
        info.attributes = entry.second.roomAttributes;
        info.unk_3c0 = entry.second.timeOffset;
        rooms.push_back(info);
    }
    serversMutex_.Unlock();
    return rooms;
}
