// ConnectionLobby: the lobby-server connection (a Connection over a socket). Reconstructed from
// libDungeonHunter2.so pseudocode.
//
// Each sendXxx builds one lobby message (DataPacketLobby), keeps a copy for resend
// (saveRetryData) and queues it (Connection::addOutgoingPacket). The lobby message type is
// given by InitMessage; some messages instead start with the three bytes 'g', 'r' and a
// command byte (103, 114, n) and have no InitMessage.
//
// ConnectionLobby derives from Connection and uses its members (socket_, outgoing_, retry_packet_,
// the receive buffer and counters; see connection_base.hpp). It adds one member, the establish time
// at +0x2050 (the object is 0x2058 bytes). The saveRetryData, sendRetryData and keepConnectionAlive
// below are its own copies of the Connection functions (non-virtual in the binary, so the lobby's
// senders call these), and they build DataPacketLobby packets.
#pragma once

#include <cstdint>
#include <list>
#include <string>

#include "net-transport/connection_base.hpp"
#include "net-transport/data_packet.hpp"
#include "net-transport/data_packet_lobby.hpp"

class CLobbyParameterAndQuery;
class DataPacketLobby;

class ConnectionLobby : public Connection {
public:
    ConnectionLobby(char* host, int port);             // 0x849164 _ZN15ConnectionLobbyC1EPci (C2 0x849198, same body)
    // The request time at +0x2050 (word 2068), written by GLXPlayerMPLobby (mpSendGetPlayerCounter 0x837674 and
    // the other request senders store XP_API_GET_TIME() there). The same slot as establish_time_ below.
    void SetRequestTime(std::uint32_t timeMs) { establish_time_ = static_cast<int>(timeMs); }
    ~ConnectionLobby() override;                       // 0x8490e0 _ZN15ConnectionLobbyD1Ev (D1 0x849130, D0 0x849114)
    ConnectionLobby(const ConnectionLobby&) = delete;
    ConnectionLobby& operator=(const ConnectionLobby&) = delete;

    // Connection virtuals (vtable +0x08..+0x14).
    void sendData() override;                          // 0x848fac _ZN15ConnectionLobby8sendDataEv
    void receiveDataLen() override;                    // 0x848cd0 _ZN15ConnectionLobby14receiveDataLenEv
    int sendEstablishConnectionPackage() override;     // 0x848c34 _ZN15ConnectionLobby30sendEstablishConnectionPackageEv
    int sendFinishConnectionPackage() override;        // 0x848bbc _ZN15ConnectionLobby27sendFinishConnectionPackageEv

    int sendRetryData();                               // 0x846eb4 _ZN15ConnectionLobby13sendRetryDataEv
    bool keepConnectionAlive();                        // 0x846f3c _ZN15ConnectionLobby19keepConnectionAliveEv
    void saveRetryData(DataPacket* packet);            // 0x846fb0 _ZN15ConnectionLobby13saveRetryDataEP10DataPacket
    int sendGetPlayerCounter();                        // 0x847028 _ZN15ConnectionLobby20sendGetPlayerCounterEv
    int sendGetLobbyForFriendWithGameParam(int a2, unsigned char a3, unsigned char a4, char* a5, int a6,
                                           CLobbyParameterAndQuery* a7);    // 0x847080
    int sendGetLobbyForNameWithGameParam(char* name);  // 0x8471d0
    int sendGetLobbyListPackageWithGameParam(int a2, int a3, int a4, unsigned char a5,
                                             CLobbyParameterAndQuery* a6, unsigned char a7);  // 0x847288
    int sendKickOutPackage(char* name);                // 0x8473b0
    int sendCancelAutoMatchPackage();                  // 0x84742c
    int sendAutoMatchPackage(char* a2, int a3, char* a4, int a5, short a6, short a7);  // 0x847484
    int sendGetLobbyForFriend(int a2, unsigned char a3, unsigned char a4, char* a5, int a6);  // 0x847554
    int sendGetLobbyForName(char* name);               // 0x84763c
    int sendGetLobbyInfo(int lobby_id);                // 0x8476f4
    int sendSetUserParameter(char* name, short value); // 0x847764
    int sendSetGameParameter(char* name, short value, CLobbyParameterAndQuery* query);  // 0x8477dc
    int sendRejoinLobbyPackage(int lobby_id);          // 0x8478ac
    int sendSetPlayerStatusPackage(unsigned char status);  // 0x84791c
    int sendLunchLobbyGamePackage();                   // 0x84798c
    int sendLeaveLobbyPackage();                       // 0x8479e4
    int sendGetLobbyListPackage(int a2, int a3, int a4, unsigned char a5, CLobbyParameterAndQuery* a6,
                                unsigned char a7);     // 0x847a3c
    int sendJoinPredefinedLobbyPackage(char* a2, int a3, char* a4, int a5, int a6,
                                       CLobbyParameterAndQuery* a7, CLobbyParameterAndQuery* a8);  // 0x847b64
    int sendJoinLobbyPackage(int lobby_id, unsigned char a3, char* a4, int a5);  // 0x847ce8
    int sendCreateLobbyPackageWithGameCenter(int a2, char* name, unsigned char a4, unsigned char a5, int a6,
                                             char* a7, int a8, char* a9, int a10, CLobbyParameterAndQuery* a11,
                                             const std::list<std::string>& a12);  // 0x847d90
    int sendCreateLobbyPackage(int a2, char* name, unsigned char a4, unsigned char a5, int a6, char* a7,
                               int a8, char* a9, int a10, CLobbyParameterAndQuery* a11);  // 0x847fe0
    int sendLobbyLoginPackageWithGameCenter(long user_id, char* a3, short a4, unsigned char a5,
                                            unsigned char a6, char* a7, char* a8);  // 0x848140
    int sendLobbyLoginPackage(long user_id, char* name, short a4, unsigned char a5);  // 0x848258
    int sendKickOutPlayerPackage(char* name);          // 0x848300 _ZN15ConnectionLobby24sendKickOutPlayerPackageEPc
    int sendUpdateSessionPackage(int flag);            // 0x8483ac
    int sendFinishGamePackage();                       // 0x848444
    int sendStartGamePackage();                        // 0x8484c4
    int sendListSessionsByDataPackage(unsigned char a2, int a3, char* a4, int a5);  // 0x848544
    int sendListSessionsByNamePackage(unsigned char a2, int a3, char* a4);  // 0x848628
    int sendListSessionsAllPackage(unsigned char a2, int a3);              // 0x848710
    int sendListSessionsPackage(unsigned char a2, int a3);                 // 0x8487d4
    int sendLeaveSessionPackage();                     // 0x848884
    int sendJoinSessionPackage(char* name);            // 0x848904
    int sendQuickGamePackage();                        // 0x8489a8
    int sendCreateSessionPackage(char* name, char* a3, int a4);  // 0x848a28
    int sendLoginPackage(char* user);                  // 0x848b04

    // Queues a finished message: packs it, keeps a copy for resend, and adds it to the outgoing queue.
    int QueueMessage(DataPacketLobby* packet);
    // Adds a query parameter block to the message (the block is freed after the copy).
    static void AddPackedQuery(DataPacketLobby* packet, CLobbyParameterAndQuery* query);
    // Shared body of sendGetLobbyListPackage and sendGetLobbyListPackageWithGameParam.
    int SendLobbyListMessage(int message_type, int a3, int a4, unsigned char a5,
                             CLobbyParameterAndQuery* a6, unsigned char a7);

    // Members are public (TRACK-B decision 9), as in Connection.
    int establish_time_ = 0;                    // +0x2050
};
