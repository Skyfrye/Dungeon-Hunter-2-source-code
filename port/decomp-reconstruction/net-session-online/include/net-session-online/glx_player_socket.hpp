// GLXPlayerSocket: the socket wrapper of the GLX player services. It collects the HTTP
// reply in content_, strips and decodes the headers and chunked body, and reports the
// send progress. Run is the connection state machine, and it makes every transport call
// through the platform slots below (vtable +0x20..+0x84). The base is abstract, as in the
// original: those slots are null in _ZTV15GLXPlayerSocket, and CAndroidSocket (net-transport)
// is the class that implements them. GLXPlayerSocketFactory::GetSocket builds a CAndroidSocket.
//
// Layout (original 32-bit offsets, kept as comments; confirmed against the ARM ctor and the Run
// pseudocode, and against the IDA type of the sibling LCXPlayerSocket, which has the same members
// with the send-percentage word missing). Members are public (TRACK-B decision 9):
//   +0x00 vptr
//   +0x04 state (int): 0 idle, 1 started, 2 connecting, 3 sending, 4 receiving,
//         5 response complete, 6 finished, 7 error, 8 cancelled
//   +0x08 socket handle (int, -1 until a connection is made)
//   +0x0c host entry (hostent*; set by Run from the GetHostByName slot, cleared by the ctor and Start)
//   +0x10 port (int, ctor argument 2)
//   +0x14 host name (owned copy of ctor argument 1)
//   +0x18 observer (GLXPlayerSocketObserver*, ctor argument 3)
//   +0x1c receive buffer, 0x800 bytes (zeroed by Start and by Run before each receive)
//   +0x81c receive buffer length (int, zeroed by Start and when a send completes)
//   +0x820 socket type (int)
//   +0x824 accept address (owned string)
//   +0x828 accept port (int)
//   +0x82c received content (std::string; 0x18 bytes in the original, whose finish pointer at +0x83c
//          and start pointer at +0x840 give the response span)
//   +0x844 buffer-used flag (byte; m_buffer_used in the IDA type of LCXPlayerSocket): cleared when a send completes
//   +0x845 header pending (byte): the HTTP header is still in content_
//   +0x846 content length known (byte)
//   +0x848 expected content length (int, from Content-Length)
//   +0x84c bytes sent so far (int)
//   +0x850 send percentage (uint; values above 100 read as 0)
//   +0x854 send start time (uint32 milliseconds)
//   +0x858 receive start time (uint32 milliseconds)
//   +0x85c non-blocking connect state (int; the platform Connect slots keep it: 0 idle, 1 in progress,
//          2 done, 3 failed; Run's connecting state reads 1 as "still connecting")
//   +0x860 host lookup state (int; 1 = a lookup is busy; cleared when a lookup times out)
//   +0x864 connect start time (int milliseconds)
//   +0x868 host lookup start time (int milliseconds)
//   size 0x86c; CAndroidSocket adds the fd_set, the lookup thread and the lookup request (0xcf4 bytes).
#pragma once

#include <cstdint>
#include <memory>
#include <string>

struct hostent;

// The callback target of a socket. The HTTP object is the observer of the GLX sockets: its vtable
// (_ZTV13GLXPlayerHttp) starts with these four slots, which GLXPlayerHttp names GetRequestData,
// GetRequestLength, SetResponseData and SetResponseLen (the same names as the LCX observer). The base
// destructor takes slots 0 and 1 here, so the byte offsets of the original are not the port's offsets.
class GLXPlayerSocketObserver {
public:
    virtual ~GLXPlayerSocketObserver() = default;

    // Original slot +0x00: the bytes to send (the request or the post body).
    virtual const char* GetRequestData() const { return nullptr; }
    // Original slot +0x04: the number of bytes GetRequestData holds.
    virtual std::uint32_t GetRequestLength() const { return 0; }
    // Original slot +0x08: the response once the connection is closed (data, length).
    virtual void SetResponseData(const char* data, std::int32_t length) { (void)data; (void)length; }
    // Original slot +0x0c: count of response bytes available, or 0 after a receive error.
    virtual void SetResponseLen(std::int32_t count) { (void)count; }
};

