#include "net-session-online/c_matching_local.hpp"
#include "net-transport/net_trace.hpp"  // DH2_NET_TRACE_LOG (host runner only)
#include "net-session-online/deps/matching_queue.hpp"
#include "net-transport/socket_platform.hpp"
#include "net-transport/transport_manager.hpp"  // GetTransportMgr (the listen id in CreateJoinRoomInternal)

// Room flags: the original writes them through the room-info record's NetStructMemberType<bool> members
// (value plus a dirty flag). WHAT THE OLD NOTE GOT WRONG: it said "the port writes the plain fields, so
// the dirty-flag bookkeeping is not reproduced". The two flags are the record's members now
// (roomInfo_->setRoomHidden / setRoomClosed, the bytes the binary writes at +0x4B8D and +0x4B6D), and
// NetStructMemberType<bool>::SetValue fires NetStructMember::SetChanged when the value differs, so the
// bookkeeping runs.

// 0x806d64 _ZN14CMatchingLocal8HideRoomEv
// Reconstructed. One NetStructMemberType<bool> with value 1 is written through the room-info hidden
// member's Set slot (the value byte at +0x4B8D, i.e. element +0x16D of the record at +0x4A20), then
// internal event 0x80000a is posted. The Set slot fires SetChanged only when the value differs, which is
// NetStructMemberType<bool>::SetValue's behaviour.
std::int32_t CMatchingLocal::HideRoom() {
    roomInfo_->setRoomHidden(true);
    MatchingInternalEventQueue().AddEvent(8388618, nullptr, 0);  // 0x80000a
    return 0;
}

// 0x806e4c _ZN14CMatchingLocal9CloseRoomEv
// Re-verified against the asm head: `LDR R3,[R0]; LDR PC,[R3,#0x58]` -- the virtual at +0x58 (IsRoomHidden
// in the derived vtables) is called first and its bool result is stored into this+0x0d (roomHidden_, the
// CMatching base's byte, saved by CloseRoom before the hidden flag is overwritten); then the closed flag
// (+0x4B6D) and the hidden flag (+0x4B8D) are each set to 1 and internal event 0x80000a is posted.
// The body's order (IsRoomHidden() -> roomHidden_, then the two flags, then the event) matches.
// The two flag stores now go through the room-info record's bool members, so their SetChanged
// notifications run (the old body's plain-byte stores did not).
std::int32_t CMatchingLocal::CloseRoom() {
    roomHidden_ = IsRoomHidden();
    roomInfo_->setRoomClosed(true);
    roomInfo_->setRoomHidden(true);
    MatchingInternalEventQueue().AddEvent(8388618, nullptr, 0);  // 0x80000a
    return 0;
}

// 0x806fc8 _ZN14CMatchingLocal8ShowRoomEv
// Re-verified against the 30-line 0x806FC8 Hex-Rays: `if (!*(this+0x0e))` gates on the CMatching base's
// room-closed byte (baseRoomClosed_), NOT on the room-info closed flag; inside, one bool with value 0 is
// written through the room-info hidden member's Set slot (value byte +0x4B8D), then internal event
// 0x80000a. The port now writes that member, so the notification runs.
std::int32_t CMatchingLocal::ShowRoom() {
    if (!baseRoomClosed_) {
        roomInfo_->setRoomHidden(false);
        MatchingInternalEventQueue().AddEvent(8388618, nullptr, 0);  // 0x80000a
    }
    return 0;
}

// 0x8070bc _ZN14CMatchingLocal8OpenRoomEb
// Same shape as ShowRoom: gated on the base's room-closed byte; the room-info closed flag is set to 0 and
// the hidden flag to the negated argument, both through the record's bool members now.
std::int32_t CMatchingLocal::OpenRoom(bool open) {
    if (!baseRoomClosed_) {
        roomInfo_->setRoomClosed(false);
        roomInfo_->setRoomHidden(!open);
        MatchingInternalEventQueue().AddEvent(8388618, nullptr, 0);  // 0x80000a
    }
    return 0;
}

// 0x80795c _ZN14CMatchingLocal9LeaveRoomEv
std::int32_t CMatchingLocal::LeaveRoom() {
    if (memberId_ >= 0 && memberId_ == serverMemberId_) {
        SendServerResponse(true);
    }
    CConnectionManager::GetInstance()->DisconnectAll();
    Reset();
    MatchingInternalEventQueue().AddEvent(8388612, nullptr, 0);  // 0x800004
    return 0;
}

