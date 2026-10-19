// LCXPlayerSocket: the lobby-side socket wrapper. The original LCX class has its own
// layout (the ctor, Start and Cancel bodies below are the source); it is not the GLX
// class with a different name, so the offsets differ from glx_player_socket.hpp.
// The class is abstract, as in the original: the platform slots (vtable +0x08 and +0x20..+0x80) are
// null in _ZTV15LCXPlayerSocket, and LCAndroidSocket (net-transport) implements them. LCAndroidSocket
// derives from this class (its constructor calls 0x8a0314 first), not from GLXPlayerSocket.
//
// Layout (original 32-bit offsets, kept as comments; the member names are the binary's, from the
// IDA type of LCXPlayerSocket, size 0x868). Members are public (TRACK-B decision 9):
//   +0x00 vptr                                  +0x04 m_state (XSocketState, see below)
//   +0x08 m_socket (int, -1 until connected)    +0x0c m_server_addr (void*, the resolved host)
//   +0x10 m_server_port (int)                   +0x14 m_server_name (owned copy of ctor argument 1)
//   +0x18 m_observer                            +0x1c m_abBuffer, 0x800 bytes
//   +0x81c m_nReceived (int)                    +0x820 m_type (int)
//   +0x824 m_accept_ip (owned string)           +0x828 m_accept_port (int)
//   +0x82c m_buffer (std::string, 0x18 bytes)   +0x844 m_buffer_used (byte)
//   +0x845 m_bReceiveHttpHeader, +0x846 m_bLengthKnown, +0x848 m_total_length
//   +0x84c m_sentLen, +0x850 tmpSendStartTime, +0x854 tmpRecvStartTime
//   +0x858 m_nonBlockConnectState, +0x85c m_gethostbynameState
//   +0x860 m_connectTimeStart, +0x864 m_gethostbynametimeStart
#pragma once

#include <cstdint>
#include <memory>
#include <string>

struct hostent;

// The callback target of a socket (LCXPlayerHttp in the lobby). Run calls the four slots below in
// this order: slot 0 GetRequestData, slot 1 GetRequestLength, slot 2 SetResponseData, slot 3
// SetResponseLen (the Hex-Rays calls index the observer vtable at +0x00, +0x04, +0x08, +0x0c; the
// LCXPlayerHttp vtable in the dump has the same four entries first). The defaults are empty.
class LCXPlayerSocketObserver {
public:
    virtual ~LCXPlayerSocketObserver() = default;
    virtual const char* GetRequestData() const { return nullptr; }                       // slot 0
    virtual std::int32_t GetRequestLength() const { return 0; }                          // slot 1
    virtual void SetResponseData(const char* /*data*/, std::int32_t /*length*/) {}      // slot 2
    virtual void SetResponseLen(std::int32_t /*length*/) {}                              // slot 3
};

class LCXPlayerSocket {
public:
    // The XSocketState enumerators of the original. Values are read from the compares in
    // Cancel (0x8a01b4) and Start (0x8a02c4) in the ARM listing.
    enum XSocketState : std::int32_t {
        kStateNone = 0,              // XSOCKET_STATE_NONE
        kStateStartConnect = 1,      // XSOCKET_STATE_START_CONNECT
        kStateWaitConnecting = 2,    // XSOCKET_STATE_WAIT_CONNECTING (Run's switch: case 1, Connect)
        kStateSendRequest = 3,       // XSOCKET_STATE_SEND_REQUEST (case 2, Select(1))
        kStateWaitResponse = 4,      // XSOCKET_STATE_WAIT_RESPONSE (case 3, Select(0))
        kStateCloseConnection = 5,   // XSOCKET_STATE_CLOSE_CONNECTION (case 4, close hook)
        kStateRequestComplete = 6,   // XSOCKET_STATE_REQUEST_COMPLETE
        kStateError = 7,             // XSOCKET_STATE_ERROR
        kStateCancelled = 8,         // XSOCKET_STATE_CANCELLED
    };

    // LCXPlayerSocket::XSocketSelectFlag (the argument of the Select slot).
    enum XSocketSelectFlag : std::int32_t { kSelectRead = 0, kSelectWrite = 1 };

