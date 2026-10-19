// Platform layer for the socket wrappers: POSIX sockets, or Winsock under _WIN32.
// Only the calls the wrappers need are here: close, last error, and the error
// codes the original compares against (EWOULDBLOCK, EISCONN, EINPROGRESS).
#pragma once

#include <cstdio>
#include <cstdlib>

#ifdef _WIN32
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#include <winsock2.h>
#include <ws2tcpip.h>
#else
#include <arpa/inet.h>
#include <fcntl.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <sys/select.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <unistd.h>
#include <cerrno>
#endif

namespace net_platform {

#ifdef DH2_HOST_RUNNER
// Host runner only (not in the original): DH2_NET_TRACE=<file> appends the network trace of this process to <file>.<pid>.
// The game's own log (stdout and stderr share one file) loses lines, so the trace has a file of its own.
inline std::FILE* TraceFile() {
    static std::FILE* file = [] {
        const char* base = std::getenv("DH2_NET_TRACE");
        if (base == nullptr) return static_cast<std::FILE*>(nullptr);
        char path[512];
#ifdef _WIN32
        const unsigned long pid = static_cast<unsigned long>(::GetCurrentProcessId());
#else
        const unsigned long pid = static_cast<unsigned long>(::getpid());
#endif
        std::snprintf(path, sizeof path, "%s.%lu", base, pid);
        return std::fopen(path, "a");
    }();
    return file;
}
#define DH2_NET_LOG(...)                                             do {                                                                 if (std::FILE* netLogFile = net_platform::TraceFile()) {             std::fprintf(netLogFile, __VA_ARGS__);                           std::fflush(netLogFile);                                     }                                                            } while (0)
#endif

#ifdef _WIN32
using NativeSocket = SOCKET;
constexpr NativeSocket kInvalidSocket = INVALID_SOCKET;
constexpr int kErrWouldBlock = WSAEWOULDBLOCK;
constexpr int kErrIsConnected = WSAEISCONN;
constexpr int kErrInProgress = WSAEINPROGRESS;
inline int CloseSocket(NativeSocket s) { return closesocket(s); }
inline int LastError() { return WSAGetLastError(); }
// Equivalent of fcntl(F_SETFL, flags | O_NONBLOCK) on the handle.
inline int SetNonBlocking(NativeSocket s) { u_long mode = 1; return ioctlsocket(s, FIONBIO, &mode); }
// Winsock must be started once before the first socket (not in the original: Android has no such call). Called from the CSocket constructor.
inline void EnsureStarted() {
    static const bool started = [] {
        WSADATA data{};
        return ::WSAStartup(MAKEWORD(2, 2), &data) == 0;
    }();
    (void)started;
}
#else
using NativeSocket = int;
constexpr NativeSocket kInvalidSocket = -1;
constexpr int kErrWouldBlock = EWOULDBLOCK;
constexpr int kErrIsConnected = EISCONN;
constexpr int kErrInProgress = EINPROGRESS;
inline int CloseSocket(NativeSocket s) { return ::close(s); }
inline int LastError() { return errno; }
inline int SetNonBlocking(NativeSocket s) {
    int flags = ::fcntl(s, F_GETFL, 0);
    return ::fcntl(s, F_SETFL, flags | O_NONBLOCK);
}
inline void EnsureStarted() {}
#endif

}  // namespace net_platform
