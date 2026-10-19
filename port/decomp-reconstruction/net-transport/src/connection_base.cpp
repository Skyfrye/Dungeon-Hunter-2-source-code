#include "net-transport/connection_base.hpp"

#include <cstring>
#include <string>
#include <utility>

#include "net-session-online/xp_api.hpp"  // XP_API_GET_RANDOM (0x82afb0)
#include "net-transport/default_data_packet.hpp"
#include "net-transport/deps/connection_env.hpp"

namespace {

// A fresh message packet, as the original's operator new(0x101C) + DefaultDataPacket ctor.
std::unique_ptr<DefaultDataPacket> NewPacket() {
    return std::make_unique<DefaultDataPacket>();
}

// The length byte of a string field: the original's XP_API_STRLEN, cast to a byte.
unsigned char ByteLength(const char* text) {
    return static_cast<unsigned char>(platform_calls::StrLen(text));
}

}  // namespace

// 0x846ca4 _ZN10ConnectionC1EPci
// 0x846dac _ZN10ConnectionC2EPci is the same body (skipped at that address).
// The host is copied (XP_API_STRNEW; a null host stays null) and the socket is created for it
// (a CAndroidSocket, through the factory).
Connection::Connection(char* host, int port) : port_(port) {
    if (host != nullptr) {
        const std::size_t length = std::strlen(host);
        host_.reset(new char[length + 1]);
        std::memcpy(host_.get(), host, length + 1);
    }
    // The factory's observer argument is 0 in the original, which is nullptr here.
    socket_.reset(GLXPlayerSocketFactory::GetSocket(host_.get(), port_, nullptr));
}

// 0x846b14 _ZN10ConnectionD1Ev
// 0x846bcc _ZN10ConnectionD2Ev is the same body (skipped at that address); 0x846bb0
// _ZN10ConnectionD0Ev is the deleting variant (skipped).
// Partial: the original also frees an owned object at +0x2018 whose type is not recovered, so it
// is not freed here. Every Hex-Rays chunk writes that slot only in the two constructors (0x846ca4,
// 0x846dac, which zero it), so the free never runs in the binary. The queues, retry copy, socket and
// name are released by the members.
Connection::~Connection() {
    disconnect();
}

// 0x84699c _ZN10Connection8sendDataEv
// Verified against the Hex-Rays body and the ARM listing: the head packet's length (vtable +0x60) is
// stored in the length byte at +0x1010, then its body (+0x64) and length (+0x60) are read again for
// the copy to +0x1011, exactly as the original calls them. Select(write, slot +0x40) failing returns;
// the send of length + 1 bytes (slot +0x44) failing disconnects; the last send time is set; the head
// is popped by taking its next link (+0x6c) and running its deleting destructor (+0x04); sendData
// recurses (own slot +0x08, "MOV R0,R4") while packets remain, else the queue tail is cleared.
// The original's return value is a leftover register (R0 is `this` on several paths and
// disconnect's void result on others); no caller reads it, so the port returns void.
// Deviations: the "sendData: select error." and "sendData: PPP not open, disconnect." XP_DEBUG_OUT
// traces are dropped, a missing socket on a connected link disconnects where the original would
// dereference it, and the copy is skipped when the length is not positive.
void Connection::sendData() {
    if (outgoing_.empty()) {
        return;
    }
    if (!isConnected() || !socket_) {
        disconnect();
        return;
    }
    DataPacket& packet = *outgoing_.front();
    send_buffer_[0] = static_cast<std::uint8_t>(packet.getMessageLen());
    const char* body = packet.getMessageBody();
    const int length = packet.getMessageLen();
    if (length > 0) {
        std::memcpy(send_buffer_ + 1, body, static_cast<std::size_t>(length));
    }
    if (socket_->Select(GLXPlayerSocket::kSelectWrite) < 0) {  // vtable +0x40
        return;
    }
    if (socket_->Send(reinterpret_cast<const char*>(send_buffer_), packet.getMessageLen() + 1) < 0) {  // +0x44
        disconnect();
        return;
    }
    last_send_time_ = platform_calls::GetTime();
    outgoing_.pop_front();  // the sent packet is destroyed
    if (!outgoing_.empty()) {
        sendData();
    }
}

