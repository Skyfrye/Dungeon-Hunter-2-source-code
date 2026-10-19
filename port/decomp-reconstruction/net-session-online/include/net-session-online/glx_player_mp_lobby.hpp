// GLXPlayerMPLobby: the multiplayer lobby player. Each mpSend* method checks the
// player state, forwards the request to ConnectionLobby and records the pending
// request kind. Refused requests set the result to 0x32 and notify the observer.
//
// Layout (original 32-bit offsets, kept as comments; +0x00..+0x73 is GLXPlayerMPBase, see glx_player_mp_base.hpp):
//   +0x60 state (>1 can send, >2 in session or room, >4 in game)
//   +0x61 Init sets 10, +0x62 Init sets 0, +0x63/+0x64 Init sets 0xff (unknown)
//   +0x68 the current incoming DataPacket (GLXPlayerMPBase::incomingPacket_)
//   +0x74 ConnectionLobby (allocated as 0x2058 bytes, time field at +0x2050)
//   +0x78 auto-match flag  +0x7c config text  +0x80 request pending flag  +0x81 is master
//   +0x84 pending request kind  +0x88 the ping result (-1 without a ping thread)
//   +0x90 the ping thread (GLXPlayerPing, a Thread)
#pragma once

#include <cstdint>
#include <list>
#include <map>
#include <memory>
#include <string>

#include "net-transport/connection_lobby.hpp"  // ConnectionLobby (one definition, net-transport)
#include "net-session-online/deps/glx_stand_ins.hpp"
#include "net-session-online/glx_player_ping.hpp"
#include "net-session-online/glx_player_mp_base.hpp"
#include "net-session-online/glx_player_user_friend.hpp"

class CLobbyParameterAndQuery;

class GLXPlayerMPLobby : public GLXPlayerMPBase {
public:
    GLXPlayerMPLobby(GLXPlayerMPBaseObserver* observer, const char* config);
    ~GLXPlayerMPLobby() override;
    GLXPlayerMPLobby(const GLXPlayerMPLobby&) = delete;
    GLXPlayerMPLobby& operator=(const GLXPlayerMPLobby&) = delete;

    // 0x83a4a4 _ZN16GLXPlayerMPLobby4InitEv
    void Init();

    // 0x838a34 _ZN16GLXPlayerMPLobby6UpdateEv (vtable +0x08). Reads the connection, processes the incoming packets, times
    // out a pending request after 18000 ms and connects a connection that is waiting to.
    void Update() override;
    // 0x838c6c _ZN16GLXPlayerMPLobby25mpProcessIncomingMessagesEv (vtable +0x44): one incoming packet per call,
    // dispatched on its message type to the observer.
    std::int32_t mpProcessIncomingMessages() override;

    // 0x837630 mpIsInSession, 0x837644 mpIsInRoom, 0x837658 mpIsInGame, 0x83766c mpIsMaster
    bool mpIsInSession() override;
    bool mpIsInRoom() override;
    bool mpIsInGame() override;
    bool mpIsMaster() override;
    // The master byte at +0x81, which OnMPProcessPushLeaveLobby sets when the leaving member is the local one.
    void SetMaster(bool value) { isMaster_ = value; }

