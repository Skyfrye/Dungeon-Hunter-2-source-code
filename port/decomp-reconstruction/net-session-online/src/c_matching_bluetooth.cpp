// CMatchingBluetooth (all rows). The class derives from CMatchingLocal (see c_matching_bluetooth.hpp).

#include "net-session-online/c_matching_bluetooth.hpp"

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <memory>
#include <string>
#include <vector>

#include "dh2/CRoomSearchFilter.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_online.hpp"
#include "net-session-online/deps/matching_queue.hpp"
#include "net-session-online/deps/platform_stand_ins.hpp"
#include "net-transport/bluetooth_socket.hpp"
#include "net-transport/connection_manager.hpp"
#include "net-transport/net_network_id.hpp"
#include "net-transport/transport_manager.hpp"

namespace {

// Bluetooth socket events (CBluetoothSocketAbstract::s_eventQueue).
constexpr int kEventDeviceFound = 0x1000001;
constexpr int kEventDeviceLost = 0x1000002;
constexpr int kEventConnectResult = 0x1000003;
constexpr int kEventDisconnected = 0x1000004;
constexpr int kEventError = 0x1000006;

// The connection id of a Bluetooth device: both field words carry the peer id (flags |= 0xC).
CNetworkId DeviceNetworkId(std::uint32_t peerId) {
    CNetworkId id;
    id.Reset();
    id.SetField2(peerId);
    id.SetField3(peerId);
    return id;
}

}  // namespace

std::map<std::uint32_t, std::uint32_t> CMatchingBluetooth::s_connectRetries;
std::map<std::uint32_t, std::string> CMatchingBluetooth::s_peerNames;

// 0x800ed8 _ZN18CMatchingBluetoothC1Ev
// CMatchingLocal(), the room record, the words at +0xAB78/+0xAB7C/+0xAB84 cleared, the device name and the maps empty:
// all member initialisation here.
CMatchingBluetooth::CMatchingBluetooth() = default;

// 0x80246c _ZN18CMatchingBluetoothD1Ev (D0 at 0x802500 is the compiler's)
// The +0xABA0 map is cleared, the device name and the room record destroyed, then ~CMatchingLocal: member destruction.
CMatchingBluetooth::~CMatchingBluetooth() = default;

// 0x801b60 _ZN18CMatchingBluetooth16GetTransportTypeE14tPROTOCOL_TYPE
// The original takes the object pointer in r0 and never reads it, so this is static.
std::int32_t CMatchingBluetooth::GetTransportType(std::uint32_t protocolType) {
    static const std::int32_t kTransportTypes[3] = {3, 4, 4};  // CSWTCH.653
    if (protocolType > 2) {
        return 0;
    }
    return kTransportTypes[protocolType];
}

// 0x801c58 _ZN18CMatchingBluetooth18SetServerBroadcastEv
// The listen id of all transports (GetListenNetworkId(0)) is passed to EnableBroadcast, which starts the broadcast
// of the transport whose local id equals it. The object is not read, and the result (EnableBroadcast's leftover
// r0) is not returned.
void CMatchingBluetooth::SetServerBroadcast() {
    CTransportManager* manager = GetTransportMgr();
    CNetworkId listen = GetTransportMgr()->GetListenNetworkId(0);
    manager->EnableBroadcast(listen);
}

// 0x801c94 _ZN18CMatchingBluetooth9LeaveRoomEv
// A server (local id >= 0 and equal to the server id) tells the clients it is closing (SendServerResponse(true)); then
// every connection is dropped (DisconnectAll, CBluetoothSocket::DisconnectFromAllPeers), the Local state is reset, and
// the wait-for-members flag (+0xAB84) is raised. Returns 0.
std::int32_t CMatchingBluetooth::LeaveRoom() {
    if (memberId_ >= 0 && memberId_ == serverMemberId_) {
        SendServerResponse(true);
    }
    GetConnectionMgr()->DisconnectAll();
    CBluetoothSocket::DisconnectFromAllPeers();
    Reset();
    waitingForMembers_ = true;
    return 0;
}