class GLXPlayerSocket {
public:
    // GLXPlayerSocket::XSocketSelectFlag (the argument of the Select slot).
    enum XSocketSelectFlag : int { kSelectRead = 0, kSelectWrite = 1 };

    // 0x8302f0 and 0x83039c: GLXPlayerSocket(char*, int, GLXPlayerSocketObserver*)
    GLXPlayerSocket(const char* host, std::int32_t port, GLXPlayerSocketObserver* observer);
    // 0x8301e4 (D1) and 0x83026c (D2). The deleting destructor 0x830250 is not ported.
    virtual ~GLXPlayerSocket() = default;

    // ---- vtable _ZTV15GLXPlayerSocket (tools/decomp_vtable.py GLXPlayerSocket) ----
    // +0x08 pure in the base; CAndroidSocket::GetLocalIP
    virtual int GetLocalIP(char* out) = 0;
    // 0x8301ac _ZN15GLXPlayerSocket5StartEv, vtable +0x0c
    virtual void Start();
    // 0x830f20 _ZN15GLXPlayerSocket3RunEv, vtable +0x10. The connection state machine.
    virtual void Run();
    // 0x83007c _ZN15GLXPlayerSocket6CancelEv, vtable +0x14
    virtual void Cancel();
    // 0x8300bc _ZN15GLXPlayerSocket12IsInProgressEv, vtable +0x18
    virtual std::int32_t IsInProgress() const;
    // 0x8300e8 _ZN15GLXPlayerSocket15IsErrorOccurredEv, vtable +0x1c
    virtual bool IsErrorOccurred() const { return state_ == 7; }

    // The platform slots, all pure in the original base (null in the vtable). Names and signatures are
    // CAndroidSocket's overrides, shifted to this class's vptr.
    virtual hostent* GetHostByName(char* name) = 0;                              // +0x20
    virtual void GetHostName(char** out) = 0;                                          // +0x24
    virtual bool CreateSocket() = 0;                                                   // +0x28
    virtual int GetLastError() = 0;                                                    // +0x2c
    virtual bool SetNonBlocking() = 0;                                                 // +0x30
    virtual int Connect() = 0;                                                         // +0x34
    virtual int ConnectByName(char* name, std::uint16_t port) = 0;               // +0x38
    virtual bool CloseSocket() = 0;                                                    // +0x3c
    virtual int Select(XSocketSelectFlag flag) = 0;                                    // +0x40
    virtual int Send(const char* data, int length) = 0;                                // +0x44
    virtual int Recv(char* buffer, int length) = 0;                                    // +0x48
    virtual bool IsReadyForRW() = 0;                                                   // +0x4c
    virtual GLXPlayerSocket* Accept() = 0;                                             // +0x50
    virtual int Bind(const char* host, std::uint16_t port) = 0;                        // +0x54
    virtual int SendTo(const char* data, int length, const char* host, int port) = 0;  // +0x58
    virtual int RecvFrom(char* buffer, int length) = 0;                                // +0x5c
    virtual int RecvFromUnkownIP(char* buffer, int length, char** ip_out, int* port_out) = 0;  // +0x60
    virtual int Listen(int backlog) = 0;                                               // +0x64
    virtual int ConnectTo(const char* host, int port) = 0;                             // +0x68
    virtual void CreateTcpSocket() = 0;                                                // +0x6c
    virtual bool CreateUdpSocket() = 0;                                                // +0x70
    virtual bool CreateIcmpSocket() = 0;                                               // +0x74
    virtual const char* GetSocketAddr() = 0;                                           // +0x78
    virtual std::uint16_t GetSocketPort() = 0;                                         // +0x7c
    virtual int SetBroadcast() = 0;                                                    // +0x80
    virtual int SendBroadcast(const char* data, int length, int port) = 0;             // +0x84

