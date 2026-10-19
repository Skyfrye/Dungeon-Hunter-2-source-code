// Lobby observer bodies (CMatchingGLLiveLobbyObserver). The room list (+0x18, tGLRoomInfo records)
// and the member list (+0x24, tMemberInfo entries) are modelled in the owner header and in
// tb/t_gl_room_info.hpp and t_member_info.hpp. The packet reads go through the DataPacket slots (getInt +0x14, getByte +0x0c,
// getShortLenString +0x40, getBlob +0x50). Original field offsets are kept as comments; see c_matching_gl_live_observers.hpp.

#include <algorithm>
#include <cctype>
#include <cstring>
#include <ctime>
#include <new>
#include <string>
#include <utility>
#include <vector>

#include "core-platform/memory.hpp"
#include "core-platform/w7_global_04.hpp"  // ParseDedicatedServerInfo
#include "dh2/CRoomSearchFilter.hpp"
#include "dh2/global/net_singletons.hpp"  // GetConnectionMgr, GetDedicatedServer
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/c_matching_gl_live_observers.hpp"
#include "net-session-online/c_sign_in.hpp"
#include "net-session-online/deps/matching_queue.hpp"
#include "net-session-online/glx_player_login.hpp"
#include "net-session-online/glx_player_mp_lobby.hpp"
#include "net-session-online/tb/t_gl_room_info.hpp"
#include "net-transport/connection_manager.hpp"
#include "net-transport/data_packet.hpp"
#include "net-transport/deps/byte_array.hpp"  // CustomFree (inline, the C allocator here)
#include "net-transport/net_network_id.hpp"

// 0x8213ec _ZN28CMatchingGLLiveLobbyObserver13ClearRoomListEv
// Reconstructed: the original pops each room record from the back of the list, runs its destructor
// (tGLRoomInfo::~tGLRoomInfo, 0x82138c, reconstructed in the pack4 batch) and frees the record with
// CustomFree. A null entry is only popped. The list is empty afterwards, as in the original.
void CMatchingGLLiveLobbyObserver::ClearRoomList() {
    while (!roomList_.empty()) {
        tGLRoomInfo* room = roomList_.back();
        roomList_.pop_back();
        if (room != nullptr) {
            room->~tGLRoomInfo();
            CustomFree(room);
        }
    }
}

// 0x821474 _ZN28CMatchingGLLiveLobbyObserver18GetRoomIndexByNameEPKc
// Reconstructed: each room's name (+0x04 of tGLRoomInfo) is compared with the argument by strcmp
// (LC_API_STRCMP_0 is read as strcmp elsewhere in the port); the first match's index is returned,
// or -1. A null record or name is skipped here, where the original would fault.
std::int32_t CMatchingGLLiveLobbyObserver::GetRoomIndexByName(const char* name) const {
    for (std::size_t i = 0; i < roomList_.size(); ++i) {
        const tGLRoomInfo* room = roomList_[i];
        const char* roomName = room ? room->name() : nullptr;
        if (roomName && name && std::strcmp(roomName, name) == 0) {
            return static_cast<std::int32_t>(i);
        }
    }
    return -1;
}

// 0x8214cc _ZN28CMatchingGLLiveLobbyObserver20GetMemberIndexByNameEPKc
// Reconstructed: the name at +0x28 of each member entry is compared with the argument by strcmp; the
// first match's index is returned, or -1. A null argument matches nothing (the original would fault).
std::int32_t CMatchingGLLiveLobbyObserver::GetMemberIndexByName(const char* name) const {
    if (!name) {
        return -1;
    }
    for (std::size_t i = 0; i < memberList_.size(); ++i) {
        if (std::strcmp(memberList_[i].Name(), name) == 0) {
            return static_cast<std::int32_t>(i);
        }
    }
    return -1;
}

