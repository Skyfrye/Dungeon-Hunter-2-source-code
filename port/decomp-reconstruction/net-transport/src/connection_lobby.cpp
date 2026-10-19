#include "net-transport/connection_lobby.hpp"

#include <cstring>

#include "net-transport/data_packet_lobby.hpp"
#include "net-transport/deps/connection_env.hpp"

namespace {

// Message type numbers and command bytes, as the original writes them.
constexpr std::uint8_t kCommandG = 103;  // 'g', first byte of the session and lobby commands
constexpr std::uint8_t kCommandR = 114;  // 'r', second byte
constexpr int kReceiveBufferSize = 0x80;             // bytes cleared after a message is read
constexpr int kReceiveBufferBytes = 0x1001;          // bytes cleared before a message is read
constexpr int kMaxMessageBytes = 4096;               // largest accepted body length

}  // namespace

// 0x849164 _ZN15ConnectionLobbyC1EPci (C2 0x849198 is the same body; skipped in the ledger)
ConnectionLobby::ConnectionLobby(char* host, int port) : Connection(host, port) {}

// 0x8490e0 _ZN15ConnectionLobbyD1Ev (D1 0x849130 is the same body; D0 0x849114 is the deleting variant)
ConnectionLobby::~ConnectionLobby() = default;

// 0x846eb4 _ZN15ConnectionLobby13sendRetryDataEv
// Returns the time stamped into the request time when a copy was sent, and the object pointer
// (as the 32-bit register) otherwise, as the Hex-Rays body returns it. The body (slot +0x64) is read
// before the length (slot +0x60), as in the original.
int ConnectionLobby::sendRetryData() {
    if (!retry_packet_) {
        return static_cast<int>(reinterpret_cast<std::uintptr_t>(this));
    }
    auto* packet = new DataPacketLobby();
    const char* body = retry_packet_->getMessageBody();
    const int length = retry_packet_->getMessageLen();
    packet->setMessageBody(reinterpret_cast<const unsigned char*>(body), length);
    addOutgoingPacket(packet);
    last_request_time_ = platform_calls::GetTime();
    return last_request_time_;
}

// 0x846f3c _ZN15ConnectionLobby19keepConnectionAliveEv
bool ConnectionLobby::keepConnectionAlive() {
    if (platform_calls::GetTime() - last_send_time_ <= 10000) {
        return false;
    }
    auto* packet = new DataPacketLobby();
    packet->InitMessage(9);
    packet->packMessage();
    addOutgoingPacket(packet);
    return true;
}

// 0x846fb0 _ZN15ConnectionLobby13saveRetryDataEP10DataPacket
// Cleans the old copy, builds a DataPacketLobby and fills it with setMessageBody from the argument's
// body (vtable +0x64, read first) and length (+0x60). Each Hex-Rays caller uses the call as a
// statement, so the return value (the time, leftover r0) is not used (void).
void ConnectionLobby::saveRetryData(DataPacket* packet) {
    if (packet == nullptr) {
        return;
    }
    cleanRetryData();
    auto* copy = new DataPacketLobby();
    retry_packet_.reset(copy);
    const char* body = packet->getMessageBody();
    const int length = packet->getMessageLen();
    copy->setMessageBody(reinterpret_cast<const unsigned char*>(body), length);
    last_request_time_ = platform_calls::GetTime();
}

// 0x847028 _ZN15ConnectionLobby20sendGetPlayerCounterEv
int ConnectionLobby::sendGetPlayerCounter() {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(101);
    return QueueMessage(packet);
}

// 0x847080 _ZN15ConnectionLobby34sendGetLobbyForFriendWithGameParamEihhPciP23CLobbyParameterAndQuery...
int ConnectionLobby::sendGetLobbyForFriendWithGameParam(int a2, unsigned char a3, unsigned char a4, char* a5,
                                                        int a6, CLobbyParameterAndQuery* a7) {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(99);
    packet->addInt(a2);
    packet->addByte(a4);
    packet->addInt(0);
    packet->addByte(a3);
    packet->addByte(a4);
    packet->addQueryString(a5, static_cast<std::int16_t>(a6));
    if (a7 != nullptr) {
        AddPackedQuery(packet, a7);
    } else {
        packet->addByte(0);
    }
    return QueueMessage(packet);
}

