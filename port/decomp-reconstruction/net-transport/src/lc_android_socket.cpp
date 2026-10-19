#include "net-transport/lc_android_socket.hpp"

#include <chrono>
#include <cstring>
#include <new>

#ifdef _WIN32
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#include <winsock2.h>
#include <ws2tcpip.h>
using NativeHandle = SOCKET;
using SockLen = int;
constexpr int kInProgressError = WSAEWOULDBLOCK;
#else
#include <arpa/inet.h>
#include <fcntl.h>
#include <net/if.h>
#include <netdb.h>
#include <netinet/in.h>
#include <sys/ioctl.h>
#include <sys/select.h>
#include <sys/socket.h>
#include <unistd.h>
#include <cerrno>
#include <csignal>
using NativeHandle = int;
using SockLen = socklen_t;
constexpr int kInProgressError = EINPROGRESS;
#endif

namespace {

// The ready bitmap covers fds 0..1023 (the original's 0x80-byte fd_set).
constexpr int kFdBitmapBits = 1024;
// GetHostByName rejects names longer than this (LC_API_STRLEN > 1024).
constexpr std::size_t kHostNameLimit = 1024;
// Cache of resolved hosts (l_hostLC[4] / l_countLC in the original).
hostent* l_hostLC[4] = {nullptr, nullptr, nullptr, nullptr};
int l_countLC = 0;

NativeHandle ToNative(int fd) { return static_cast<NativeHandle>(fd); }

// XP-style millisecond clock truncated to 32 bits (LC_API_GET_TIME).
int NowMs() {
    auto ms = std::chrono::duration_cast<std::chrono::milliseconds>(
        std::chrono::steady_clock::now().time_since_epoch());
    return static_cast<int>(static_cast<std::uint32_t>(ms.count()));
}

// (LC_API_GET_TIME() - start) as unsigned 32-bit, the form the original compares against its timeouts.
// Unsigned arithmetic gives the same bits as the original's wrapping subtraction.
unsigned int ElapsedMs(int start) {
    return static_cast<unsigned int>(NowMs()) - static_cast<unsigned int>(start);
}

// Returns the handle as int, or -1 when socket() failed.
int OpenNative(int family, int type, int protocol) {
    NativeHandle h = ::socket(family, type, protocol);
#ifdef _WIN32
    return h == INVALID_SOCKET ? -1 : static_cast<int>(h);
#else
    return h >= 0 ? static_cast<int>(h) : -1;
#endif
}

void CloseNative(int fd) {
#ifdef _WIN32
    ::closesocket(ToNative(fd));
#else
    ::close(fd);
#endif
}

int LastSocketError() {
#ifdef _WIN32
    return WSAGetLastError();
#else
    return errno;
#endif
}

// O_NONBLOCK on or off (F_GETFL / F_SETFL, or ioctlsocket FIONBIO on Winsock).
bool SetBlockingMode(int fd, bool nonblocking) {
#ifdef _WIN32
    u_long mode = nonblocking ? 1u : 0u;
    return ::ioctlsocket(ToNative(fd), FIONBIO, &mode) == 0;
#else
    int flags = ::fcntl(fd, F_GETFL, 0);
    if (flags < 0) {
        return false;
    }
    flags = nonblocking ? (flags | O_NONBLOCK) : (flags & ~O_NONBLOCK);
    return ::fcntl(fd, F_SETFL, flags) >= 0;
#endif
}

// strdup-style copy with new[]; released with delete[].
char* NewCopy(const char* text) {
    std::size_t n = std::strlen(text);
    char* copy = new char[n + 1];
    std::memcpy(copy, text, n + 1);
    return copy;
}

// Copies at most size - 1 characters and always terminates (strlcpy-style, size from the caller).
void CopyBounded(char* dst, const char* src, std::size_t size) {
    std::size_t n = std::strlen(src);
    if (n >= size) {
        n = size - 1;
    }
    std::memcpy(dst, src, n);
    dst[n] = '\0';
}

// Copy of the first address of a resolved host, h_length raw bytes (new[]; released with delete[]).
char* NewAddressCopy(const hostent* host) {
    std::size_t length = static_cast<std::size_t>(host->h_length);
    char* copy = new char[length];
    std::memcpy(copy, host->h_addr_list[0], length);
    return copy;
}

// 0x89f8a0 threadGetHostByNameProcessLC (the binary's copy lives in core-platform, with its own
// cache; this one fills the cache that GetHostIP and GetHostByName read). The busy flag is set
// first, then cleared after any successful gethostbyname, whether or not the entry fits in the
// cache (the entry is added only while fewer than four exist). A failed lookup leaves the flag
// set, so GetHostByName starts no new lookup (as the original). The cache and flag are unguarded,
// as in the original; the flag store after thread start races with the worker's store there too.
// The first address is copied as h_length raw bytes, not as a C string (see NewAddressCopy). The
// binary has no null test of the first address before its copy, so none is made here either.
void ThreadGetHostByNameProcessLC(PROCESSPARAM* request) {
    *request->flagAddress = 1;
    hostent* found = ::gethostbyname(request->serverName);
    if (found == nullptr) {
        return;
    }
    if (l_countLC <= 3) {
        hostent* entry = new hostent{};
        entry->h_length = found->h_length;
        entry->h_name = NewCopy(request->serverName);
        entry->h_addr_list = new char*[1]{};
        entry->h_addr_list[0] = NewAddressCopy(found);
        l_hostLC[l_countLC] = entry;
        ++l_countLC;
    }
    *request->flagAddress = 0;
}

}  // namespace

