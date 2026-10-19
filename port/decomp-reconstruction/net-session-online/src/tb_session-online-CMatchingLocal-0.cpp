// Batch e1-net-session-online-CMatchingLocal-0: CMatchingLocal accessors, the room-state reset,
// IsInRoom() and the packet entry points. The entry points whose bodies run through the NetStruct
// member layer and the CMatching base class are partial: they compile, their unreproduced steps
// are named in each comment, and they return 0 (see the ledger notes).
#include "net-session-online/c_matching_local.hpp"

#include "net-session-online/c_room_attributes.hpp"  // CRoomAttributes (real)
#include "net-session-online/c_room_search_filter.hpp"  // CRoomSearchFilter (real)
#include "net-session-online/deps/platform_stand_ins.hpp"
#include "net-session-online/deps/stream_bytes.hpp"
#include "net-transport/connection_manager.hpp"  // CConnectionManager (real)

// 0x801b30 _ZNK14CMatchingLocal11GetMemberIdEv
std::int32_t CMatchingLocal::GetMemberId() const {
    return memberId_;  // +0x3638
}

// 0x801b48 _ZNK14CMatchingLocal17GetServerMemberIdEv
std::int32_t CMatchingLocal::GetServerMemberId() const {
    return serverMemberId_;  // +0x363c
}

// 0x805680 _ZN14CMatchingLocal14GetFriendsListEb
// Partial: the original zeroes the three-pointer vector it returns through the hidden result,
// which is an empty list. The element type is not recoverable from the symbol. tFriendInfo is
// assumed here, from the friend-entry record in the port, and is not confirmed by the body.
std::vector<tFriendInfo> CMatchingLocal::GetFriendsList(bool /*flag*/) {
    return {};
}

// 0x8057f0 _ZN14CMatchingLocal17ProcessLostPacketEii
// Reconstructed against the 0x8057f0 pseudocode, in its order:
//   CMatching::ProcessLostPacket(a2, a3)                       [the base's own element loop runs first]
//   NetStruct::ProcessLostPacket(this+0x4A20, a2, a3)          [the room-info record's +0x44 slot]
//   for i in 0..31 (unconditional 32, not the member count):
//       (*element.vptr+0x44)(element, a2, a3)                  [CMatchingLocal's own member records]
// The result is the last call's. WHAT THE OLD NOTE GOT WRONG: it called the member-record loop "not
// declared in this class (layout request)" and returned 0. The class's own record array is declared now
// (localMembers_, +0x4BE0, stride 408), so the loop runs. Note the loop bound is the literal 32 the
// pseudocode shows (`for (i = 0; i != 32; ++i)`), not CMatching::memberCount_.
std::int32_t CMatchingLocal::ProcessLostPacket(std::int32_t a2, std::int32_t a3) {
    CMatching::ProcessLostPacket(a2, a3);
    roomInfo_->NetStruct::ProcessLostPacket(a2, a3);  // +0x4A20, the room-info record
    std::int32_t result = 0;
    for (int i = 0; i != kLocalMemberCount; ++i) {
        localMembers_[i].ProcessLostPacket(a2, a3);  // element vtable slot +0x44
        result = 1;
    }
    return result;
}

// 0x80585c _ZN14CMatchingLocal25ProcessAcknowledgedPacketEii
// Reconstructed against the 0x80585c pseudocode: the same shape as ProcessLostPacket, with
// CMatching::ProcessAcknowledgedPacket first, then the room-info record's slot +0x40, then every one of
// the 32 member records' slot +0x40 (unconditional 32).
std::int32_t CMatchingLocal::ProcessAcknowledgedPacket(std::int32_t a2, std::int32_t a3) {
    CMatching::ProcessAcknowledgedPacket(a2, a3);
    roomInfo_->NetStruct::ProcessAcknowledgedPacket(a2, a3);  // +0x4A20
    std::int32_t result = 0;
    for (int i = 0; i != kLocalMemberCount; ++i) {
        localMembers_[i].ProcessAcknowledgedPacket(a2, a3);  // element vtable slot +0x40
        result = 1;
    }
    return result;
}

