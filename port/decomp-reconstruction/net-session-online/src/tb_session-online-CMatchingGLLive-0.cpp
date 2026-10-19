// Batch e1-net-session-online-CMatchingGLLive-0 (CMatchingGLLive, part 1 of 2).
//
// Most bodies in this batch read layouts that the lobby observer does not declare yet: its
// member vector (+0x24, +0x28) and the tFriendInfo accessors. Those bodies are partial: the part that
// the port can express is written, the rest is named in the note and returns the default value. The
// CMatching base, the member table at +0x3a00 and the friend list at +0x6bd8 are declared in
// c_matching_gl_live.hpp now.

#include "net-session-online/c_matching_gl_live.hpp"

#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>

#include "net-session-online/c_matching_gl_live_observers.hpp"
#include "net-session-online/c_sign_in.hpp"
#include "net-session-online/deps/platform_stand_ins.hpp"
#include "net-session-online/deps/stream_bytes.hpp"
#include "net-transport/connection_manager.hpp"  // CConnectionManager (real)
#include "net-session-online/deps/matching_queue.hpp"
#include "net-transport/net_bit_stream.hpp"
#include "net-session-online/glx_player_login.hpp"
#include "net-session-online/glx_player_message.hpp"
#include "net-session-online/glx_player_user_friend.hpp"
#include "net-session-online/t_friend_info.hpp"

// 0x81bfe4 _ZN15CMatchingGLLive17ProcessLostPacketEii
// Reconstructed. Calls the base CMatching::ProcessLostPacket (0x7fed84), then NetStruct vtable slot +0x44 on each
// of the 32 member entries at +0x3a00 (stride 0x168). The binary returns the r0 left by the last (void) slot call;
// the port returns 0.
std::int32_t CMatchingGLLive::ProcessLostPacket(std::int32_t a2, std::int32_t a3) {
    CMatching::ProcessLostPacket(a2, a3);
    for (MemberInfoNetStruct& entry : memberInfo_) {
        entry.ProcessLostPacket(a2, a3);
    }
    return 0;
}

// 0x81c034 _ZN15CMatchingGLLive23ProcessAcknowledgedPacketEii
// Reconstructed. Same shape as ProcessLostPacket: the base CMatching::ProcessAcknowledgedPacket (0x7fed08) first,
// then NetStruct slot +0x40 on each member entry; returns 0 for the r0 left by the last (void) slot call.
std::int32_t CMatchingGLLive::ProcessAcknowledgedPacket(std::int32_t a2, std::int32_t a3) {
    CMatching::ProcessAcknowledgedPacket(a2, a3);
    for (MemberInfoNetStruct& entry : memberInfo_) {
        entry.ProcessAcknowledgedPacket(a2, a3);
    }
    return 0;
}

// 0x81c200 _ZN15CMatchingGLLive24ProcessMemberJoinMessageEiR12NetBitStream
// Reads a signed count byte, then for each entry 32 bytes: a 4-byte member id followed by a 28-byte CNetworkId (the
// original reads all 32 bytes into a stack object that holds the id and the address). An entry whose id is not
// the local member id (LocalMemberId(), vtable +0x6c) and is not connected posts event 8388614 on the matching
// queue with the id. The connection check uses the connection manager stand-in (deps/net-transport/connection_manager.hpp).
void CMatchingGLLive::ProcessMemberJoinMessage(std::int32_t /*a2*/, NetBitStream& stream) {
    const std::int8_t count = static_cast<std::int8_t>(stream.ReadByte(8));
    for (int i = 0; i < count; ++i) {
        std::uint8_t entry[32] = {};
        stream.ReadByteArray(entry, sizeof entry);
        std::int32_t memberId = 0;
        std::memcpy(&memberId, entry, sizeof memberId);
        if (memberId != LocalMemberId() && !CConnectionManager::GetInstance()->IsConnected(memberId)) {
            MatchingInternalEventQueue().AddEvent(8388614, &memberId, sizeof memberId);
        }
    }
}

// 0x81c2c4 _ZN15CMatchingGLLive17SendClientRequestEv
// Writes one byte (2) to a 0x800-byte stream and broadcasts it as packet type 2 through the connection manager
// (CConnectionManager::SendBroadcast; the original passes the buffer and its length rounded up to whole bytes).
// Returns the send result. Partial only through the stand-in: the connection manager is the recording stand-in of
// deps/net-transport/connection_manager.hpp, whose send reports 0.
std::int32_t CMatchingGLLive::SendClientRequest() {
    NetBitStream stream(0x800);
    const std::uint8_t kind = 2;
    stream.WriteByteArray(&kind, 1);
    auto bytes = StreamBytes(stream);
    return CConnectionManager::GetInstance()->SendBroadcast(2, bytes.data(), static_cast<int>(bytes.size()));
}

