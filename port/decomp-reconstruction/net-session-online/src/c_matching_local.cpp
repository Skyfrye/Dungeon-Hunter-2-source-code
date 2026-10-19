#include "net-session-online/c_matching_local.hpp"

#include "net-session-online/member_mask.hpp"
#include "net-session-online/deps/matching_queue.hpp"
#include "net-transport/net_bit_stream.hpp"

// 0x801b14 _ZN14CMatchingLocal12IsRoomHiddenEv
// Reconstructed. The binary reads the byte at +0x4B6D (the room-info record's first bool, i.e. the record
// at +0x4A20 plus 0x14D) and returns it when it is set, otherwise the byte at +0x4B8D (the second bool,
// +0x16D). Those bytes are NetStructBool values, not plain fields: the old body read the port's own
// roomHiddenFlag_/roomClosed_ plain fields, which were the same two values as bytes. They are the record's
// members now (roomInfo_->roomHidden() / roomInfo_->roomClosed()), so the reads go through the real
// NetStructMemberType<bool> objects.
bool CMatchingLocal::IsRoomHidden() {
    if (roomInfo_->roomHidden()) {
        return true;
    }
    return roomInfo_->roomClosed();
}

// 0x801b08 _ZN14CMatchingLocal12IsRoomClosedEv
// Reconstructed: the room-info record's first bool (value byte +0x4B6D). What the old inline body got
// wrong is in the header comment.
bool CMatchingLocal::IsRoomClosed() {
    return roomInfo_->roomClosed();
}

// Test seam (not in the original): drive the room-info record's two bool members, which is where the flags
// live now.
void CMatchingLocal::SetRoomFlagsForTest(bool closed, bool hiddenFlag) {
    roomInfo_->setRoomClosed(closed);
    roomInfo_->setRoomHidden(hiddenFlag);
}

// 0x805664 _ZN14CMatchingLocal13GetMemberMaskEi
std::int32_t CMatchingLocal::GetMemberMask(std::int32_t memberId) const {
    return MemberMaskForId(memberId);
}

// 0x8056a0 _ZN14CMatchingLocal16GetTransportTypeE14tPROTOCOL_TYPE
std::int32_t CMatchingLocal::GetTransportType(std::uint32_t protocolType) {
    static const std::int32_t kTransportTypes[3] = {1, 2, 1};  // CSWTCH.616
    if (protocolType > 2) {
        return 0;
    }
    return kTransportTypes[protocolType];
}

// 0x801fb0 _ZN14CMatchingLocal14SendInvitationEPKcS1_b
std::int32_t CMatchingLocal::SendInvitation(const char* /*from*/, const char* /*to*/, bool /*flag*/) {
    MatchingInternalEventQueue().AddEvent(0x800015, nullptr, 0);
    return 0;
}

// 0x801fe8 _ZN14CMatchingLocal17ReceiveInvitationEv
std::int32_t CMatchingLocal::ReceiveInvitation() {
    MatchingInternalEventQueue().AddEvent(0x800017, nullptr, 0);
    return 0;
}

// 0x805998 _ZN14CMatchingLocal26ProcessChangeServerMessageEiR12NetBitStream
// The original returns the AddEvent result, which is nothing in the port's queue.
void CMatchingLocal::ProcessChangeServerMessage(std::int32_t /*from*/, NetBitStream& stream) {
    std::int32_t serverId = 0;
    stream.ReadByteArray(&serverId, sizeof serverId);
    serverMemberId_ = serverId;
    MatchingInternalEventQueue().AddEvent(0x80000b, &serverId, sizeof serverId);
}

// 0x807e44 _ZN14CMatchingLocalC2Ev
// Reconstructed against the 0x807e44 pseudocode, in its order:
//   CMatching::CMatching(this)                       [implicit: the base constructor runs first]
//   nextPeerKey_ = 1 (+0x3634), memberId_ = -1 (+0x3638), serverMemberId_ = -2 (+0x363C)
//   roomOperationPending_ = 0 (+0x3630), the derived vptr
//   three CNetMutex objects, the servers_ map header (+0x4644 with its node count at +0x4654)
//   CRoomAttributes and CRoomSearchFilter
//   roomInfo_ (RoomInfoNetStruct, +0x4A20)
//   32 CMatchingLocal::MemberInfoNetStruct records (+0x4BE0, stride 408)
//   the server-backup array header (+0x7EE0: vptr and count 32) and its 32 ServerBackupNetStruct
//     records (+0x7EE8, stride 344)
//   Reset() last
// WHAT THE OLD NOTE GOT WRONG: it said "the original constructs the NetStruct members (room info, member
// and server-backup records) before it runs Reset() last. Those constructors are not run here (the members
// are not declared in this class, layout request)". They are declared and constructed now. The only
// deviation is that roomInfo_ and serverBackup_ are heap objects (see the header): the owner allocates
// them here and releases them in the destructor.
CMatchingLocal::CMatchingLocal() {
    nextPeerKey_ = 1;          // +0x3634
    memberId_ = -1;            // +0x3638
    serverMemberId_ = -2;      // +0x363c
    roomOperationPending_ = false;  // +0x3630
    roomInfo_ = new RoomInfoNetStruct();       // +0x4A20
    serverBackupCount_ = 32;                   // +0x7EE0
    serverBackup_ = new ServerBackupNetStruct[serverBackupCount_];  // +0x7EE8
    Reset();
}

// 0x807f80 _ZN14CMatchingLocalD1Ev
// Reconstructed for the part the port owns: the two heap records are released, then the base destructor
// runs (the binary destroys the NetStruct records and clears the server map first; the port's array of own
// records is a real member with its own destructors, so that part is the compiler's job).
CMatchingLocal::~CMatchingLocal() {
    delete roomInfo_;
    roomInfo_ = nullptr;
    delete[] serverBackup_;
    serverBackup_ = nullptr;
}