    // 0x837674 _ZN16GLXPlayerMPLobby22mpSendGetPlayerCounterEv
    void mpSendGetPlayerCounter();
    // 0x8376fc _ZN16GLXPlayerMPLobby36mpSendGetLobbyForFriendWithGameParamEihiPciP23CLobbyParameterAndQuery
    void mpSendGetLobbyForFriendWithGameParam(std::int32_t a, std::uint8_t b, std::int32_t c,
                                              char* d, std::int32_t e, CLobbyParameterAndQuery* f);
    // 0x83787c _ZN16GLXPlayerMPLobby36mpSendGetLobbyForFriendWithGameParamEihP19GLXPlayerUserFriendP23CLobbyParameterAndQuery
    void mpSendGetLobbyForFriendWithGameParam(std::int32_t a, std::uint8_t b, GLXPlayerUserFriend* friends,
                                              CLobbyParameterAndQuery* query);
    // 0x8377c0 _ZN16GLXPlayerMPLobby23mpSendGetLobbyForFriendEihiPci
    void mpSendGetLobbyForFriend(std::int32_t a, std::uint8_t b, std::int32_t c, char* d, std::int32_t e);
    // 0x837a88 _ZN16GLXPlayerMPLobby23mpSendGetLobbyForFriendEihP19GLXPlayerUserFriend
    // Packs the friend names (up to 30, last friend first) and sends them.
    void mpSendGetLobbyForFriend(std::int32_t a, std::uint8_t b, GLXPlayerUserFriend* friends);
    // 0x8387a4 _ZN16GLXPlayerMPLobby17mpSendCreateLobbyEPchhiS0_iS0_iP23CLobbyParameterAndQuery
    void mpSendCreateLobby(char* a, std::uint8_t b, std::uint8_t c, std::int32_t d, char* e,
                           std::int32_t f, char* g, std::int32_t h, CLobbyParameterAndQuery* q);
    // 0x83a744 _ZN16GLXPlayerMPLobby31mpSendCreateLobbyWithGameCenterEPchhiS0_iS0_iP23CLobbyParameterAndQueryRSt4listISsSaISsEE
    // The name list is copied before it is handed to ConnectionLobby.
    void mpSendCreateLobbyWithGameCenter(char* a, std::uint8_t b, std::uint8_t c, std::int32_t d,
                                         char* e, std::int32_t f, char* g, std::int32_t h,
                                         CLobbyParameterAndQuery* q, std::list<std::string>& names);
    // 0x837cc8 _ZN16GLXPlayerMPLobby34mpSendGetLobbyForNameWithGameParamEPc
    void mpSendGetLobbyForNameWithGameParam(char* name);
    // 0x837d58 _ZN16GLXPlayerMPLobby31mpSendGetLobbyListWithGameParamEiihP23CLobbyParameterAndQueryh
    void mpSendGetLobbyListWithGameParam(std::int32_t a, std::int32_t b, std::uint8_t c,
                                         CLobbyParameterAndQuery* query, std::uint8_t d);
    // 0x837e18 _ZN16GLXPlayerMPLobby13mpSendKickOutEPc
    void mpSendKickOut(char* name);
    // 0x837ea8 _ZN16GLXPlayerMPLobby28mpSendCancelAutoMatchRequestEv
    void mpSendCancelAutoMatchRequest();
    // 0x837f40 _ZN16GLXPlayerMPLobby22mpSendAutoMatchRequestEPciS0_iss
    void mpSendAutoMatchRequest(char* a, std::int32_t b, char* c, std::int32_t d, std::int16_t e,
                                std::int16_t f);
    // 0x837ff0 _ZN16GLXPlayerMPLobby21mpSendGetLobbyForNameEPc
    void mpSendGetLobbyForName(char* name);
    // 0x838080 _ZN16GLXPlayerMPLobby18mpSendGetLobbyInfoEi
    void mpSendGetLobbyInfo(std::int32_t lobbyId);
    // 0x838110 _ZN16GLXPlayerMPLobby22mpSendSetUserParameterEPci
    void mpSendSetUserParameter(char* value, std::int32_t key);
    // 0x838248 _ZN16GLXPlayerMPLobby17mpSendRejoinLobbyEi
    void mpSendRejoinLobby(std::int32_t lobbyId);
    // 0x8382c8 _ZN16GLXPlayerMPLobby21mpSendSetPlayerStatusEh
    void mpSendSetPlayerStatus(std::uint8_t status);
    // 0x838358 _ZN16GLXPlayerMPLobby21mpSendLaunchLobbyGameEv
    void mpSendLaunchLobbyGame();
    // 0x8383e0 _ZN16GLXPlayerMPLobby16mpSendLeaveLobbyEv
    void mpSendLeaveLobby();
    // 0x8381a8 _ZN16GLXPlayerMPLobby22mpSendSetGameParameterEPciP23CLobbyParameterAndQuery
    void mpSendSetGameParameter(char* name, std::int32_t value, CLobbyParameterAndQuery* query);
    // 0x838468 _ZN16GLXPlayerMPLobby18mpSendGetLobbyListEiihP23CLobbyParameterAndQueryh
    void mpSendGetLobbyList(std::int32_t a, std::int32_t b, std::uint8_t c, CLobbyParameterAndQuery* query,
                            std::uint8_t d);
    // 0x8386f0 _ZN16GLXPlayerMPLobby15mpSendJoinLobbyEihPci
    void mpSendJoinLobby(std::int32_t lobbyId, std::uint8_t b, char* c, std::int32_t d);
    // 0x838528 _ZN16GLXPlayerMPLobby25mpSendJoinPredefinedLobbyEPciS0_iiRSt3mapIiSsSt4lessIiESaISt4pairIKiSsEEE
    // Refused (result 0x32, observer slot 0) when the state is 1 or less. Otherwise each map entry
    // goes into a query block and a parameter block, and both are sent with the connection.
    void mpSendJoinPredefinedLobby(char* a, std::int32_t b, char* c, std::int32_t d, std::int32_t e,
                                   std::map<std::int32_t, std::string>& names);
    // 0x838890 _ZN16GLXPlayerMPLobby30mpSendLobbyLoginWithGameCenterElPcihhS0_S0_
    void mpSendLobbyLoginWithGameCenter(long a, char* b, std::int32_t c, std::uint8_t d, std::uint8_t e,
                                        char* f, char* g);
    // 0x838928 _ZN16GLXPlayerMPLobby16mpSendLobbyLoginElPcih
    void mpSendLobbyLogin(long a, char* b, std::int32_t c, std::uint8_t d);
    // 0x8389a8 _ZN16GLXPlayerMPLobby16mpSendDisconnectEv
    // Partial: the observer slot 3 call (OnMPSetParamSuccess) is not made, because its int
    // argument is not in the pseudocode. The port's void return drops the original's result.
    void mpSendDisconnect() override;
    // 0x838bf0 _ZN16GLXPlayerMPLobby12mpDisconnectEv
    void mpDisconnect() override;
    // 0x839e7c _ZN16GLXPlayerMPLobby25mpSendEstablishConnectionEv
    // The state byte (+0x60) picks the branch: observer slot 2 when set, otherwise a new connection.
    void mpSendEstablishConnection() override;
    // 0x839f4c _ZN16GLXPlayerMPLobby10LoadConfigEv: reads oconf.bar (GGI and the XPlayMPURL host and port) or the
    // config text; 1 when read, 0 when the file is missing.
    std::int32_t LoadConfig();