// 0x8471d0 _ZN15ConnectionLobby32sendGetLobbyForNameWithGameParamEPc
int ConnectionLobby::sendGetLobbyForNameWithGameParam(char* name) {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(97);
    packet->addInt(0);
    packet->addByte(0);
    packet->addInt(0);
    packet->addBlob(name, platform_calls::StrLen(name));
    return QueueMessage(packet);
}

// 0x847288 _ZN15ConnectionLobby36sendGetLobbyListPackageWithGameParamEiiihP23CLobbyParameterAndQueryh
int ConnectionLobby::sendGetLobbyListPackageWithGameParam(int a2, int a3, int a4, unsigned char a5,
                                                          CLobbyParameterAndQuery* a6, unsigned char a7) {
    (void)a2;  // not read by the original body
    return SendLobbyListMessage(96, a3, a4, a5, a6, a7);
}

// 0x8473b0 _ZN15ConnectionLobby18sendKickOutPackageEPc
int ConnectionLobby::sendKickOutPackage(char* name) {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(24);
    packet->addShortLenString(name, platform_calls::StrLen(name));
    return QueueMessage(packet);
}

// 0x84742c _ZN15ConnectionLobby26sendCancelAutoMatchPackageEv
int ConnectionLobby::sendCancelAutoMatchPackage() {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(74);
    return QueueMessage(packet);
}

// 0x847484 _ZN15ConnectionLobby20sendAutoMatchPackageEPciS0_iss
int ConnectionLobby::sendAutoMatchPackage(char* a2, int a3, char* a4, int a5, short a6, short a7) {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(56);
    packet->addBlob(a2, static_cast<std::int16_t>(a3));
    packet->addShort(a6);
    packet->addShort(a7);
    packet->addBlob(a4, static_cast<std::int16_t>(a5));
    return QueueMessage(packet);
}

// 0x847554 _ZN15ConnectionLobby21sendGetLobbyForFriendEihhPci
int ConnectionLobby::sendGetLobbyForFriend(int a2, unsigned char a3, unsigned char a4, char* a5, int a6) {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(54);
    packet->addInt(a2);
    packet->addByte(a4);
    packet->addInt(0);
    packet->addByte(a3);
    packet->addByte(a4);
    packet->addQueryString(a5, static_cast<std::int16_t>(a6));
    return QueueMessage(packet);
}

// 0x84763c _ZN15ConnectionLobby19sendGetLobbyForNameEPc
int ConnectionLobby::sendGetLobbyForName(char* name) {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(52);
    packet->addInt(0);
    packet->addByte(0);
    packet->addInt(0);
    packet->addBlob(name, platform_calls::StrLen(name));
    return QueueMessage(packet);
}

// 0x8476f4 _ZN15ConnectionLobby16sendGetLobbyInfoEi
int ConnectionLobby::sendGetLobbyInfo(int lobby_id) {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(22);
    packet->addInt(lobby_id);
    return QueueMessage(packet);
}

// 0x847764 _ZN15ConnectionLobby20sendSetUserParameterEPcs
int ConnectionLobby::sendSetUserParameter(char* name, short value) {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(36);
    packet->addBlob(name, value);
    return QueueMessage(packet);
}

// 0x8477dc _ZN15ConnectionLobby20sendSetGameParameterEPcsP23CLobbyParameterAndQuery
int ConnectionLobby::sendSetGameParameter(char* name, short value, CLobbyParameterAndQuery* query) {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(33);
    packet->addBlob(name, value);
    if (query != nullptr) {
        AddPackedQuery(packet, query);
    }
    return QueueMessage(packet);
}

// 0x8478ac _ZN15ConnectionLobby22sendRejoinLobbyPackageEi
int ConnectionLobby::sendRejoinLobbyPackage(int lobby_id) {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(45);
    packet->addInt(lobby_id);
    return QueueMessage(packet);
}

