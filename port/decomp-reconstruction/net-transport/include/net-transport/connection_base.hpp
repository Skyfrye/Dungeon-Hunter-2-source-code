// Connection: the base class of ConnectionLobby, the lobby-server link over one socket.
// Reconstructed from libDungeonHunter2.so pseudocode.
//
// Original layout (32-bit offsets, kept as comments):
//   +0x00 vptr
//   +0x04 state_: 0 none, 1 connecting, 2 connected, 3 failed
//   +0x08 handshake_time_ (set by sendEstablishConnectionPackage, cleared by disconnect)
//   +0x0e connected_
//   +0x0f recv_buffer_ (0x1001 bytes)
//   +0x1010 send_buffer_ (0x1001 bytes; byte 0 is the body length, then the body)
//   +0x2014 socket_ (GLXPlayerSocket)
//   +0x2018 an owned object of unrecovered type, freed by the destructor (not stored by this slice)
//   +0x201c host_, +0x2020 port_
//   +0x2024 / +0x2028 outgoing queue head / tail, +0x202c / +0x2030 incoming queue head / tail
//           (std::deque here; ownership of each packet is with the queue)
//   +0x2034 last_send_time_, +0x2038 last_request_time_ (also the connect time)
//   +0x203c retry_packet_ (copy of the last request, for resend)
//   +0x2040 name_ (setName)
//   +0x2044 recv_buf_len_, +0x2048 need_recv_data_len_, +0x204c recv_step_ (0 length byte, 1 body)
//
// Virtual slots (vtable offsets): +0x08 sendData, +0x0c receiveDataLen,
// +0x10 sendEstablishConnectionPackage, +0x14 sendFinishConnectionPackage.
//
// Packets: a sendXxx builds a DefaultDataPacket, keeps a copy for resend (saveRetryData) and
// queues it (addOutgoingPacket). Packets passed to addOutgoingPacket and addIncomingPacket are
// owned by the connection from then on.
#pragma once

#include <cstddef>
#include <cstdint>
#include <deque>
#include <memory>
#include <string>

#include "net-session-online/glx_player_socket.hpp"  // GLXPlayerSocket (one definition, net-session-online)
#include "net-transport/data_packet.hpp"

class Connection {
public:
    Connection(char* host, int port);                // 0x846ca4 _ZN10ConnectionC1EPci (C2 at 0x846dac, same body)
    virtual ~Connection();                           // 0x846b14 _ZN10ConnectionD1Ev (D2 at 0x846bcc, D0 at 0x846bb0)
    Connection(const Connection&) = delete;
    Connection& operator=(const Connection&) = delete;

    // Virtual slots +0x08..+0x14 (ConnectionLobby overrides them).
    virtual void sendData();                         // +0x08, 0x84699c _ZN10Connection8sendDataEv
    virtual void receiveDataLen();                   // +0x0c, 0x8466fc _ZN10Connection14receiveDataLenEv
    virtual int sendEstablishConnectionPackage();    // +0x10, 0x846488 _ZN10Connection30sendEstablishConnectionPackageEv
    virtual int sendFinishConnectionPackage();       // +0x14, 0x846364 _ZN10Connection27sendFinishConnectionPackageEv