namespace {

// 0x8212d0 _ZL15PrintDatapacketP10DataPacket. File-local in the original, so each user has its own copy.
// It calls the packet's getMessageBody (vptr +0x64) and returns getMessageLen (vptr +0x60). Both are
// declared on the DataPacket base. core-platform ledgers the original as skipped; this is the local copy
// the handlers need.
std::int32_t PrintDatapacket(DataPacket* packet) {
    (void)packet->getMessageBody();
    return static_cast<std::int32_t>(packet->getMessageLen());
}

// The matching singleton as a CMatchingGLLive. The original casts CMatching::Get() without a check; the observer
// is only installed when the Gameloft Live provider is active. Null (callers skip the call) for another provider.
CMatchingGLLive* LiveMatching() { return dynamic_cast<CMatchingGLLive*>(CMatching::Get()); }

// A short-length string read from the packet (DataPacket vtable +0x40, getShortLenString). The text is a new[] block
// that this object releases; the original frees most of its packet strings with CustomFree and leaks some, which are
// released here too.
struct PacketString {
    char* text = nullptr;
    std::int16_t length = 0;
    PacketString() = default;
    PacketString(const PacketString&) = delete;
    PacketString& operator=(const PacketString&) = delete;
    ~PacketString() { delete[] text; }
    // Drops the previous text and reads the next string.
    void Read(DataPacket* packet) {
        delete[] text;
        text = nullptr;
        packet->getShortLenString(text, length);
    }
    const char* Text() const { return text != nullptr ? text : ""; }
};

// The member name: the original copies min(length, 31) + 1 bytes of the packet text into the 36-byte name buffer of the
// entry (memcpy). Here at most 31 characters are copied and the name is terminated (the original leaves a name of 31 or
// more characters unterminated and reads the following stack bytes). A failed read gives an empty name (the original
// copies from a null pointer).
void SetMemberName(tMemberInfo& member, const PacketString& text) {
    std::int32_t length = text.length;
    if (length > 31) {
        length = 31;
    }
    if (text.text == nullptr || length < 0) {
        length = 0;
    }
    std::memcpy(member.name_, text.Text(), static_cast<std::size_t>(length));
    member.name_[length] = '\0';
}

// The three reads shared by the join handlers after the name: the second string (+0x08), the byte (+0x4c) and the value
// string (+0x0c with its length at +0x24; the value is assigned only when the length is positive, the length is stored
// either way).
void ReadMemberTail(tMemberInfo& member, DataPacket* packet) {
    PacketString second;
    second.Read(packet);
    member.unk08_ = second.Text();
    unsigned char flag = 0;
    packet->getByte(flag);
    member.unk4c_ = flag;
    PacketString value;
    value.Read(packet);
    if (value.length > 0 && value.text != nullptr) {
        member.value_.assign(value.text, std::strlen(value.text));
    }
    member.value24_ = value.length;
}

// A copy of a string with the engine allocator (tGLRoomInfo releases its strings with CustomFree).
char* CustomString(const char* text) {
    if (text == nullptr) {
        return nullptr;
    }
    const std::size_t length = std::strlen(text) + 1;
    char* copy = static_cast<char*>(CustomAlloc(static_cast<unsigned>(length)));
    std::memcpy(copy, text, length);
    return copy;
}

// std::string::tolower in place, as the handlers do before comparing lobby names.
std::string Lower(const char* text) {
    std::string result(text != nullptr ? text : "");
    for (char& c : result) {
        c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
    }
    return result;
}

}  // namespace

// 0x8216a8 _ZN28CMatchingGLLiveLobbyObserver29OnMPProcessPushGameserverAddrEP10DataPacket
// Copies the dedicated-server record (GetDedicatedServer, 0x30 bytes), parses the packet into the copy
// (ParseDedicatedServerInfo), builds the connection id from the copy (the address with its two ports: address 0 =
// {port at +0x1c, address at +0x18}, address 1 = {the second short at +0x1e, the same address}, both presence bits),
// sets CMatchingGLLive::s_IsGameStarting, connects member 1 to it and moves the Game Center state to 8. Returns 0.
std::int32_t CMatchingGLLiveLobbyObserver::OnMPProcessPushGameserverAddr(DataPacket* packet) {
    _tDedicatedServerInfo info = *GetDedicatedServer();
    ParseDedicatedServerInfo(info, packet);
    CNetworkId id;
    id.Reset();
    CMatchingGLLive::s_IsGameStarting = true;
    id.SetAddress0(static_cast<std::uint16_t>(info.unk_1c), info.address);  // +0x1c, +0x18
    id.SetAddress1(static_cast<std::uint16_t>(info.unk_1e), info.address);  // +0x1e, +0x18
    GetConnectionMgr()->Connect(1, id);
    if (CMatchingGLLive* live = LiveMatching()) {
        live->SetGCState(8);
    }
    return 0;
}

