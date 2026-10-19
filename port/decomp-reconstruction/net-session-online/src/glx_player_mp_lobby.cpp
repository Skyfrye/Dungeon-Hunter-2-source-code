#include "net-session-online/glx_player_mp_lobby.hpp"

#include <algorithm>
#include <cstdlib>
#include <cstring>
#include <map>
#include <string>
#include <vector>

#include "net-session-online/c_lobby_parameter_and_query.hpp"
#include "net-session-online/deps/xp_api.hpp"
#include "net-session-online/xp_api.hpp"
#include "net-transport/data_packet.hpp"

// Result codes stored at +0x50.
namespace {
constexpr std::int32_t kPending = -1;
constexpr std::int32_t kRefused = 0x32;

// Request kinds stored at +0x84. Values come from the mpSend* bodies.
constexpr std::int32_t kKindLeaveLobby = 3;
constexpr std::int32_t kKindGetPlayerCounter = 2;
constexpr std::int32_t kKindSetPlayerStatus = 4;
constexpr std::int32_t kKindKickOut = 6;
constexpr std::int32_t kKindSetUserParameter = 7;
constexpr std::int32_t kKindSetGameParameter = 8;
constexpr std::int32_t kKindLaunchGame = 9;
constexpr std::int32_t kKindGetLobbyForName = 10;
constexpr std::int32_t kKindGetLobbyList = 11;
constexpr std::int32_t kKindGetLobbyForFriend = 12;
constexpr std::int32_t kKindGetLobbyInfo = 13;
constexpr std::int32_t kKindJoinLobby = 14;
constexpr std::int32_t kKindRejoinLobby = 15;
constexpr std::int32_t kKindDisconnect = 16;
constexpr std::int32_t kKindCancelAutoMatch = 17;
constexpr std::int32_t kKindGetLobbyForNameWithGameParam = 18;
constexpr std::int32_t kKindGetLobbyListWithGameParam = 19;
constexpr std::int32_t kKindGetLobbyForFriendWithGameParam = 20;
constexpr std::int32_t kKindLogin = 1;
constexpr std::int32_t kKindInit = 21;
constexpr std::int32_t kFriendListCap = 30;
constexpr std::int32_t kKindCreateLobby = 5;

// Packs the friend names the way the original builds them: friends are visited from the last
// to the first, and each name is written as a 2-byte big-endian length followed by its bytes.
// The count is capped at 30 and returned through count. An empty list gives an empty buffer.
std::vector<char> PackFriendNames(GLXPlayerUserFriend* friends, std::int32_t& count) {
    count = friends->GetFriendsCount();
    if (count >= kFriendListCap) {
        count = kFriendListCap;
    }
    std::vector<char> packed;
    for (std::int32_t i = count - 1; i >= 0; --i) {
        const char* name = friends->GetName(i);
        if (name == nullptr) {
            continue;
        }
        const std::size_t length = std::strlen(name);
        packed.push_back(static_cast<char>((length >> 8) & 0xff));
        packed.push_back(static_cast<char>(length & 0xff));
        packed.insert(packed.end(), name, name + length);
    }
    return packed;
}
}  // namespace

// 0x83a64c _ZN16GLXPlayerMPLobbyC1EP23GLXPlayerMPBaseObserverPc (C2 0x83a6c8, same body)
// Base ctor, then the config text is copied into an owned string at +0x7c (new[] copy; a null
// config leaves it null), then Init.
GLXPlayerMPLobby::GLXPlayerMPLobby(GLXPlayerMPBaseObserver* observer, const char* config)
    : GLXPlayerMPBase(observer) {
    if (config != nullptr) {
        const std::size_t length = std::strlen(config);
        config_.reset(new char[length + 1]);
        std::memcpy(config_.get(), config, length + 1);
    }
    Init();
}

// 0x83a4f0 _ZN16GLXPlayerMPLobbyD1Ev, 0x83a5ac _ZN16GLXPlayerMPLobbyD2Ev (same body)
// Frees the owned address text at +0x58 (std::free, as the original's LC_API_FREE_0; the port
// never allocates it, LoadConfig is partial), then mpDisconnect and the connection release. The
// owned config text at +0x7c is released by its unique_ptr member after this body.
GLXPlayerMPLobby::~GLXPlayerMPLobby() {
    if (host_ != nullptr) {
        std::free(host_);
        host_ = nullptr;
    }
    if (connection_) {
        mpDisconnect();
        connection_.reset();
    }
}

// 0x83a4a4 _ZN16GLXPlayerMPLobby4InitEv
void GLXPlayerMPLobby::Init() {
    unknown61_ = 10;
    pendingKind_ = kKindInit;
    pendingActive_ = false;
    connection_.reset();
    unknown63_ = 0xff;
    unknown64_ = 0xff;
    state_ = 0;
    unknown62_ = 0;
    errMsg_.reset();  // +0x4c
    autoMatch_ = false;
    LoadConfig();
    unknown88_ = -1;
}

// 0x837630 _ZN16GLXPlayerMPLobby13mpIsInSessionEv
bool GLXPlayerMPLobby::mpIsInSession() { return state_ > 2; }

