#include "net-session-online/c_matching_local.hpp"
#include "net-session-online/deps/matching_queue.hpp"
#include "net-session-online/c_room_attributes.hpp"  // CRoomAttributes (real)
#include "net-session-online/c_room_search_filter.hpp"  // CRoomSearchFilter (real)
#include "net-session-online/deps/platform_stand_ins.hpp"
#include "net-session-online/deps/stream_bytes.hpp"
#include <vector>

#include "dh2/global/net_singletons.hpp"
#include "net-transport/connection_manager.hpp"  // CConnectionManager (real)
#include "net-transport/transport_manager.hpp"

// 0x80890c _ZN14CMatchingLocal6UpdateEv
// The original's control flow in its order (the Hex-Rays labels in brackets):
//   - CMatching::Update() runs first; its result is not used. Not initialized: -1.
//   - branch choice: with any connection the local id decides; without connections and with a local id >= 0 a server
//     change is announced when the local id differs from the server id (server id = local id, room flags cleared,
//     change message, event 0x80000b with the server id). A negative local id goes to [LABEL_7].
//   - the server branch (local id >= 0 and equal to the server id): the 32 server backup records get -3, or, with
//     connections, the connected member ids in order (-3 past the end); then [LABEL_30].
//   - [LABEL_7] the pending-room block: poll timer, event 0x80000f, SendClientRequest, PurgeServers.
//   - [LABEL_8] for a local id > 0 whose server is no longer connected: the backup records are walked; a record equal
//     to the local id makes this member the server (announced as above), a connected one ends the walk.
//   - [LABEL_30] a connection event 0x600001: the server answers (SendServerResponse(false)) when its room is neither
//     closed nor hidden; any other member (except local id -1) stores its id and listen address in its member record
//     and posts 0x800003; the event is consumed.
//   - [LABEL_31] the output-queue event 0x40000e: when its member id is the local id, 0x40000a is posted.
//   - the peer loop gated by IsInRoom() (vtable +0x64): for a non-server, every changed member record with an id above 0
//     other than the local one that is not connected is connected through its CNetworkId member.
//   - the final step: a pending 0x80000a with this member as the server gets a server response carrying the closed flag.
// Deviations: the connection manager singleton is null-checked (a missing one reads as no connections), and the member
// index of the local id is range-checked (the original indexes the record array with -1 when it is absent).
std::int32_t CMatchingLocal::Update() {
    CMatching::Update();  // 0x8018fc, the base update (ProcessEvents, room mask dirty). Result unused.
    if (!initialized_) {
        return -1;
    }
    CConnectionManager* connections = GetConnectionMgr();
    auto connectionCount = [&]() -> std::int32_t {
        return connections != nullptr ? connections->GetConnectionCount(false) : 0;
    };
    auto announceServerChange = [this]() {
        serverMemberId_ = memberId_;
        roomInfo_->setRoomClosed(false);
        roomInfo_->setRoomHidden(false);
        SendChangeServerMessage();
        MatchingInternalEventQueue().AddEvent(8388619, &serverMemberId_, sizeof serverMemberId_);  // 0x80000b
    };

    bool toPending = false;  // goto LABEL_7
    std::int32_t local;
    if (connectionCount() != 0) {
        local = memberId_;
    } else if (memberId_ < 0) {
        toPending = true;
        local = memberId_;
    } else {
        if (memberId_ != serverMemberId_) {
            announceServerChange();
        }
        local = memberId_;
    }

    if (!toPending && local >= 0 && serverMemberId_ == local) {
        // Server branch: the backup records.
        if (serverBackup_ != nullptr) {
            if (connectionCount() <= 0) {
                for (std::int32_t i = 0; i < serverBackupCount_; ++i) {
                    serverBackup_[i].member_.SetValue(-3);
                }
            } else {
                const std::vector<std::int32_t> ids = connections->GetConnMemberIdList(true);
                for (std::int32_t i = 0; i < serverBackupCount_; ++i) {
                    serverBackup_[i].member_.SetValue(static_cast<std::size_t>(i) < ids.size()
                                                          ? ids[static_cast<std::size_t>(i)]
                                                          : -3);
                }
            }
        }
    } else {
        // [LABEL_7] Pending-room block: runs only while a room operation is pending (+0x3630).
        if (roomOperationPending_) {
            // Poll timer. The original divides the elapsed milliseconds by 1000 with a multiply by
            // 274877907 and a shift of 38. The elapsed value is unsigned, as the original casts it.
            const std::uint32_t elapsedMs = static_cast<std::uint32_t>(OnlineNowMs()) -
                                            static_cast<std::uint32_t>(serverPollTime_);
            const std::int32_t elapsedSeconds =
                static_cast<std::int32_t>((static_cast<std::uint64_t>(elapsedMs) * 274877907ULL) >> 38);
            // The allowance is the server count plus 4, capped at 15.
            std::int32_t allowance = static_cast<std::int32_t>(servers_.size()) + 4;
            if (allowance >= 15) {
                allowance = 15;
            }
            bool sendRequest = true;
            if (allowance >= elapsedSeconds) {
                if (serverPollTime_ != 0) {
                    sendRequest = false;  // the original jumps to PurgeServers
                }
            } else if (serverPollTime_ != 0 && servers_.empty()) {
                MatchingInternalEventQueue().AddEvent(8388623, nullptr, 0);  // 0x80000f
            }
            if (sendRequest) {
                if (SendClientRequest() > 0) {
                    serverPollTime_ = OnlineNowMs();
                }
            }
            PurgeServers();  // [LABEL_62]
        }
        // [LABEL_8] The server was lost: take over when this member is on the backup list.
        if (memberId_ > 0) {
            if (connections != nullptr && !connections->IsConnected(serverMemberId_) && serverBackup_ != nullptr) {
                for (std::int32_t i = 0; i < serverBackupCount_; ++i) {
                    const std::int32_t backupId = serverBackup_[i].member_.GetValue();
                    if (memberId_ == backupId) {
                        announceServerChange();
                    } else if (connections->IsConnected(backupId)) {
                        break;
                    }
                }
            }
        }
    }

    // [LABEL_30] Connection event 0x600001.
    if (connections != nullptr && connections->event_queue_.HasEventOccured(0x600001, false)) {
        std::int32_t eventMember = 0;
        connections->event_queue_.GetEventData(0x600001, &eventMember, 4);
        if (memberId_ >= 0 && memberId_ == serverMemberId_) {
            if (!IsRoomClosed() && !IsRoomHidden()) {  // vtable +0x54, +0x58
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

    // [LABEL_31] The output-queue event 0x40000e carries a member id in its first word. When it is the
    // local id, the output queue gets 0x40000a. The original reads 8 bytes; the second word is not used.
    if (MatchingOutputEventQueue().HasEventOccured(0x40000e, false)) {
        std::int32_t payload[2] = {0, 0};
        MatchingOutputEventQueue().GetEventData(0x40000e, payload, sizeof payload);
        if (payload[0] == LocalMemberId()) {
            MatchingOutputEventQueue().AddEvent(0x40000a, nullptr, 0);
        }
    }

    // The peer loop gated by IsInRoom().
    if (IsInRoom() && (memberId_ < 0 || memberId_ != serverMemberId_) && connections != nullptr) {
        for (std::int32_t i = 0; i != kLocalMemberCount; ++i) {
            MemberInfoNetStruct& member = localMembers_[i];
            if (member.id() > 0 && member.IsChanged() && member.id() != memberId_ &&
                !connections->IsConnected(member.id())) {
                CNetworkId address = member.networkId();
                connections->Connect(member.id(), address);
            }
        }
    }

    // Final step: a pending 0x80000a with the local member as the server gets a server response.
    // The response carries the closed flag. The original's hold-back test calls vtable +0x58 (IsRoomHidden)
    // and +0x54 (IsRoomClosed).
    if (!MatchingInternalEventQueue().HasEventOccured(8388618, true)) {  // 0x80000a
        return 0;
    }
    if (memberId_ < 0 || memberId_ != serverMemberId_) {
        return 0;
    }
    if (IsRoomHidden() && !IsRoomClosed()) {
        return 0;
    }
    SendServerResponse(IsRoomClosed());
    return 0;
}