// 0x8217a8 _ZN28CMatchingGLLiveLobbyObserver22OnMPListSessionSuccessEP10DataPacket
// The packet is dumped, the session count read, the flag byte (+0x07) set and the state (+0x14) put at 7. A count of 0
// or less only clears the room list (the exit stores are skipped). Otherwise: with Game Center active the packet carries
// the room id and the room name; when the name equals the host UID the room is joined (sign-extended id) and the
// Game Center state becomes 5. Without Game Center the room list is rebuilt: each record (CustomAlloc, 0x28 bytes) reads
// the id, the name, the second string, four bytes, two ints and the attribute blob (length at +0x24); the blob is
// unserialized (0x80 bytes), the search filter of the matching object (+0x6738, copied) tests it, and a record that
// passes replaces the room of the same name (the old record is destroyed and freed) or is appended. Finally the last
// result (+0x48) is cleared and the update time (+0x10) stamped.
// Deviation: a record that fails the filter is freed here (the original leaks it); the Game Center room name is freed.
void CMatchingGLLiveLobbyObserver::OnMPListSessionSuccess(DataPacket* packet) {
    PrintDatapacket(packet);
    std::int32_t count = 0;
    packet->getInt(count);
    flag07_ = true;
    state_ = 7;
    if (count <= 0) {
        ClearRoomList();
        return;
    }
    CMatchingGLLive* live = LiveMatching();
    if (live != nullptr && live->gameCenterActive_) {  // +0x67e8
        std::int32_t roomId = 0;
        packet->getInt(roomId);
        PacketString name;
        name.length = 0;
        name.Read(packet);
        const char* hostUid = CMatchingGLLive::s_GameCenterInfo.hostUid_;  // dword_A33880
        if (name.text != nullptr && hostUid != nullptr && std::strcmp(name.text, hostUid) == 0) {
            CMatching::Get()->JoinRoom(static_cast<std::uint64_t>(static_cast<std::int64_t>(roomId)));
            live->SetGCState(5);
        }
    } else {
        ClearRoomList();
        for (std::int32_t i = 0; i < count; ++i) {
            void* block = CustomAlloc(sizeof(tGLRoomInfo));
            tGLRoomInfo* room = new (block) tGLRoomInfo();
            std::int16_t length = 0;
            packet->getInt(room->roomId_);
            {
                PacketString text;
                text.Read(packet);
                room->name_ = CustomString(text.text);
                text.Read(packet);
                room->second_ = CustomString(text.text);
            }
            packet->getByte(room->byte0c_);
            packet->getByte(room->byte0d_);
            packet->getByte(room->byte0e_);
            packet->getByte(room->byte0f_);
            packet->getInt(room->unk_10_);
            packet->getInt(room->unk_14_);
            {
                char* blob = nullptr;
                packet->getBlob(blob, length);  // vtable +0x50
                if (blob != nullptr) {
                    room->attributes_ = static_cast<char*>(CustomAlloc(static_cast<unsigned>(length) + 1u));
                    std::memcpy(room->attributes_, blob, static_cast<std::size_t>(length) + 1u);
                    delete[] blob;
                }
            }
            room->attributesLength_ = length;
            CRoomAttributes attributes;
            if (room->attributes_ != nullptr) {
                attributes.Unserialize(room->attributes_, 0x80u);
            }
            CRoomSearchFilter filter(live != nullptr ? live->searchFilter_ : CRoomSearchFilter());  // +0x6738
            if (filter.TestRoomAttributes(attributes)) {
                const std::int32_t index = GetRoomIndexByName(room->name_);
                if (index == -1) {
                    roomList_.push_back(room);
                } else {
                    tGLRoomInfo* old = roomList_[static_cast<std::size_t>(index)];
                    roomList_[static_cast<std::size_t>(index)] = room;
                    if (old != nullptr) {
                        old->~tGLRoomInfo();
                        CustomFree(old);
                    }
                }
            } else {
                room->~tGLRoomInfo();
                CustomFree(room);
            }
        }
    }
    lastResult_ = 0;                                        // +0x48
    updateTime_ = static_cast<std::int32_t>(std::time(nullptr));  // +0x10
}