    // 0x8a0314 and 0x8a03bc _ZN15LCXPlayerSocketC1EPciP23LCXPlayerSocketObserver.
    // The original does not initialise the state word; the port starts at kStateNone.
    LCXPlayerSocket(const char* serverName, std::int32_t port, LCXPlayerSocketObserver* observer);
    // 0x8a0464 (D1). D2 (0x8a051c) has the same body; D0 (0x8a0500) is the deleting variant.
    virtual ~LCXPlayerSocket() = default;

    // ---- vtable _ZTV15LCXPlayerSocket (tools/decomp_vtable.py LCXPlayerSocket) ----
    // +0x08 pure in the base; LCAndroidSocket::GetLocalIP
    virtual bool GetLocalIP(char* out) = 0;
    // 0x8a02c4 _ZN15LCXPlayerSocket5StartEv, vtable +0x0c
    virtual void Start();
    // 0x8a1c1c _ZN15LCXPlayerSocket3RunEv, vtable +0x10: one step of the XSocketState machine
    // (see the cpp). The I/O it needs is the platform set below.
    virtual void Run();
    // 0x8a01b4 _ZN15LCXPlayerSocket6CancelEv, vtable +0x14
    virtual void Cancel();
    // 0x8a01f4 _ZN15LCXPlayerSocket12IsInProgressEv, vtable +0x18
    virtual bool IsInProgress() const;
    // 0x8a0220 _ZN15LCXPlayerSocket15IsErrorOccurredEv, vtable +0x1c
    virtual bool IsErrorOccurred() const { return state_ == kStateError; }

    // The platform slots, all pure in the original base. Names and signatures are LCAndroidSocket's
    // overrides, shifted to this class's vptr.
    virtual hostent* GetHostByName(char* name) = 0;                              // +0x20
    virtual void* GetHostName(char** out) = 0;                                         // +0x24
    virtual bool CreateSocket() = 0;                                                   // +0x28
    virtual int GetLastError() = 0;                                                    // +0x2c
    virtual bool SetNonBlocking() = 0;                                                 // +0x30
    virtual bool Connect() = 0;                                                        // +0x34
    virtual bool ConnectByName(char* name) = 0;                                  // +0x38
    virtual bool CloseSocket() = 0;                                                    // +0x3c
    virtual int Select(XSocketSelectFlag flag) = 0;                                    // +0x40
    virtual int Send(const char* data, int length) = 0;                                // +0x44
    virtual int Recv(char* buffer, int length) = 0;                                    // +0x48
    virtual bool IsReadyForRW() = 0;                                                   // +0x4c
    virtual LCXPlayerSocket* Accept() = 0;                                             // +0x50
    virtual int Bind(const char* ip, std::uint16_t port) = 0;                          // +0x54
    virtual int SendTo(const char* data, int length, const char* ip, int port) = 0;    // +0x58
    virtual int RecvFrom(char* buffer, int length) = 0;                                // +0x5c
    virtual int RecvFromUnkownIP(char* buffer, int length, char** ip_out, int* port_out) = 0;  // +0x60
    virtual void Listen(int backlog) = 0;                                              // +0x64
    virtual bool ConnectTo(const char* ip, int port) = 0;                              // +0x68
    virtual bool CreateTcpSocket() = 0;                                                // +0x6c
    virtual bool CreateUdpSocket() = 0;                                                // +0x70
    virtual const char* GetSocketAddr() = 0;                                           // +0x74
    virtual std::uint16_t GetSocketPort() = 0;                                         // +0x78
    virtual void SetBroadcast() = 0;                                                   // +0x7c
    virtual int SendBroadcast(const char* data, int length, int port) = 0;             // +0x80

