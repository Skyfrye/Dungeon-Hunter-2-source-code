// Test doubles for the abstract socket bases. GLXPlayerSocket and LCXPlayerSocket have pure platform slots
// (their vtable entries are null in the binary; CAndroidSocket and LCAndroidSocket implement them), so a test
// that needs a socket object derives from one of these stubs. Every slot reports failure or does nothing.
#pragma once

#include <cstdint>

#include "net-session-online/glx_player_socket.hpp"
#include "net-session-online/lcx_player_socket.hpp"

class StubGLXSocket : public GLXPlayerSocket {
public:
    StubGLXSocket(const char* host = nullptr, std::int32_t port = 0,
                  GLXPlayerSocketObserver* observer = nullptr)
        : GLXPlayerSocket(host, port, observer) {}

    int GetLocalIP(char*) override { return 0; }
    hostent* GetHostByName(char*) override { return nullptr; }
    void GetHostName(char**) override {}
    bool CreateSocket() override { return false; }
    int GetLastError() override { return 0; }
    bool SetNonBlocking() override { return false; }
    int Connect() override { return 0; }
    int ConnectByName(char*, std::uint16_t) override { return 0; }
    bool CloseSocket() override { return true; }
    int Select(XSocketSelectFlag) override { return -1; }
    int Send(const char*, int) override { return -1; }
    int Recv(char*, int) override { return -1; }
    bool IsReadyForRW() override { return false; }
    GLXPlayerSocket* Accept() override { return nullptr; }
    int Bind(const char*, std::uint16_t) override { return 0; }
    int SendTo(const char*, int, const char*, int) override { return -1; }
    int RecvFrom(char*, int) override { return -1; }
    int RecvFromUnkownIP(char*, int, char**, int*) override { return -1; }
    int Listen(int) override { return -1; }
    int ConnectTo(const char*, int) override { return 0; }
    void CreateTcpSocket() override {}
    bool CreateUdpSocket() override { return false; }
    bool CreateIcmpSocket() override { return false; }
    const char* GetSocketAddr() override { return nullptr; }
    std::uint16_t GetSocketPort() override { return 0; }
    int SetBroadcast() override { return -1; }
    int SendBroadcast(const char*, int, int) override { return -1; }
};

class StubLCXSocket : public LCXPlayerSocket {
public:
    StubLCXSocket(const char* serverName = nullptr, std::int32_t port = 0,
                  LCXPlayerSocketObserver* observer = nullptr)
        : LCXPlayerSocket(serverName, port, observer) {}

    bool GetLocalIP(char*) override { return false; }
    hostent* GetHostByName(char*) override { return nullptr; }
    void* GetHostName(char**) override { return nullptr; }
    bool CreateSocket() override { return false; }
    int GetLastError() override { return 0; }
    bool SetNonBlocking() override { return false; }
    bool Connect() override { return false; }
    bool ConnectByName(char*) override { return false; }
    bool CloseSocket() override { return true; }
    int Select(XSocketSelectFlag) override { return -1; }
    int Send(const char*, int) override { return -1; }
    int Recv(char*, int) override { return -1; }
    bool IsReadyForRW() override { return false; }
    LCXPlayerSocket* Accept() override { return nullptr; }
    int Bind(const char*, std::uint16_t) override { return 0; }
    int SendTo(const char*, int, const char*, int) override { return -1; }
    int RecvFrom(char*, int) override { return -1; }
    int RecvFromUnkownIP(char*, int, char**, int*) override { return -1; }
    void Listen(int) override {}
    bool ConnectTo(const char*, int) override { return false; }
    bool CreateTcpSocket() override { return false; }
    bool CreateUdpSocket() override { return false; }
    const char* GetSocketAddr() override { return nullptr; }
    std::uint16_t GetSocketPort() override { return 0; }
    void SetBroadcast() override {}
    int SendBroadcast(const char*, int, int) override { return -1; }
};