// 0x822b78 _ZN28CMatchingGLLiveLobbyObserver23OnMPLeaveSessionSuccessEv
// gameStarted (+0x06) = false, field0c and field08 = -1, the member list erased, lastResult (+0x48) = 0.
// Deviation: the original returns the erase result (the position of the erased range, an address with no portable
// value) when the list was not empty and 0 otherwise; this returns 0.
std::int32_t CMatchingGLLiveLobbyObserver::OnMPLeaveSessionSuccess() {
    gameStarted_ = false;
    field0c_ = -1;
    field08_ = -1;
    memberList_.clear();
    lastResult_ = 0;
    return 0;
}

// 0x822c58 _ZN28CMatchingGLLiveLobbyObserver28OnMPProcessPushKickOutPlayerEP10DataPacket
// Reads two strings (the first is discarded, the second is the kicked player's name). A name that differs from the
// local nickname (GLXPlayerLogin +0x74) removes that member, posts 0x40000e, renumbers the remaining entries 0..n-1 and
// syncs the member ids. The local nickname (this player was kicked) leaves the lobby (mpSendLeaveLobby), clears the
// member list and posts 0x40000a. Returns 0.
// Deviation: a name that is not in the list (index -1) erases nothing here, where the original erases the element before
// the first one (undefined); the name text is freed (the original leaks it).
std::int32_t CMatchingGLLiveLobbyObserver::OnMPProcessPushKickOutPlayer(DataPacket* packet) {
    PacketString name;
    name.length = -1;
    name.Read(packet);  // discarded
    name.Read(packet);
    CMatchingGLLive* live = LiveMatching();
    const char* nickname = live != nullptr ? live->GetGLXPlayerLogin()->nickName() : nullptr;
    if (nickname == nullptr || std::strcmp(nickname, name.Text()) != 0) {
        const std::int32_t index = GetMemberIndexByName(name.text);
        if (index >= 0 && static_cast<std::size_t>(index) < memberList_.size()) {
            memberList_.erase(memberList_.begin() + index);
        }
        MatchingOutputEventQueue().AddEvent(0x40000e, nullptr, 0);  // 4194318
        for (std::size_t i = 0; i < memberList_.size(); ++i) {
            memberList_[i].memberId_ = static_cast<std::int32_t>(i);  // +0x00
        }
        if (live != nullptr) {
            live->SyncMemberId();
        }
    } else {
        if (live != nullptr) {
            live->GetGLXPlayerMPLobby()->mpSendLeaveLobby();
        }
        memberList_.clear();
        MatchingOutputEventQueue().AddEvent(0x40000a, nullptr, 0);  // 4194314
    }
    return 0;
}

// 0x822db4 _ZN28CMatchingGLLiveLobbyObserver32OnMPProcessPushJoinLobbyLaunchedEP10DataPacket
// -1 when the member list already holds 16 entries. Otherwise a new entry (id -1) is read from the packet: the name
// (at most 31 characters), the second string, the byte and the value string with its length; its launched flag
// (+0x50) is set, it is appended and 0x40000c is posted. Returns 0.
std::int32_t CMatchingGLLiveLobbyObserver::OnMPProcessPushJoinLobbyLaunched(DataPacket* packet) {
    if (memberList_.size() > 15) {
        return -1;
    }
    tMemberInfo member(-1);
    PacketString name;
    name.Read(packet);
    SetMemberName(member, name);
    ReadMemberTail(member, packet);
    member.launched_ = true;  // +0x50
    memberList_.push_back(member);
    MatchingOutputEventQueue().AddEvent(0x40000c, nullptr, 0);  // 4194316
    return 0;
}

