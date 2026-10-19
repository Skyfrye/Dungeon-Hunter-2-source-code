#include "net-session-online/c_matching_gl_live.hpp"

#include <cstdio>
#include <cstring>
#include <vector>

#include "net-session-online/c_matching_gl_live_observers.hpp"
#include "net-session-online/c_sign_in.hpp"
#include "net-session-online/c_sign_in_gl_live_observer.hpp"
#include "net-session-online/deps/matching_queue.hpp"
#include "net-transport/net_bit_stream.hpp"
#include "net-session-online/deps/xp_api.hpp"
#include "net-session-online/glx_player_component.hpp"
#include "net-session-online/glx_player_leaderboard.hpp"
#include "net-session-online/glx_player_serever_config.hpp"

// Statics. The original keeps them as globals of the class.
bool CMatchingGLLive::s_IsGameStarting = false;
CEventQueueBase CMatchingGLLive::s_eventQueueGLLiveInternal(100);  // CEventQueue<_EVENTS_GLLIVE_INTERNAL, 100u>: static initialiser 0x81d958 stores 100 at +0x10
CMatchingGLLiveFriendObserver* CMatchingGLLive::s_GLXPlayerUserFriendObserver = nullptr;
CMatchingGLLiveLobbyObserver* CMatchingGLLive::s_GLXPlayerMPLobbyObserver = nullptr;
CSignInGLLiveObserver* CMatchingGLLive::s_GLXPlayerLoginObserver = nullptr;

namespace {

constexpr char kProfileFileName[] = "profile.sav";
// Header string of profile.sav, with its terminating NUL (30 bytes on disk).
constexpr char kProfileHeader[] = "_GLLive_Profile_Head_V_0.0.0.1";
constexpr std::size_t kProfileHeaderBytes = sizeof(kProfileHeader);
constexpr std::size_t kProfileFieldBytes = 16;  // user name and password buffers
constexpr std::size_t kLoginNameMaxLength = 15;

// CSignIn::Get() and its logged-in flag (+0x11 in the original).
bool SignInLoggedIn() {
    CSignIn* signIn = CSignIn::Get();
    return signIn != nullptr && signIn->LoggedIn();
}

}  // namespace

// 0x81bcd4 _ZN15CMatchingGLLive17SetGLLivePasswordEPKc
// Copies the password into the 16-byte buffer at +0x6bf2 when it is at most 15 characters and returns the strcpy result.
// A longer one is not copied and the function returns the strlen value in the return register (an integer; the return type
// is char*, so the length is returned as the address bits, as the listing leaves it).
char* CMatchingGLLive::SetGLLivePassword(const char* password) {
    const std::size_t length = std::strlen(password);
    if (length > kLoginNameMaxLength) {
        return reinterpret_cast<char*>(length);
    }
    return std::strcpy(password_, password);
}

// 0x81bd08 _ZN15CMatchingGLLive17SetGLLiveUserNameEPKc
// Same rule as SetGLLivePassword, for the user name at +0x6be1.
char* CMatchingGLLive::SetGLLiveUserName(const char* userName) {
    const std::size_t length = std::strlen(userName);
    if (length > kLoginNameMaxLength) {
        return reinterpret_cast<char*>(length);
    }
    return std::strcpy(userName_, userName);
}

// 0x81bd3c _ZN15CMatchingGLLive17SaveGLLiveProfileEv
// File layout: header (30 bytes), remember flag (1 byte), user name (16), password (16).
// The password is written as zeros when the remember flag is clear.
int CMatchingGLLive::SaveGLLiveProfile() {
    std::FILE* file = std::fopen(kProfileFileName, "wb");
    if (file == nullptr) {
        XP_DEBUG_OUT("SaveProfile(), Error creating file %s \n", kProfileFileName);
        return 0;
    }
    std::fwrite(kProfileHeader, 1, kProfileHeaderBytes, file);
    std::fwrite(&profileFlag_, 1, 1, file);
    std::fwrite(userName_, 1, kProfileFieldBytes, file);
    if (!profileFlag_) {
        std::memset(password_, profileFlag_, kProfileFieldBytes);
    }
    std::fwrite(password_, 1, kProfileFieldBytes, file);
    std::fclose(file);
    return 1;
}