// 0x802020 _ZN18CMatchingBluetooth10InitializeEi
// CMatching::Initialize (qualified, so the base room reset). When the object is still not initialized afterwards, the
// broadcast and unicast packet receivers of CMatchingLocal are registered (types 2, 3 and 4), the Local state is reset and
// event 0x800001 is posted. Returns 0.
std::int32_t CMatchingBluetooth::Initialize(std::int32_t memberCapacity) {
    CMatching::Initialize(memberCapacity);
    if (!initialized_) {
        CConnectionManager* manager = CConnectionManager::GetInstance();
        manager->RegisterPacketType(2, 2, &CMatchingLocal::sBroadcastPacketReceiverCallback);
        manager->RegisterPacketType(3, 1, &CMatchingLocal::sBroadcastPacketReceiverCallback);
        manager->RegisterPacketType(4, 1, &CMatchingLocal::sPacketReceiverCallback);
        Reset();
        MatchingInternalEventQueue().AddEvent(8388609, nullptr, 0);  // 0x800001
    }
    return 0;
}

// 0x803718 _ZN18CMatchingBluetooth10InitializeEiSs
std::int32_t CMatchingBluetooth::Initialize(std::int32_t memberCapacity, std::string deviceName) {
    deviceName_ = std::move(deviceName);
    Initialize(memberCapacity);  // vtable +0x28
    return 0;
}

// 0x80236c _ZN18CMatchingBluetooth9TerminateEv
// Both matching queues are cleared, the connect retry map emptied, packet types 2, 3 and 4 unregistered and
// CMatchingLocal::Terminate run. Returns 0.
std::int32_t CMatchingBluetooth::Terminate() {
    MatchingOutputEventQueue().Clear();
    MatchingInternalEventQueue().Clear();
    s_connectRetries.clear();
    CConnectionManager::UnregisterPacketType(2);
    CConnectionManager::UnregisterPacketType(3);
    CConnectionManager::UnregisterPacketType(4);
    CMatchingLocal::Terminate();
    return 0;
}

// 0x803274 _ZN18CMatchingBluetooth16JoinRoomInternalEy
// Under the servers mutex the room list (vtable +0x90) is searched for the room id. An unknown room posts 0x80000c. A known
// one makes its server the server member, connects to it through a network id whose field word 2 is the (low 32 bits of the)
// room id, and clears the pending flag (+0x3630). Returns 0.
std::int32_t CMatchingBluetooth::JoinRoomInternal(std::uint64_t roomId) {
    serversMutex_.Lock();
    const std::vector<tRoomInfo> rooms = GetRoomList();  // vtable +0x90
    bool known = false;
    for (const tRoomInfo& room : rooms) {
        if (static_cast<std::uint64_t>(room.roomId) == roomId) {
            known = true;
            break;
        }
    }
    auto server = servers_.find(roomId);
    if (!known || server == servers_.end()) {
        MatchingInternalEventQueue().AddEvent(8388620, nullptr, 0);  // 0x80000c
    } else {
        serverMemberId_ = server->second.memberId;
        CNetworkId id;
        id.Reset();
        id.SetField2(static_cast<std::uint32_t>(roomId));
        GetConnectionMgr()->Connect(server->second.memberId, id);
        roomOperationPending_ = false;
    }
    serversMutex_.Unlock();
    return 0;
}

// 0x803448 _ZN18CMatchingBluetooth18AddBluetoothServerEii13tMatchingPeer
// Under the servers mutex the server map is searched for the peer's address: a known one gets its last-seen time. Otherwise
// the search filter (+0x49f8, copied, attribute 0 erased) must accept the peer's room attributes; the peer is then stamped with
// the online clock and stored under the key `id` (member id, address, time, name, rank, time offset, attributes), the device
// names of the stored and the incoming peer are printed, and 0x80000e is posted while a room operation is pending.
void CMatchingBluetooth::AddBluetoothServer(std::int32_t /*memberId*/, std::int32_t id, tMatchingPeer peer) {
    serversMutex_.Lock();
    for (auto& entry : servers_) {
        if (entry.second.address.IsEqual(peer.address)) {
            entry.second.lastSeenMs = OnlineNowMs();  // +0x38 of the node
            serversMutex_.Unlock();
            return;
        }
    }
    CRoomSearchFilter filter(roomSearchFilter_);
    filter.EraseSearchAttributeInt(ROOM_INT_ATTRIBUTE_0);
    if (filter.TestRoomAttributes(peer.roomAttributes)) {
        peer.lastSeenMs = OnlineNowMs();
        tMatchingPeer& slot = servers_[static_cast<std::uint64_t>(static_cast<std::int64_t>(id))];
        slot = peer;
        char storedName[32] = {};
        char incomingName[32] = {};
        slot.roomAttributes.GetAttributeBin(ROOM_BIN_ATTRIBUTE_0, storedName, 32);
        peer.roomAttributes.GetAttributeBin(ROOM_BIN_ATTRIBUTE_0, incomingName, 32);
        std::printf("namemap: %s ; namepeer: %s", storedName, incomingName);
        if (roomOperationPending_) {
            MatchingInternalEventQueue().AddEvent(8388622, nullptr, 0);  // 0x80000e
        }
    }
    serversMutex_.Unlock();
}