// 0x822fa4 _ZN28CMatchingGLLiveLobbyObserver24OnMPCreateSessionSuccessEP10DataPacket
// State (+0x14) = 4 and gameStarted (+0x06) = true; the packet is dumped and the host id read into +0x08; the member
// list is erased. One entry (the host) is built: with Game Center active its name is the host UID (dword_A33880) and the
// id stays -1; otherwise the name is the login nickname (at most 32 characters), the id 0 and the value the
// matching object's player parameter (with its length). The entry is launched, appended, the Game Center state moves to
// 6, event 4 is queued on the GL Live internal queue and lastResult (+0x48) = 0.
void CMatchingGLLiveLobbyObserver::OnMPCreateSessionSuccess(DataPacket* packet) {
    state_ = 4;
    gameStarted_ = true;
    PrintDatapacket(packet);
    packet->getInt(field08_);  // +0x08
    memberList_.clear();
    tMemberInfo member(-1);
    CMatchingGLLive* live = LiveMatching();
    if (live != nullptr && live->gameCenterActive_) {
        const char* hostUid = CMatchingGLLive::s_GameCenterInfo.hostUid_;
        const std::size_t length = hostUid != nullptr ? std::min<std::size_t>(std::strlen(hostUid), 31) : 0;
        if (length != 0) {
            std::memcpy(member.name_, hostUid, length);
        }
        member.name_[length] = '\0';
    } else {
        const char* nickname = live != nullptr ? live->GetGLXPlayerLogin()->nickName() : nullptr;
        std::memset(member.name_, 0, sizeof(member.name_));
        if (nickname != nullptr) {
            std::strncpy(member.name_, nickname, 32);
        }
        member.name_[32] = '\0';
        member.memberId_ = 0;
        if (live != nullptr) {
            member.value_ = live->playerParam_;
            member.value24_ = static_cast<std::int32_t>(live->playerParam_.size());
        }
    }
    member.launched_ = true;  // +0x50
    memberList_.push_back(member);
    if (live != nullptr) {
        live->SetGCState(6);
    }
    CMatchingGLLive::s_eventQueueGLLiveInternal.AddEvent(4, nullptr, 0);
    lastResult_ = 0;
}

// 0x8231e0 _ZN28CMatchingGLLiveLobbyObserver22OnMPJoinSessionSuccessEP10DataPacket
// The login component's UID is fetched (unused), gameStarted (+0x06) = true, the member count read and the member list
// erased. Each member entry reads the name (at most 31 characters), the second string, the byte and the value string;
// its id is its index, or -1 while the game is starting (s_IsGameStarting). The local member index (+0x0c) is set to the
// index of the entry whose name equals the Game Center user UID (Game Center active) or the login nickname. Each
// entry is launched, appended, and SyncMemberId runs. Finally the Game Center state becomes 8, lastResult (+0x48) = 0 and
// the state (+0x14) = 5.
void CMatchingGLLiveLobbyObserver::OnMPJoinSessionSuccess(DataPacket* packet) {
    CMatchingGLLive* live = LiveMatching();
    if (live != nullptr) {
        live->GetGLXPlayerLogin();  // GetUID() result unused
    }
    gameStarted_ = true;
    std::int32_t count = 0;
    packet->getInt(count);
    memberList_.clear();
    for (std::int32_t i = 0; i < count; ++i) {
        tMemberInfo member(CMatchingGLLive::s_IsGameStarting ? -1 : i);
        PacketString name;
        name.Read(packet);
        SetMemberName(member, name);
        {
            PacketString second;
            second.Read(packet);
            member.unk08_ = second.Text();
        }
        unsigned char flag = 0;
        packet->getByte(flag);
        member.unk4c_ = flag;
        live = LiveMatching();
        if (live != nullptr && live->gameCenterActive_) {
            const char* userUid = CMatchingGLLive::s_GameCenterInfo.userUid_;  // dword_A3387C
            if (userUid != nullptr && std::strcmp(member.name_, userUid) == 0) {
                field0c_ = i;
            }
        } else if (live != nullptr) {
            const char* nickname = live->GetGLXPlayerLogin()->nickName();
            if (nickname != nullptr && std::strcmp(member.name_, nickname) == 0) {
                field0c_ = i;
            }
        }
        PacketString value;
        value.Read(packet);
        if (value.length > 0 && value.text != nullptr) {
            member.value_.assign(value.text, std::strlen(value.text));
        }
        member.value24_ = value.length;
        member.launched_ = true;  // +0x50
        memberList_.push_back(member);
        if (live != nullptr) {
            live->SyncMemberId();
        }
    }
    if (CMatchingGLLive* gl = LiveMatching()) {
        gl->SetGCState(8);
    }
    lastResult_ = 0;
    state_ = 5;
}