// 0x81be2c _ZN15CMatchingGLLive17LoadGLLiveProfileEv
// The header is compared with memcmp over its 30 bytes, which matches the original strcmp
// for a file written by SaveGLLiveProfile.
int CMatchingGLLive::LoadGLLiveProfile() {
    std::memset(userName_, 0, kProfileFieldBytes);
    std::memset(password_, 0, kProfileFieldBytes);
    profileFlag_ = 0;

    std::FILE* file = std::fopen(kProfileFileName, "rb");
    if (file == nullptr) {
        XP_DEBUG_OUT("LoadProfile(), File %s not found \n", kProfileFileName);
        return 0;
    }
    std::fseek(file, 0, SEEK_END);
    const long length = std::ftell(file);
    std::rewind(file);
    if (static_cast<long>(kProfileHeaderBytes) >= length) {
        std::fclose(file);
        return 0;
    }
    std::vector<char> header(kProfileHeaderBytes);
    std::fread(header.data(), 1, kProfileHeaderBytes, file);
    if (std::memcmp(header.data(), kProfileHeader, kProfileHeaderBytes) != 0) {
        std::fclose(file);
        return 0;
    }
    std::fread(&profileFlag_, 1, 1, file);
    std::fread(userName_, 1, kProfileFieldBytes, file);
    std::fread(password_, 1, kProfileFieldBytes, file);
    std::fclose(file);
    return 1;
}

// 0x81bf88 _ZN15CMatchingGLLive10IsLoggedInEv
// Reconstructed: the byte at CSignIn+0x11, read through CSignIn::LoggedIn(). Deviation
// (host-necessitated): CSignIn::Get() is null only for a provider other than 0 and 1, where the original
// dereferences null; this port reads that as signed out.
int CMatchingGLLive::IsLoggedIn() { return SignInLoggedIn() ? 1 : 0; }

// 0x81bf98 _ZNK15CMatchingGLLive17GetServerMemberIdEv
// Reconstructed: game-starting returns serverMemberId_ (+0x3644), signed in returns 0, else -1. The
// signed-in test reads the same null-guarded flag as IsLoggedIn (see above).
std::int32_t CMatchingGLLive::GetServerMemberId() const {
    if (s_IsGameStarting) {
        return serverMemberId_;
    }
    if (SignInLoggedIn()) {
        return 0;
    }
    return -1;
}

// 0x81c084 _ZN15CMatchingGLLive15GLSendHighScoreEi
// Returns the result of sendHighScore(score, -1, 1) (the SendByGet result). The null guard is an addition: the
// original calls through the pointer unchecked.
std::int32_t CMatchingGLLive::GLSendHighScore(std::int32_t score) {
    if (glxLeaderboard_ != nullptr) {
        return glxLeaderboard_->sendHighScore(score, -1, 1);
    }
    return 0;
}

// 0x81c18c _ZN15CMatchingGLLive6GetGGIEv
// The GGI of the GLXPlayerSereverConfig at +0x6710.
unsigned long CMatchingGLLive::GetGGI() {
    return glxServerConfig_ != nullptr ? glxServerConfig_->GetGGI() : 0UL;
}

// 0x81c32c _ZN15CMatchingGLLive30GetGLXPlayerUserFriendObserverEv
CMatchingGLLiveFriendObserver* CMatchingGLLive::GetGLXPlayerUserFriendObserver() {
    if (s_GLXPlayerUserFriendObserver == nullptr) {
        s_GLXPlayerUserFriendObserver = new CMatchingGLLiveFriendObserver();
    }
    return s_GLXPlayerUserFriendObserver;
}

// 0x81c410 _ZN15CMatchingGLLive27GetGLXPlayerMPLobbyObserverEv
CMatchingGLLiveLobbyObserver* CMatchingGLLive::GetGLXPlayerMPLobbyObserver() {
    if (s_GLXPlayerMPLobbyObserver == nullptr) {
        s_GLXPlayerMPLobbyObserver = new CMatchingGLLiveLobbyObserver();
    }
    return s_GLXPlayerMPLobbyObserver;
}