// 0x805b14 _ZN14CMatchingLocal14ReadPacketDataEiiR12NetBitStream
// Reconstructed against the 0x805b14 pseudocode, in its order:
//   CMatching::ReadPacketData(a2, a3, stream)                        [the base's room + element load]
//   NetStruct::ConditionalLoad(this+0x4A20, (memberId_ < 0 || memberId_ != serverMemberId_), stream, a2, 0)
//   if the local member IS the server: NetStructArray<ServerBackupNetStruct,32>::Erase(this+0x7EE0, stream)
//   else:                              NetStructArray<ServerBackupNetStruct,32>::Load(this+0x7EE0, stream, a2, -1)
//   for i in 0..31 (unconditional 32): (*element.vptr+0x14)(element, stream, a2, 0)   [the record's Load]
// The result is the last record's. WHAT THE OLD NOTE GOT WRONG: it said "none of those layers is in this
// port, so nothing is read", and returned 0. The room record is a real NetStruct now, the backup array is
// declared, and the record array is declared; all three steps run. The Array Erase/Load presence-bit
// shape is inline here because the port keeps the array's count as a plain int (serverBackupCount_) rather
// than net-transport's NetStructArray header; see the header of c_matching_local.hpp.
std::int32_t CMatchingLocal::ReadPacketData(std::int32_t a2, std::int32_t a3, NetBitStream& stream) {
    CMatching::ReadPacketData(a2, a3, stream);

    const bool isServer = memberId_ >= 0 && memberId_ == serverMemberId_;
    roomInfo_->NetStruct::ConditionalLoad(!isServer, stream, a2, 0u);  // +0x4A20, the room-info record

    // NetStructArray<ServerBackupNetStruct,32>::Erase (0x8059f8) / ::Load (0x805a64) at +0x7EE0.
    if (stream.ReadBit() != 0 && serverBackupCount_ > 0) {
        if (isServer) {
            for (int i = 0; i < serverBackupCount_; ++i) {
                serverBackup_[i].NetStruct::Erase(stream);
            }
        } else {
            bool loaded = false;
            for (int i = 0; i < serverBackupCount_ && !loaded; ++i) {
                loaded = serverBackup_[i].NetStruct::Load(stream, a2, static_cast<std::uint32_t>(-1)) != 0;
            }
        }
    }

    bool result = false;
    for (int i = 0; i != kLocalMemberCount; ++i) {
        result = localMembers_[i].NetStruct::Load(stream, a2, 0u) != 0;  // element vtable slot +0x14
    }
    return result ? 1 : 0;
}

// 0x8063c4 _ZN14CMatchingLocal15WritePacketDataEiiR12NetBitStream
// Reconstructed against the 0x8063c4 pseudocode, in its order. `local` below is the binary's
// `memberId_ >= 0 && memberId_ == serverMemberId_`, recomputed at each step because the body re-reads the
// two ids after every call:
//   1. result = CMatching::WritePacketData(a2, a3, stream);
//   2. NetStruct::SetEnabled(this+0x4A20, local); result |= NetStruct::Serialize(this+0x4A20, stream, a2, a3);
//   3. for i in 0..serverBackupCount_-1: NetStruct::SetEnabled(serverBackup_ + i, local);
//   4. result |= NetStructArray<ServerBackupNetStruct,32>::Serialize(this+0x7EE0, stream, a2, a3);
//   5. for i in 0..31: when the local member is the server and the record's id is neither the local id nor
//      a connected member, the record's id member gets SetValue(-1) and its address member gets
//      SetValue(a CNetworkId::Reset()) first; then NetStruct::SetEnabled(record, local || record.id == a2),
//      and ConditionalSerialize(record, a2 != record.id || !local, stream, a2, a3), whose result ORs into
//      the return value.
// WHAT THE OLD NOTE GOT WRONG: it said "nothing is written to the stream and the result is 0". The base
// call, the room record's serialize, the backup array's serialize and the 32 records' conditional
// serialize all run now.
std::int32_t CMatchingLocal::WritePacketData(std::int32_t a2, std::int32_t a3, NetBitStream& stream) {
    std::int32_t result = CMatching::WritePacketData(a2, a3, stream);

    const bool localIsServer = memberId_ >= 0 && memberId_ == serverMemberId_;
    roomInfo_->SetEnabled(localIsServer);
    if (roomInfo_->NetStruct::Serialize(stream, a2, a3) != 0) {
        result |= 1;
    }

    // Step 3: enable or disable every backup record before the array serialize.
    for (int i = 0; i < serverBackupCount_; ++i) {
        serverBackup_[i].SetEnabled(localIsServer);
    }
    // Step 4: the array's Serialize writes its own presence bit under the array's HasDataToSend (any element).
    bool anyBackupData = false;
    for (int i = 0; i < serverBackupCount_ && !anyBackupData; ++i) {
        anyBackupData = serverBackup_[i].HasDataToSend(a2);
    }
    if (anyBackupData) {
        stream.WriteBit(1);
        bool wrote = false;
        for (int i = 0; i < serverBackupCount_ && !wrote; ++i) {
            wrote = serverBackup_[i].NetStruct::Serialize(stream, a2, a3) != 0;
        }
        if (wrote) result |= 1;
    } else {
        stream.WriteBit(0);
    }

    // Step 5: the 32 own records.
    for (int i = 0; i != kLocalMemberCount; ++i) {
        MemberInfoNetStruct& record = localMembers_[i];
        const std::int32_t recordId = record.id();
        if (memberId_ >= 0 && memberId_ == serverMemberId_ && recordId != memberId_ &&
            !CConnectionManager::GetInstance()->IsConnected(recordId)) {
            record.setId(-1);
            CNetworkId zero;
            zero.Reset();
            record.setNetworkId(zero);
        }
        const bool enabled = (memberId_ >= 0 && memberId_ == serverMemberId_) || recordId == a2;
        record.SetEnabled(enabled);
        const bool conditional = !(a2 == recordId && memberId_ >= 0 && memberId_ == serverMemberId_);
        if (record.NetStruct::ConditionalSerialize(conditional, stream, a2, a3) != 0) {
            result |= 1;
        }
    }
    return result;
}

