// Helpers for the net-session-online tests that read room attributes. CRoomAttributes is the game class now
// (dh2/CRoomAttributes.hpp, one definition, link-1): the attribute ids are the enums tROOM_ATTRIBUTES_INT/_BIN, and the
// accessors are not const (they are not in the binary). These wrappers take plain ints and const references.
#pragma once

#include "net-session-online/c_room_attributes.hpp"

inline tROOM_ATTRIBUTES_INT RoomInt(int attribute) { return static_cast<tROOM_ATTRIBUTES_INT>(attribute); }
inline tROOM_ATTRIBUTES_BIN RoomBin(int attribute) { return static_cast<tROOM_ATTRIBUTES_BIN>(attribute); }

inline int RoomGetInt(const CRoomAttributes& room, int attribute) {
    return const_cast<CRoomAttributes&>(room).GetAttributeInt(RoomInt(attribute));
}
inline bool RoomIntActive(const CRoomAttributes& room, int attribute) {
    return const_cast<CRoomAttributes&>(room).IsAttibuteActive(RoomInt(attribute));
}
inline bool RoomBinActive(const CRoomAttributes& room, int attribute) {
    return const_cast<CRoomAttributes&>(room).IsAttibuteActive(RoomBin(attribute));
}

// NetStruct::enabled_ (+0x124) is protected and has no getter. This reads it the way a derived class could: the
// pointer to member is formed inside a derived class, where the protected name is accessible.
struct NetStructEnabledProbe : NetStruct {
    static bool Get(const NetStruct& netStruct) { return netStruct.*(&NetStructEnabledProbe::enabled_); }
};
inline bool RoomNetEnabled(const CRoomAttributes& room) {
    return NetStructEnabledProbe::Get(room.m_netRoomAttributes);
}