// 0x89feec _ZN15LCAndroidSocket7StartupEv
// Verified against the ARM listing and the Hex-Rays body: LC_DEBUG_OUT (0x89c304) is dropped
// exactly (an empty stub in the binary). The four cache slots are cleared, slot 3 first and then
// 0, 1, 2 (the binary's store order), l_countLC is left alone, then SIGPIPE (13) is set to SIG_IGN
// with sigaction, after the slot stores as the binary does. Host-necessitated deviations, named:
// WSAStartup is added for _WIN32 builds (not in the pseudocode), and the sigaction fields the
// binary leaves uninitialised are zeroed here.
void LCAndroidSocket::Startup() {
    for (auto& slot : l_hostLC) {
        slot = nullptr;
    }
#ifdef _WIN32
    WSADATA data{};
    ::WSAStartup(MAKEWORD(2, 2), &data);
#else
    struct sigaction sa{};
    sa.sa_handler = SIG_IGN;
    ::sigaction(SIGPIPE, &sa, nullptr);
#endif
}

// 0x89fc78 _ZN15LCAndroidSocket7ClearupEv
// Verified against the Hex-Rays body: it walks l_countLC entries and frees each host name, the
// first address, the address list and the entry, then sets l_countLC to 0 (the binary's
// LC_API_FREE_0, 0x30e2b0, is a tail jump to operator delete(void*), which is what delete and
// delete[] of these new/new[] blocks do). The debug call is dropped exactly (LC_DEBUG_OUT, an
// empty stub). Reconstructed; deviations: (host-necessitated) null slots are skipped, where the
// original dereferences them and faults -- a null slot is reachable because Startup clears the slots
// without resetting l_countLC, so a later Clearup meets them; (platform) WSACleanup is added for _WIN32
// builds, not in the pseudocode.
void LCAndroidSocket::Clearup() {
    for (int i = 0; i < l_countLC; ++i) {
        hostent* entry = l_hostLC[i];
        if (entry == nullptr) {
            continue;
        }
        delete[] entry->h_name;
        if (entry->h_addr_list != nullptr) {
            delete[] entry->h_addr_list[0];
            delete[] entry->h_addr_list;
        }
        delete entry;
        l_hostLC[i] = nullptr;
    }
    l_countLC = 0;
#ifdef _WIN32
    ::WSACleanup();
#endif
}

// 0x89e5b0 _ZN15LCAndroidSocket4InitEv
// The original body is empty.
void LCAndroidSocket::Init() {}

// 0x89e5b4 _ZNK15LCAndroidSocket12IsReadyForRWEv
// Reconstructed; deviation (host-necessitated): fds outside the 1024-bit bitmap report false, where the
// original indexes the ready bitmap (m_set at +0x868) with no check.
bool LCAndroidSocket::IsReadyForRW() {
    if (socket_ < 0 || socket_ >= kFdBitmapBits) {
        return false;
    }
    return ((ready_bits_[socket_ / 32] >> (socket_ % 32)) & 1u) != 0;
}

// 0x89e5dc _ZN15LCAndroidSocket13SendBroadcastEPKcii
// LC_DEBUG_OUT (0x89c304) is a bare return in the binary, so its calls are omitted. Sends to
// 255.255.255.255 on the given port and returns the sendto() result.
int LCAndroidSocket::SendBroadcast(const char* buffer, int size, int port) {
    sockaddr_in to{};
    to.sin_family = AF_INET;
    to.sin_addr.s_addr = INADDR_BROADCAST;
    to.sin_port = htons(static_cast<std::uint16_t>(port));
    return static_cast<int>(
        ::sendto(ToNative(socket_), buffer, size, 0, reinterpret_cast<sockaddr*>(&to), sizeof(to)));
}

// 0x89e6d0 _ZN15LCAndroidSocket12SetBroadcastEv
// The "last error" log is an LC_DEBUG_OUT call (omitted). The setsockopt() result is ignored, as in
// the original.
void LCAndroidSocket::SetBroadcast() {
    int one = 1;
    ::setsockopt(ToNative(socket_), SOL_SOCKET, SO_BROADCAST, reinterpret_cast<const char*>(&one), sizeof(one));
}

