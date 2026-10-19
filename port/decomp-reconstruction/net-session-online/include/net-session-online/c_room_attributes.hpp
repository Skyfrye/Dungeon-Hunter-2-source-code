// CRoomAttributes has one definition: the game class in dh2/CRoomAttributes.hpp (NetStruct-based, laid out as the binary:
// vptr, the 908-byte NetRoomAttributes block at +0x08, bodies in game-world/src/g1-game-world-CRoomAttributes-*.cpp).
// The stand-in that lived here (plain int array and std::vector members, inline bodies, Serialize and Unserialize that did
// nothing) defined the same mangled symbols with a different layout, which collided at link time (link-1). This header
// only keeps the old include path.
//
// Differences a caller sees against the stand-in: the attribute ids are the enums tROOM_ATTRIBUTES_INT and
// tROOM_ATTRIBUTES_BIN, the accessors are not const (they are not in the binary), IsAttributeActiveInt/Bin are
// IsAttibuteActive (the original spelling), the NetStruct enable flag is m_netRoomAttributes.SetEnabled, and the copy with
// a flag mask is NetRoomAttributes::Copy.
#pragma once

#include "dh2/CRoomAttributes.hpp"