// 0x837644 _ZN16GLXPlayerMPLobby10mpIsInRoomEv
bool GLXPlayerMPLobby::mpIsInRoom() { return state_ > 2; }

// 0x837658 _ZN16GLXPlayerMPLobby10mpIsInGameEv
bool GLXPlayerMPLobby::mpIsInGame() { return state_ > 4; }

// 0x83766c _ZN16GLXPlayerMPLobby10mpIsMasterEv
bool GLXPlayerMPLobby::mpIsMaster() { return isMaster_; }

// Refused requests set the result to 0x32 and call observer vtable slot 0, OnMPNetworkError, with that result (the
// listing loads r1 with the same constant it stores at +0x50; checked in mpSendSetPlayerStatus 0x8382c8 and
// mpSendJoinPredefinedLobby 0x838528).
void GLXPlayerMPLobby::RefuseRequest() {
    lastResult_ = kRefused;
    observer_->OnMPNetworkError(lastResult_);
}

void GLXPlayerMPLobby::StampRequest(std::int32_t kind) {
    connection_->SetRequestTime(XP_API_GET_TIME());
    pendingKind_ = kind;
    pendingActive_ = true;
}

// 0x837674 _ZN16GLXPlayerMPLobby22mpSendGetPlayerCounterEv
void GLXPlayerMPLobby::mpSendGetPlayerCounter() {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetPlayerCounter {\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        connection_->sendGetPlayerCounter();
        StampRequest(kKindGetPlayerCounter);
        return;
    }
    RefuseRequest();
}

// 0x8376fc _ZN16GLXPlayerMPLobby36mpSendGetLobbyForFriendWithGameParamEihiPciP23CLobbyParameterAndQuery
void GLXPlayerMPLobby::mpSendGetLobbyForFriendWithGameParam(std::int32_t a, std::uint8_t b,
                                                            std::int32_t c, char* d, std::int32_t e,
                                                            CLobbyParameterAndQuery* f) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyForFriendWithGameParam(), FriendList{\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        connection_->sendGetLobbyForFriendWithGameParam(a, b, static_cast<std::uint8_t>(c), d, e, f);
        StampRequest(kKindGetLobbyForFriendWithGameParam);
        return;
    }
    RefuseRequest();
}

// 0x83787c _ZN16GLXPlayerMPLobby36mpSendGetLobbyForFriendWithGameParamEihP19GLXPlayerUserFriendP23CLobbyParameterAndQuery
// Packs the friend names and forwards them to the overload above. This path does not
// stamp the request: the overload does.
void GLXPlayerMPLobby::mpSendGetLobbyForFriendWithGameParam(std::int32_t a, std::uint8_t b,
                                                            GLXPlayerUserFriend* friends,
                                                            CLobbyParameterAndQuery* query) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyForFriendWithGameParam(){\n");
    if (state_ <= 1) {
        RefuseRequest();
        return;
    }
    lastResult_ = kPending;
    std::int32_t count = 0;
    std::vector<char> packed = PackFriendNames(friends, count);
    mpSendGetLobbyForFriendWithGameParam(a, b, count, packed.empty() ? nullptr : packed.data(),
                                         static_cast<std::int32_t>(packed.size()), query);
    XP_DEBUG_OUT("}\n");
}

// 0x8377c0 _ZN16GLXPlayerMPLobby23mpSendGetLobbyForFriendEihiPci
void GLXPlayerMPLobby::mpSendGetLobbyForFriend(std::int32_t a, std::uint8_t b, std::int32_t c,
                                               char* d, std::int32_t e) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyForName(), FriendList{\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        connection_->sendGetLobbyForFriend(a, b, static_cast<std::uint8_t>(c), d, e);
        StampRequest(kKindGetLobbyForFriend);
        return;
    }
    RefuseRequest();
}

// 0x837a88 _ZN16GLXPlayerMPLobby23mpSendGetLobbyForFriendEihP19GLXPlayerUserFriend
// Packs the friend names and sends them with the count, then stamps the request.
void GLXPlayerMPLobby::mpSendGetLobbyForFriend(std::int32_t a, std::uint8_t b, GLXPlayerUserFriend* friends) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyForName(){\n");
    if (state_ <= 1) {
        RefuseRequest();
        return;
    }
    lastResult_ = kPending;
    std::int32_t count = 0;
    std::vector<char> packed = PackFriendNames(friends, count);
    connection_->sendGetLobbyForFriend(a, b, static_cast<std::uint8_t>(count),
                                       packed.empty() ? nullptr : packed.data(),
                                       static_cast<std::int32_t>(packed.size()));
    StampRequest(kKindGetLobbyForFriend);
    XP_DEBUG_OUT("}\n");
}

// 0x8387a4 _ZN16GLXPlayerMPLobby17mpSendCreateLobbyEPchhiS0_iS0_iP23CLobbyParameterAndQuery
void GLXPlayerMPLobby::mpSendCreateLobby(char* a, std::uint8_t b, std::uint8_t c, std::int32_t d, char* e,
                                         std::int32_t f, char* g, std::int32_t h, CLobbyParameterAndQuery* q) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendCreateLobby(){\n");
    if (state_ <= 1) {
        RefuseRequest();
        return;
    }
    lastResult_ = kPending;
    connection_->sendCreateLobbyPackage(ggi_, a, b, c, d, e, f, g, h, q);
    StampRequest(kKindCreateLobby);
    XP_DEBUG_OUT("}\n");
}