// 0x89e734 _ZN15LCAndroidSocket6ListenEi
// The "Listen failed!" log is an LC_DEBUG_OUT call (omitted). The listen() result is ignored.
void LCAndroidSocket::Listen(int count) {
    (void)::listen(ToNative(socket_), count);
}

// 0x89e760 _ZN15LCAndroidSocket13GetSocketPortEv
// The getsockname() result is ignored, as in the original; a failed call yields port 0.
std::uint16_t LCAndroidSocket::GetSocketPort() {
    sockaddr_in addr{};
    SockLen len = sizeof(addr);
    ::getsockname(ToNative(socket_), reinterpret_cast<sockaddr*>(&addr), &len);
    return ntohs(addr.sin_port);
}

// 0x89e7e8 _ZN15LCAndroidSocket13GetSocketAddrEv
// Reconstructed; deviation (host-necessitated): a null first address (h_addr_list[0]) returns nullptr
// here, where the original dereferences it.
// First IPv4 address of this machine's host name, in inet_ntoa's static buffer (as the original).
const char* LCAndroidSocket::GetSocketAddr() {
    char name[256];
    std::memset(name, 0, sizeof(name));
    if (::gethostname(name, sizeof(name)) != 0) {
        return nullptr;
    }
    hostent* host = ::gethostbyname(name);
    if (host == nullptr || host->h_addr_list[0] == nullptr) {
        return nullptr;
    }
    in_addr addr{};
    std::memcpy(&addr, host->h_addr_list[0], sizeof(addr));
    return ::inet_ntoa(addr);
}

// 0x89e880 _ZN15LCAndroidSocket16RecvFromUnkownIPEPciPPcPi
// The error and debug logs are LC_DEBUG_OUT calls (omitted; the last-error call that feeds the
// error log only reads errno). On success *ip receives a new[] copy of the sender address (release
// with delete[]) and *port the sender port in host byte order. On n <= 0 neither is written.
int LCAndroidSocket::RecvFromUnkownIP(char* buffer, int size, char** ip, int* port) {
    sockaddr_in from{};
    from.sin_family = AF_INET;
    SockLen len = sizeof(from);
    int n = static_cast<int>(
        ::recvfrom(ToNative(socket_), buffer, size, 0, reinterpret_cast<sockaddr*>(&from), &len));
    if (n > 0) {
        *ip = NewCopy(::inet_ntoa(from.sin_addr));
        *port = ntohs(from.sin_port);
    }
    return n;
}

// 0x89e998 _ZN15LCAndroidSocket11GetHostNameEPPc
// Stores a new[] copy of the host name in *name. The original always returns nullptr.
void* LCAndroidSocket::GetHostName(char** name) {
    char host[256];
    std::memset(host, 0, sizeof(host));
    ::gethostname(host, 255);
    *name = NewCopy(host);
    return nullptr;
}

// 0x89ea00 _ZN15LCAndroidSocket8RecvFromEPci
// The sender is received into a local address. Its only use in the original is the LC_DEBUG_OUT
// call (omitted, with the new[]/delete[] copy of the sender address that feeds it), so it is not
// kept.
int LCAndroidSocket::RecvFrom(char* buffer, int size) {
    sockaddr_in from{};
    from.sin_family = AF_INET;
    SockLen len = sizeof(from);
    return static_cast<int>(
        ::recvfrom(ToNative(socket_), buffer, size, 0, reinterpret_cast<sockaddr*>(&from), &len));
}

// 0x89eb1c _ZN15LCAndroidSocket6SendToEPKciS1_i
// The debug log is an LC_DEBUG_OUT call (omitted). Returns 0 without sending when ip is null.
int LCAndroidSocket::SendTo(const char* buffer, int size, const char* ip, int port) {
    if (ip == nullptr) {
        return 0;
    }
    sockaddr_in to{};
    to.sin_family = AF_INET;
    to.sin_addr.s_addr = ::inet_addr(ip);
    to.sin_port = htons(static_cast<std::uint16_t>(port));
    return static_cast<int>(
        ::sendto(ToNative(socket_), buffer, size, 0, reinterpret_cast<sockaddr*>(&to), sizeof(to)));
}

