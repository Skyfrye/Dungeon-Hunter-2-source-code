// tMatchingPeer: the body of one room server seen by the matching layer (the value type of the
// std::map<unsigned long long, tMatchingPeer> of CMatchingLocal at +0x4644 and of CMatchingGLLive at +0x39e8).
//
// This was the class template tMatchingPeerT<RoomAttributes, Variant> while the port had two CRoomAttributes classes.
// CRoomAttributes now has one definition (dh2/CRoomAttributes.hpp), so the template collapsed to the plain class the
// binary has, and its symbols are the original _ZN13tMatchingPeer... names (link-1).
//
// Layout (original 32-bit offsets, kept as comments):
//   +0x00 member id (int)
//   +0x04 peer address (CNetworkId, 28 bytes)
//   +0x20 last-seen time in ms (int), compared with the online clock by PurgeServers
//   +0x24 transport name (std::string here; the original uses the STL private layout)
//   +0x3c rank value (int), compared with CMatchingLocal::joinThreshold_ by JoinRoomInternal
//   +0x40 time offset (int), set from the online clock minus the poll time
//   +0x48 room attributes
#pragma once

#include <cstdint>
#include <string>

#include "net-transport/net_network_id.hpp"

#include "net-session-online/c_room_attributes.hpp"  // CRoomAttributes

class tMatchingPeer {
public:
    // 0x8081c4 _ZN13tMatchingPeerC1Ev / C2Ev
    tMatchingPeer() = default;
    // 0x808208 _ZN13tMatchingPeerC1ERKS_ / C2ERKS_: member-wise copy in the original's field order.
    // The original copies the 28-byte address and the time as raw words; the port copies the typed fields.
    tMatchingPeer(const tMatchingPeer& other);  // t_matching_peer.cpp
    // 0x807240 _ZN13tMatchingPeerD1Ev / D2Ev
    ~tMatchingPeer() = default;

    tMatchingPeer& operator=(const tMatchingPeer&) = default;

    std::int32_t memberId = 0;                 // +0x00
    CNetworkId address;                        // +0x04
    std::int32_t lastSeenMs = 0;               // +0x20
    std::string name;                          // +0x24
    std::int32_t rank = 0;                     // +0x3c
    std::int32_t timeOffset = 0;               // +0x40
    CRoomAttributes roomAttributes;            // +0x48
};