// 0x8037b4 _ZN18CMatchingBluetooth18SearchRoomInternalER17CRoomSearchFilterbh
// -1 until initialized. The Local state is reset, the filter stored, the pending flag raised, the connect retry map emptied,
// the Bluetooth display name set to "GameLoft Device", the broadcast started (SetServerBroadcast), and the Local search run
// with mode 0.
std::int32_t CMatchingBluetooth::SearchRoomInternal(CRoomSearchFilter& filter, bool flag, std::uint8_t /*mode*/) {
    if (!initialized_) {
        return -1;
    }
    Reset();
    roomSearchFilter_ = filter;  // +0x49f8, CRoomSearchFilter::operator=
    roomOperationPending_ = true;
    s_connectRetries.clear();
    CBluetoothSocketAbstract::s_DisplayName = "GameLoft Device";
    SetServerBroadcast();
    return CMatchingLocal::SearchRoomInternal(filter, flag, 0);
}

// 0x803ed0 _ZN18CMatchingBluetooth22CreateJoinRoomInternalEbR15CRoomAttributes
// -1 until initialized. The Local state is reset and the pending flag raised; the local member becomes the server under a new
// member id (GenerateNewMemberId, vtable +0xac), the room is shown (+0x0d cleared). The host name of an empty network id
// (address 1 present) goes into the room record's name member and the current member count (vtable +0x60) into its value
// member. The device name is built from a peer holding the local member id, that name and the attributes, becomes the
// Bluetooth display name, and the broadcast starts; OpenRoom(open) (vtable +0x44), event 0x800003, and the attributes are kept
// at +0x4660. Returns 0.
std::int32_t CMatchingBluetooth::CreateJoinRoomInternal(bool open, CRoomAttributes& attributes) {
    if (!initialized_) {
        return -1;
    }
    Reset();
    roomOperationPending_ = true;
    memberId_ = serverMemberId_ = GenerateNewMemberId();
    roomHidden_ = false;  // +0x0d
    CNetworkId address;
    address.Reset();
    address.SetAddress1(0, 0);
    roomInfoBt_.name_.SetValue(GetTransportMgr()->GetHostname(address));
    roomInfoBt_.value_.SetValue(GetMemberCount());
    tMatchingPeer peer;
    peer.memberId = memberId_;
    peer.name = roomInfoBt_.name_.GetValue();
    peer.roomAttributes = attributes;
    CBluetoothSocketAbstract::s_DisplayName = GenerateBluetoothDeviceName(peer);
    SetServerBroadcast();
    OpenRoom(open);
    MatchingInternalEventQueue().AddEvent(8388611, nullptr, 0);  // 0x800003
    roomAttributes_ = attributes;
    return 0;
}

