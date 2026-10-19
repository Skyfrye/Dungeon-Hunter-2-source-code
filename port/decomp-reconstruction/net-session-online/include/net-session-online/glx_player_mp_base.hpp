// GLXPlayerMPBase and its observer. The observer's vtable (_ZTV23GLXPlayerMPBaseObserver) lists 25 slots: eleven pure ones
// that CMatchingGLLiveLobbyObserver implements (OnMPNetworkError .. OnMPStartGameSuccess), then fourteen with empty bodies
// (OnMPFinishGameSuccess .. OnMPJoinPreDefinedRoomSessionSuccess).
//
// GLXPlayerMPBase layout (original 32-bit offsets, kept as comments):
//   +0x00 vptr  +0x04 observer  +0x08 name for the connection (0x40 bytes)  +0x48 GGI (the game id GGI of the config)
//   +0x4c error message (char*, owned)  +0x50 last result (-1 pending, 0x32 refused, 0x28 timeout, ...)
//   +0x54 Connection* (the base's own, replaced by mpSendEstablishConnection)  +0x58 server address (char*, owned)
//   +0x5c server port  +0x60 state  +0x68 the current incoming DataPacket (owned)  +0x6c connection state word
//   +0x70 and +0x71 flag bytes
// GLXPlayerMPLobby (glx_player_mp_lobby.hpp) continues at +0x74.
//
// Virtual slots (the vtable _ZTV15GLXPlayerMPBase, 84 bytes): +0x08 Update, +0x0c mpSendEstablishConnection, +0x10
// mpPrepareGameData, +0x14 mpSendDisconnect, +0x18 mpDisconnect, +0x1c and +0x20 mpSendKickOutPlayer, +0x24 mpSendLeaveGame,
// +0x28 mpSendStartGame, +0x2c mpSendFinishGame, +0x30 mpIsInSession, +0x34 mpIsInRoom, +0x38 mpIsInGame, +0x3c mpIsMaster,
// +0x40 mpSendUPnPPortMapping, +0x44 mpProcessIncomingMessages, +0x48 mpProcessPushMessages. The slots the base leaves
// pure (+0x08, +0x18, +0x30..+0x3c, +0x44) are inert defaults here so the base stays instantiable (the tests use it).
#pragma once

#include <cstdint>
#include <memory>

#include "net-transport/connection_base.hpp"  // Connection (one definition, net-transport)

class DataPacket;

class GLXPlayerMPBaseObserver {
public:
    virtual ~GLXPlayerMPBaseObserver() = default;
    // The first eleven slots (+0x00..+0x28) are pure virtual in _ZTV23GLXPlayerMPBaseObserver (108 bytes, 25 slots) and
    // are implemented by CMatchingGLLiveLobbyObserver. They are inert defaults here so the base stays instantiable (the
    // tests use it); the slot order is the binary's.
    virtual void OnMPNetworkError(std::int32_t) {}                           // +0x00
    virtual void OnMPFunctionError(char*, std::int32_t) {}                   // +0x04
    virtual void OnMPEstablishConnectionSuccess() {}                         // +0x08
    virtual void OnMPDisconnectSuccess() {}                                  // +0x0c
    virtual void OnMPLoginSuccess(DataPacket*) {}                            // +0x10
    virtual void OnMPCreateSessionSuccess(DataPacket*) {}                    // +0x14
    virtual void OnMPListSessionSuccess(DataPacket*) {}                      // +0x18
    virtual void OnMPJoinSessionSuccess(DataPacket*) {}                      // +0x1c
    virtual std::int32_t OnMPLeaveSessionSuccess() { return 0; }             // +0x20 (the lobby observer returns a leftover)
    virtual void OnMPKickOutPlayerSuccess() {}                               // +0x24
    virtual void OnMPStartGameSuccess(DataPacket*) {}                        // +0x28
    virtual void OnMPFinishGameSuccess() {}                                  // +0x2c
    virtual void OnMPuPnPTestSuccess() {}                                    // +0x30
    virtual void OnMPLeaveGameSuccess() {}                                   // +0x34
    virtual void OnMPSetParamSuccess(std::int32_t) {}                        // +0x38
    virtual std::int32_t OnMPProcessPushMessages(DataPacket*, std::int32_t) { return 0; }  // +0x3c
    virtual void OnMPRejoinLobbySuccess(DataPacket*, bool) {}                // +0x40
    virtual void OnMPGetLobbyInfo(DataPacket*) {}                            // +0x44
    virtual void OnMPStartGameFailed(std::int32_t) {}                        // +0x48
    virtual void OnMPGetLobbyForName(DataPacket*) {}                         // +0x4c
    virtual void OnMPGetLobbyForFriend(DataPacket*) {}                       // +0x50
    virtual void OnMPAutoMatchRequeset(std::int32_t) {}                      // +0x54 (sic)
    virtual void OnMPAutoMatchRequesetCancel() {}                            // +0x58 (sic)
    virtual void OnMPGetPlayerCounterSuccess(DataPacket*) {}                 // +0x5c
    virtual void OnMPJoinPreDefinedRoomSessionSuccess(DataPacket*) {}        // +0x60
};