// 0x81c460 _ZN15CMatchingGLLive9GetRoomIdEv
// Reconstructed: -1 when the logged-in flag (CSignIn +0x11) is set; otherwise the room id the lobby observer
// holds at +0x08 (created on first use), sign-extended to 64 bits.
std::int64_t CMatchingGLLive::GetRoomId() {
    CSignIn* signIn = CSignIn::Get();
    if (signIn->LoggedIn()) {
        return -1;
    }
    return GetGLXPlayerMPLobbyObserver()->RoomId();
}

// 0x81c494 _ZN15CMatchingGLLive20GetMemberByMemberIdEi
// Reconstructed: forwards to CMatchingGLLiveLobbyObserver::GetMemberByMemberId on the lobby observer (created on
// first use) and returns its record pointer. The original passes the 32-bit pointer back in its int result
// register; the return type is not part of the symbol, so the port returns the pointer itself.
tMemberInfo* CMatchingGLLive::GetMemberByMemberId(std::int32_t memberId) {
    return GetGLXPlayerMPLobbyObserver()->GetMemberByMemberId(memberId);
}

// 0x81c4ac _ZN15CMatchingGLLive6IsInRoomEv
// While the game is starting: true for the server (CMatching::IsServer), otherwise true when the connection
// manager has at least one connection (GetConnectionCount(false) > 0). Otherwise: false while signed out, and
// when signed in the lobby observer's byte at +0x06. The connection count comes from the connection manager
// stand-in; the byte is the observer's game-started flag (GameStartedForTest).
bool CMatchingGLLive::IsInRoom() {
    if (s_IsGameStarting) {
        if (IsServer()) return true;
        // Deviation: the original always has the connection manager; a missing instance (before
        // CConnectionManager::Initialize, as in the unit tests) counts as no connections.
        CConnectionManager* manager = CConnectionManager::GetInstance();
        return manager != nullptr && manager->GetConnectionCount(false) > 0;
    }
    CSignIn* signIn = CSignIn::Get();
    if (signIn != nullptr && signIn->LoggedIn()) {
        return GetGLXPlayerMPLobbyObserver()->GameStarted();
    }
    return false;
}

// 0x81c524 _ZNK15CMatchingGLLive14GetMemberCountEv
// Reconstructed. While the game is starting: the connection count plus one. Otherwise: when the lobby observer
// game-started byte (+0x06) is set, the size of its member vector (84-byte tMemberInfo entries at +0x24..+0x28);
// when it is clear, 0 (the byte itself, which is 0).
std::int32_t CMatchingGLLive::GetMemberCount() const {
    if (s_IsGameStarting) {
        return CConnectionManager::GetInstance()->GetConnectionCount(false) + 1;
    }
    CMatchingGLLiveLobbyObserver* observer = GetGLXPlayerMPLobbyObserver();
    if (observer->GameStarted()) {
        return static_cast<std::int32_t>(observer->MemberList().size());
    }
    return 0;
}

// 0x81c6cc _ZN15CMatchingGLLive10IsMyFriendEPc
// A null name returns -1. A name equal to the logged-in nickname (GLXPlayerLogin +0x74) returns 0. Otherwise
// the game friend list (+0x6bd8) is searched by name: 1 when an entry matches, 2 when none does.
std::int32_t CMatchingGLLive::IsMyFriend(char* name) {
    if (name == nullptr) return -1;
    const char* nick = GetGLXPlayerLogin()->nickName();
    if (nick != nullptr && std::strcmp(nick, name) == 0) {  // LC_API_STRCMP_0
        return 0;
    }
    for (const GLFriendInfo& entry : glFriends_) {
        if (std::strcmp(entry.name.c_str(), name) == 0) {
            return 1;
        }
    }
    return 2;
}