// 0x8466fc _ZN10Connection14receiveDataLenEv
// Partial: the debug prints of the error paths are dropped. The receive is a two-step read:
// step 0 reads the one-byte body length, step 1 reads the body (as the original). A packet is
// queued when the body is complete. Also a guard for a missing socket (the original dereferences
// it): the call returns without reading.
void Connection::receiveDataLen() {
    if (recv_step_ != 0 && recv_step_ != 1) {
        return;  // "receiveDataLen-- error m_iRecvStep" (debug print dropped)
    }
    if (!socket_) {
        return;
    }
    const bool body_step = recv_step_ == 1;
    if (!body_step) {
        need_recv_data_len_ = 1;
    }
    if (recv_buf_len_ == 0) {
        std::memset(recv_buffer_, 0, kBufferBytes);
    }
    if (socket_->Select(GLXPlayerSocket::kSelectRead) < 0) {  // vtable +0x40, read readiness
        return;
    }
    if (!socket_->IsReadyForRW()) {  // vtable +0x4c
        return;
    }
    const int result = socket_->Recv(reinterpret_cast<char*>(recv_buffer_ + recv_buf_len_),  // vtable +0x48
                                     need_recv_data_len_ - recv_buf_len_);
    if (result < 0) {
        return;
    }
    if (result == 0) {
        disconnect();  // the peer closed the link
        return;
    }
    if (recv_buf_len_ < need_recv_data_len_) {
        recv_buf_len_ += result;
    }
    if (!body_step) {
        if (need_recv_data_len_ == recv_buf_len_) {
            // The length byte is in. The body length is that byte.
            recv_step_ = 1;
            need_recv_data_len_ = recv_buffer_[0];
            recv_buf_len_ = 0;
        } else if (need_recv_data_len_ < recv_buf_len_) {
            disconnect();  // "error,more data" (debug print dropped)
        }
        return;
    }
    if (need_recv_data_len_ == recv_buf_len_) {
        auto packet = NewPacket();
        packet->setMessageBody(recv_buffer_, recv_buf_len_);
        addIncomingPacket(packet.release());
        std::memset(recv_buffer_, 0, 0x80);
        need_recv_data_len_ = 0;
        recv_buf_len_ = 0;
        recv_step_ = 0;
    } else if (need_recv_data_len_ < recv_buf_len_) {
        disconnect();  // "more data" (debug print dropped)
    }
}

// 0x8456fc _ZN10Connection21getNextIncomingPacketEv
// Pops the first incoming packet. The caller owns the returned packet; nullptr when none.
DataPacket* Connection::getNextIncomingPacket() {
    if (incoming_.empty()) {
        return nullptr;
    }
    std::unique_ptr<DataPacket> packet = std::move(incoming_.front());
    incoming_.pop_front();
    return packet.release();
}

// 0x845754 _ZN10Connection11isConnectedEv
bool Connection::isConnected() const {
    return connected_;
}

// 0x84575c _ZN10Connection13set_connectedEb
void Connection::set_connected(bool connected) {
    connected_ = connected;
}

// 0x845764 _ZN10Connection14cleanRetryDataEv
void Connection::cleanRetryData() {
    retry_packet_.reset();
}

// 0x845798 _ZN10Connection19getTimeOfLastReqestEv
int Connection::getTimeOfLastReqest() const {
    return last_request_time_;
}

// 0x8457a4 _ZN10Connection13saveRetryDataEP10DataPacket
// Cleans the old copy, builds a DefaultDataPacket and fills it with setMessageBody (vtable +0x68) from
// the source's body (vtable +0x64, read first) and length (+0x60), then stamps the request time.
void Connection::saveRetryData(DataPacket* packet) {
    if (!packet) {
        return;
    }
    cleanRetryData();
    auto copy = NewPacket();
    const char* body = packet->getMessageBody();
    const int length = packet->getMessageLen();
    copy->setMessageBody(reinterpret_cast<const unsigned char*>(body), length);
    retry_packet_ = std::move(copy);
    last_request_time_ = platform_calls::GetTime();
}