// 0x823510 _ZN28CMatchingGLLiveLobbyObserver31OnMPProcessPushSetUserParameterEP10DataPacket
// Reads the member name and a second string (discarded), finds the first entry with that name and replaces its value
// string with the blob read next (vtable +0x50, getBlob; used as a C string). Does not go through SetPlayerParam.
// Returns 0. Deviation: the name and the blob are freed (the original leaks them); an unreadable name matches nothing.
std::int32_t CMatchingGLLiveLobbyObserver::OnMPProcessPushSetUserParameter(DataPacket* packet) {
    PacketString name;
    name.Read(packet);
    {
        PacketString discarded;
        discarded.Read(packet);
    }
    if (name.text == nullptr) {
        return 0;
    }
    for (tMemberInfo& member : memberList_) {
        if (std::strcmp(member.name_, name.text) == 0) {
            std::int16_t length = 0;
            char* blob = nullptr;
            packet->getBlob(blob, length);  // vtable +0x50
            if (blob != nullptr) {
                member.value_.assign(blob, std::strlen(blob));
                delete[] blob;
            }
            break;
        }
    }
    return 0;
}

// 0x8235f8 _ZN28CMatchingGLLiveLobbyObserver34OnMPProcessPushJoinLobbyUnlaunchedEP10DataPacket
// Like the Launched variant, but the new entry's id is the current member count. -1 when the list already holds 16
// entries. The entry is launched (+0x50 = 1), appended and 0x40000c is posted. Returns 0.
std::int32_t CMatchingGLLiveLobbyObserver::OnMPProcessPushJoinLobbyUnlaunched(DataPacket* packet) {
    if (memberList_.size() > 15) {
        return -1;
    }
    tMemberInfo member(static_cast<std::int32_t>(memberList_.size()));
    PacketString name;
    name.Read(packet);
    SetMemberName(member, name);
    ReadMemberTail(member, packet);
    member.launched_ = true;  // +0x50
    memberList_.push_back(member);
    MatchingOutputEventQueue().AddEvent(0x40000c, nullptr, 0);  // 4194316
    return 0;
}