// 0x803cbc _ZN18CMatchingBluetooth27GenerateBluetoothDeviceNameE13tMatchingPeer
std::string CMatchingBluetooth::GenerateBluetoothDeviceName(tMatchingPeer peer) {
    std::string out;
    CRoomAttributes attributes(peer.roomAttributes);
    out += peer.name;
    char field[64];
    std::snprintf(field, sizeof field, "|m=%d", static_cast<int>(peer.memberId));
    out += field;
    for (int i = 1; i != 8; ++i) {
        const auto attribute = static_cast<tROOM_ATTRIBUTES_INT>(i);
        if (!attributes.IsAttibuteActive(attribute)) {
            continue;
        }
        std::snprintf(field, sizeof field, "|i_%d=%d", i, attributes.GetAttributeInt(attribute));
        out += field;
    }
    for (int j = 3; j != 5; ++j) {
        const auto attribute = static_cast<tROOM_ATTRIBUTES_BIN>(j);
        if (!attributes.IsAttibuteActive(attribute)) {
            continue;
        }
        const int maxSize = attributes.GetMaxBufferSize(attribute);
        std::vector<char> buffer(static_cast<std::size_t>(maxSize) + 6, 0);
        std::snprintf(buffer.data(), 6, "|b_%d=", j);
        attributes.GetAttributeBin(attribute, buffer.data() + 5, static_cast<unsigned>(maxSize));
        out += buffer.data();
    }
    out += "|";
    return out;
}

// 0x803920 _ZN18CMatchingBluetooth24ParseBluetoothDeviceNameESs
// The text before the first '|' (at most 255 characters) is the name. If "|m=" is found, the member id is read from it (up to
// the next '|'); the int attributes 1..7 are read from "|i_<n>=<value>" fields and the bin attributes 3 and 4 from
// "|b_<n>=<text>" fields (stored with their terminator). Nothing past the name is parsed without the "|m=" field.
// Deviation: the number buffers are 31 characters (the original's 32 bytes were not bounded).
tMatchingPeer CMatchingBluetooth::ParseBluetoothDeviceName(std::string deviceName) {
    tMatchingPeer peer;
    peer.memberId = -1;
    peer.rank = 1;
    std::vector<char> text(deviceName.begin(), deviceName.end());
    text.push_back('\0');
    const char* name = text.data();
    const char* bar = std::strchr(name, '|');
    if (bar != nullptr) {
        const std::ptrdiff_t length = bar - name;
        if (length > 0 && length <= 255) {
            peer.name.assign(name, static_cast<std::size_t>(length));
        }
    }
    const char* member = std::strstr(name, "|m=");
    if (member == nullptr) {
        return peer;
    }
    const char* memberEnd = std::strchr(member + 1, '|');
    if (memberEnd > member + 3) {
        char number[32] = {};
        std::size_t length = static_cast<std::size_t>(memberEnd - (member + 3));
        if (length > 31) {
            length = 31;
        }
        std::memcpy(number, member + 3, length);
        peer.memberId = std::atoi(number);
    }
    auto fieldOf = [&](const char* pattern) -> const char* {
        const char* at = std::strstr(name, pattern);
        if (at == nullptr || std::strlen(pattern) >= std::strlen(at)) {
            return nullptr;
        }
        return at + std::strlen(pattern);
    };
    for (int i = 1; i != 8; ++i) {
        char pattern[16];
        std::snprintf(pattern, sizeof pattern, "|i_%d=", i);
        const char* value = fieldOf(pattern);
        if (value == nullptr) {
            continue;
        }
        const char* end = std::strchr(value, '|');
        if (end == nullptr || value >= end) {
            continue;
        }
        char number[32] = {};
        std::size_t length = static_cast<std::size_t>(end - value);
        if (length > 31) {
            length = 31;
        }
        std::memcpy(number, value, length);
        peer.roomAttributes.SetAttributeInt(static_cast<tROOM_ATTRIBUTES_INT>(i), std::atoi(number));
    }
    for (int j = 3; j != 5; ++j) {
        char pattern[16];
        std::snprintf(pattern, sizeof pattern, "|b_%d=", j);
        const char* value = fieldOf(pattern);
        if (value == nullptr) {
            continue;
        }
        const char* end = std::strchr(value, '|');
        if (end == nullptr || value >= end) {
            continue;
        }
        const std::string bin(value, static_cast<std::size_t>(end - value));
        peer.roomAttributes.SetAttributeBin(static_cast<tROOM_ATTRIBUTES_BIN>(j), bin.c_str(),
                                            static_cast<unsigned>(bin.size()) + 1u);
    }
    return peer;
}