// 0x8079d4 _ZN14CMatchingLocal22CreateJoinRoomInternalEbR15CRoomAttributes
// Reconstructed against the 0x8079d4 pseudocode, in its order:
//   the initialized byte gates the call (-1 when clear); Reset(); roomOperationPending_ = 1 (+0x3630);
//   the virtual at +0xac (GenerateNewMemberId) is called and its result stored into BOTH serverMemberId_
//   (+0x363C) and memberId_ (+0x3638); the base room-hidden byte (+0x0d) is cleared; the virtual at +0x44
//   (OpenRoom) runs; internal event 0x800003 is posted; roomAttributes_ (+0x4660) is assigned from the
//   argument; then the local member's record is filled in:
//     index = CMatching::GetMemberIndex(newId)
//     record = this + 408*index + 0x4BE0
//     record.id member SetValue(newId)                  [the int member at element +0x130]
//     record.address member SetValue(GetTransportMgr()->GetListenNetworkId(0))
//                                                       [the CNetworkId member at element +0x158]
//   and finally the virtual at +0x58 (IsRoomHidden) gates SendServerResponse(false).
// WHAT THE OLD NOTE GOT WRONG: it said the two record writes "are not reproduced" because "those
// member-info records are not declared in this class yet (layout request)". The record array is declared
// now (localMembers_), so both writes run.
std::int32_t CMatchingLocal::CreateJoinRoomInternal(bool open, CRoomAttributes& attributes) {
    if (!initialized_) {
        return -1;
    }
    Reset();
    roomOperationPending_ = true;
    const std::int32_t newId = GenerateNewMemberId();
    serverMemberId_ = newId;
    memberId_ = newId;
    roomHidden_ = false;
    OpenRoom(open);
    MatchingInternalEventQueue().AddEvent(8388611, nullptr, 0);  // 0x800003
    roomAttributes_ = attributes;

    // Fill in the local member's record (the port's field description is above).
    const std::int32_t index = CMatching::GetMemberIndex(newId);
    if (index >= 0 && index < kLocalMemberCount) {
        MemberInfoNetStruct& record = localMembers_[index];
        record.setId(newId);  // element +0x130 id member SetValue
        record.setNetworkId(GetTransportMgr()->GetListenNetworkId(0));  // element +0x158, SetValue 0x8020b8
    }

    if (!IsRoomHidden()) {
        SendServerResponse(false);
    }
    return 0;
}

// 0x807bec _ZN14CMatchingLocal18SearchRoomInternalER17CRoomSearchFilterbh
// The bool and the byte are not used by the original body.
std::int32_t CMatchingLocal::SearchRoomInternal(CRoomSearchFilter& filter, bool /*flag*/,
                                                std::uint8_t /*mode*/) {
    if (!initialized_) {
        return -1;
    }
    DH2_NET_TRACE_LOG("[mp] SearchRoomInternal: Reset clears %zu servers (next key %d)\n", servers_.size(), nextPeerKey_);
    Reset();
    roomSearchFilter_ = filter;
    roomOperationPending_ = true;
    if (!servers_.empty()) {
        MatchingInternalEventQueue().AddEvent(8388622, nullptr, 0);  // 0x80000e
    }
    return 0;
}

// 0x808774 _ZN14CMatchingLocal16JoinRoomInternalEy
std::int32_t CMatchingLocal::JoinRoomInternal(std::uint64_t key) {
    serversMutex_.Lock();
    auto it = servers_.find(key);
#ifdef DH2_HOST_RUNNER
    DH2_NET_LOG("[net] JoinRoomInternal key %llu found %d servers %zu rank %d threshold %d\n", static_cast<unsigned long long>(key), it != servers_.end() ? 1 : 0, servers_.size(),
                it != servers_.end() ? it->second.rank : -1, memberCapacity_);
#endif
    if (it == servers_.end()) {
        MatchingInternalEventQueue().AddEvent(8388620, nullptr, 0);  // 0x80000c
    } else if (it->second.rank < memberCapacity_) {
        serverMemberId_ = it->second.memberId;
        CConnectionManager::GetInstance()->Connect(it->second.memberId, it->second.address);
        roomOperationPending_ = false;
    } else {
        MatchingInternalEventQueue().AddEvent(8388621, nullptr, 0);  // 0x80000d
    }
    serversMutex_.Unlock();
    return 0;
}

// 0x808694 _ZN14CMatchingLocal23GetSearchRoomAttributesEy
CRoomAttributes CMatchingLocal::GetSearchRoomAttributes(std::uint64_t key) {
    auto it = servers_.find(key);
    if (it == servers_.end()) {
        return CRoomAttributes();
    }
    return it->second.roomAttributes;
}