// 0x89ec0c _ZN15LCAndroidSocket15CreateUdpSocketEv
// Opens an AF_INET SOCK_DGRAM IPPROTO_UDP socket. The type is set only on success.
bool LCAndroidSocket::CreateUdpSocket() {
    socket_ = OpenNative(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
    if (socket_ < 0) {
        return false;
    }
    socketType_ = kTypeUdp;
    return true;
}

// 0x89ec40 _ZN15LCAndroidSocket15CreateTcpSocketEv
// Opens an AF_INET SOCK_STREAM IPPROTO_TCP socket. The type is set only on success.
bool LCAndroidSocket::CreateTcpSocket() {
    socket_ = OpenNative(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    bool ok = socket_ >= 0;
    if (ok) {
        socketType_ = kTypeTcp;
    }
    return ok;
}

// 0x89ec70 _ZN15LCAndroidSocket12CreateSocketEv
// The debug logs are LC_DEBUG_OUT calls (omitted). Opens an AF_INET SOCK_STREAM socket with
// protocol 0; on failure the handle is -1 and the state is set to error.
bool LCAndroidSocket::CreateSocket() {
    socket_ = OpenNative(AF_INET, SOCK_STREAM, 0);
    if (socket_ < 0) {
        state_ = kStateError;
        return false;
    }
    return true;
}

// 0x89ece4 _ZN15LCAndroidSocket4BindEPct
// Reconstructed, bugs included: inet_addr(ip) has no effect in the original, so the socket binds
// INADDR_ANY whatever the address. SO_REUSEADDR is set and its result ignored. When the port is
// taken, the port is incremented until a bind succeeds. The original has no exit when no
// port binds, and that is kept: the loop does not terminate in that case. The return value is
// retries + port, as the pseudocode's v6 + v4.
int LCAndroidSocket::Bind(const char* ip, std::uint16_t port) {
    (void)ip;
    sockaddr_in addr{};
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = 0;
    int one = 1;
    ::setsockopt(ToNative(socket_), SOL_SOCKET, SO_REUSEADDR, reinterpret_cast<const char*>(&one), sizeof(one));
    addr.sin_port = htons(port);
    int retries = 0;
    if (::bind(ToNative(socket_), reinterpret_cast<sockaddr*>(&addr), sizeof(addr)) < 0) {
        std::uint16_t next = static_cast<std::uint16_t>(port + 1);
        do {
            addr.sin_port = htons(next);
            ++retries;
            next = static_cast<std::uint16_t>(next + 1);
        } while (::bind(ToNative(socket_), reinterpret_cast<sockaddr*>(&addr), sizeof(addr)) < 0);
    }
    return retries + port;
}

// 0x89edfc _ZN15LCAndroidSocket4RecvEPci
// The timing log is an LC_DEBUG_OUT call (omitted; LC_API_GET_TIME has no other effect). Returns
// recv()'s result (-1 on error).
int LCAndroidSocket::Recv(char* data, int size) {
    return static_cast<int>(::recv(ToNative(socket_), data, size, 0));
}

// 0x89ee4c _ZN15LCAndroidSocket4SendEPci
// The timing and echo log is an LC_DEBUG_OUT call (omitted). The original first copies the data
// into a 4 KiB stack buffer for that log, and overflows it when size exceeds 4100 bytes and the
// send is short; the copy has no other effect, so it is not reproduced. Returns send()'s result.
int LCAndroidSocket::Send(const char* data, int size) {
    return static_cast<int>(::send(ToNative(socket_), data, size, 0));
}

// 0x89ef3c _ZN15LCAndroidSocket6SelectEN15LCXPlayerSocket17XSocketSelectFlagE
// Reconstructed; deviation (host-necessitated): a socket with fd >= 1024 returns -1 here, where the
// original writes past the 0x80-byte set for such fds (an overwrite with no faithful reconstruction).
// The flag values are confirmed by the ARM listing: read = 0 (cmp flag, #0 selects
// the readfds call) and write = 1.
// The socket's bit is set in the ready bitmap and select() runs on a local
// fd_set holding only that socket. The bitmap is rewritten from the result, so afterwards
// IsReadyForRW reports whether the socket was ready (the original's fd_set is updated by
// select() the same way). A socket that is closed (fd < 0) returns -1, as the original does.
int LCAndroidSocket::Select(XSocketSelectFlag flag) {
    timeval tval{};
    if (socket_ < 0 || socket_ >= kFdBitmapBits) {
        return -1;
    }
    std::memset(ready_bits_, 0, sizeof(ready_bits_));
    ready_bits_[socket_ / 32] |= 1u << (socket_ % 32);

    fd_set set;
    FD_ZERO(&set);
    FD_SET(ToNative(socket_), &set);
    int result;
    if (flag == kSelectRead) {
        result = ::select(socket_ + 1, &set, nullptr, nullptr, &tval);
    } else if (flag == kSelectWrite) {
        result = ::select(socket_ + 1, nullptr, &set, nullptr, &tval);
    } else {
        return -1;
    }

    std::memset(ready_bits_, 0, sizeof(ready_bits_));
    if (FD_ISSET(ToNative(socket_), &set)) {
        ready_bits_[socket_ / 32] |= 1u << (socket_ % 32);
    }
    return result;
}

// 0x89f004 _ZN15LCAndroidSocket11CloseSocketEv
// The two debug logs are LC_DEBUG_OUT calls (omitted). Closes the handle when open and marks it
// closed. Always returns true.
bool LCAndroidSocket::CloseSocket() {
    if (socket_ >= 0) {
        CloseNative(socket_);
        socket_ = -1;
    }
    return true;
}

// Shared failure tail of the connect paths: close, state 3 (failed), state error.
void LCAndroidSocket::FailConnect() {
    CloseSocket();
    nonBlockConnectState_ = 3;
    state_ = kStateError;
}

// Progress of a non-blocking connect (state 1). Returns true when the connection completed
// (state 2). Otherwise it returns false, either still waiting or failed (and closed).
// wait_timeout is false for ConnectTo, which waits without a timeout.
bool LCAndroidSocket::FinishConnectProgress(bool wait_timeout) {
    int ready = Select(kSelectWrite);
    if (ready < 0) {
        FailConnect();
        return false;
    }
    if (ready != 0) {
        int error = 0;
        SockLen len = sizeof(error);
        if (::getsockopt(ToNative(socket_), SOL_SOCKET, SO_ERROR, reinterpret_cast<char*>(&error), &len) >= 0 &&
            error == 0) {
            if (SetBlockingMode(socket_, false)) {
                nonBlockConnectState_ = 2;
                return true;
            }
        }
        FailConnect();
        return false;
    }
    if (!wait_timeout) {
        return false;
    }
    if (ElapsedMs(connectStartTime_) <= static_cast<unsigned int>(kConnectTimeoutMs)) {
        return false;
    }
    FailConnect();
    return false;
}

// 0x89f054 _ZN15LCAndroidSocket9ConnectToEPci
// The failure log is an LC_DEBUG_OUT call (omitted). Starts a non-blocking connect to ip:port
// (state 1) and returns true only once it has completed, which is done by a later call. The
// "in progress" test is EINPROGRESS on POSIX (115) and WSAEWOULDBLOCK on Winsock.
bool LCAndroidSocket::ConnectTo(const char* ip, int port) {
    if (nonBlockConnectState_ != 0) {
        if (nonBlockConnectState_ != 1) {
            return false;
        }
        return FinishConnectProgress(false);
    }
    sockaddr_in addr{};
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = ::inet_addr(ip);
    addr.sin_port = htons(static_cast<std::uint16_t>(port));
    if (!SetNonBlocking()) {
        FailConnect();
        return false;
    }
    if (::connect(ToNative(socket_), reinterpret_cast<sockaddr*>(&addr), sizeof(addr)) >= 0 ||
        GetLastError() == kInProgressError) {
        nonBlockConnectState_ = 1;
        return false;
    }
    FailConnect();
    return false;
}

// 0x89f290 _ZN15LCAndroidSocket7ConnectEv
// Reconstructed; deviation (host-necessitated): a null server address (m_server_addr) returns false
// here, where the original dereferences it.
// The failure log is an LC_DEBUG_OUT call (omitted; an empty stub whose result the binary discards).
// Connects to the resolved server address and port. Waiting for the connect uses a 30 s timeout.
bool LCAndroidSocket::Connect() {
    if (nonBlockConnectState_ != 0) {
        if (nonBlockConnectState_ != 1) {
            return false;
        }
        return FinishConnectProgress(true);
    }
    hostent* server = static_cast<hostent*>(serverAddress_);
    if (server == nullptr) {
        return false;
    }
    sockaddr_in addr{};
    addr.sin_family = AF_INET;
    std::memcpy(&addr.sin_addr, server->h_addr_list[0], static_cast<std::size_t>(server->h_length));
    addr.sin_port = htons(static_cast<std::uint16_t>(serverPort_));
    if (!SetNonBlocking()) {
        FailConnect();
        return false;
    }
    if (::connect(ToNative(socket_), reinterpret_cast<sockaddr*>(&addr), sizeof(addr)) >= 0 ||
        GetLastError() == kInProgressError) {
        nonBlockConnectState_ = 1;
        connectStartTime_ = NowMs();
        return false;
    }
    FailConnect();
    return false;
}

// 0x89f4fc _ZN15LCAndroidSocket13ConnectByNameEPc
// Reconstructed; deviation (host-necessitated): a null first address (h_addr_list[0]) fails the connect
// here, where the original dereferences it. The debug logs are LC_DEBUG_OUT calls (omitted; empty stubs
// whose result the binary discards). Resolves server_name through GetHostByName,
// which returns null until the lookup finishes. The lookup is given 9999 ms. The connect is the
// same as Connect's. The port is the stored serverPort_ (ConnectByName takes only the name).
bool LCAndroidSocket::ConnectByName(char* server_name) {
    if (nonBlockConnectState_ != 0) {
        if (nonBlockConnectState_ != 1) {
            return false;
        }
        return FinishConnectProgress(true);
    }
    hostent* host = GetHostByName(server_name);
    serverAddress_ = host;
    if (host == nullptr) {
        if (ElapsedMs(gethostbynameStartTime_) <= static_cast<unsigned int>(kLookupTimeoutMs)) {
            return false;
        }
        FailConnect();
        return false;
    }
    if (host->h_addr_list[0] == nullptr) {
        FailConnect();
        return false;
    }
    sockaddr_in addr{};
    addr.sin_family = AF_INET;
    std::memcpy(&addr.sin_addr, host->h_addr_list[0], static_cast<std::size_t>(host->h_length));
    addr.sin_port = htons(static_cast<std::uint16_t>(serverPort_));
    if (!SetNonBlocking()) {
        FailConnect();
        return false;
    }
    if (::connect(ToNative(socket_), reinterpret_cast<sockaddr*>(&addr), sizeof(addr)) >= 0 ||
        GetLastError() == kInProgressError) {
        nonBlockConnectState_ = 1;
        connectStartTime_ = NowMs();
        return false;
    }
    FailConnect();
    return false;
}

// 0x89f7c8 _ZN15LCAndroidSocket14SetNonBlockingEv
// The error log is an LC_DEBUG_OUT call (omitted). On failure the socket is closed and the state is
// set to error (the connect state is left alone, as the original does). Winsock uses FIONBIO for
// the same effect as O_NONBLOCK.
bool LCAndroidSocket::SetNonBlocking() {
    if (SetBlockingMode(socket_, true)) {
        return true;
    }
    CloseSocket();
    state_ = kStateError;
    return false;
}

// 0x89f890 _ZN15LCAndroidSocket12GetLastErrorEv
// Returns errno, as the original's *_errno(). On Winsock it returns WSAGetLastError(), the
// socket-error value that the POSIX path reads from errno.
int LCAndroidSocket::GetLastError() {
    return LastSocketError();
}

// 0x89f9a0 _ZN15LCAndroidSocket9GetHostIPEPc
// Partial: the original copies the first address with LC_API_STRNEW (a C-string copy that stops at
// the first zero byte, so the cached address is truncated); this port copies h_length raw bytes,
// because the original then reads h_length bytes past that copy. Null cache slots and a null first
// address are skipped; the original dereferences them. The debug log is an LC_DEBUG_OUT call
// (omitted). A cache hit (same name) returns the cached entry. A miss is resolved with
// gethostbyname, returned as is, and cached while fewer than four entries exist.
hostent* LCAndroidSocket::GetHostIP(char* server_name) {
    for (int i = 0; i < l_countLC; ++i) {
        hostent* entry = l_hostLC[i];
        if (entry != nullptr && entry->h_name != nullptr && std::strcmp(server_name, entry->h_name) == 0) {
            return entry;
        }
    }
    hostent* result = ::gethostbyname(server_name);
    if (result != nullptr && l_countLC <= 3 && result->h_addr_list[0] != nullptr) {
        hostent* entry = new hostent{};
        entry->h_length = result->h_length;
        entry->h_name = NewCopy(server_name);
        entry->h_addr_list = new char*[1]{};
        entry->h_addr_list[0] = NewAddressCopy(result);
        l_hostLC[l_countLC] = entry;
        ++l_countLC;
    }
    return result;
}

// 0x89fb04 _ZN15LCAndroidSocket13GetHostByNameEPc
// Verified against the Hex-Rays body: the name check (null or longer than 1024), the cache hit by
// name (a null h_name is skipped, as the body's `v5->h_name && !strcmp`), and the worker start are
// as the original. The worker flag (m_gethostbynameState, +0x860) gates a start and is set to 1
// after the thread is created; a failed start returns null with the state unchanged. Partial:
// (1) the worker caches the first address as h_length raw bytes; the original copies it as a C
// string (LC_API_STRNEW of the address bytes), which stops at a zero octet, and TransToIp then
// reads four bytes past that copy. (2) The lookup runs on a std::thread (pthread_create in the
// original); the previous worker is joined before a new one is assigned, where the original
// overwrites the pthread id. The debug log is dropped exactly (an empty stub in the binary). The
// cache and the flag are unguarded, as in the original. The function is not static and reads this
// at +0x860, matching the listing's use of the object pointer.
hostent* LCAndroidSocket::GetHostByName(char* server_name) {
    if (server_name == nullptr || std::strlen(server_name) > kHostNameLimit) {
        return nullptr;
    }
    for (int i = 0; i < l_countLC; ++i) {
        hostent* entry = l_hostLC[i];
        if (entry != nullptr && entry->h_name != nullptr && std::strcmp(server_name, entry->h_name) == 0) {
            return entry;
        }
    }
    if (gethostbynameState_ == 0) {
        gethostbynameStartTime_ = NowMs();
        host_request_.flagAddress = &gethostbynameState_;
        CopyBounded(host_request_.serverName, server_name, sizeof(host_request_.serverName));
        try {
            if (host_thread_.joinable()) {
                host_thread_.join();
            }
            host_thread_ = std::thread(ThreadGetHostByNameProcessLC, &host_request_);
            gethostbynameState_ = 1;
        } catch (...) {
            // pthread_create failed in the original: the state is left unchanged.
        }
    }
    return nullptr;
}

// 0x89fc1c _ZN15LCAndroidSocket9TransToIpERPc
// Verified against the Hex-Rays body and the listing: GetHostIP(*name); when *name is set it is
// released (the binary's LC_API_FREE_0, 0x30e2b0, a tail jump to operator delete(void*)) and set
// to null; when the host is non-null, *name is inet_ntoa of the four bytes at host->h_addr_list[0]
// and points into inet_ntoa's static buffer, so the caller must not free it. The listing tests the
// host only, not the first address, so neither does this. Partial: (1) the release form is
// delete[] here, because this port's name strings are new[] copies (NewCopy); the binary's scalar
// operator delete is the same release for a char array. (2) The first address is read as four raw
// bytes, as this port's cache holds it (see GetHostIP and GetHostByName), where the original's
// cache holds a C-string copy, so the bytes differ when an octet is zero. The debug log is dropped
// exactly (an empty stub in the binary).
void LCAndroidSocket::TransToIp(char*& name) {
    hostent* host = GetHostIP(name);
    if (name != nullptr) {
        delete[] name;
        name = nullptr;
    }
    if (host != nullptr) {
        in_addr addr{};
        std::memcpy(&addr, host->h_addr_list[0], sizeof(addr));
        name = ::inet_ntoa(addr);
    }
}

// 0x89fd84 _ZN15LCAndroidSocket10GetLocalIPEPc
// Verified against the Hex-Rays body and the listing: the debug call is dropped exactly
// (LC_DEBUG_OUT, an empty stub). The POSIX path reproduces the binary's stub result. socket
// (AF_INET, SOCK_DGRAM, 0) then ioctl(SIOCGIFCONF) with ifc_len 4000 and ifc_buf on the 4000-byte
// stack buffer; a failing socket() or ioctl returns 0 and, as in the binary, does not close the
// socket. LC_API_STRCHR (0x89c2f8) is a single `BX LR` (disassembly confirmed), so it returns its
// first argument and is never null: the original's colon cut clears the first byte of ifr_name for
// every AF_INET record. SIOCGIFFLAGS then runs with an empty name and fails (ENODEV) and leaves the
// record unchanged, so the halfword the original tests next (record+16, still sa_family = AF_INET)
// has bit 0 clear and szLocalIP is never written. The function returns 1 whenever socket() and
// SIOCGIFCONF succeed. Partial: (1) the walk advances by sizeof(ifreq), the 32-byte 32-bit ARM
// stride, not the host's kernel stride (40 bytes on this 64-bit host), so the record bounds are
// only exact for the target ABI. (2) The non-loopback copy is dead code in the binary and would
// run on _WIN32; Winsock has no SIOCGIFCONF, so the _WIN32 path uses gethostname and
// gethostbyname (platform substitution) and writes the last non-loopback address, which the
// binary never does. The port reads the inet_ntoa text before the AF_INET test (the listing calls
// inet_ntoa first); the result is the same text.
bool LCAndroidSocket::GetLocalIP(char* szLocalIP) {
#ifdef _WIN32
    char name[256];
    std::memset(name, 0, sizeof(name));
    if (::gethostname(name, sizeof(name)) != 0) {
        return false;
    }
    hostent* host = ::gethostbyname(name);
    if (host == nullptr) {
        return false;
    }
    for (char** item = host->h_addr_list; item != nullptr && *item != nullptr; ++item) {
        in_addr addr{};
        std::memcpy(&addr, *item, sizeof(addr));
        const char* ip = ::inet_ntoa(addr);
        if (std::strcmp(ip, "127.0.0.1") != 0) {
            std::strcpy(szLocalIP, ip);
        }
    }
    return true;
#else
    int fd = OpenNative(AF_INET, SOCK_DGRAM, 0);
    if (fd == -1) {
        return false;
    }
    char buffer[4000];
    ifconf ifc{};
    ifc.ifc_len = sizeof(buffer);
    ifc.ifc_buf = buffer;
    if (::ioctl(fd, SIOCGIFCONF, &ifc) < 0) {
        // The original returns here without closing fd (see the comment above).
        return false;
    }
    char* item = buffer;
    while (item < buffer + ifc.ifc_len) {
        ifreq* request = reinterpret_cast<ifreq*>(item);
        item += sizeof(ifreq);
        const char* ip = ::inet_ntoa(reinterpret_cast<sockaddr_in*>(&request->ifr_addr)->sin_addr);
        if (request->ifr_addr.sa_family == AF_INET) {
            // LC_API_STRCHR returns its first argument, so the original's cut clears the first byte.
            request->ifr_name[0] = '\0';
            ::ioctl(fd, SIOCGIFFLAGS, request);
            // The original tests the halfword at record+16. The failed ioctl leaves it at AF_INET,
            // so bit 0 is clear and nothing is copied.
            if ((request->ifr_addr.sa_family & 1) != 0 && std::strcmp(ip, "127.0.0.1") != 0) {
                std::strcpy(szLocalIP, ip);
            }
        }
    }
    CloseNative(fd);
    return true;
#endif
}

// 0x8a0068 _ZN15LCAndroidSocket6AcceptEv
// Returns an LCXPlayerSocket* to a new 0xcf0-byte LCAndroidSocket, as the original. sin_family is
// set to AF_INET and accept() runs on m_socket (+0x08). The object is built with
// LCAndroidSocket(nullptr, 0, nullptr) (which runs Startup again), then the base setters SetSocket,
// SetAcceptIP, SetAcceptPort (port byte-swapped by hand in the original; ntohs here) and
// SetSocketType(1) store the accept state. Partial: the rest of the address is zeroed here, where
// the original leaves it uninitialised when accept fails.
LCXPlayerSocket* LCAndroidSocket::Accept() {
    sockaddr_in addr{};
    addr.sin_family = AF_INET;
    SockLen len = sizeof(addr);
    int handle = static_cast<int>(::accept(ToNative(socket_), reinterpret_cast<sockaddr*>(&addr), &len));
    const char* ip = ::inet_ntoa(addr.sin_addr);
    std::uint16_t port = ntohs(addr.sin_port);
    auto* accepted = new LCAndroidSocket(nullptr, 0, nullptr);
    accepted->SetSocket(handle);
    accepted->SetAcceptIP(ip);
    accepted->SetAcceptPort(port);
    accepted->SetSocketType(kTypeTcp);
    return accepted;
}

// 0x8a0020 _ZN15LCAndroidSocketC1EPciP23LCXPlayerSocketObserver
// 0x8a013c _ZN15LCAndroidSocketC2EPciP23LCXPlayerSocketObserver has the same ARM listing (ledgered on
// its own row). Verified against the Hex-Rays body: the LCXPlayerSocket base constructor (0x8a03bc,
// the C2 alias of 0x8a0314, reconstructed in net-session-online) runs on this, the vptr is set
// (off_993DE0, implicit in C++), the debug call is dropped exactly (LC_DEBUG_OUT, an empty stub in
// core-platform), and Startup (0x89feec) runs last. Host-necessitated deviation: the original never
// writes the base state word (+0x04) and keeps the allocator's bytes; this port's base member
// initialiser starts it at kStateNone, so a constructed object reads the same zero the allocator
// gives both versions, and the store itself is the deviation.
LCAndroidSocket::LCAndroidSocket(const char* server_name, int server_port, LCXPlayerSocketObserver* observer)
    : LCXPlayerSocket(server_name, server_port, observer) {
    Startup();
}

// 0x89ff54 _ZN15LCAndroidSocketD1Ev
// 0x89ffc8 _ZN15LCAndroidSocketD2Ev has the same ARM listing (ledgered on its own row).
// Reconstructed. Deviation (host-necessitated, the policy's std::thread clause). The original: if the
// lookup state (+0x85c, gethostbynameState_) is nonzero, pthread_join the lookup thread; then CloseSocket
// (non-virtual); then the LCXPlayerSocket base destructor (_ZN15LCXPlayerSocketD2Ev, 0x8a051c; D1
// 0x8a0464 has the same body). The vptr reset is implicit.
// A joinable std::thread must be joined or detached before it is destroyed. The port joins
// while the state is nonzero, as the original does, and detaches an idle worker when the state is zero,
// where the original leaves it unjoined. Nothing waits for an idle worker in either version.
// A busy state with no joinable thread has nothing to join (the original would pthread_join an unset id).
// Lifetime hazard, shared with the original: LCXPlayerSocket::Run's lookup-timeout path sets the state
// to 0 while the worker may still be inside gethostbyname. The detached worker then writes *flagAddress
// (gethostbynameState_) and reads host_request_, both inside this object, and may run after it is freed.
LCAndroidSocket::~LCAndroidSocket() {
    if (host_thread_.joinable()) {
        if (gethostbynameState_ != 0) {
            host_thread_.join();
        } else {
            host_thread_.detach();
        }
    }
    LCAndroidSocket::CloseSocket();
}