// 0x84581c _ZN10Connection7connectEv
// Partial: a guard is added for a missing socket (the original dereferences it after a disconnect).
// State 1 calls the socket's ConnectByName (vtable +0x38) with the host and 0; on success it sets the
// connected flag, sends the handshake (vtable +0x10), starts the receive (+0x0c), stamps the send time,
// moves to state 2 and clears the socket's connect state (+0x85c). A failed attempt with that state at
// 2 or more gives up (state 3). State 0 creates the socket (vtable +0x28) when the host and port are
// set, else fails.
int Connection::connect() {
    if (state_ == 1) {
        if (!socket_) {
            state_ = 3;
            return 0;
        }
        const int result = socket_->ConnectByName(host_.get(), 0);  // vtable +0x38
        if (result) {
            connected_ = true;
            sendEstablishConnectionPackage();
            receiveDataLen();
            last_send_time_ = platform_calls::GetTime();
            state_ = 2;
            socket_->nonBlockConnectState_ = 0;
            return 1;
        }
        if (socket_->nonBlockConnectState_ >= 2) {
            state_ = 3;
            socket_->nonBlockConnectState_ = 0;
        }
        return 0;
    }
    if (state_ != 0) {
        return 0;
    }
    if (host_ && port_ != 0 && socket_) {
        state_ = socket_->CreateSocket() ? 1 : 3;  // vtable +0x28
        return 0;
    }
    state_ = 3;
    return 0;
}

// 0x845944 _ZN10Connection17addIncomingPacketEP10DataPacket
// The packet is taken by the queue. The original links the queue through the packet (ARM 0x845944:
// tail->setNextPacket(a2) with a2 still in r1), and the deque keeps the same order; the head-without-tail
// error branch (debug print) cannot occur with a deque. The return value is the 32-bit register the
// original leaves: this for a null packet or an empty queue, and on a non-empty queue the result of
// tail->setNextPacket(), which is the receiver (both DataPacket classes store and BX LR with r0 = this), so the old tail.
int Connection::addIncomingPacket(DataPacket* packet) {
    if (!packet) {
        return static_cast<int>(reinterpret_cast<std::uintptr_t>(this));
    }
    DataPacket* const tail = incoming_.empty() ? nullptr : incoming_.back().get();
    incoming_.emplace_back(packet);
    return static_cast<int>(reinterpret_cast<std::uintptr_t>(tail != nullptr ? static_cast<void*>(tail) : static_cast<void*>(this)));
}

// 0x8459b4 _ZN10Connection17addOutgoingPacketEP10DataPacket
// Partial: the return value of the original is not reproduced. It is this on a null packet, the
// sendData result when the queue was empty, and a call result when appending (ARM 0x8459b4); 0 is
// returned here. ConnectionLobby's send functions forward this value (connection_lobby.cpp), so it
// matters there. The packet is taken by the queue; when the link is down it is destroyed (vtable +4,
// as the original). Partial too in the same error branch as addIncomingPacket (debug print dropped).
int Connection::addOutgoingPacket(DataPacket* packet) {
    if (!packet) {
        return static_cast<int>(reinterpret_cast<std::uintptr_t>(this));  // the original returns this
    }
    std::unique_ptr<DataPacket> owned(packet);
    if (!connected_) {
        return 0;  // owned is destroyed (the original calls the packet's deleting destructor)
    }
    const bool was_empty = outgoing_.empty();
    outgoing_.push_back(std::move(owned));
    if (was_empty) {
        sendData();
    }
    return 0;
}

// 0x845a50 _ZN10Connection13sendRetryDataEv
// A copy of the retry packet (body from vtable +0x64, length from +0x60) is queued through
// addOutgoingPacket, and the request time is stamped. The pseudocode returns the time (leftover r0).
void Connection::sendRetryData() {
    if (!retry_packet_) {
        return;
    }
    auto copy = NewPacket();
    const char* body = retry_packet_->getMessageBody();
    const int length = retry_packet_->getMessageLen();
    copy->setMessageBody(reinterpret_cast<const unsigned char*>(body), length);
    addOutgoingPacket(copy.release());
    last_request_time_ = platform_calls::GetTime();
}

// 0x845ad8 _ZN10Connection19keepConnectionAliveEv
// Sends a keep-alive ("ga") when the last send is more than 10 seconds old.
bool Connection::keepConnectionAlive() {
    if (platform_calls::GetTime() - last_send_time_ <= 10000) {
        return false;
    }
    auto packet = NewPacket();
    packet->addByte('g');
    packet->addByte('a');
    packet->packMessage();
    addOutgoingPacket(packet.release());
    return true;
}

// 0x845b60 _ZN10Connection24sendKickOutPlayerPackageEPc
// The original returns `this` on the null-name path (done). Partial: the other path returns
// addOutgoingPacket's result (see there).
int Connection::sendKickOutPlayerPackage(char* name) {
    if (!name) {
        return static_cast<int>(reinterpret_cast<std::uintptr_t>(this));
    }
    auto packet = NewPacket();
    packet->addByte('g');
    packet->addByte('r');
    packet->addByte('k');
    packet->addByteLenString(name, ByteLength(name));
    packet->packMessage();
    saveRetryData(packet.get());
    return addOutgoingPacket(packet.release());
}