// 0x81c598 _ZN15CMatchingGLLive25GetGLXPlayerLoginObserverEv
CSignInGLLiveObserver* CMatchingGLLive::GetGLXPlayerLoginObserver() {
    if (s_GLXPlayerLoginObserver == nullptr) {
        s_GLXPlayerLoginObserver = new CSignInGLLiveObserver();
    }
    return s_GLXPlayerLoginObserver;
}

// 0x81c880 _ZN15CMatchingGLLive9PingRoomsEv
std::int32_t CMatchingGLLive::PingRooms() {
    MatchingInternalEventQueue().AddEvent(8388624, nullptr, 0);
    return 0;
}

// 0x81c1a0 _ZN15CMatchingGLLive26ProcessChangeServerMessageEiR12NetBitStream
// The original returns the AddEvent result; the port's AddEvent returns nothing.
void CMatchingGLLive::ProcessChangeServerMessage(int /*from*/, NetBitStream& stream) {
    std::int32_t serverId = 0;
    stream.ReadByteArray(&serverId, sizeof serverId);
    serverMemberId_ = serverId;
    MatchingInternalEventQueue().AddEvent(8388619, &serverId, sizeof serverId);
}

// 0x81c8b8 _ZN15CMatchingGLLive24ProcessRoomStatusMessageEiR12NetBitStream
// Reads 12 bytes: byte 0 and byte 1 go to roomStatus_, bytes 4..7 to roomValue0_ and
// bytes 8..11 to roomValue1_ (the field roles are not identified).
void CMatchingGLLive::ProcessRoomStatusMessage(int /*from*/, NetBitStream& stream) {
    std::uint8_t bytes[12] = {};
    stream.ReadByteArray(bytes, sizeof bytes);
    roomStatus_[0] = bytes[0];
    roomStatus_[1] = bytes[1];
    std::memcpy(&roomValue0_, bytes + 4, sizeof roomValue0_);
    std::memcpy(&roomValue1_, bytes + 8, sizeof roomValue1_);
    MatchingInternalEventQueue().AddEvent(8388618, nullptr, 0);
}

// 0x81c938 _ZN15CMatchingGLLive22PacketReceiverCallbackEiPci
// The first byte selects the handler: 3 is the member join message, 4 the server change and 5 the room status.
// Other types are ignored.
void CMatchingGLLive::PacketReceiverCallback(int from, char* data, int size) {
    const auto byteCount = static_cast<std::uint32_t>(size);
    NetBitStream stream(byteCount);
    stream.WriteByteArray(data, byteCount);
    // The read position is still at 0 (WriteByteArray does not move it), so the reads start at the beginning.

    std::uint8_t type = 0;
    stream.ReadByteArray(&type, 1);
    switch (type) {
        case 4:
            ProcessChangeServerMessage(from, stream);
            break;
        case 5:
            ProcessRoomStatusMessage(from, stream);
            break;
        case 3:
            ProcessMemberJoinMessage(from, stream);
            break;
        default:
            break;
    }
}

// 0x81ca24 _ZN15CMatchingGLLive19ProcessGLLiveEventsEv
std::int32_t CMatchingGLLive::ProcessGLLiveEvents() {
    if (s_eventQueueGLLiveInternal.HasEventOccured(5, true)) {
        glLiveEventFlag_ = 1;
    }
    if (s_eventQueueGLLiveInternal.HasEventOccured(6, true)) {
        glLiveEventFlag_ = 0;
    }
    if (s_eventQueueGLLiveInternal.HasEventOccured(9, true)) {
        MatchingInternalEventQueue().AddEvent(8388620, nullptr, 0);
    }
    if (s_eventQueueGLLiveInternal.HasEventOccured(10, true)) {
        MatchingInternalEventQueue().AddEvent(8388621, nullptr, 0);
    }
    return 0;
}