// 0x81c9e8 _ZN15CMatchingGLLive23sPacketReceiverCallbackEiPci
// Reconstructed: the original forward is a plain call to CMatchingGLLive::PacketReceiverCallback on the
// CMatching singleton (CMatching::s_Matching), with the first argument as the sender, and the port's call
// is that call. Deviation (host-necessitated): the binary does not check s_Matching for null; this port
// returns when it is null, as sBroadcastPacketReceiverCallback does (e2 batch, same callee class).
void CMatchingGLLive::sPacketReceiverCallback(std::int32_t from, char* data, int size) {
    auto* matching = static_cast<CMatchingGLLive*>(CMatching::s_Matching);
    if (matching == nullptr) {
        return;
    }
    matching->PacketReceiverCallback(from, data, size);
}

// 0x81cec0 _ZN15CMatchingGLLive12IsFriendWithEPKcb
// Copies the friend list (GetFriendsList with the flag, virtual slot +0x8c) and returns true when an entry's name (the
// string data pointer at tFriendInfo +0x18) equals the argument; the scan stops at the first match.
bool CMatchingGLLive::IsFriendWith(const char* name, bool flag) {
    const std::vector<tFriendInfo> friends = GetFriendsList(flag);
    for (const tFriendInfo& entry : friends) {
        if (std::strcmp(entry.Name(), name) == 0) {
            return true;
        }
    }
    return false;
}

// 0x81cf30 _ZN15CMatchingGLLive16SendInvitationEPKcS1_b
// Returns 1 when the friend observer's flag (+0x04 of the object at +0x6704) is clear. Otherwise a message of kind 8 is
// sent to each friend of the list (GLXPlayerMessage::SendOnlineMessage at +0x6708 with the two text arguments and no flag)
// and event 8388628 is posted on the matching internal queue. Returns 0.
// Deviation: a missing friend observer or message service reads as a clear flag (the original reads through them).
std::int32_t CMatchingGLLive::SendInvitation(const char* from, const char* to, bool /*flag*/) {
    if (friendObserver_ == nullptr || !friendObserver_->Flag() || glxMessage_ == nullptr) {
        return 1;
    }
    const std::vector<tFriendInfo> friends = GetFriendsList(false);
    for (const tFriendInfo& entry : friends) {
        glxMessage_->SendOnlineMessage(const_cast<char*>(entry.Name()), 8, const_cast<char*>(from),
                                       const_cast<char*>(to), false);
    }
    MatchingInternalEventQueue().AddEvent(8388628, nullptr, 0);
    return 0;
}

// 0x81dba0 _ZN15CMatchingGLLive19GetGLLiveMemberIdListEv
// Reconstructed: the lobby observer (created on first use) has its member vector copied, and the std::vector<int>
// holds each entry id (+0x00) in order.
std::vector<std::int32_t> CMatchingGLLive::GetGLLiveMemberIdList() {
    std::vector<std::int32_t> ids;
    for (const tMemberInfo& member : GetGLXPlayerMPLobbyObserver()->MemberList()) {
        ids.push_back(member.MemberId());
    }
    return ids;
}

// 0x81ded4 _ZN15CMatchingGLLive6IsInRoomEi
// Reconstructed. While the game is starting the local member id (+0x3640) is answered by IsInRoom() (vtable +0x64)
// and any other id by CConnectionManager::IsConnected. Otherwise the id must be in 0 .. GetMemberCount() - 1 (the
// original first copies the lobby observer tMemberInfo vector, which has no other effect).
bool CMatchingGLLive::IsInRoom(std::int32_t memberId) {
    if (s_IsGameStarting) {
        if (memberId_ == memberId) return IsInRoom();
        return CConnectionManager::GetInstance()->IsConnected(memberId);
    }
    return memberId >= 0 && memberId < GetMemberCount();
}

// 0x81df90 _ZN15CMatchingGLLive13GetMemberNameEi
// Reconstructed: the name (+0x28) of the first entry in the lobby observer member vector whose id (+0x00) equals
// memberId, or the empty string when none does.
std::string CMatchingGLLive::GetMemberName(std::int32_t memberId) {
    for (const tMemberInfo& member : GetGLXPlayerMPLobbyObserver()->MemberList()) {
        if (member.MemberId() == memberId) {
            return std::string(member.Name());
        }
    }
    return std::string();
}