    // 0x83003c _ZN15GLXPlayerSocket11GetAcceptIPEv
    const char* GetAcceptIP() const { return acceptIp_.get(); }
    // 0x830044 _ZN15GLXPlayerSocket13GetAcceptPortEv
    std::int32_t GetAcceptPort() const { return acceptPort_; }
    // 0x83004c _ZN15GLXPlayerSocket13SetAcceptPortEi
    void SetAcceptPort(std::int32_t port) { acceptPort_ = port; }
    // 0x830054 _ZN15GLXPlayerSocket9SetSocketEi
    void SetSocket(std::int32_t handle) { socket_ = handle; }
    // 0x83005c _ZN15GLXPlayerSocket13GetSocketTypeEv
    std::int32_t GetSocketType() const { return socketType_; }
    // 0x830064 _ZN15GLXPlayerSocket13SetSocketTypeEi
    void SetSocketType(std::int32_t type) { socketType_ = type; }
    // 0x83006c _ZN15GLXPlayerSocket17GetSendPercentageEv: values above 100 read as 0.
    std::uint32_t GetSendPercentage() const;
    // 0x8302d8 _ZN15GLXPlayerSocket11SetAcceptIPEPc
    // Copies the address into a new owned string. The original leaks the previous one,
    // and this port releases it.
    void SetAcceptIP(const char* address);

    // 0x8305bc _ZN15GLXPlayerSocket16RemoveHttpHeaderEv: drops everything up to and
    // including the first CRLF CRLF, if that sequence is found after position 0.
    void RemoveHttpHeader();
    // 0x830448 _ZN15GLXPlayerSocket15ParseHttpHeaderEPc: position of the lower-cased name
    // inside the lower-cased header block, or npos as a 32-bit value.
    std::uint32_t ParseHttpHeader(const char* name) const;
    // 0x830cb0 _ZN15GLXPlayerSocket19CalculateTotalLengthEv: the Content-Length header
    // value, 0 when there is none, -1 when the header block is not complete.
    std::int32_t CalculateTotalLength() const;
    // 0x83067c _ZN15GLXPlayerSocket19ParseChunkedContentEv: replaces content_ with the
    // de-chunked body. Returns 1 on success and 0 on a malformed chunk.
    std::int32_t ParseChunkedContent();

    // Not in the original: test seams.
    void SetStateForTest(std::int32_t state) { state_ = state; }
    void SetSendPercentageForTest(std::uint32_t percent) { sendPercentage_ = percent; }
    void SetContentForTest(const std::string& text) { content_ = text; }
    const std::string& ContentForTest() const { return content_; }

    // Error path shared by the Run states: GetLastError, the close slot, state 7 (helper, not in the original).
    void FailAndClose();

    std::int32_t state_ = 0;                        // +0x04
    std::int32_t socket_ = -1;                      // +0x08
    hostent* hostEntry_ = nullptr;                  // +0x0c
    std::int32_t port_ = 0;                         // +0x10
    std::unique_ptr<char[]> host_;                  // +0x14
    GLXPlayerSocketObserver* observer_ = nullptr;   // +0x18
    char receiveBuffer_[0x800] = {};                // +0x1c
    std::int32_t receiveLength_ = 0;                // +0x81c
    std::int32_t socketType_ = 0;                   // +0x820
    std::unique_ptr<char[]> acceptIp_;              // +0x824
    std::int32_t acceptPort_ = 0;                   // +0x828
    std::string content_;                           // +0x82c (finish pointer +0x83c, start pointer +0x840)
    bool bufferUsed_ = false;                        // +0x844
    bool headerPending_ = false;                    // +0x845
    bool contentLengthKnown_ = false;               // +0x846
    std::int32_t expectedLength_ = 0;               // +0x848
    std::int32_t sentBytes_ = 0;                    // +0x84c
    std::uint32_t sendPercentage_ = 0;              // +0x850
    std::uint32_t sendStartTime_ = 0;               // +0x854
    std::uint32_t receiveStartTime_ = 0;            // +0x858
    std::int32_t nonBlockConnectState_ = 0;         // +0x85c
    std::int32_t gethostbynameState_ = 0;           // +0x860
    std::int32_t connectTimeStart_ = 0;             // +0x864
    std::int32_t gethostbynameTimeStart_ = 0;       // +0x868
};

// 0x831528 _ZN22GLXPlayerSocketFactory9GetSocketEPciP23GLXPlayerSocketObserver
// Builds a CAndroidSocket (0xcf4 bytes), as the original does.
class GLXPlayerSocketFactory {
public:
    static GLXPlayerSocket* GetSocket(const char* host, std::int32_t port,
                                      GLXPlayerSocketObserver* observer);
};