// 0x83a744 _ZN16GLXPlayerMPLobby31mpSendCreateLobbyWithGameCenterEPchhiS0_iS0_iP23CLobbyParameterAndQueryRSt4listISsSaISsEE
// The name list is copied node by node, as the original does, and the copy is released
// after the send.
void GLXPlayerMPLobby::mpSendCreateLobbyWithGameCenter(char* a, std::uint8_t b, std::uint8_t c,
                                                       std::int32_t d, char* e, std::int32_t f, char* g,
                                                       std::int32_t h, CLobbyParameterAndQuery* q,
                                                       std::list<std::string>& names) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendCreateLobbyWithGameCenter(){\n");
    if (state_ <= 1) {
        RefuseRequest();
        return;
    }
    lastResult_ = kPending;
    const std::list<std::string> copy(names);
    connection_->sendCreateLobbyPackageWithGameCenter(ggi_, a, b, c, d, e, f, g, h, q, copy);
    StampRequest(kKindCreateLobby);
    XP_DEBUG_OUT("}\n");
}

// 0x837cc8 _ZN16GLXPlayerMPLobby34mpSendGetLobbyForNameWithGameParamEPc
void GLXPlayerMPLobby::mpSendGetLobbyForNameWithGameParam(char* name) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyForName(){\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        connection_->sendGetLobbyForNameWithGameParam(name);
        StampRequest(kKindGetLobbyForNameWithGameParam);
        return;
    }
    RefuseRequest();
}

// 0x837d58 _ZN16GLXPlayerMPLobby31mpSendGetLobbyListWithGameParamEiihP23CLobbyParameterAndQueryh
void GLXPlayerMPLobby::mpSendGetLobbyListWithGameParam(std::int32_t a, std::int32_t b, std::uint8_t c,
                                                       CLobbyParameterAndQuery* query, std::uint8_t d) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyListWithGameParam(){\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        if (c == 0) {
            c = 1;
        }
        connection_->sendGetLobbyListPackageWithGameParam(ggi_, a, b & ~(b >> 31),
                                                          c, query, d);
        StampRequest(kKindGetLobbyListWithGameParam);
        return;
    }
    RefuseRequest();
}

// 0x838468 _ZN16GLXPlayerMPLobby18mpSendGetLobbyListEiihP23CLobbyParameterAndQueryh
void GLXPlayerMPLobby::mpSendGetLobbyList(std::int32_t a, std::int32_t b, std::uint8_t c,
                                          CLobbyParameterAndQuery* query, std::uint8_t d) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyList(){\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        if (c == 0) {
            c = 1;
        }
        connection_->sendGetLobbyListPackage(ggi_, a, b & ~(b >> 31), c, query, d);
        StampRequest(kKindGetLobbyList);
        return;
    }
    RefuseRequest();
}

// 0x837e18 _ZN16GLXPlayerMPLobby13mpSendKickOutEPc
void GLXPlayerMPLobby::mpSendKickOut(char* name) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendKickOut(){\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        connection_->sendKickOutPackage(name);
        StampRequest(kKindKickOut);
        return;
    }
    RefuseRequest();
}

// 0x837ea8 _ZN16GLXPlayerMPLobby28mpSendCancelAutoMatchRequestEv
void GLXPlayerMPLobby::mpSendCancelAutoMatchRequest() {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendCancelAutoMatchRequest(){\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        autoMatch_ = false;
        state_ = 2;
        connection_->sendCancelAutoMatchPackage();
        StampRequest(kKindCancelAutoMatch);
        return;
    }
    RefuseRequest();
}

// 0x837f40 _ZN16GLXPlayerMPLobby22mpSendAutoMatchRequestEPciS0_iss
void GLXPlayerMPLobby::mpSendAutoMatchRequest(char* a, std::int32_t b, char* c, std::int32_t d,
                                              std::int16_t e, std::int16_t f) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendAutoMatchRequest(){\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        autoMatch_ = true;
        connection_->sendAutoMatchPackage(a, b, c, d, e, f);
        pendingActive_ = false;
        return;
    }
    RefuseRequest();
}

// 0x837ff0 _ZN16GLXPlayerMPLobby21mpSendGetLobbyForNameEPc
void GLXPlayerMPLobby::mpSendGetLobbyForName(char* name) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyForName(){\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        connection_->sendGetLobbyForName(name);
        StampRequest(kKindGetLobbyForName);
        return;
    }
    RefuseRequest();
}

// 0x838080 _ZN16GLXPlayerMPLobby18mpSendGetLobbyInfoEi
void GLXPlayerMPLobby::mpSendGetLobbyInfo(std::int32_t lobbyId) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendGetLobbyInfo(){\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        connection_->sendGetLobbyInfo(lobbyId);
        StampRequest(kKindGetLobbyInfo);
        return;
    }
    RefuseRequest();
}