// 0x84791c _ZN15ConnectionLobby26sendSetPlayerStatusPackageEh
int ConnectionLobby::sendSetPlayerStatusPackage(unsigned char status) {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(39);
    packet->addByte(status);
    return QueueMessage(packet);
}

// 0x84798c _ZN15ConnectionLobby25sendLunchLobbyGamePackageEv
int ConnectionLobby::sendLunchLobbyGamePackage() {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(42);
    return QueueMessage(packet);
}

// 0x8479e4 _ZN15ConnectionLobby21sendLeaveLobbyPackageEv
int ConnectionLobby::sendLeaveLobbyPackage() {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(19);
    return QueueMessage(packet);
}

// 0x847a3c _ZN15ConnectionLobby23sendGetLobbyListPackageEiiihP23CLobbyParameterAndQueryh
int ConnectionLobby::sendGetLobbyListPackage(int a2, int a3, int a4, unsigned char a5,
                                             CLobbyParameterAndQuery* a6, unsigned char a7) {
    (void)a2;  // not read by the original body
    return SendLobbyListMessage(13, a3, a4, a5, a6, a7);
}

// 0x847b64 _ZN15ConnectionLobby30sendJoinPredefinedLobbyPackageEPciS0_iiP23CLobbyParameterAndQueryS2_
int ConnectionLobby::sendJoinPredefinedLobbyPackage(char* a2, int a3, char* a4, int a5, int a6,
                                                    CLobbyParameterAndQuery* a7, CLobbyParameterAndQuery* a8) {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(103);
    packet->addBlob(a2, static_cast<std::int16_t>(a3));
    packet->addBlob(a4, static_cast<std::int16_t>(a5));
    packet->addShort(static_cast<std::int16_t>(a6));
    if (a7 != nullptr) {
        AddPackedQuery(packet, a7);
        if (a8 != nullptr) {
            AddPackedQuery(packet, a8);
        } else {
            packet->addByte(0);
        }
    } else {
        packet->addByte(0);
        if (a8 != nullptr) {
            AddPackedQuery(packet, a8);
        } else {
            packet->addByte(0);
        }
    }
    return QueueMessage(packet);
}

// 0x847ce8 _ZN15ConnectionLobby20sendJoinLobbyPackageEihPci
int ConnectionLobby::sendJoinLobbyPackage(int lobby_id, unsigned char a3, char* a4, int a5) {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(15);
    packet->addInt(lobby_id);
    packet->addByte(a3);
    packet->addBlob(a4, static_cast<std::int16_t>(a5));
    return QueueMessage(packet);
}

// 0x847d90 _ZN15ConnectionLobby36sendCreateLobbyPackageWithGameCenterEiPchhiS0_iS0_iP23CLobbyParameterAndQuerySt4listISsSaISsEE
// Returns the constant 16556 after queueing, as the original does; the addOutgoingPacket result is ignored.
int ConnectionLobby::sendCreateLobbyPackageWithGameCenter(int a2, char* name, unsigned char a4, unsigned char a5,
                                                          int a6, char* a7, int a8, char* a9, int a10,
                                                          CLobbyParameterAndQuery* a11,
                                                          const std::list<std::string>& a12) {
    (void)a2;  // not read by the original body
    auto* packet = new DataPacketLobby();
    packet->InitMessage(11);
    packet->addShortLenString(name, platform_calls::StrLen(name));
    packet->addByte(a4);
    packet->addByte(a5);
    packet->addShort(static_cast<std::int16_t>(a6));
    packet->addBlob(a7, static_cast<std::int16_t>(a8));
    packet->addBlob(a9, static_cast<std::int16_t>(a10));
    if (a11 != nullptr) {
        AddPackedQuery(packet, a11);
    } else {
        packet->addByte(0);
    }
    packet->addByte(static_cast<std::uint8_t>(a12.size()));
    for (const std::string& entry : a12) {
        packet->addShortLenString(entry.data(), static_cast<std::int16_t>(entry.size()));
    }
    QueueMessage(packet);
    return 16556;
}

