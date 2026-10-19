// CAndroidSocket: BSD-socket wrapper from libDungeonHunter2.so (Android build). It derives from
// GLXPlayerSocket (net-session-online/glx_player_socket.hpp) and implements the platform slots
// that base leaves pure (vtable _ZTV14CAndroidSocket, tools/decomp_vtable.py CAndroidSocket). The
// Winsock path (under _WIN32) and the POSIX path share one implementation through small helpers
// in the .cpp.
//
// Layout (32-bit offsets of the original). The members of GLXPlayerSocket (+0x04..+0x868) are the
// base's: state_ (+0x04, 7 = error), socket_ (+0x08, -1 when closed), hostEntry_ (+0x0c, the hostent
// that ConnectByName resolves), port_ (+0x10, host byte order), socketType_ (+0x820, 1 TCP,
// 2 UDP/ICMP), acceptIp_ and acceptPort_ (+0x824, +0x828), nonBlockConnectState_ (+0x85c,
// 0 idle, 1 in progress, 2 done, 3 failed), gethostbynameState_ (+0x860, 1 = lookup busy, disables
// the host cache), connectTimeStart_ (+0x864) and gethostbynameTimeStart_ (+0x868).
// This class adds (object size 0xcf4):
//   +0x86c ready_bits_ (m_set, the 0x80-byte fd_set)
//   +0x8ec worker_thread_ (m_getHostByNameThreadId, pthread_t; joined by the destructor when
//          gethostbynameState_ is nonzero; nothing in the exported code starts it)
//   +0x8f0 host_request_ (m_getHostByNameThreadParam, PROCESSPARAM, 0x404 bytes)
// Clock is steady_clock truncated to int ms, like XP_API_GET_TIME. Timeouts: connect 30001 ms,
// lookup 9999 ms.
#pragma once

#include <cstddef>
#include <cstdint>
#include <string>
#include <thread>

#include "net-session-online/glx_player_socket.hpp"
#include "net-transport/process_param.hpp"

struct hostent;

class CAndroidSocket : public GLXPlayerSocket {
public:
    // State stored in nonBlockConnectState_ (+0x85c).
    enum ConnectState : int {
        kConnectIdle = 0,
        kConnectInProgress = 1,
        kConnectDone = 2,
        kConnectFailed = 3,
    };

    static constexpr int kStatusError = 7;          // state_ value after a failure
    static constexpr int kConnectTimeoutMs = 30000; // 0x7530; the wait continues while elapsed <= this
    static constexpr int kLookupTimeoutMs = 9999;

    // 0x84232c / 0x842430 CAndroidSocket(char*, int, GLXPlayerSocketObserver*)
    CAndroidSocket(const char* host, int port, GLXPlayerSocketObserver* observer);
    // 0x842260 / 0x8422d4 ~CAndroidSocket()
    ~CAndroidSocket() override;
    CAndroidSocket(const CAndroidSocket&) = delete;
    CAndroidSocket& operator=(const CAndroidSocket&) = delete;

    static int Startup();                           // 0x842208 _ZN14CAndroidSocket7StartupEv (sigaction result)
    static void Clearup();                          // 0x84210c _ZN14CAndroidSocket7ClearupEv
    static hostent* GetHostIP(char* name);    // 0x841e4c (static: r0 is the name)

    void Init();                                    // 0x840880 _ZN14CAndroidSocket4InitEv

    // Platform slots, in vtable order. Each overrides the GLXPlayerSocket slot of the same name.
    int GetLocalIP(char* out) override;             // +0x08, 0x841fbc, 1 on success
    hostent* GetHostByName(char* name) override;  // +0x20, 0x841ca8
    void GetHostName(char** out) override;          // +0x24, 0x840c60
    bool CreateSocket() override;                   // +0x28, 0x840f68
    int GetLastError() override;                    // +0x2c, 0x841b98
    bool SetNonBlocking() override;                 // +0x30, 0x841ad0
    int Connect() override;                         // +0x34, 0x84152c, 1 when done
    int ConnectByName(char* name, std::uint16_t port) override;  // +0x38, 0x841790, 1 when done
    bool CloseSocket() override;                    // +0x3c, 0x8412b4
    int Select(XSocketSelectFlag flag) override;    // +0x40, 0x8411e8
    int Send(const char* data, int length) override;  // +0x44, 0x8410f8
    int Recv(char* buffer, int length) override;    // +0x48, 0x8410d8
    bool IsReadyForRW() override;                   // +0x4c, 0x840884
    GLXPlayerSocket* Accept() override;             // +0x50, 0x842360 (accepted CAndroidSocket, 0xcf4 bytes)
    int Bind(const char* host, std::uint16_t port) override;  // +0x54, 0x840fc8, returns port + retries
    int SendTo(const char* data, int length, const char* host, int port) override;  // +0x58, 0x840de0
    int RecvFrom(char* buffer, int length) override;  // +0x5c, 0x840cc8
    int RecvFromUnkownIP(char* buffer, int length, char** ip_out, int* port_out) override;  // +0x60, 0x840b4c
    int Listen(int backlog) override;               // +0x64, 0x840a04
    int ConnectTo(const char* host, int port) override;  // +0x68, 0x8412f0, 1 when done
    void CreateTcpSocket() override;                // +0x6c, 0x840f38
    bool CreateUdpSocket() override;                // +0x70, 0x840f04
    bool CreateIcmpSocket() override;               // +0x74, 0x840ed0
    const char* GetSocketAddr() override;           // +0x78, 0x840ab4
    std::uint16_t GetSocketPort() override;         // +0x7c, 0x840a30 (host byte order)
    int SetBroadcast() override;                    // +0x80, 0x8409a0, setsockopt result
    int SendBroadcast(const char* data, int length, int port) override;  // +0x84, 0x8408ac

    std::uint32_t ready_bits_[32] = {};             // +0x86c fd bitmap (fd_set in the original)
    std::thread worker_thread_;                     // +0x8ec pthread_t
    PROCESSPARAM host_request_;                     // +0x8f0

    int FinishConnect();                            // state-1 path shared by Connect/ConnectByName (helper)
};