// 0x838110 _ZN16GLXPlayerMPLobby22mpSendSetUserParameterEPci
void GLXPlayerMPLobby::mpSendSetUserParameter(char* value, std::int32_t key) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendSetUserParameter(){\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        connection_->sendSetUserParameter(value, static_cast<std::int16_t>(key));
        StampRequest(kKindSetUserParameter);
        return;
    }
    RefuseRequest();
}

// 0x838248 _ZN16GLXPlayerMPLobby17mpSendRejoinLobbyEi
// The original does not print a closing trace on this path.
void GLXPlayerMPLobby::mpSendRejoinLobby(std::int32_t lobbyId) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendRejoinLobby()\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        connection_->sendRejoinLobbyPackage(lobbyId);
        StampRequest(kKindRejoinLobby);
        return;
    }
    RefuseRequest();
}

// 0x8382c8 _ZN16GLXPlayerMPLobby21mpSendSetPlayerStatusEh
void GLXPlayerMPLobby::mpSendSetPlayerStatus(std::uint8_t status) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendSetPlayerStatus(){\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        connection_->sendSetPlayerStatusPackage(status);
        StampRequest(kKindSetPlayerStatus);
        return;
    }
    RefuseRequest();
}

// 0x838358 _ZN16GLXPlayerMPLobby21mpSendLaunchLobbyGameEv
void GLXPlayerMPLobby::mpSendLaunchLobbyGame() {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendLaunchLobbyGame(){\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        connection_->sendLunchLobbyGamePackage();
        StampRequest(kKindLaunchGame);
        return;
    }
    RefuseRequest();
}

// 0x8383e0 _ZN16GLXPlayerMPLobby16mpSendLeaveLobbyEv
void GLXPlayerMPLobby::mpSendLeaveLobby() {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendLeaveLobby(){\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        connection_->sendLeaveLobbyPackage();
        StampRequest(kKindLeaveLobby);
        return;
    }
    RefuseRequest();
}

// 0x8381a8 _ZN16GLXPlayerMPLobby22mpSendSetGameParameterEPciP23CLobbyParameterAndQuery
void GLXPlayerMPLobby::mpSendSetGameParameter(char* name, std::int32_t value,
                                              CLobbyParameterAndQuery* query) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendSetGameParameter(){\n");
    if (state_ > 1) {
        lastResult_ = kPending;
        connection_->sendSetGameParameter(name, static_cast<std::int16_t>(value), query);
        StampRequest(kKindSetGameParameter);
        return;
    }
    RefuseRequest();
}

// 0x8386f0 _ZN16GLXPlayerMPLobby15mpSendJoinLobbyEihPci
// The original sends first and sets the pending result after the send.
void GLXPlayerMPLobby::mpSendJoinLobby(std::int32_t lobbyId, std::uint8_t b, char* c, std::int32_t d) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendJoinLobby(){\n");
    if (state_ > 1) {
        connection_->sendJoinLobbyPackage(lobbyId, b, c, d);
        lastResult_ = kPending;
        StampRequest(kKindJoinLobby);
        return;
    }
    RefuseRequest();
}

// 0x838528 _ZN16GLXPlayerMPLobby25mpSendJoinPredefinedLobbyEPciS0_iiRSt3mapIiSsSt4lessIiESaISt4pairIKiSsEEE
// The map is walked in key order (the original's in-order tree walk). For each entry the query
// block gets AddQueryCondition(key, 2, text) (vtable +0x0c) and the parameter block gets
// SetParameterValue(key, text) (vtable +0x08). The connection then sends the two blocks, the
// request time is stamped, and the pending kind is 14. The state check and the refusal
// (result 0x32, observer slot 0) are as the original. The map value is read as the string's
// c_str(); the original reads the same character data from the node.
void GLXPlayerMPLobby::mpSendJoinPredefinedLobby(char* a, std::int32_t b, char* c, std::int32_t d,
                                                 std::int32_t e,
                                                 std::map<std::int32_t, std::string>& names) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendJoinPredefinedLobby(){\n");
    if (state_ <= 1) {
        RefuseRequest();
        return;
    }
    // queryCondition is v12 in the original (sent as a7) and parameterValues is v11 (sent as a8).
    CLobbyParameterAndQuery queryCondition;
    CLobbyParameterAndQuery parameterValues;
    for (const auto& entry : names) {
        queryCondition.AddQueryCondition(entry.first, 2, entry.second.c_str());
        parameterValues.SetParameterValue(entry.first, entry.second.c_str());
    }
    connection_->sendJoinPredefinedLobbyPackage(a, b, c, d, e, &queryCondition, &parameterValues);
    lastResult_ = kPending;
    StampRequest(kKindJoinLobby);
    XP_DEBUG_OUT("}\n");
}

// 0x838890 _ZN16GLXPlayerMPLobby30mpSendLobbyLoginWithGameCenterElPcihhS0_S0_
// No state check on this path.
void GLXPlayerMPLobby::mpSendLobbyLoginWithGameCenter(long a, char* b, std::int32_t c, std::uint8_t d,
                                                      std::uint8_t e, char* f, char* g) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendLobbyLoginWithGameCenter\n");
    lastResult_ = kPending;
    connection_->sendLobbyLoginPackageWithGameCenter(a, b, static_cast<std::int16_t>(c), d, e, f, g);
    StampRequest(kKindLogin);
}