// 0x845c0c _ZN10Connection24sendUpdateSessionPackageEi
int Connection::sendUpdateSessionPackage(int state) {
    auto packet = NewPacket();
    packet->addByte('g');
    packet->addByte('r');
    packet->addByte('e');
    packet->addByte(static_cast<unsigned char>(state));
    packet->packMessage();
    saveRetryData(packet.get());
    return addOutgoingPacket(packet.release());
}

// 0x845ca4 _ZN10Connection21sendFinishGamePackageEv
int Connection::sendFinishGamePackage() {
    auto packet = NewPacket();
    packet->addByte('g');
    packet->addByte('r');
    packet->addByte('f');
    packet->packMessage();
    saveRetryData(packet.get());
    return addOutgoingPacket(packet.release());
}

// 0x845d24 _ZN10Connection20sendStartGamePackageEv
int Connection::sendStartGamePackage() {
    auto packet = NewPacket();
    packet->addByte('g');
    packet->addByte('r');
    packet->addByte('s');
    packet->packMessage();
    saveRetryData(packet.get());
    return addOutgoingPacket(packet.release());
}

// 0x845da4 _ZN10Connection29sendListSessionsByDataPackageEhiPci
int Connection::sendListSessionsByDataPackage(unsigned char type, int a3, char* data, int length) {
    auto packet = NewPacket();
    packet->addByte('g');
    packet->addByte('r');
    packet->addByte('l');
    packet->addByte(type);
    packet->addInt(a3);
    packet->addByte('d');
    packet->addByteLenString(data, static_cast<unsigned char>(length));
    packet->packMessage();
    saveRetryData(packet.get());
    return addOutgoingPacket(packet.release());
}

// 0x845e88 _ZN10Connection29sendListSessionsByNamePackageEhiPc
int Connection::sendListSessionsByNamePackage(unsigned char type, int a3, char* name) {
    auto packet = NewPacket();
    packet->addByte('g');
    packet->addByte('r');
    packet->addByte('l');
    packet->addByte(type);
    packet->addInt(a3);
    packet->addByte('n');
    packet->addByteLenString(name, ByteLength(name));
    packet->packMessage();
    saveRetryData(packet.get());
    return addOutgoingPacket(packet.release());
}

// 0x845f70 _ZN10Connection26sendListSessionsAllPackageEhi
int Connection::sendListSessionsAllPackage(unsigned char type, int a3) {
    auto packet = NewPacket();
    packet->addByte('g');
    packet->addByte('r');
    packet->addByte('l');
    packet->addByte(type);
    packet->addInt(a3);
    packet->addByte('a');
    packet->packMessage();
    saveRetryData(packet.get());
    return addOutgoingPacket(packet.release());
}

// 0x846034 _ZN10Connection23sendListSessionsPackageEhi
int Connection::sendListSessionsPackage(unsigned char type, int a3) {
    auto packet = NewPacket();
    packet->addByte('g');
    packet->addByte('r');
    packet->addByte('l');
    packet->addByte(type);
    packet->addInt(a3);
    packet->packMessage();
    saveRetryData(packet.get());
    return addOutgoingPacket(packet.release());
}

// 0x8460e4 _ZN10Connection23sendLeaveSessionPackageEv
int Connection::sendLeaveSessionPackage() {
    auto packet = NewPacket();
    packet->addByte('g');
    packet->addByte('r');
    packet->addByte('q');
    packet->packMessage();
    saveRetryData(packet.get());
    return addOutgoingPacket(packet.release());
}

// 0x846164 _ZN10Connection22sendJoinSessionPackageEPc
int Connection::sendJoinSessionPackage(char* name) {
    auto packet = NewPacket();
    packet->addByte('g');
    packet->addByte('r');
    packet->addByte('j');
    packet->addByteLenString(name, ByteLength(name));
    packet->packMessage();
    saveRetryData(packet.get());
    return addOutgoingPacket(packet.release());
}

// 0x846208 _ZN10Connection20sendQuickGamePackageEv
int Connection::sendQuickGamePackage() {
    auto packet = NewPacket();
    packet->addByte('g');
    packet->addByte('r');
    packet->addByte('u');
    packet->packMessage();
    saveRetryData(packet.get());
    return addOutgoingPacket(packet.release());
}

