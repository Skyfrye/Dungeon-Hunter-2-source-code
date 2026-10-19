// Batch e1-net-session-online-GLXPlayerMPBase-0: GLXPlayerMPBase::setErrMsg(), mpSendLogin(char*) and
// mpSendEstablishConnection(). The observer callbacks are reached through the observer's vtable (slot numbers in the
// comments are byte offsets from _ZTV23GLXPlayerMPBaseObserver, 25 slots).
#include <cstdint>
#include <cstring>

#include "net-session-online/deps/xp_api.hpp"
#include "net-session-online/glx_player_mp_base.hpp"
#include "net-session-online/xp_api.hpp"
#include "net-transport/data_packet.hpp"

// 0x84abd8 _ZN15GLXPlayerMPBase9setErrMsgEv
// Frees the old message. When a packet is being processed (+0x68) the message becomes a zero-terminated copy of the
// packet's message body (vtable +0x64 body, +0x60 length), made with operator new[] and memset/memcpy as the original does.
void GLXPlayerMPBase::setErrMsg() {
    errMsg_.reset();
    if (incomingPacket_) {
        const std::int32_t length = incomingPacket_->getMessageLen();  // vtable +0x60
        const char* body = incomingPacket_->getMessageBody();          // vtable +0x64
        errMsg_.reset(new char[static_cast<std::size_t>(length) + 1u]);
        std::memset(errMsg_.get(), 0, static_cast<std::size_t>(length) + 1u);
        std::memcpy(errMsg_.get(), body, static_cast<std::size_t>(length));
    }
}

// 0x84ac64 _ZN15GLXPlayerMPBase11mpSendLoginEPc
// With the state byte equal to 1: a 0x1001-byte buffer receives the nickname (the original copies it with an unbounded
// strcpy; bounded to the buffer here), the result becomes -1, the connection (+0x54) sends the login package, +0x71 is set
// and the connection's +0x08 time is stamped with XP_API_GET_TIME. Any other state sets the result to 0 and calls
// OnMPLoginSuccess (observer +0x10, the packet argument is 0 in the listing). The Hex-Rays return value is the trace's or
// the callback's leftover, so the port returns void.
// Deviation: the connection is null-checked, where the original dereferences it.
void GLXPlayerMPBase::mpSendLogin(char* nickname) {
    XP_DEBUG_OUT("GLXPlayerMPbyP2P::mpSendLogin(){\n");
    if (state_ != 0 && state_ <= 1) {
        char buffer[0x1001];
        std::memset(buffer, 0, sizeof(buffer));
        std::strncpy(buffer, nickname, sizeof(buffer) - 1);
        XP_DEBUG_OUT("GLXPlayerMPbyP2P::mpLoginNickname %s", buffer);
        lastResult_ = -1;
        if (baseConnection_) {
            baseConnection_->sendLoginPackage(buffer);
        }
        field71_ = 1;
        if (baseConnection_) {
            baseConnection_->handshake_time_ = XP_API_GET_TIME();
        }
        XP_DEBUG_OUT("}\n");
    } else {
        lastResult_ = 0;
        observer_->OnMPLoginSuccess(nullptr);  // vtable +0x10
    }
}

// 0x84ad78 _ZN15GLXPlayerMPBase25mpSendEstablishConnectionEv
// A non-zero state sets the result to 0 and calls OnMPEstablishConnectionSuccess (observer +0x08). Otherwise an existing
// connection (+0x54) is torn down through mpDisconnect (this object's vtable +0x18) and deleted, the result becomes -1,
// a new Connection is built on the host (+0x58) and port (+0x5c), it is named from the +0x08 name text, and +0x70 and
// +0x6c are set. The Hex-Rays return type is void*; the port returns void.
void GLXPlayerMPBase::mpSendEstablishConnection() {
    if (state_ != 0) {
        lastResult_ = 0;
        observer_->OnMPEstablishConnectionSuccess();  // vtable +0x08
        return;
    }
    if (baseConnection_) {
        mpDisconnect();
        baseConnection_.reset();
    }
    lastResult_ = -1;
    baseConnection_ = std::make_unique<Connection>(host_, port_);
    baseConnection_->setName(name_);
    field70_ = 1;
    field6c_ = 1;
}