// 0x838928 _ZN16GLXPlayerMPLobby16mpSendLobbyLoginElPcih
// No state check on this path.
void GLXPlayerMPLobby::mpSendLobbyLogin(long a, char* b, std::int32_t c, std::uint8_t d) {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendLobbyLogin\n");
    lastResult_ = kPending;
    connection_->sendLobbyLoginPackage(a, b, static_cast<std::int16_t>(c), d);
    StampRequest(kKindLogin);
}

// 0x8389a8 _ZN16GLXPlayerMPLobby16mpSendDisconnectEv
// Connected: result -1, the connection's finish package (Connection vtable +0x14,
// sendFinishConnectionPackage), request time, pending kind 16. Not connected: mpDisconnect (this
// object's vtable +0x18), then result 0.
/// 0x8389a8 _ZN16GLXPlayerMPLobby16mpSendDisconnectEv
// With a connection: a connected one gets the finish package (Connection vtable +0x14), the result -1, its request time
// stamped with XP_API_GET_TIME, the pending kind 16 (disconnect) and the pending flag. An unconnected one is
// disconnected through mpDisconnect (this object's vtable +0x18), the result becomes 0 and the observer's
// OnMPDisconnectSuccess (+0x0c) runs. The original returns the observer call's leftover; the port returns void.
void GLXPlayerMPLobby::mpSendDisconnect() {
    if (!connection_) {
        return;
    }
    if (connection_->isConnected()) {
        lastResult_ = kPending;
        connection_->sendFinishConnectionPackage();
        connection_->SetRequestTime(XP_API_GET_TIME());
        pendingKind_ = kKindDisconnect;
        pendingActive_ = true;
        return;
    }
    mpDisconnect();
    lastResult_ = 0;
    observer_->OnMPDisconnectSuccess();
}

// 0x838a34 _ZN16GLXPlayerMPLobby6UpdateEv
// A connected connection first reads its socket (vtable +0x0c, receiveDataLen) and refreshes the ping result (+0x88 = the
// ping thread's result at +0x1c, -1 without a ping thread). A pending request older than 18000 ms (XP_API_GET_TIME against
// the connection's request time) times out: the pending flag is cleared, the result becomes 41 (state 1 or less) or 16434,
// the lobby disconnects, the observer gets OnMPNetworkError(result) and the pending kind returns to 21. Otherwise one
// incoming message is processed (vtable +0x44); when it reports a message the current incoming packet is deleted.
// An unconnected connection that has a socket and whose connect state (+0x6c) is 1 is connected: success stamps the request
// time, sets the pending flag, state word 2 and clears the connection's state; a failure that is not "connecting" sets
// state word 3 and clears the connection's state, then falls into the common error exit; without a socket or in another
// state word the lobby disconnects, sets the result to -2 and reports OnMPNetworkError(-2).
void GLXPlayerMPLobby::Update() {
    if (connection_->isConnected()) {
        connection_->receiveDataLen();  // vtable +0x0c
        unknown88_ = worker_ ? worker_->Result() : -1;
        if (pendingActive_ &&
            static_cast<std::uint32_t>(XP_API_GET_TIME() - connection_->establish_time_) > 0x4650u) {
            pendingActive_ = false;
            XP_DEBUG_OUT("Timeout expired! m_LobbyStatus = %d\n", pendingKind_);
            lastResult_ = state_ <= 1 ? 41 : 16434;
            mpDisconnect();  // vtable +0x18
            observer_->OnMPNetworkError(lastResult_);
            pendingKind_ = kKindInit;
        } else if (mpProcessIncomingMessages() != 0) {  // vtable +0x44
            incomingPacket_.reset();
        }
        return;
    }
    if (!connection_->socket_ || field6c_ != 1) {
        mpDisconnect();
        lastResult_ = -2;
        observer_->OnMPNetworkError(-2);
        return;
    }
    if (connection_->connect() != 0) {
        connection_->SetRequestTime(XP_API_GET_TIME());
        pendingActive_ = true;
        field6c_ = 2;
        connection_->state_ = 0;
        return;
    }
    if (connection_->state_ != 1) {
        field6c_ = 3;
        connection_->state_ = 0;
        mpDisconnect();
        lastResult_ = -2;
        observer_->OnMPNetworkError(-2);
    }
}