// 0x81e25c _ZN15CMatchingGLLive12SyncMemberIdEv
// Reconstructed. Only while signed in (CSignIn +0x11) and s_IsGameStarting: for each id of the connected member
// list (vtable +0x88, re-fetched every pass as the listing does) the user name of that member GLLive record
// (value at +0x150, i.e. memberInfo_[GetMemberIndex(id)]) is lower-cased and compared, case-insensitively, with
// the name (+0x28) of every entry of the lobby observer member vector; each match gets the id written to its
// +0x00. Host-necessitated deviation: the original indexes the record array with GetMemberIndex result unchecked
// (-1 reads before the array); the port skips an id without a slot.
void CMatchingGLLive::SyncMemberId() {
    CSignIn* signIn = CSignIn::Get();
    if (!signIn->LoggedIn() || !s_IsGameStarting) {
        return;
    }
    const auto lower = [](std::string text) {
        for (char& c : text) {
            c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
        }
        return text;
    };
    const std::size_t count = GetGLXPlayerMPLobbyObserver()->MemberList().size();
    for (std::size_t pass = 0;; ++pass) {
        const std::vector<std::int32_t> ids = ConnectedMemberIds();  // vtable +0x88
        if (pass >= ids.size()) {
            break;
        }
        const std::int32_t id = ConnectedMemberIds()[pass];
        const std::int32_t index = GetMemberIndex(id);
        if (index < 0 || index >= kMemberInfoCount) {
            continue;
        }
        const std::string wanted = lower(memberInfo_[index].name());
        std::vector<tMemberInfo>& current = GetGLXPlayerMPLobbyObserver()->MemberList();
        for (std::size_t i = 0; i < count && i < current.size(); ++i) {
            if (lower(std::string(current[i].Name())) == wanted) {
                current[i].SetMemberId(id);
            }
        }
    }
}

// 0x81e4d0 _ZN15CMatchingGLLive14ReadPacketDataEiiR12NetBitStream
// Reconstructed. The room attributes (vtable +0xa4) unserialize with the member id (CRoomAttributes::Unserialize
// 0x817fec); the base NetStructArray<CMatching::MemberInfoNetStruct,32> loads; then each of the 32 GLLive
// records at +0x3a00 runs its slot +0x18 (NetStruct::ConditionalLoad) with "is not the local member slot" as the
// condition, and SyncMemberId runs whenever a record reports that it loaded. The binary returns the last
// SyncMemberId/slot result in r0; nothing reads it.
std::int32_t CMatchingGLLive::ReadPacketData(std::int32_t a2, std::int32_t a3, NetBitStream& stream) {
    GetRoomAttributes()->Unserialize(a2, stream);  // vtable +0xa4
    LoadMemberArray(stream, a2, a3);               // NetStructArray<CMatching::MemberInfoNetStruct,32>::Load
    std::int32_t result = 0;
    for (std::int32_t i = 0; i < kMemberInfoCount; ++i) {
        const bool isNotSelf = GetMemberIndex(memberId_) != i;
        result = memberInfo_[i].ConditionalLoad(isNotSelf, stream, a2, 0);
        if (result != 0) {
            SyncMemberId();
        }
    }
    return result;
}

// 0x81ec5c _ZN15CMatchingGLLive14GetFriendsListEb
// Empty unless the friend observer's flag (byte +0x04 of the object at +0x6704) is set. Then, for each friend of the GLX
// user-friend object (+0x6700, count from GetFriendsCount), a tFriendInfo is built with the user number (atoi of its text,
// +0x00), the name (+0x04) and the state (+0x1c), and kept unless the argument is set and the state is 3.
// Deviation: a null friend observer or friend list gives an empty list (the original reads through them).
std::vector<tFriendInfo> CMatchingGLLive::GetFriendsList(bool notInState3) {
    std::vector<tFriendInfo> list;
    if (friendObserver_ == nullptr || !friendObserver_->Flag() || glxUserFriend_ == nullptr) {
        return list;
    }
    for (std::int32_t index = 0; index < glxUserFriend_->GetFriendsCount(); ++index) {
        tFriendInfo info;
        const char* number = glxUserFriend_->GetUserNumber(index);
        info.SetValue00(number != nullptr ? std::atoi(number) : 0);
        const char* name = glxUserFriend_->GetName(index);
        info.SetText04(name != nullptr ? std::string(name) : std::string());
        const std::int32_t state = glxUserFriend_->GetState(index);
        info.SetValue1c(state);
        if (!notInState3 || state != 3) {
            list.push_back(info);
        }
    }
    return list;
}

// 0x81ee10 AddFriendInGameList and 0x81ee6c GetGLFriendsList are in src/c_matching_gl_live_member_calls.cpp.