// 0x804234 _ZN18CMatchingBluetooth13ProcessEventsEv
// While the wait-for-members flag is up and this object holds exactly one member, 0x800004 is posted and the flag cleared.
// While a room operation is pending and this member is not the server, the Bluetooth socket's events are handled: a device
// found (0x1000001, a 256-byte name and the peer id) is parsed, its name remembered in s_peerNames, and a valid peer (member id
// above 0) added as a server (AddBluetoothServer) with 0x80000e; a device lost (0x1000002) is removed from the servers and
// from s_peerNames, and 0x80000f is posted when no names remain. Then, unconditionally: an error (0x1000006) reports a
// disconnect (cause 7, detail 1); a disconnect event (0x1000004) disconnects the peer's transport and removes its server; a
// connect result (0x1000003) resets the peer's retry count and forgets its entry in the +0xABA0 map. Returns 0.
std::int32_t CMatchingBluetooth::ProcessEvents() {
    CEventQueueBase& sockets = CBluetoothSocketAbstract::s_eventQueue;
    if (waitingForMembers_) {
        if (GetMemberCount() == 1) {
            MatchingInternalEventQueue().AddEvent(8388612, nullptr, 0);  // 0x800004
            waitingForMembers_ = false;
        }
    }
    if (roomOperationPending_ && (memberId_ < 0 || memberId_ != serverMemberId_)) {
        if (sockets.HasEventOccured(kEventDeviceFound, false)) {
            char buffer[260];
            std::memset(buffer, 0, sizeof buffer);
            sockets.GetEventData(kEventDeviceFound, buffer, 260);
            buffer[255] = '\0';
            std::uint32_t peerId = 0;
            std::memcpy(&peerId, buffer + 256, sizeof peerId);
            tMatchingPeer peer = ParseBluetoothDeviceName(std::string(buffer));
            if (peer.memberId > 0) {
                s_peerNames[peerId] = buffer;
                peer.address = DeviceNetworkId(peerId);
                AddBluetoothServer(peer.memberId, static_cast<std::int32_t>(peerId), peer);
                MatchingInternalEventQueue().AddEvent(8388622, nullptr, 0);  // 0x80000e
            }
            sockets.ConsumeEvent(kEventDeviceFound);
        }
        if (sockets.HasEventOccured(kEventDeviceLost, false)) {
            std::uint32_t peerId = 0;
            sockets.GetEventData(kEventDeviceLost, &peerId, 4);
            sockets.ConsumeEvent(kEventDeviceLost);
            CNetworkId id = DeviceNetworkId(peerId);
            RemoveServer(id);
            s_peerNames.erase(peerId);
            if (s_peerNames.empty()) {
                MatchingInternalEventQueue().AddEvent(8388623, nullptr, 0);  // 0x80000f
            }
        }
    }
    if (sockets.HasEventOccured(kEventError, false)) {
        std::int32_t detail = 0;
        sockets.GetEventData(kEventError, &detail, 4);
        sockets.ConsumeEvent(kEventError);
        if (COnline* online = GetOnline()) {
            online->ReportDisconnect(static_cast<COnline::tDisconnectCause>(7), 1);
        }
    }
    if (sockets.HasEventOccured(kEventDisconnected, false)) {
        char buffer[260];
        std::memset(buffer, 0, sizeof buffer);
        sockets.GetEventData(kEventDisconnected, buffer, 260);
        sockets.ConsumeEvent(kEventDisconnected);
        std::uint32_t peerId = 0;
        std::memcpy(&peerId, buffer + 256, sizeof peerId);
        CNetworkId id = DeviceNetworkId(peerId);
        GetTransportMgr()->Disconnect(id);
        RemoveServer(id);
    }
    if (!sockets.HasEventOccured(kEventConnectResult, false)) {
        return 0;
    }
    std::uint32_t peerId = 0;
    sockets.GetEventData(kEventConnectResult, &peerId, 4);
    sockets.ConsumeEvent(kEventConnectResult);
    s_connectRetries[peerId] = 0;
    unkABA0_.erase(peerId);
    return 0;
}

