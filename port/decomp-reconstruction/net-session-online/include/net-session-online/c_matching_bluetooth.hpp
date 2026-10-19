// CMatchingBluetooth: the Bluetooth room layer. It derives from CMatchingLocal (_ZTV18CMatchingBluetooth at 0x992060 reuses
// CMatchingLocal's WritePacketData, ReadPacketData, member and room slots; the object is 0xABB8 bytes, 0x1D0 more than
// CMatchingLocal's 0xA9E8) and overrides the room requests (JoinRoomInternal, CreateJoinRoomInternal, SearchRoomInternal),
// Initialize, Terminate, Update and LeaveRoom. Devices are found through the Bluetooth socket's event queue and announced
// through the device name (GenerateBluetoothDeviceName / ParseBluetoothDeviceName).
//
// Layout after the CMatchingLocal part (original 32-bit offsets, kept as comments):
//   +0xA9E8 CBluetoothNetRoomInfo (replicated room record: name member, member-count member)
//   +0xAB78 int (0)   +0xAB7C byte (0)   +0xAB84 byte, set by LeaveRoom, cleared by Update once one member is left
//   +0xAB88 std::string device name   +0xABA0 std::map<unsigned, bool> (destroyed by the destructor; no recovered writer)
// Statics: s_connectRetries (std::map<unsigned, unsigned>), s_peerNames (std::map<unsigned, std::string>).
#pragma once

#include <cstdint>
#include <map>
#include <string>

#include "net-session-online/c_matching_local.hpp"
#include "net-session-online/t_matching_peer.hpp"  // tMatchingPeer (value type of the original's parameter)
#include "net-transport/tb/bluetooth_net_room_info.hpp"

class CMatchingBluetooth : public CMatchingLocal {
public:
    // 0x800ed8 _ZN18CMatchingBluetoothC1Ev: CMatchingLocal(), the room record, the scalar words and the empty containers.
    CMatchingBluetooth();
    // 0x80246c _ZN18CMatchingBluetoothD1Ev (D0 at 0x802500 is the compiler's): the maps, the device name and the room record
    // are destroyed, then CMatchingLocal.
    ~CMatchingBluetooth() override;

    // 0x801b60 _ZN18CMatchingBluetooth16GetTransportTypeE14tPROTOCOL_TYPE: table {3, 4, 4}
    // indexed by the protocol type; any type above 2 gives 0. The object is not read.
    static std::int32_t GetTransportType(std::uint32_t protocolType);
    // vtable +0x34 hook of CMatching: the table lookup above.
    int TransportTypeForProtocol(int protocol) override { return GetTransportType(static_cast<std::uint32_t>(protocol)); }

    // 0x803cbc CMatchingBluetooth::GenerateBluetoothDeviceName(tMatchingPeer): the device name that announces a room: the
    // peer's name, "|m=<member id>", "|i_<n>=<value>" for the active int attributes 1..7, "|b_<n>=<bytes>" for the active bin
    // attributes 3 and 4, and a closing "|". The original takes `this` without using it, so this is static.
    static std::string GenerateBluetoothDeviceName(tMatchingPeer peer);
    // 0x803920 _ZN18CMatchingBluetooth24ParseBluetoothDeviceNameESs: the inverse. The returned peer has member id -1 (until
    // "|m=" is found), rank 1, the name before the first '|', and the attributes parsed from the fields.
    static tMatchingPeer ParseBluetoothDeviceName(std::string deviceName);

    // 0x801c58 _ZN18CMatchingBluetooth18SetServerBroadcastEv: the transport manager starts the broadcast of the
    // transport that listens on the manager's own listen id (EnableBroadcast(GetListenNetworkId(0))). The object
    // is not read.
    void SetServerBroadcast();

    // Virtual slots (see the vtable dump in the class comment).
    // 0x803274 _ZN18CMatchingBluetooth16JoinRoomInternalEy (vtable +0x00)
    std::int32_t JoinRoomInternal(std::uint64_t roomId) override;
    // 0x803ed0 _ZN18CMatchingBluetooth22CreateJoinRoomInternalEbR15CRoomAttributes (+0x04)
    std::int32_t CreateJoinRoomInternal(bool open, CRoomAttributes& attributes) override;
    // 0x8037b4 _ZN18CMatchingBluetooth18SearchRoomInternalER17CRoomSearchFilterbh (+0x08)
    std::int32_t SearchRoomInternal(CRoomSearchFilter& filter, bool flag, std::uint8_t mode) override;
    // 0x802020 _ZN18CMatchingBluetooth10InitializeEi (+0x28)
    std::int32_t Initialize(std::int32_t memberCapacity);
    // 0x80236c _ZN18CMatchingBluetooth9TerminateEv (+0x2c)
    std::int32_t Terminate();
    // 0x804cf8 _ZN18CMatchingBluetooth6UpdateEv (+0x30)
    std::int32_t Update();
    // 0x801c94 _ZN18CMatchingBluetooth9LeaveRoomEv (+0x3c)
    std::int32_t LeaveRoom() override;

    // 0x803718 _ZN18CMatchingBluetooth10InitializeEiSs: stores the device name (+0xAB88), then Initialize(int) through the vtable.
    std::int32_t Initialize(std::int32_t memberCapacity, std::string deviceName);
    // 0x803448 _ZN18CMatchingBluetooth18AddBluetoothServerEii13tMatchingPeer: adds a found device as a server (key = id) when
    // it passes the search filter (attribute 0 erased); a known address only has its last-seen time refreshed.
    void AddBluetoothServer(std::int32_t memberId, std::int32_t id, tMatchingPeer peer);
    // 0x804234 _ZN18CMatchingBluetooth13ProcessEventsEv: the Bluetooth socket's events (device found 0x1000001, lost
    // 0x1000002, connect result 0x1000003, 0x1000004, error 0x1000006).
    std::int32_t ProcessEvents();

    CBluetoothNetRoomInfo roomInfoBt_;        // +0xA9E8
    std::int32_t unkAB78_ = 0;                // +0xAB78
    bool unkAB7C_ = false;                    // +0xAB7C
    bool waitingForMembers_ = false;          // +0xAB84
    std::string deviceName_;                  // +0xAB88
    std::map<std::uint32_t, bool> unkABA0_;   // +0xABA0

    static std::map<std::uint32_t, std::uint32_t> s_connectRetries;  // 0xa2f0e8
    static std::map<std::uint32_t, std::string> s_peerNames;         // 0xa2f100
};