// 0x823808 _ZN28CMatchingGLLiveLobbyObserver25OnMPProcessPushRejoinGameEP10DataPacket
// Reads the member name. An unknown name appends a new entry (id -1; name of at most 31 characters, the second string, the
// byte, the value string with its length), launched, and syncs the member ids. A known name updates its entry: the
// second string, the byte and the value string; the length at +0x24 is only replaced when it differs; the launched flag is
// set. Returns 0.
std::int32_t CMatchingGLLiveLobbyObserver::OnMPProcessPushRejoinGame(DataPacket* packet) {
    PacketString name;
    name.length = -1;
    name.Read(packet);
    const std::int32_t index = GetMemberIndexByName(name.text);
    if (index == -1) {
        tMemberInfo member(-1);
        SetMemberName(member, name);
        {
            PacketString second;
            second.Read(packet);
            member.unk08_ = second.Text();
        }
        unsigned char flag = 0;
        packet->getByte(flag);
        member.unk4c_ = flag;
        PacketString value;
        value.Read(packet);
        member.value_ = value.Text();
        member.value24_ = value.length;
        member.launched_ = true;  // +0x50
        memberList_.push_back(member);
        if (CMatchingGLLive* live = LiveMatching()) {
            live->SyncMemberId();
        }
    } else {
        tMemberInfo& member = memberList_[static_cast<std::size_t>(index)];
        {
            PacketString second;
            second.Read(packet);
            member.unk08_ = second.Text();
        }
        unsigned char flag = 0;
        packet->getByte(flag);
        member.unk4c_ = flag;
        PacketString value;
        value.Read(packet);
        member.value_ = value.Text();
        if (member.value24_ != value.length) {
            member.value24_ = value.length;
        }
        member.launched_ = true;  // +0x50
    }
    return 0;
}

// 0x823ac4 _ZN28CMatchingGLLiveLobbyObserver25OnMPProcessPushLeaveLobbyEP10DataPacket
// Reads the lobby name. Both it and the local identity (the Game Center user UID, dword_A3387C, when Game Center is
// active; the sign-in credentials name otherwise) are lower-cased; when the lobby is not master and the names are equal
// the lobby's master byte (+0x81) is set and event 13 is queued on the GL Live internal queue. A second string, the leaving
// member's name, is read; a known member is erased, the remaining entries are renumbered 0..n-1 and the member ids are
// synced. Returns 0.
// Deviation: a null name is taken as empty (the original constructs a string from null), and the name text is freed on
// every path (the original frees it only when the member is known).
std::int32_t CMatchingGLLiveLobbyObserver::OnMPProcessPushLeaveLobby(DataPacket* packet) {
    PacketString text;
    text.length = -1;
    text.Read(packet);
    CMatchingGLLive* live = LiveMatching();
    std::string identity;
    if (live != nullptr && live->gameCenterActive_) {
        identity = Lower(CMatchingGLLive::s_GameCenterInfo.userUid_);
    } else {
        CSignIn* signIn = CSignIn::Get();
        identity = Lower(signIn != nullptr ? signIn->CredentialsName() : nullptr);
    }
    const std::string lobbyName = Lower(text.text);
    GLXPlayerMPLobby* lobby = live != nullptr ? live->GetGLXPlayerMPLobby() : nullptr;
    if (lobby != nullptr && !lobby->mpIsMaster()) {  // lobby vtable +0x3c
        if (lobbyName == identity) {
            lobby->SetMaster(true);  // +0x81
            CMatchingGLLive::s_eventQueueGLLiveInternal.AddEvent(13, nullptr, 0);
        }
    }
    text.Read(packet);
    const std::int32_t index = GetMemberIndexByName(text.text);
    if (index != -1) {
        memberList_.erase(memberList_.begin() + index);
        for (std::size_t i = 0; i < memberList_.size(); ++i) {
            memberList_[i].memberId_ = static_cast<std::int32_t>(i);  // +0x00
        }
        if (live != nullptr) {
            live->SyncMemberId();
        }
    }
    return 0;
}