// 0x847fe0 _ZN15ConnectionLobby22sendCreateLobbyPackageEiPchhiS0_iS0_iP23CLobbyParameterAndQuery
int ConnectionLobby::sendCreateLobbyPackage(int a2, char* name, unsigned char a4, unsigned char a5, int a6,
                                            char* a7, int a8, char* a9, int a10, CLobbyParameterAndQuery* a11) {
    (void)a2;  // not read by the original body
    auto* packet = new DataPacketLobby();
    packet->InitMessage(11);
    packet->addShortLenString(name, platform_calls::StrLen(name));
    packet->addByte(a4);
    packet->addByte(a5);
    packet->addShort(static_cast<std::int16_t>(a6));
    packet->addBlob(a7, static_cast<std::int16_t>(a8));
    packet->addBlob(a9, static_cast<std::int16_t>(a10));
    if (a11 != nullptr) {
        AddPackedQuery(packet, a11);
    } else {
        packet->addByte(0);
    }
    return QueueMessage(packet);
}

// 0x848140 _ZN15ConnectionLobby35sendLobbyLoginPackageWithGameCenterElPcshhS0_S0_
int ConnectionLobby::sendLobbyLoginPackageWithGameCenter(long user_id, char* a3, short a4, unsigned char a5,
                                                         unsigned char a6, char* a7, char* a8) {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(5);
    packet->addInt(static_cast<int>(user_id));
    packet->addShortLenString(a3, a4);
    packet->addByte(a5);
    packet->addByte(a6);
    packet->addShortLenString(a7, platform_calls::StrLen(a7));
    packet->addShortLenString(a8, platform_calls::StrLen(a8));
    return QueueMessage(packet);
}

// 0x848258 _ZN15ConnectionLobby21sendLobbyLoginPackageElPcsh
int ConnectionLobby::sendLobbyLoginPackage(long user_id, char* name, short a4, unsigned char a5) {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(5);
    packet->addInt(static_cast<int>(user_id));
    packet->addShortLenString(name, a4);
    packet->addByte(a5);
    return QueueMessage(packet);
}

// 0x848300 _ZN15ConnectionLobby24sendKickOutPlayerPackageEPc
// With a null name the original returns the object pointer (Hex-Rays "return this") and queues nothing.
// Partial: the non-null path returns Connection::addOutgoingPacket's result (see there).
int ConnectionLobby::sendKickOutPlayerPackage(char* name) {
    if (name == nullptr) {
        return static_cast<int>(reinterpret_cast<std::uintptr_t>(this));
    }
    auto* packet = new DataPacketLobby();
    packet->addByte(kCommandG);
    packet->addByte(kCommandR);
    packet->addByte(107);
    packet->addShortLenString(name, platform_calls::StrLen(name));
    return QueueMessage(packet);
}

// 0x8483ac _ZN15ConnectionLobby24sendUpdateSessionPackageEi
int ConnectionLobby::sendUpdateSessionPackage(int flag) {
    auto* packet = new DataPacketLobby();
    packet->addByte(kCommandG);
    packet->addByte(kCommandR);
    packet->addByte(101);
    packet->addByte(static_cast<std::uint8_t>(flag));
    return QueueMessage(packet);
}

// 0x848444 _ZN15ConnectionLobby21sendFinishGamePackageEv
int ConnectionLobby::sendFinishGamePackage() {
    auto* packet = new DataPacketLobby();
    packet->addByte(kCommandG);
    packet->addByte(kCommandR);
    packet->addByte(102);
    return QueueMessage(packet);
}

// 0x8484c4 _ZN15ConnectionLobby20sendStartGamePackageEv
int ConnectionLobby::sendStartGamePackage() {
    auto* packet = new DataPacketLobby();
    packet->addByte(kCommandG);
    packet->addByte(kCommandR);
    packet->addByte(115);
    return QueueMessage(packet);
}