// 0x805cc8 _ZN14CMatchingLocal8IsInRoomEv
// Reconstructed. The local member is the server (both ids valid and equal), or the server id is connected.
// Otherwise the room counts as joined when the connection manager is initialized and has a connected
// member (CConnectionManager::IsInitialized() is static and takes no argument; the Hex-Rays nullptr is
// not a parameter). This is also the vtable +0x64 slot that IsInRoom(int) calls.
bool CMatchingLocal::IsInRoom() {
    if (memberId_ >= 0 && memberId_ == serverMemberId_) {
        return true;
    }
    if (CConnectionManager::GetInstance()->IsConnected(serverMemberId_)) {
        return true;
    }
    if (!CConnectionManager::IsInitialized()) {
        return false;
    }
    return CConnectionManager::GetInstance()->GetConnectionCount(false) > 0;
}

// 0x8074a4 _ZN14CMatchingLocal5ResetEv
// Reconstructed against the 0x8074a4 pseudocode and its assembly. In the original order:
//   serverPollTime_ = 0 (+0x465C), roomOperationPending_ = false (+0x3630), followed by the four
//   NetStruct value writes, each preceded by the temporary whose SetChanged is decided by a slot the
//   original never writes (the category's settled case; the member's own SetValue is what raises the real
//   change flag, and the net-transport SetValue does fire it when the value differs):
//     this+0x4B50+0x1D bool -> 1     (the room-info record's first bool, roomClosed_)
//     this+0x4B70+0x1D bool -> 1     (the room-info record's second bool, roomHiddenFlag_)
//     memberIdCounter_'s value -> 0  (the room-info record's first int, value at +0x4BD8)
//     serverMemberId_ (+0x363C) -> -2, then memberId_ (+0x3638) -> -1
//   then under serversMutex_: the server map is cleared (its node count is zeroed and the tree header is
//   reset to the sentinel), the mutex is released.
//   then, for all 32 of the class's OWN member records (stride 408 from +0x4BE0): the id member's value
//   gets -1 through its SetValue slot (+0x1c), then a CNetworkId::Reset() is written through the address
//   member's SetValue slot.
// WHAT THE OLD NOTE GOT WRONG: it said the 32 member-record resets were "not declared in this class yet
// (layout request)" and listed them as not reproduced, and it described the room flags as
// "written with the value 1 on every path" while also claiming the member-id counter write needed the
// NetStruct arrays. The record array is declared now, so the 32 resets run, and the room-info writes go
// through the real members of roomInfo_ (which is where +0x4B50 / +0x4B70 / +0x4BB8 point: roomInfo_ is
// the object at +0x4A20 and its four members sit at +0x130, +0x150, +0x170, +0x198 inside it).
void CMatchingLocal::Reset() {
    serverPollTime_ = 0;             // +0x465c
    roomOperationPending_ = false;   // +0x3630
    roomInfo_->setRoomClosed(true);      // +0x4B6D: the room-info record's first bool
    roomInfo_->setRoomHidden(true);      // +0x4B8D: the record's second bool
    roomInfo_->unk170_.SetValue(0);      // +0x4BB8 + 0x20: the counter int
    memberIdCounter_ = 0;
    roomInfo_->unk198_.SetValue(-2);     // the second int holds the server member id (-2 just after Reset)
    serverMemberId_ = -2;            // +0x363c
    memberId_ = -1;                  // +0x3638
    serversMutex_.Lock();
    servers_.clear();                // +0x4644 map, count at +0x4654
    serversMutex_.Unlock();
    for (int i = 0; i != kLocalMemberCount; ++i) {
        MemberInfoNetStruct& record = localMembers_[i];
        record.setId(-1);            // element id member SetValue, +0x130
        CNetworkId zero;
        zero.Reset();
        record.setNetworkId(zero);   // element address member SetValue, +0x158
    }
}