    // 0x8a0184 _ZN15LCXPlayerSocket11GetAcceptIPEv
    const char* GetAcceptIP() const { return acceptIp_.get(); }
    // 0x8a018c _ZN15LCXPlayerSocket13GetAcceptPortEv
    std::int32_t GetAcceptPort() const { return acceptPort_; }
    // 0x8a0194 _ZN15LCXPlayerSocket13SetAcceptPortEi
    void SetAcceptPort(std::int32_t port) { acceptPort_ = port; }
    // 0x8a019c _ZN15LCXPlayerSocket9SetSocketEi
    void SetSocket(std::int32_t handle) { socket_ = handle; }
    // 0x8a01a4 _ZN15LCXPlayerSocket13GetSocketTypeEv
    std::int32_t GetSocketType() const { return socketType_; }
    // 0x8a01ac _ZN15LCXPlayerSocket13SetSocketTypeEi
    void SetSocketType(std::int32_t type) { socketType_ = type; }
    // 0x8a02fc _ZN15LCXPlayerSocket11SetAcceptIPEPc
    // The copy follows LC_API_STRNEW (0x89d31c, lc_api_net.hpp): null gives null. The previous
    // address is released (the original leaks it).
    void SetAcceptIP(const char* address);

    // 0x8a05b8 _ZN15LCXPlayerSocket15ParseHttpHeaderEPc: position of the lower-cased name
    // in the lower-cased header block (content up to the first CRLF CRLF), or -1.
    std::int32_t ParseHttpHeader(const char* name) const;
    // 0x8a090c _ZN15LCXPlayerSocket16RemoveHttpHeaderEv: drops the header block and the
    // CRLF CRLF after it, when the terminator is found after position 0.
    void RemoveHttpHeader();
    // 0x8a1534 _ZN15LCXPlayerSocket20CalculateTotalLengthEv: the Content-Length value in
    // the header block; 0 when the header has none, -1 when the block is not complete.
    std::int32_t CalculateTotalLength() const;
    // 0x8a0af0 _ZN15LCXPlayerSocket19ParseChunkedContentEv: replaces content_ with the
    // de-chunked body. Returns 1 on success and 0 on a malformed chunk. Partial, see the cpp.
    std::int32_t ParseChunkedContent();

    // Not in the original: test seams.
    void SetStateForTest(std::int32_t state) { state_ = state; }
    std::int32_t StateForTest() const { return state_; }
    void SetContentForTest(const std::string& text) { content_ = text; }
    const std::string& ContentForTest() const { return content_; }

    std::int32_t state_ = kStateNone;               // +0x04
    std::int32_t socket_ = -1;                      // +0x08
    void* serverAddress_ = nullptr;                 // +0x0c
    std::int32_t serverPort_ = 0;                   // +0x10
    std::unique_ptr<char[]> serverName_;            // +0x14
    LCXPlayerSocketObserver* observer_ = nullptr;   // +0x18
    char receiveBuffer_[0x800] = {};                // +0x1c
    std::int32_t receiveLength_ = 0;                // +0x81c
    std::int32_t socketType_ = 0;                   // +0x820
    std::unique_ptr<char[]> acceptIp_;              // +0x824
    std::int32_t acceptPort_ = 0;                   // +0x828
    std::string content_;                           // +0x82c
    bool bufferUsed_ = false;                       // +0x844 (m_buffer_used)
    bool receiveHttpHeader_ = false;                // +0x845 header still to parse (m_bReceiveHttpHeader)
    bool lengthKnown_ = false;                      // +0x846 Content-Length was read (m_bLengthKnown)
    std::int32_t totalLength_ = 0;                  // +0x848 (m_total_length)
    std::int32_t sentLength_ = 0;                   // +0x84c
    std::int32_t sendStartTime_ = 0;                // +0x850
    std::int32_t recvStartTime_ = 0;                // +0x854
    std::int32_t nonBlockConnectState_ = 0;         // +0x858
    std::int32_t gethostbynameState_ = 0;           // +0x85c
    std::int32_t connectStartTime_ = 0;             // +0x860
    std::int32_t gethostbynameStartTime_ = 0;       // +0x864
};

// 0x89e57c _ZN22LCXPlayerSocketFactory9GetSocketEPciP23LCXPlayerSocketObserver
// Builds an LCAndroidSocket (0xcf0 bytes), as the original.
class LCXPlayerSocketFactory {
public:
    static LCXPlayerSocket* GetSocket(const char* serverName, std::int32_t port,
                                      LCXPlayerSocketObserver* observer);
};