// 0x848544 _ZN15ConnectionLobby29sendListSessionsByDataPackageEhiPci
int ConnectionLobby::sendListSessionsByDataPackage(unsigned char a2, int a3, char* a4, int a5) {
    auto* packet = new DataPacketLobby();
    packet->addByte(kCommandG);
    packet->addByte(kCommandR);
    packet->addByte(108);
    packet->addByte(a2);
    packet->addInt(a3);
    packet->addByte(100);
    packet->addShortLenString(a4, static_cast<std::int16_t>(a5));
    return QueueMessage(packet);
}

// 0x848628 _ZN15ConnectionLobby29sendListSessionsByNamePackageEhiPc
int ConnectionLobby::sendListSessionsByNamePackage(unsigned char a2, int a3, char* a4) {
    auto* packet = new DataPacketLobby();
    packet->addByte(kCommandG);
    packet->addByte(kCommandR);
    packet->addByte(108);
    packet->addByte(a2);
    packet->addInt(a3);
    packet->addByte(110);
    packet->addShortLenString(a4, platform_calls::StrLen(a4));
    return QueueMessage(packet);
}

// 0x848710 _ZN15ConnectionLobby26sendListSessionsAllPackageEhi
int ConnectionLobby::sendListSessionsAllPackage(unsigned char a2, int a3) {
    auto* packet = new DataPacketLobby();
    packet->addByte(kCommandG);
    packet->addByte(kCommandR);
    packet->addByte(108);
    packet->addByte(a2);
    packet->addInt(a3);
    packet->addByte(97);
    return QueueMessage(packet);
}

// 0x8487d4 _ZN15ConnectionLobby23sendListSessionsPackageEhi
int ConnectionLobby::sendListSessionsPackage(unsigned char a2, int a3) {
    auto* packet = new DataPacketLobby();
    packet->addByte(kCommandG);
    packet->addByte(kCommandR);
    packet->addByte(108);
    packet->addByte(a2);
    packet->addInt(a3);
    return QueueMessage(packet);
}

// 0x848884 _ZN15ConnectionLobby23sendLeaveSessionPackageEv
int ConnectionLobby::sendLeaveSessionPackage() {
    auto* packet = new DataPacketLobby();
    packet->addByte(kCommandG);
    packet->addByte(kCommandR);
    packet->addByte(113);
    return QueueMessage(packet);
}

// 0x848904 _ZN15ConnectionLobby22sendJoinSessionPackageEPc
int ConnectionLobby::sendJoinSessionPackage(char* name) {
    auto* packet = new DataPacketLobby();
    packet->addByte(kCommandG);
    packet->addByte(kCommandR);
    packet->addByte(106);
    packet->addShortLenString(name, platform_calls::StrLen(name));
    return QueueMessage(packet);
}

// 0x8489a8 _ZN15ConnectionLobby20sendQuickGamePackageEv
int ConnectionLobby::sendQuickGamePackage() {
    auto* packet = new DataPacketLobby();
    packet->addByte(kCommandG);
    packet->addByte(kCommandR);
    packet->addByte(117);
    return QueueMessage(packet);
}

// 0x848a28 _ZN15ConnectionLobby24sendCreateSessionPackageEPcS0_i
// A null a3 is sent as a single space, as in the original.
int ConnectionLobby::sendCreateSessionPackage(char* name, char* a3, int a4) {
    auto* packet = new DataPacketLobby();
    packet->addByte(kCommandG);
    packet->addByte(kCommandR);
    packet->addByte(99);
    packet->addShortLenString(name, platform_calls::StrLen(name));
    if (a3 == nullptr) {
        a3 = const_cast<char*>(" ");
    }
    packet->addShortLenString(a3, static_cast<std::int16_t>(a4));
    return QueueMessage(packet);
}

// 0x848b04 _ZN15ConnectionLobby16sendLoginPackageEPc
// Verified against Hex-Rays: addByte 103, 114, 105 (slots +0x08), the name through addShortLenString
// (+0x3c) with XP_API_STRLEN, packMessage (+0x5c), saveRetryData, then addOutgoingPacket, whose
// result is returned as the original returns it.
// Deviation: the "ConnectionLobby::sendLoginPackage() user=[%s]" XP_DEBUG_OUT trace is dropped.
int ConnectionLobby::sendLoginPackage(char* user) {
    auto* packet = new DataPacketLobby();
    packet->addByte(kCommandG);
    packet->addByte(kCommandR);
    packet->addByte(105);
    packet->addShortLenString(user, platform_calls::StrLen(user));
    return QueueMessage(packet);
}