    DataPacket* getNextIncomingPacket();             // 0x8456fc _ZN10Connection21getNextIncomingPacketEv
    bool isConnected() const;                        // 0x845754 _ZN10Connection11isConnectedEv
    void set_connected(bool connected);              // 0x84575c _ZN10Connection13set_connectedEb
    void cleanRetryData();                           // 0x845764 _ZN10Connection14cleanRetryDataEv
    int getTimeOfLastReqest() const;                 // 0x845798 _ZN10Connection19getTimeOfLastReqestEv
    void saveRetryData(DataPacket* packet);          // 0x8457a4 _ZN10Connection13saveRetryDataEP10DataPacket
    int connect();                                   // 0x84581c _ZN10Connection7connectEv
    int addIncomingPacket(DataPacket* packet);       // 0x845944 _ZN10Connection17addIncomingPacketEP10DataPacket
    int addOutgoingPacket(DataPacket* packet);       // 0x8459b4 _ZN10Connection17addOutgoingPacketEP10DataPacket
    void sendRetryData();                            // 0x845a50 _ZN10Connection13sendRetryDataEv
    bool keepConnectionAlive();                      // 0x845ad8 _ZN10Connection19keepConnectionAliveEv
    int sendKickOutPlayerPackage(char* name);        // 0x845b60 _ZN10Connection24sendKickOutPlayerPackageEPc
    int sendUpdateSessionPackage(int state);         // 0x845c0c _ZN10Connection24sendUpdateSessionPackageEi
    int sendFinishGamePackage();                     // 0x845ca4 _ZN10Connection21sendFinishGamePackageEv
    int sendStartGamePackage();                      // 0x845d24 _ZN10Connection20sendStartGamePackageEv
    int sendListSessionsByDataPackage(unsigned char type, int a3, char* data, int length);  // 0x845da4 _ZN10Connection29sendListSessionsByDataPackageEhiPci
    int sendListSessionsByNamePackage(unsigned char type, int a3, char* name);  // 0x845e88 _ZN10Connection29sendListSessionsByNamePackageEhiPc
    int sendListSessionsAllPackage(unsigned char type, int a3);                // 0x845f70 _ZN10Connection26sendListSessionsAllPackageEhi
    int sendListSessionsPackage(unsigned char type, int a3);                   // 0x846034 _ZN10Connection23sendListSessionsPackageEhi
    int sendLeaveSessionPackage();                   // 0x8460e4 _ZN10Connection23sendLeaveSessionPackageEv
    int sendJoinSessionPackage(char* name);          // 0x846164 _ZN10Connection22sendJoinSessionPackageEPc
    int sendQuickGamePackage();                      // 0x846208 _ZN10Connection20sendQuickGamePackageEv
    int sendCreateSessionPackage(char* name, char* password, int max_players);  // 0x846288 _ZN10Connection24sendCreateSessionPackageEPcS0_i
    int sendLoginPackage(char* user);                // 0x8463d0 _ZN10Connection16sendLoginPackageEPc (partial)
    void disconnect();                               // 0x8465b8 _ZN10Connection10disconnectEv
    void setName(char* name);                        // 0x846c68 _ZN10Connection7setNameEPc

    // Members are public (TRACK-B decision 9): ConnectionLobby reads and writes them directly.
    static constexpr std::size_t kBufferBytes = 0x1001;  // recv_buffer_ and send_buffer_

    int state_ = 0;                                  // +0x04
    int handshake_time_ = 0;                         // +0x08
    std::uint16_t unk_0c_ = 0;                       // +0x0c never accessed (the constructor does not store it)
    bool connected_ = false;                         // +0x0e
    std::uint8_t recv_buffer_[kBufferBytes] = {};    // +0x0f
    std::uint8_t send_buffer_[kBufferBytes] = {};    // +0x1010
    std::unique_ptr<GLXPlayerSocket> socket_;        // +0x2014
    std::unique_ptr<char[]> host_;                   // +0x201c (owned copy of the constructor host; null when it is null)
    int port_ = 0;                                   // +0x2020
    std::deque<std::unique_ptr<DataPacket>> outgoing_;  // +0x2024 / +0x2028
    std::deque<std::unique_ptr<DataPacket>> incoming_;  // +0x202c / +0x2030
    int last_send_time_ = 0;                         // +0x2034
    int last_request_time_ = 0;                      // +0x2038
    std::unique_ptr<DataPacket> retry_packet_;       // +0x203c
    std::string name_;                               // +0x2040
    int recv_buf_len_ = 0;                           // +0x2044
    int need_recv_data_len_ = 0;                     // +0x2048
    int recv_step_ = 0;                              // +0x204c
};