class GLXPlayerMPBase {
public:
    explicit GLXPlayerMPBase(GLXPlayerMPBaseObserver* observer);  // 0x84ab14, 0x84ab54
    virtual ~GLXPlayerMPBase();                                    // 0x84aea8, 0x84af30

    // 0x84ab00 _ZN15GLXPlayerMPBase4InitEv
    void Init();
    // 0x84aaf0 _ZN15GLXPlayerMPBase10LoadConfigEv: sets +0x58 to 0 and returns true.
    bool LoadConfig();

    // 0x84ab94 _ZN15GLXPlayerMPBase9getErrMsgEv
    const char* getErrMsg() const;
    // 0x84ab9c _ZN15GLXPlayerMPBase9setErrMsgEPc
    void setErrMsg(const char* message);
    // 0x84abd8 _ZN15GLXPlayerMPBase9setErrMsgEv: frees the old message and copies the text of the current incoming packet.
    void setErrMsg();

    // 0x84ac64 _ZN15GLXPlayerMPBase11mpSendLoginEPc
    void mpSendLogin(char* nickname);

    // Virtual slots, in the binary's order.
    virtual void Update() {}                             // +0x08 (pure in the base)
    virtual void mpSendEstablishConnection();            // +0x0c 0x84ad78
    virtual void mpPrepareGameData() {}                  // +0x10 0x83760c
    virtual void mpSendDisconnect();                     // +0x14 0x84ae28
    virtual void mpDisconnect() {}                       // +0x18 (pure in the base)
    virtual void mpSendKickOutPlayer(char*) {}           // +0x1c 0x837614
    virtual void mpSendKickOutPlayer(unsigned short*) {}  // +0x20 0x837618
    virtual void mpSendLeaveGame() {}                    // +0x24 0x83761c
    virtual void mpSendStartGame() {}                    // +0x28 0x837620
    virtual void mpSendFinishGame() {}                   // +0x2c 0x837624
    virtual bool mpIsInSession() { return false; }       // +0x30 (pure in the base)
    virtual bool mpIsInRoom() { return false; }          // +0x34 (pure in the base)
    virtual bool mpIsInGame() { return false; }          // +0x38 (pure in the base)
    virtual bool mpIsMaster() { return false; }          // +0x3c (pure in the base)
    virtual void mpSendUPnPPortMapping() {}              // +0x40 0x837628
    virtual std::int32_t mpProcessIncomingMessages() { return 0; }  // +0x44 (pure in the base)
    virtual void mpProcessPushMessages() {}              // +0x48 0x83762c

    // Not in the original: test seams for the connection (+0x54) and the state (+0x50).
    void SetConnectionForTest(std::unique_ptr<Connection> connection) { baseConnection_ = std::move(connection); }
    std::int32_t Field50ForTest() const { return lastResult_; }
    std::uint8_t Field71ForTest() const { return field71_; }

    // Members are public (Track B decision 9): the lobby continues this layout.
    GLXPlayerMPBaseObserver* observer_ = nullptr;       // +0x04
    char name_[0x40] = {};                              // +0x08 (the name handed to Connection::setName)
    std::int32_t ggi_ = 0;                              // +0x48 (the game id GGI, request argument of the lobby sends)
    std::unique_ptr<char[]> errMsg_;                    // +0x4c
    std::int32_t lastResult_ = 0;                       // +0x50
    std::unique_ptr<Connection> baseConnection_;        // +0x54 (not freed by the original destructor; owned here)
    char* host_ = nullptr;                              // +0x58 (server address, malloc'd)
    std::int32_t port_ = 0;                             // +0x5c
    std::uint8_t state_ = 0;                            // +0x60 (login flag in the base: 1 selects the login path)
    std::unique_ptr<DataPacket> incomingPacket_;        // +0x68 (the packet being processed)
    std::int32_t field6c_ = 0;                          // +0x6c
    std::uint8_t field70_ = 0;                          // +0x70
    std::uint8_t field71_ = 0;                          // +0x71
};