// 0x838c6c _ZN16GLXPlayerMPLobby25mpProcessIncomingMessagesEv
// While the state is above 1 the connection's keep-alive is serviced (a sent keep-alive stamps +0x8c). The previous
// incoming packet is deleted and the next one taken from the connection (+0x68). Its two header bytes are skipped and
// its message type (vtable +0xa0) dispatched:
//   request replies (types 4 .. 104) check that the pending kind (+0x84) is the request they answer, return it to 21,
//     clear the pending flag, read the result code (getInt); a code other than 0 stores the packet's message as the error
//     text and reports OnMPFunctionError(text, code); code 0 stores result 0 and calls the observer slot for the reply
//     (login, create/list/join/leave session, kick out, start game, rejoin, lobby info, set parameter, player counter,
//     auto-match, predefined room); an unreadable packet reports OnMPNetworkError(40);
//   push messages (17, 18, 21, 32, 35, 38, 41, 44, 47, 50, 76, 80) go to OnMPProcessPushMessages(packet, type);
//   type 2 (connection established) marks the lobby logged in (state 1), reports OnMPEstablishConnectionSuccess and
//     starts the ping thread on the host of the config text;
//   a reply that does not answer the pending request is dropped.
// Returns 1 for the messages that keep the packet (the establish reply and the session list and leave replies, which the
// caller deletes later), 0 after the packet has been deleted.
// Deviations: the config text is null-checked before the ping thread is created; the host/port buffers are 256 bytes.
std::int32_t GLXPlayerMPLobby::mpProcessIncomingMessages() {
    if (state_ > 1 && connection_->keepConnectionAlive()) {
        keepAliveTime_ = XP_API_GET_TIME();  // +0x8c
    }
    incomingPacket_.reset();
    incomingPacket_.reset(connection_->getNextIncomingPacket());
    if (!incomingPacket_) {
        return 0;
    }
    DataPacket* packet = incomingPacket_.get();
    unsigned char header0 = 0;
    unsigned char header1 = 0;
    packet->getByte(header0);
    packet->getByte(header1);
    const std::int32_t type = packet->GetMessageType();  // vtable +0xa0
    XP_DEBUG_OUT("get respone Msg type: %d\n", type);

    // The packet is deleted and 0 returned (LABEL_12).
    auto drop = [this]() -> std::int32_t {
        incomingPacket_.reset();
        return 0;
    };
    // The reply could not be read: report a network error 40 (LABEL_29/30 and LABEL_70).
    auto unreadable = [this](const char* text) -> std::int32_t {
        XP_DEBUG_OUT(text);
        incomingPacket_.reset();
        lastResult_ = 40;
        observer_->OnMPNetworkError(40);
        return 0;
    };
    // The reply carried an error code (LABEL_122).
    auto functionError = [this](std::int32_t code) {
        setErrMsg();
        lastResult_ = code;
        observer_->OnMPFunctionError(errMsg_.get(), code);
    };
    auto push = [&](std::int32_t pushType) -> std::int32_t {
        observer_->OnMPProcessPushMessages(packet, pushType);  // vtable +0x3c
        return drop();
    };

    switch (type) {
        case 2:  // connection established
            pendingActive_ = false;
            state_ = 1;
            lastResult_ = 0;
            observer_->OnMPEstablishConnectionSuccess();  // vtable +0x08
            if (!worker_ && config_) {
                char address[256] = {};
                char host[256] = {};
                XP_API_PARSE_DATA(config_.get(), address, 2, '/');
                XP_API_PARSE_DATA(address, host, 0, ':');
                worker_ = std::make_unique<GLXPlayerPing>(host, 0);
                worker_->Start();
            }
            return 1;
        case 4:  // finish connection
            if (pendingKind_ != kKindDisconnect) {
                return drop();
            }
            pendingKind_ = kKindInit;
            pendingActive_ = false;
            mpDisconnect();  // vtable +0x18, deletes the packet
            incomingPacket_.reset();
            lastResult_ = 0;
            observer_->OnMPDisconnectSuccess();  // vtable +0x0c
            return 0;
        case 10: {  // acknowledged only
            std::int32_t code = 0;
            if (packet->getInt(code) != 0) {
                return drop();
            }
            return unreadable("Msg error 2\n");
        }
        case 17:
        case 18:
        case 21:
        case 32:
        case 35:
        case 38:
        case 41:
        case 47:
        case 80:
            return push(type);
        case 44:
            state_ = 5;
            return push(type);
        case 50:
            lastResult_ = 0;
            return push(type);
        case 76:
            if (autoMatch_) {
                lastResult_ = 0;
                observer_->OnMPProcessPushMessages(packet, type);
            }
            return drop();
        case 57: {  // auto-match request
            if (!autoMatch_) {
                return drop();
            }
            std::int32_t code = 0;
            packet->getInt(code);
            if (code != 0 && code != 0x4031) {
                functionError(code);
                return drop();
            }
            state_ = 3;
            observer_->OnMPAutoMatchRequeset(code);  // vtable +0x54
            return drop();
        }
        default:
            break;
    }

    // Replies to a request: {message type, pending kind that the reply answers (-1: none), error text, handling}.
    enum Reply {
        kLogin, kCreate, kList, kJoin, kLeave, kLobbyInfo, kKick, kSetParam34, kSetParam37, kSetParam40, kStart, kRejoin,
        kAutoCancel, kPlayerCounter, kPredefined, kNone
    };
    Reply reply = kNone;
    std::int32_t expectedKind = -1;
    const char* failText = "Msg error 2\n";
    switch (type) {
        case 6: reply = kLogin; expectedKind = kKindLogin; break;
        case 12: reply = kCreate; expectedKind = kKindCreateLobby; break;
        case 14: reply = kList; expectedKind = kKindGetLobbyList; break;
        case 16: reply = kJoin; expectedKind = kKindJoinLobby; break;
        case 20: reply = kLeave; expectedKind = kKindLeaveLobby; break;
        case 23: reply = kLobbyInfo; expectedKind = kKindGetLobbyInfo; break;
        case 25: reply = kKick; expectedKind = kKindKickOut; break;
        case 34: reply = kSetParam34; expectedKind = kKindSetGameParameter; break;
        case 37: reply = kSetParam37; expectedKind = kKindSetUserParameter; break;
        case 40: reply = kSetParam40; expectedKind = kKindSetPlayerStatus; break;
        case 43: reply = kStart; expectedKind = kKindLaunchGame; failText = "Msg error\n"; break;
        case 46: reply = kRejoin; expectedKind = kKindRejoinLobby; failText = "Msg error\n"; break;
        case 53: reply = kList; expectedKind = kKindGetLobbyForName; break;
        case 55: reply = kList; expectedKind = kKindGetLobbyForFriend; break;
        case 75: reply = kAutoCancel; expectedKind = kKindCancelAutoMatch; break;
        case 97: reply = kList; expectedKind = kKindGetLobbyListWithGameParam; break;
        case 98: reply = kList; expectedKind = kKindGetLobbyForNameWithGameParam; break;
        case 100: reply = kList; expectedKind = kKindGetLobbyForFriendWithGameParam; break;
        case 102: reply = kPlayerCounter; expectedKind = kKindGetPlayerCounter; break;
        case 104: reply = kPredefined; break;
        default: break;
    }
    if (reply == kNone) {
        return drop();
    }
    if (reply != kPredefined && pendingKind_ != expectedKind) {
        return drop();
    }
    pendingKind_ = kKindInit;
    if (reply == kCreate) {
        state_ = 3;
        isMaster_ = true;  // +0x81
    } else if (reply == kLogin) {
        state_ = 2;
    }
    pendingActive_ = false;
    std::int32_t code = 0;
    if (packet->getInt(code) == 0) {
        return unreadable(reply == kPredefined ? "Join Predefined Room Error 2\n" : failText);
    }
    if (code != 0) {
        functionError(code);
        // The session list and leave replies keep the packet (the caller deletes it).
        return (reply == kList && type == 14) || reply == kLeave ? 1 : drop();
    }
    switch (reply) {
        case kLogin:
            lastResult_ = 0;
            observer_->OnMPLoginSuccess(packet);  // vtable +0x10
            break;
        case kCreate:
            lastResult_ = 0;
            observer_->OnMPCreateSessionSuccess(packet);  // vtable +0x14
            break;
        case kList:
            lastResult_ = 0;
            observer_->OnMPListSessionSuccess(packet);  // vtable +0x18
            return type == 14 ? 1 : drop();
        case kJoin:
            state_ = 3;
            isMaster_ = false;
            lastResult_ = 0;
            observer_->OnMPJoinSessionSuccess(packet);  // vtable +0x1c
            break;
        case kLeave:
            state_ = 2;
            lastResult_ = 0;
            observer_->OnMPLeaveSessionSuccess();  // vtable +0x20
            return 1;
        case kLobbyInfo:
            lastResult_ = 0;
            observer_->OnMPGetLobbyInfo(packet);  // vtable +0x44
            break;
        case kKick:
            lastResult_ = 0;
            observer_->OnMPKickOutPlayerSuccess();  // vtable +0x24
            break;
        case kSetParam34:
            lastResult_ = 0;
            observer_->OnMPSetParamSuccess(34);  // vtable +0x38
            break;
        case kSetParam37:
            lastResult_ = 0;
            observer_->OnMPSetParamSuccess(37);
            break;
        case kSetParam40:
            lastResult_ = 0;
            observer_->OnMPSetParamSuccess(40);
            break;
        case kStart:
            lastResult_ = 0;
            state_ = 5;
            observer_->OnMPStartGameSuccess(packet);  // vtable +0x28
            break;
        case kRejoin:
            lastResult_ = 0;
            observer_->OnMPRejoinLobbySuccess(packet, false);  // vtable +0x40
            break;
        case kAutoCancel:
            lastResult_ = 0;
            observer_->OnMPAutoMatchRequesetCancel();  // vtable +0x58
            break;
        case kPlayerCounter:
            lastResult_ = 0;
            observer_->OnMPGetPlayerCounterSuccess(packet);  // vtable +0x5c
            break;
        case kPredefined:
            lastResult_ = 0;
            observer_->OnMPJoinPreDefinedRoomSessionSuccess(packet);  // vtable +0x60
            break;
        case kNone:
            break;
    }
    return drop();
}