// 0x848bbc _ZN15ConnectionLobby27sendFinishConnectionPackageEv
// Queued without saveRetryData, as in the original. The return value is the time, which is also stored.
int ConnectionLobby::sendFinishConnectionPackage() {
    const std::int32_t random = platform_calls::GetRandom();
    auto* packet = new DataPacketLobby();
    packet->InitMessage(3);
    packet->addInt(random);
    packet->packMessage();
    addOutgoingPacket(packet);
    const int result = platform_calls::GetTime();
    last_request_time_ = result;
    return result;
}

// 0x848c34 _ZN15ConnectionLobby30sendEstablishConnectionPackageEv
int ConnectionLobby::sendEstablishConnectionPackage() {
    recv_buf_len_ = 0;
    recv_step_ = 0;
    need_recv_data_len_ = 0;
    const std::int32_t random = platform_calls::GetRandom();
    auto* packet = new DataPacketLobby();
    packet->InitMessage(1);
    packet->addInt(random);
    packet->packMessage();
    addOutgoingPacket(packet);
    last_request_time_ = platform_calls::GetTime();
    const int result = platform_calls::GetTime();
    establish_time_ = result;
    return result;
}

// 0x848cd0 _ZN15ConnectionLobby14receiveDataLenEv
// Verified against Hex-Rays and the ARM listing. Step 0: need length = 2, clear the 0x1001-byte
// buffer when the filled count is 0, Select(0) then IsReadyForRW (+0x4c), Recv (+0x48) into
// buffer + filled, a 0 result disconnects, then the two header bytes are read big-endian into need
// length, a value above 4096 disconnects, and step 1 is entered with filled cleared and byte 2
// zeroed. Step 1: the same read, then the body is queued as a DataPacketLobby through
// setMessageBody (+0x68) and addIncomingPacket, 0x80 bytes are cleared and all three counters are
// reset; a filled count above need disconnects. The original's return value is a leftover register
// (the Recv result or the void disconnect result); no caller reads it, so the port returns void.
// Deviation: the four XP_DEBUG_OUT traces on the error paths are dropped, and a missing socket is
// skipped instead of dereferenced.
void ConnectionLobby::receiveDataLen() {
    if (recv_step_ != 0) {
        if (recv_step_ != 1) {
            return;  // "receiveDataLen-- error m_iRecvStep" dropped
        }
        if (recv_buf_len_ == 0) {
            std::memset(recv_buffer_, 0, kReceiveBufferBytes);
        }
        if (socket_->Select(GLXPlayerSocket::kSelectRead) < 0 || !socket_->IsReadyForRW()) {
            return;
        }
        const int received = socket_->Recv(reinterpret_cast<char*>(recv_buffer_) + recv_buf_len_, need_recv_data_len_ - recv_buf_len_);
        if (received < 0) {
            return;
        }
        if (received == 0) {
            disconnect();
            return;
        }
        int filled = recv_buf_len_;
        if (filled < need_recv_data_len_) {
            filled += received;
            recv_buf_len_ = filled;
        }
        if (filled == need_recv_data_len_) {
            auto* packet = new DataPacketLobby();
            packet->setMessageBody(recv_buffer_, recv_buf_len_);
            addIncomingPacket(packet);
            std::memset(recv_buffer_, 0, kReceiveBufferSize);
            need_recv_data_len_ = 0;
            recv_buf_len_ = 0;
            recv_step_ = 0;
        } else if (filled > need_recv_data_len_) {
            disconnect();  // "receiveDataLen-- more data, step1" dropped
        }
        return;
    }

    // Step 0: the 2-byte length header.
    need_recv_data_len_ = 2;
    if (recv_buf_len_ == 0) {
        std::memset(recv_buffer_, 0, kReceiveBufferBytes);
    }
    if (socket_->Select(GLXPlayerSocket::kSelectRead) < 0 || !socket_->IsReadyForRW()) {
        return;
    }
    const int received = socket_->Recv(reinterpret_cast<char*>(recv_buffer_) + recv_buf_len_, need_recv_data_len_ - recv_buf_len_);
    if (received < 0) {
        return;
    }
    if (received == 0) {
        disconnect();
        return;
    }
    int filled = recv_buf_len_;
    if (filled < need_recv_data_len_) {
        filled += received;
        recv_buf_len_ = filled;
    }
    if (filled == need_recv_data_len_) {
        const int length = (recv_buffer_[0] << 8) | recv_buffer_[1];
        need_recv_data_len_ = length;
        if (length > kMaxMessageBytes) {
            disconnect();  // "error, more than 2048 ONLINE_MAX_PACKET_SIZE" dropped; the check is 4096
            return;
        }
        recv_step_ = 1;
        recv_buf_len_ = 0;
        recv_buffer_[2] = 0;
    } else if (filled > need_recv_data_len_) {
        disconnect();  // "receiveDataLen-- error,more data" dropped
    }
}