    // Not in the original: test seams that set state and read back the request kind.
    void SetStateForTest(std::uint8_t state) { state_ = state; }
    // +0x60 state. Read by the sign-in path (CSignInGLLive::Update, step 6: state > 1).
    std::uint8_t State() const { return state_; }
    void AttachConnectionForTest() { connection_ = std::make_unique<ConnectionLobby>(nullptr, 0); }
    std::int32_t LastResultForTest() const { return lastResult_; }
    std::int32_t PendingKindForTest() const { return pendingKind_; }
    bool PendingForTest() const { return pendingActive_; }

    // The ping result at +0x88 (-1 without a ping thread).
    std::int32_t PingResult() const { return unknown88_; }

    void RefuseRequest();
    void StampRequest(std::int32_t kind);

    std::uint8_t unknown61_ = 0;                        // +0x61
    std::uint8_t unknown62_ = 0;                        // +0x62
    std::uint8_t unknown63_ = 0;                        // +0x63
    std::uint8_t unknown64_ = 0;                        // +0x64
    std::unique_ptr<ConnectionLobby> connection_;       // +0x74
    bool autoMatch_ = false;                            // +0x78
    std::unique_ptr<char[]> config_;                    // +0x7c (copy of the config text)
    bool pendingActive_ = false;                        // +0x80
    bool isMaster_ = false;                             // +0x81
    std::int32_t pendingKind_ = 0;                      // +0x84
    std::int32_t unknown88_ = -1;                       // +0x88 (the ping result)
    std::int32_t keepAliveTime_ = 0;                    // +0x8c (XP_API_GET_TIME of the last sent keep-alive)
    std::unique_ptr<GLXPlayerPing> worker_;             // +0x90 (the ping thread)
};