// 0x839f4c _ZN16GLXPlayerMPLobby10LoadConfigEv
// Reads oconf.bar line by line (a line ends at '\n'; a trailing '\r' is cut): "GGI" stores the game id at +0x48, and
// "XPlayMPURL" (only while the config text at +0x7c is null) is split at the third '/' into host (+0x58, malloc'd) and
// port (+0x5c). When the file is missing the trace is printed and 0 returned. When the URL was not found in the file and a
// config text exists, the same split is applied to the config text. Returns 1 when the file was read (0 when the config text
// has no port). Deviations: the key buffer is 256 bytes (the original's is 32) and a missing value (-1 start) is empty.
std::int32_t GLXPlayerMPLobby::LoadConfig() {
    const std::int32_t handle = XP_API_FILE_OPEN("oconf.bar", "r");
    if (handle == 0) {
        XP_DEBUG_OUT("[GLXPlayerMPBase] load config - %s not found \n", "oconf.bar");
        return 0;
    }
    auto splitUrl = [this](char* url) -> bool {
        char address[128] = {};
        char host[128] = {};
        XP_API_PARSE_DATA(url, address, 2, '/');
        XP_API_PARSE_DATA(address, host, 0, ':');
        const std::size_t addressLength = std::strlen(address);
        const std::size_t hostLength = std::strlen(host);
        host_ = static_cast<char*>(std::calloc(hostLength + 1, 1));
        std::memcpy(host_, host, hostLength);
        if (addressLength <= hostLength + 1) {
            return false;
        }
        std::string port(address + hostLength + 1, addressLength - hostLength - 1);
        port_ = XP_API_ATOI(const_cast<char*>(port.c_str()));
        return true;
    };

    const std::int32_t length = XP_API_FILE_GET_LENGTH(handle);
    const std::size_t size = static_cast<std::size_t>(length) + 1;
    std::vector<char> file(size, 0);
    XP_API_FILE_READ(file.data(), static_cast<std::size_t>(length), 1, handle);
    std::vector<char> line(size, 0);
    XP_API_PARSE_DATA(file.data(), line.data(), 0, 10);
    bool urlFound = false;
    std::int32_t lineLength = XP_API_STRLEN(line.data());
    if (lineLength > 0) {
        if (line[static_cast<std::size_t>(lineLength) - 1] == 13) {
            line[static_cast<std::size_t>(lineLength) - 1] = 0;
        }
        std::int32_t lineIndex = 1;
        const bool haveConfigText = config_ != nullptr;
        for (;;) {
            char key[256] = {};
            char value[256] = {};
            XP_API_PARSE_DATA(line.data(), key, 0, ':');
            const std::int32_t start = XP_API_PARSE_DATA(line.data(), value, 1, ':');
            std::memset(value, 0, sizeof(value));
            if (start >= 0) {
                const std::size_t remaining = std::strlen(line.data()) - static_cast<std::size_t>(start);
                std::memcpy(value, line.data() + start, std::min<std::size_t>(remaining, sizeof(value) - 1));
            }
            XP_API_STRTRIM(key);
            XP_API_STRTRIM(value);
            if (std::strcmp(key, "GGI") == 0) {
                ggi_ = XP_API_ATOI(value);
            }
            if (std::strcmp(key, "XPlayMPURL") == 0 && !haveConfigText) {
                if (splitUrl(value)) {
                    urlFound = true;
                }
            }
            std::memset(line.data(), 0, size);
            XP_API_PARSE_DATA(file.data(), line.data(), lineIndex, 10);
            lineLength = XP_API_STRLEN(line.data());
            if (lineLength <= 0) {
                break;
            }
            ++lineIndex;
            if (line[static_cast<std::size_t>(lineLength) - 1] == 13) {
                line[static_cast<std::size_t>(lineLength) - 1] = 0;
            }
        }
    }
    XP_API_FILE_CLOSE(handle);
    if (urlFound) {
        return 1;
    }
    if (!config_) {
        return 1;
    }
    return splitUrl(config_.get()) ? 1 : 0;
}

