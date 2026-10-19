// LCAndroidSocket: BSD-socket wrapper of the lobby-side socket in libDungeonHunter2.so
// (Android build). Same socket layer as CAndroidSocket, but a separate class with its own
// non-blocking connect state machine and a process-wide host cache (l_hostLC / l_countLC).
//
// It derives from LCXPlayerSocket (net-session-online/lcx_player_socket.hpp), not from
// GLXPlayerSocket: its constructor calls LCXPlayerSocket::LCXPlayerSocket (0x8a0314) and its vtable
// (_ZTV15LCAndroidSocket, 140 bytes) overrides the platform slots of that base. The base members
// (m_state, m_socket, m_server_addr, ...) are the shared fields; this class adds (object size 0xcf0):
//   +0x868 ready_bits_ (m_set, the 0x80-byte fd_set)
//   +0x8e8 host_thread_ (m_getHostByNameThreadId, pthread_t)
//   +0x8ec host_request_ (m_getHostByNameThreadParam, PROCESSPARAM, 0x404 bytes)
#pragma once

#include <cstdint>
#include <memory>
#include <string>
#include <thread>

#include "net-session-online/lcx_player_socket.hpp"
#include "net-transport/process_param.hpp"

struct hostent;

class LCAndroidSocket : public LCXPlayerSocket {
public:
    // LCXPlayerSocket::XSocketType (TCP and UDP values confirmed by the ARM listing).
    enum XSocketType : int { kTypeNone = 0, kTypeTcp = 1, kTypeUdp = 2 };

    static constexpr int kConnectTimeoutMs = 0x7530;   // 30000
    static constexpr int kLookupTimeoutMs = 0x270F;    // 9999

    // 0x8a0020 _ZN15LCAndroidSocketC1EPciP23LCXPlayerSocketObserver (C2 at 0x8a013c)
    LCAndroidSocket(const char* server_name, int server_port, LCXPlayerSocketObserver* observer);
    // 0x89ff54 _ZN15LCAndroidSocketD1Ev (D2 at 0x89ffc8)
    ~LCAndroidSocket() override;
    LCAndroidSocket(const LCAndroidSocket&) = delete;
    LCAndroidSocket& operator=(const LCAndroidSocket&) = delete;

    static void Startup();                              // 0x89feec _ZN15LCAndroidSocket7StartupEv
    static void Clearup();                              // 0x89fc78 _ZN15LCAndroidSocket7ClearupEv
    static hostent* GetHostIP(char* server_name); // 0x89f9a0
    static void TransToIp(char*& name);                 // 0x89fc1c

    void Init();                                        // 0x89e5b0 _ZN15LCAndroidSocket4InitEv

    // Platform slots, in vtable order. Each overrides the LCXPlayerSocket slot of the same name.
    bool GetLocalIP(char* szLocalIP) override;          // +0x08, 0x89fd84
    hostent* GetHostByName(char* server_name) override;  // +0x20, 0x89fb04
    void* GetHostName(char** name) override;            // +0x24, 0x89e998 (always returns nullptr)
    bool CreateSocket() override;                       // +0x28, 0x89ec70
    int GetLastError() override;                        // +0x2c, 0x89f890
    bool SetNonBlocking() override;                     // +0x30, 0x89f7c8
    bool Connect() override;                            // +0x34, 0x89f290 (true when connected)
    bool ConnectByName(char* server_name) override;  // +0x38, 0x89f4fc (true when connected)
    bool CloseSocket() override;                        // +0x3c, 0x89f004
    int Select(XSocketSelectFlag flag) override;        // +0x40, 0x89ef3c
    int Send(const char* data, int size) override;      // +0x44, 0x89ee4c
    int Recv(char* buffer, int size) override;          // +0x48, 0x89edfc
    bool IsReadyForRW() override;                       // +0x4c, 0x89e5b4
    LCXPlayerSocket* Accept() override;                 // +0x50, 0x8a0068 (accepted LCAndroidSocket, 0xcf0 bytes)
    int Bind(const char* ip, std::uint16_t port) override;  // +0x54, 0x89ece4 (port + retries)
    int SendTo(const char* buffer, int size, const char* ip, int port) override;  // +0x58, 0x89eb1c
    int RecvFrom(char* buffer, int size) override;      // +0x5c, 0x89ea00
    int RecvFromUnkownIP(char* buffer, int size, char** ip, int* port) override;  // +0x60, 0x89e880
    void Listen(int count) override;                    // +0x64, 0x89e734
    bool ConnectTo(const char* ip, int port) override;  // +0x68, 0x89f054 (true when connected)
    bool CreateTcpSocket() override;                    // +0x6c, 0x89ec40
    bool CreateUdpSocket() override;                    // +0x70, 0x89ec0c
    const char* GetSocketAddr() override;               // +0x74, 0x89e7e8
    std::uint16_t GetSocketPort() override;             // +0x78, 0x89e760 (host byte order)
    void SetBroadcast() override;                       // +0x7c, 0x89e6d0
    int SendBroadcast(const char* buffer, int size, int port) override;  // +0x80, 0x89e5dc

    // Helpers of the connect paths (not original functions).
    bool FinishConnectProgress(bool wait_timeout);      // state-1 path of Connect and ConnectByName
    void FailConnect();                                 // close, state 3, error

    std::uint32_t ready_bits_[32] = {};                 // +0x868 m_set (fd_set; 1024-bit bitmap)
    std::thread host_thread_;                           // +0x8e8 m_getHostByNameThreadId
    PROCESSPARAM host_request_;                         // +0x8ec m_getHostByNameThreadParam
};