// 0x804cf8 _ZN18CMatchingBluetooth6UpdateEv
// CMatching::Update; -1 until initialized. The wait-for-members flag (+0xAB84) is cleared (0x800004) once one member is left.
// A server with connections keeps the room record's server word (+0x4BB0) at the first connected member id. A client whose
// id equals that word and whose server is no longer connected takes over: it becomes the server, drops the pending flag
// and the server map, clears the room flags, and announces the room again (device name of a peer holding this member, the
// stored name and the kept attributes; broadcast; 0x80000b). A connection event 0x600001 is handled as in CMatchingLocal
// (the server answers when its room is open and visible; a client records its id and listen address and posts 0x800003). The
// output event 0x40000e for the local id posts 0x40000a, a client in a room connects the members whose records changed, a
// pending 0x80000a gets a server response, and the Bluetooth events are processed. Returns 0.
std::int32_t CMatchingBluetooth::Update() {
    CMatching::Update();
    if (!initialized_) {
        return -1;
    }
    if (waitingForMembers_ && GetMemberCount() == 1) {
        MatchingInternalEventQueue().AddEvent(8388612, nullptr, 0);  // 0x800004
        waitingForMembers_ = false;
    }
    CConnectionManager* connections = GetConnectionMgr();
    if (memberId_ >= 0) {
        if (memberId_ == serverMemberId_) {
            if (connections->GetConnectionCount(0) > 0) {
                const std::vector<std::int32_t> ids = connections->GetConnMemberIdList(true);
                if (!ids.empty() && ids[0] != roomInfo_->unk170_.GetValue()) {
                    roomInfo_->unk170_.SetValue(ids[0]);
                }
            }
        } else if (memberId_ > 0 && memberId_ == roomInfo_->unk170_.GetValue()) {
            if (!connections->IsConnected(serverMemberId_)) {
                serverMemberId_ = memberId_;
                roomOperationPending_ = false;
                servers_.clear();
                roomInfo_->setRoomClosed(false);
                roomInfo_->setRoomHidden(false);
                tMatchingPeer peer;
                peer.memberId = memberId_;
                peer.name = roomInfoBt_.name_.GetValue();
                peer.roomAttributes = roomAttributes_;
                CBluetoothSocketAbstract::s_DisplayName = GenerateBluetoothDeviceName(peer);
                SetServerBroadcast();
                MatchingInternalEventQueue().AddEvent(8388619, &serverMemberId_, 4);  // 0x80000b
            }
        }
    }
    if (connections->event_queue_.HasEventOccured(0x600001, false)) {
        std::int32_t eventMember = 0;
        connections->event_queue_.GetEventData(0x600001, &eventMember, 4);
        if (memberId_ >= 0 && memberId_ == serverMemberId_) {
            if (!IsRoomClosed() && !IsRoomHidden()) {
                SendServerResponse(false);
            }
        } else if (memberId_ != -1) {
            const std::int32_t index = GetMemberIndex(memberId_);
            if (index >= 0 && index < kLocalMemberCount) {
                localMembers_[index].setId(memberId_);
                localMembers_[index].setNetworkId(GetTransportMgr()->GetListenNetworkId(0));
            }
            MatchingInternalEventQueue().AddEvent(8388611, nullptr, 0);  // 0x800003
        }
        connections->event_queue_.ConsumeEvent(0x600001);
    }
    if (MatchingOutputEventQueue().HasEventOccured(0x40000e, false)) {
        std::int32_t payload[2] = {0, 0};
        MatchingOutputEventQueue().GetEventData(0x40000e, payload, sizeof payload);
        if (payload[0] == LocalMemberId()) {
            MatchingOutputEventQueue().AddEvent(0x40000a, nullptr, 0);
        }
    }
    if (IsInRoom() && (memberId_ < 0 || memberId_ != serverMemberId_)) {
        for (std::int32_t i = 0; i != kLocalMemberCount; ++i) {
            MemberInfoNetStruct& member = localMembers_[i];
            if (member.id() > 0 && member.IsChanged() && member.id() != memberId_ &&
                !connections->IsConnected(member.id())) {
                CNetworkId address = member.networkId();
                connections->Connect(member.id(), address);
            }
        }
    }
    if (MatchingInternalEventQueue().HasEventOccured(8388618, true)) {  // 0x80000a
        if (memberId_ >= 0 && memberId_ == serverMemberId_ && (!IsRoomHidden() || IsRoomClosed())) {
            SendServerResponse(IsRoomClosed());
        }
    }
    ProcessEvents();
    return 0;
}