// 0x846288 _ZN10Connection24sendCreateSessionPackageEPcS0_i
// A null password is the original's one-space literal (0x8c1438) passed with max_players as the byte count, so the bytes
// after the literal in .rodata (read from the binary: runs of spaces broken by zero bytes) are sent.
namespace {
const unsigned char kAfterSpaceLiteral[256] = {32,0,0,0,0,0,0,0,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,0,0,0,0,0,0,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,0,0,0,0,0,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32};
}
int Connection::sendCreateSessionPackage(char* name, char* password, int max_players) {
    const auto count = static_cast<unsigned char>(max_players);
    auto packet = NewPacket();
    packet->addByte('g');
    packet->addByte('r');
    packet->addByte('c');
    packet->addByteLenString(name, ByteLength(name));
    if (password) {
        packet->addByteLenString(password, count);
    } else {
        packet->addByteLenString(reinterpret_cast<const char*>(kAfterSpaceLiteral), count);
    }
    packet->packMessage();
    saveRetryData(packet.get());
    return addOutgoingPacket(packet.release());
}

// 0x846364 _ZN10Connection27sendFinishConnectionPackageEv
// Queued without a retry copy. Sets the last request time to now and returns it.
int Connection::sendFinishConnectionPackage() {
    auto packet = NewPacket();
    packet->addByte('s');
    packet->addByte('x');
    packet->packMessage();
    addOutgoingPacket(packet.release());
    last_request_time_ = platform_calls::GetTime();
    return last_request_time_;
}

// 0x8463d0 _ZN10Connection16sendLoginPackageEPc
// Verified against Hex-Rays: addByte 103, 114, 105 (slots +0x08), the name through addByteLenString
// (+0x28) with XP_API_STRLEN, packMessage (+0x5c), saveRetryData, then addOutgoingPacket, whose
// result is returned as the original returns it.
// Deviation: the "Connection::sendLoginPackage() user=[%s]" XP_DEBUG_OUT trace is dropped.
int Connection::sendLoginPackage(char* user) {
    auto packet = NewPacket();
    packet->addByte('g');
    packet->addByte('r');
    packet->addByte('i');
    packet->addByteLenString(user, ByteLength(user));
    packet->packMessage();
    saveRetryData(packet.get());
    return addOutgoingPacket(packet.release());
}

// 0x846488 _ZN10Connection30sendEstablishConnectionPackageEv
// Verified against Hex-Rays 0x846488: both receive counters, the buffer length and the receive step are cleared,
// the random value comes from XP_API_GET_RANDOM (0x82afb0, net-session-online) with the connection name, and two
// handshake packets ("sw" and "sr", each with the random value) are built and queued. last_request_time_ and
// handshake_time_ both take XP_API_GET_TIME and the second is returned. Only the "EstablishConnection random = %d"
// debug print is dropped.
int Connection::sendEstablishConnectionPackage() {
    need_recv_data_len_ = 0;
    recv_buf_len_ = 0;
    recv_step_ = 0;
    const int random = static_cast<int>(XP_API_GET_RANDOM(name_.data()));
    auto first = NewPacket();
    first->addByte('s');
    first->addByte('w');
    first->addInt(random);
    first->packMessage();
    addOutgoingPacket(first.release());
    auto second = NewPacket();
    second->addByte('s');
    second->addByte('r');
    second->addInt(random);
    second->packMessage();
    addOutgoingPacket(second.release());
    last_request_time_ = platform_calls::GetTime();
    handshake_time_ = platform_calls::GetTime();
    return handshake_time_;
}

// 0x8465b8 _ZN10Connection10disconnectEv
// Closes the socket and drops it, clears the retry copy and both queues (their packets are
// destroyed), and zeroes both buffers and the timers. The state and the receive step are kept, as
// in the original.
void Connection::disconnect() {
    connected_ = false;
    if (socket_) {
        socket_->CloseSocket();  // vtable +0x3c (Connection::disconnect calls it, then deletes the socket)
        socket_.reset();
    }
    cleanRetryData();
    incoming_.clear();
    outgoing_.clear();
    std::memset(recv_buffer_, 0, kBufferBytes);
    std::memset(send_buffer_, 0, kBufferBytes);
    handshake_time_ = 0;
    last_send_time_ = 0;
    last_request_time_ = 0;
}

// 0x846c68 _ZN10Connection7setNameEPc
// A null name is stored as an empty string.
void Connection::setName(char* name) {
    name_ = name ? name : "";
}