// 0x823fd8 _ZN28CMatchingGLLiveLobbyObserver23OnMPProcessPushMessagesEP10DataPacketi
// Reconstructed. The packet is dumped first (PrintDatapacket), and that value is the result for a type
// with no case. The switch is on (type - 17) in unsigned arithmetic, as the original compares. The
// handlers are called qualified, as in the original, so they are not dispatched through the vtable.
// Cases 18, 24, 34 and 59 are passed the packet; the original calls them without it, and those bodies
// do not read it.
std::int32_t CMatchingGLLiveLobbyObserver::OnMPProcessPushMessages(DataPacket* packet, std::int32_t type) {
    const std::int32_t printed = PrintDatapacket(packet);
    switch (static_cast<std::uint32_t>(type) - 17u) {
        case 0u:
            return CMatchingGLLiveLobbyObserver::OnMPProcessPushJoinLobbyUnlaunched(packet);
        case 1u:
            return CMatchingGLLiveLobbyObserver::OnMPProcessPushJoinLobbyLaunched(packet);
        case 4u:
            return CMatchingGLLiveLobbyObserver::OnMPProcessPushLeaveLobby(packet);
        case 15u:
            return CMatchingGLLiveLobbyObserver::OnMPProcessPushKickOutPlayer(packet);
        case 18u:
            return CMatchingGLLiveLobbyObserver::OnMPProcessPushSetGameParameter(packet);
        case 21u:
            return CMatchingGLLiveLobbyObserver::OnMPProcessPushSetUserParameter(packet);
        case 24u:
            return CMatchingGLLiveLobbyObserver::OnMPProcessPushSetUserStatus(packet);
        case 27u:
            return CMatchingGLLiveLobbyObserver::OnMPProcessPushStartGame(packet);
        case 30u:
            return CMatchingGLLiveLobbyObserver::OnMPProcessPushRejoinGame(packet);
        case 33u:
            return CMatchingGLLiveLobbyObserver::OnMPProcessPushGameserverAddr(packet);
        case 34u:
            return CMatchingGLLiveLobbyObserver::OnMPProcessPushGameserverParams(packet);
        case 59u:
            return CMatchingGLLiveLobbyObserver::OnMPProcessPushAutomatchUser(packet);
        case 63u:
            return CMatchingGLLiveLobbyObserver::OnMPProcessPushSameAccountLogin(packet);
        default:
            return printed;
    }
}

// 0x821bac _ZN28CMatchingGLLiveLobbyObserver17GetMemberIdVectorEv
// Reconstructed: each member's id (+0x00 of the entry) is appended in list order.
std::vector<std::int32_t> CMatchingGLLiveLobbyObserver::GetMemberIdVector() const {
    std::vector<std::int32_t> ids;
    ids.reserve(memberList_.size());
    for (const tMemberInfo& member : memberList_) {
        ids.push_back(member.MemberId());
    }
    return ids;
}

// 0x822324 _ZN28CMatchingGLLiveLobbyObserver19GetMemberByMemberIdEi
// Reconstructed: the first entry whose id equals memberId. When none matches, the original returns
// its static invalid-member sentinel (id -1, initialised on first use), which is a function-local
// static here.
tMemberInfo* CMatchingGLLiveLobbyObserver::GetMemberByMemberId(std::int32_t memberId) {
    for (tMemberInfo& member : memberList_) {
        if (member.MemberId() == memberId) {
            return &member;
        }
    }
    static tMemberInfo invalidMember(-1);
    return &invalidMember;
}

// 0x822638 _ZN28CMatchingGLLiveLobbyObserver14SetPlayerParamESs
// Reconstructed: the value is assigned to the string (+0x0c) of the member at the local member index
// (+0x0c of the observer). Nothing is done when the index is negative or past the end of the list.
// The mangled name has no return type, so the function is void.
void CMatchingGLLiveLobbyObserver::SetPlayerParam(std::string value) {
    if (field0c_ < 0 || static_cast<std::size_t>(field0c_) >= memberList_.size()) {
        return;
    }
    memberList_[static_cast<std::size_t>(field0c_)].Value() = std::move(value);
}

// 0x822950 _ZN28CMatchingGLLiveLobbyObserver18CollapseMemberListEv
// Reconstructed: keeps the entries whose launched flag (+0x50) is set, in their order, and replaces
// the list with them.
void CMatchingGLLiveLobbyObserver::CollapseMemberList() {
    std::vector<tMemberInfo> kept;
    for (const tMemberInfo& member : memberList_) {
        if (member.Launched()) {
            kept.push_back(member);
        }
    }
    memberList_ = std::move(kept);
}