// 0x848fac _ZN15ConnectionLobby8sendDataEv
// Verified against the Hex-Rays body and the ARM listing: Select(write, slot +0x40) failing returns;
// the head's body (+0x64) is passed to Send (slot +0x44) with its length (+0x60) as is (the lobby
// packet carries its own 2-byte length header); a failed send disconnects; the last send time is set;
// the head is popped by taking its next link (+0x6c) and running its deleting destructor (+0x04);
// sendData recurses (own slot +0x08, "MOV R0,R4") while packets remain, else the queue tail is
// cleared. The original's return value is a leftover register (R0 is `this` on several paths and
// disconnect's void result on others); no caller reads it, so the port returns void.
// Deviations: the "sendData: select error." and "sendData: PPP not open, disconnect." XP_DEBUG_OUT
// traces are dropped, and a missing socket on a connected link disconnects where the original would
// dereference it.
void ConnectionLobby::sendData() {
    if (outgoing_.empty()) {
        return;
    }
    if (!isConnected() || !socket_) {
        disconnect();
        return;
    }
    if (socket_->Select(GLXPlayerSocket::kSelectWrite) < 0) {
        return;
    }
    DataPacket& head = *outgoing_.front();
    const char* body = head.getMessageBody();
    const int length = head.getMessageLen();
    if (socket_->Send(body, length) < 0) {
        disconnect();
        return;
    }
    last_send_time_ = platform_calls::GetTime();
    outgoing_.pop_front();
    if (!outgoing_.empty()) {
        sendData();
    }
}

// Helper (not an original function): packs the message, keeps a copy for resend and queues it. Every send* except the connection
// handshake messages ends this way.
int ConnectionLobby::QueueMessage(DataPacketLobby* packet) {
    packet->packMessage();
    saveRetryData(packet);
    return addOutgoingPacket(packet);
}

// Helper (not an original function): packs a query parameter block into the message, then frees the copy.
void ConnectionLobby::AddPackedQuery(DataPacketLobby* packet, CLobbyParameterAndQuery* query) {
    int length = 0;
    void* buffer = lobby_query::Pack(query, &length);
    if (buffer != nullptr) {
        packet->addQueryString(static_cast<const char*>(buffer), static_cast<std::int16_t>(length));
        platform_calls::Free(buffer);
    }
}

// Helper (not an original function): shared body of the two lobby-list requests.
int ConnectionLobby::SendLobbyListMessage(int message_type, int a3, int a4, unsigned char a5,
                                          CLobbyParameterAndQuery* a6, unsigned char a7) {
    auto* packet = new DataPacketLobby();
    packet->InitMessage(message_type);
    packet->addInt(a3);
    packet->addByte(a5);
    packet->addInt(a4);
    if (a6 != nullptr) {
        AddPackedQuery(packet, a6);
    } else {
        packet->addByte(0);
    }
    packet->addByte(a7);
    return QueueMessage(packet);
}
