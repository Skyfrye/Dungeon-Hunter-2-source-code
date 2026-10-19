#include "net-session-online/c_matching_local.hpp"
#include "net-session-online/deps/matching_queue.hpp"
#include "net-session-online/c_room_attributes.hpp"  // CRoomAttributes (real)
#include "net-session-online/c_room_search_filter.hpp"  // CRoomSearchFilter (real)
#include "net-session-online/deps/platform_stand_ins.hpp"
#include "net-session-online/deps/stream_bytes.hpp"
#include "net-transport/connection_manager.hpp"  // CConnectionManager (real)
#include "net-transport/transport_manager.hpp"   // CTransportManager (GetListenNetworkId)

// Packet type ids used by these bodies: 1 server message, 2 client message/request,
// 4 change-server message (see the registrations in Initialize).

// 0x805d58 _ZN14CMatchingLocal23SendChangeServerMessageEv
std::int32_t CMatchingLocal::SendChangeServerMessage() {
    NetBitStream stream(0x800);
    const std::uint8_t type = 4;
    stream.WriteByteArray(&type, 1);
    const std::int32_t id = memberId_;
    stream.WriteByteArray(&id, sizeof id);
    auto bytes = StreamBytes(stream);
    return CConnectionManager::GetInstance()->SendToAll(4, bytes.data(), static_cast<int>(bytes.size()));
}

// 0x805de0 _ZN14CMatchingLocal18SendServerResponseEb
// Re-verified from the asm and the Hex-Rays: NetBitStream(0x800); WriteByteArray(&1, 1); CNetworkId::Reset
// of a 40-byte local whose first 3 dwords come from CTransportManager::GetListenNetworkId(0) (v10[0..2] =
// *(_DWORD*)&v21, then v11.s_addr = v24, v12..v14 = v25..v27 -- the same 28-byte id copied as the port's
// RoomServerHeader::listenId assignment); the two inet_ntoa() calls are traces whose results are discarded;
// the +0x6c and +0x60 virtuals fill v15/v16 (= memberId_ and GetMemberCount()); flag; WriteByteArray(&v10,
// 0x28); CRoomAttributes::Serialize(this+0x4660, stream, 7); then
// CConnectionManager::SendBroadcast(2, v19 (= the stream's buffer), (v20>>3) + ((v20&7)!=0)). Every one of
// those steps is in the body, including the length arithmetic (StreamBytes returns the same byte count).
// Deviation: the two inet_ntoa() debug calls are not reproduced (their results are never stored).
std::int32_t CMatchingLocal::SendServerResponse(bool flag) {
    NetBitStream stream(0x800);
    const std::uint8_t type = 1;
    stream.WriteByteArray(&type, 1);
    RoomServerHeader header{};
    header.listenId = GetTransportMgr()->GetListenNetworkId(0);
    header.memberId = memberId_;
    header.memberCount = GetMemberCount();
    header.flag = flag ? 1 : 0;
    stream.WriteByteArray(&header, sizeof header);
    roomAttributes_.Serialize(stream, 7);
    auto bytes = StreamBytes(stream);
    return CConnectionManager::GetInstance()->SendBroadcast(2, bytes.data(), static_cast<int>(bytes.size()));
}

// 0x805f2c _ZN14CMatchingLocal17SendClientRequestEv
// The listen address is fetched and then not written, as in the original.
std::int32_t CMatchingLocal::SendClientRequest() {
    NetBitStream stream(0x800);
    const std::uint8_t type = 2;
    stream.WriteByteArray(&type, 1);
    (void)GetTransportMgr()->GetListenNetworkId(0);
    auto bytes = StreamBytes(stream);
    return CConnectionManager::GetInstance()->SendBroadcast(2, bytes.data(), static_cast<int>(bytes.size()));
}

// 0x805ee0 _ZN14CMatchingLocal20ProcessClientMessageER10CNetworkIdR12NetBitStream
// Reconstructed. When this member is the server, the original calls vtable slot +0x58 (the vtable dump names it
// IsRoomHidden) and answers with SendServerResponse(false) when the room is not hidden. The original's int*
// result (the slot's value or the response's result) is not returned here; the only caller ignores it.
void CMatchingLocal::ProcessClientMessage(const CNetworkId& /*from*/, NetBitStream& /*stream*/) {
    if (memberId_ >= 0 && memberId_ == serverMemberId_) {
        if (!IsRoomHidden()) {
            SendServerResponse(false);
        }
    }
}

// 0x805fa8 _ZN14CMatchingLocal22PacketReceiverCallbackEiPci
void CMatchingLocal::PacketReceiverCallback(std::int32_t from, char* data, std::uint32_t size) {
    NetBitStream stream(size);
    stream.SetBuffer(data, size);
    std::uint8_t type = 0;
    stream.ReadByteArray(&type, 1);
    if (type == 4) {
        ProcessChangeServerMessage(from, stream);
    }
}

// 0x80601c _ZN14CMatchingLocal23sPacketReceiverCallbackEiPci
// Routes to the matching object. The original does not check for a missing object either.
void CMatchingLocal::sPacketReceiverCallback(std::int32_t from, char* data, int size) {
    static_cast<CMatchingLocal*>(CMatching::s_Matching)->PacketReceiverCallback(from, data, static_cast<std::uint32_t>(size));
}

// 0x8098cc _ZN14CMatchingLocal31BroadcastPacketReceiverCallbackER10CNetworkIdPci
void CMatchingLocal::BroadcastPacketReceiverCallback(CNetworkId& from, char* data, std::uint32_t size) {
    NetBitStream stream(size);
    stream.SetBuffer(data, size);
    std::uint8_t type = 0;
    stream.ReadByteArray(&type, 1);
    if (type == 1) {
        ProcessServerMessage(from, stream);
    } else if (type == 2) {
        ProcessClientMessage(from, stream);
    }
}

// 0x80995c _ZN14CMatchingLocal32sBroadcastPacketReceiverCallbackER10CNetworkIdPci
void CMatchingLocal::sBroadcastPacketReceiverCallback(CNetworkId& from, char* data, int size) {
    static_cast<CMatchingLocal*>(CMatching::s_Matching)->BroadcastPacketReceiverCallback(from, data, static_cast<std::uint32_t>(size));
}