// 0x838bf0 _ZN16GLXPlayerMPLobby12mpDisconnectEv
// Clears the ping result (+0x88), stops and deletes the ping thread, disconnects the connection, deletes the current
// incoming packet and resets the state.
void GLXPlayerMPLobby::mpDisconnect() {
    unknown88_ = -1;
    if (worker_) {
        worker_->Stop();
        worker_.reset();
    }
    connection_->disconnect();
    incomingPacket_.reset();
    state_ = 0;
}

// 0x839e7c _ZN16GLXPlayerMPLobby25mpSendEstablishConnectionEv
// The state byte (+0x60) selects the branch. Non-zero: result 0 and the observer's OnMPEstablishConnectionSuccess (+0x08).
// Zero: an existing connection is torn down through mpDisconnect (this object's vtable +0x18) and freed, the result
// becomes -1, a new ConnectionLobby is built on the config host (+0x58) and port (+0x5c), it is named from the +0x08
// name text, and the flag at +0x6c is set. The original returns the observer call's or the trace's result; the port's
// void return drops it.
void GLXPlayerMPLobby::mpSendEstablishConnection() {
    XP_DEBUG_OUT("GLXPlayerMPLobby::mpSendEstablishConnection(){\n");
    if (state_ != 0) {
        lastResult_ = 0;
        observer_->OnMPEstablishConnectionSuccess();
        return;
    }
    if (connection_) {
        mpDisconnect();
        connection_.reset();
    }
    lastResult_ = kPending;
    connection_ = std::make_unique<ConnectionLobby>(host_, port_);
    connection_->setName(name_);
    field6c_ = 1;
    XP_DEBUG_OUT("}\n");
}
