#include "net-session-online/t_matching_peer.hpp"

// 0x808208 _ZN13tMatchingPeerC1ERKS_ (the C2 copy has the same body)
// Member-wise copy in the original's field order. The original copies the 28-byte address and the time as raw words; the
// port copies the typed fields. (This was an explicit instantiation of tMatchingPeerT<CRoomAttributes, 0> until the
// room attributes had one definition, link-1.)
tMatchingPeer::tMatchingPeer(const tMatchingPeer& other)
    : memberId(other.memberId),
      address(other.address),
      lastSeenMs(other.lastSeenMs),
      name(other.name),
      rank(other.rank),
      timeOffset(other.timeOffset),
      roomAttributes(other.roomAttributes) {}
