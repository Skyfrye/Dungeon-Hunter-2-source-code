#include "net-transport/android_socket.hpp"

#include <algorithm>
#include <chrono>
#include <csignal>
#include <cstring>
#include <memory>
#include <string>

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
using NativeHandle = int;
using SockLen = socklen_t;
constexpr int kInProgressError = EINPROGRESS;
#endif

namespace {

// Ready-bit bitmap covers fds 0..1023 (the original's 0x80-byte fd_set). Handles
// outside that range are rejected instead of writing past the bitmap.
constexpr int kFdBitmapBits = 1024;
constexpr std::size_t kHostCacheSize = 4;     // l_host[4] in the original
constexpr std::size_t kHostNameMax = 0x400;   // GetHostByName length limit

struct HostCacheEntry {
    std::string name;
    in_addr addr{};
    char* addr_list[2] = {nullptr, nullptr};
    hostent view{};

    // The original entry is 20 bytes of zeroed memory with name, length and address list set.
    // h_aliases and h_addrtype (+4, +8) stay zero there, so they stay zero here.
    void Fill() {
        view.h_name = name.data();
        view.h_aliases = nullptr;
        view.h_addrtype = 0;
        view.h_length = static_cast<decltype(view.h_length)>(sizeof(addr));
        addr_list[0] = reinterpret_cast<char*>(&addr);
        addr_list[1] = nullptr;
        view.h_addr_list = addr_list;
    }
};

// l_host / l_count: process-wide cache of resolved hosts.
std::unique_ptr<HostCacheEntry> g_host_cache[kHostCacheSize];
int g_host_count = 0;

void ClearHostCache() {
    for (auto& entry : g_host_cache) {
        entry.reset();
    }
    g_host_count = 0;
}

// Copies the first address of a system hostent into the cache under the requested name
// (the original stores its argument with STRNEW, not the canonical h_name).
HostCacheEntry* StoreHostCopy(const char* name, const hostent* src) {
    auto entry = std::make_unique<HostCacheEntry>();
    entry->name = name;
    if (src->h_addr_list[0] != nullptr) {
        std::memcpy(&entry->addr, src->h_addr_list[0],
                    std::min<std::size_t>(sizeof(entry->addr), static_cast<std::size_t>(src->h_length)));
    }
    entry->Fill();
    HostCacheEntry* raw = entry.get();
    g_host_cache[g_host_count] = std::move(entry);
    ++g_host_count;
    return raw;
}

// XP_API_GET_TIME: millisecond clock truncated to the original's 32-bit int.
int NowMs() {
    auto ms = std::chrono::duration_cast<std::chrono::milliseconds>(
        std::chrono::steady_clock::now().time_since_epoch());
    return static_cast<int>(static_cast<std::uint32_t>(ms.count()));
}

NativeHandle ToNative(int fd) { return static_cast<NativeHandle>(fd); }

bool IsValidNative(NativeHandle h) {
#ifdef _WIN32
    return h != INVALID_SOCKET;
#else
    return h >= 0;
#endif
}

// Returns the handle as int, or -1 when socket() failed.
int OpenSocket(int family, int type, int protocol) {
    NativeHandle h = ::socket(family, type, protocol);
    return IsValidNative(h) ? static_cast<int>(h) : -1;
}

int CloseNative(int fd) {
#ifdef _WIN32
    return ::closesocket(ToNative(fd));
#else
    return ::close(fd);
#endif
}

int LastSocketError() {
#ifdef _WIN32
    return WSAGetLastError();
#else
    return errno;
#endif
}

// F_GETFL / F_SETFL with O_NONBLOCK (or ioctlsocket FIONBIO on Winsock).
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

// getsockopt(SOL_SOCKET, SO_ERROR). Returns false when the call itself failed.
bool ReadSocketError(int fd, int& error) {
    int value = 0;
    SockLen len = sizeof(value);
    if (::getsockopt(ToNative(fd), SOL_SOCKET, SO_ERROR, reinterpret_cast<char*>(&value), &len) < 0) {
        return false;
    }
    error = value;
    return true;
}

sockaddr_in MakeInet(std::uint32_t addr_network, int port_host) {
    sockaddr_in addr{};
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = addr_network;
    addr.sin_port = htons(static_cast<std::uint16_t>(port_host));
    return addr;
}

}  // namespace

// 0x842208 _ZN14CAndroidSocket7StartupEv
// The original stores 0 into the four cache slots l_host[0..3] (dword_A339F4, F8 and FC are
// l_host[1..3]) and leaves l_count alone. The slots are reset here; that frees the entries the
// original would leak. SIGPIPE is then set to SIG_IGN through sigaction (sigaction_0(13, ...)),
// and that result is returned.
// Reconstructed. Deviation (host-necessitated): sa_flags and sa_mask are zero here (the original leaves
// them uninitialised, which has no defined value). On _WIN32 the WSAStartup call replaces sigaction and
// its result is returned.
int CAndroidSocket::Startup() {
    for (auto& entry : g_host_cache) {
        entry.reset();
    }
#ifdef _WIN32
    WSADATA data{};
    return ::WSAStartup(MAKEWORD(2, 2), &data);
#else
    struct sigaction action {};
    action.sa_handler = SIG_IGN;
    return ::sigaction(SIGPIPE, &action, nullptr);
#endif
}

// 0x84210c _ZN14CAndroidSocket7ClearupEv
// Reconstructed. Deviation (platform): the Winsock cleanup is added for _WIN32 builds.
void CAndroidSocket::Clearup() {
    ClearHostCache();
#ifdef _WIN32
    ::WSACleanup();
#endif
}

// 0x84232c / 0x842430 CAndroidSocket(char*, int, GLXPlayerSocketObserver*)
// Calls the GLXPlayerSocket base constructor (0x8302f0: it copies the host string and keeps the
// port and the observer) and then sets the CAndroidSocket vtable, which C++ does implicitly.
CAndroidSocket::CAndroidSocket(const char* host, int port, GLXPlayerSocketObserver* observer)
    : GLXPlayerSocket(host, port, observer) {}

// 0x842260 / 0x8422d4 ~CAndroidSocket()
// Joins the lookup thread (pthread handle at +0x8ec) when the lookup state (+0x860) is nonzero,
// calls CloseSocket directly (not through the vtable), and then runs the GLXPlayerSocket base
// destructor (0x8301e4: the accept address, host name and content string are released by the
// base's members). A std::thread must not be destroyed joinable, so the join is also guarded by
// joinable(); nothing in the exported code starts the thread.
CAndroidSocket::~CAndroidSocket() {
    if (gethostbynameState_ != 0 && worker_thread_.joinable()) {
        worker_thread_.join();
    }
    CAndroidSocket::CloseSocket();
}

// 0x840880 _ZN14CAndroidSocket4InitEv
void CAndroidSocket::Init() {}

// 0x840884 _ZN14CAndroidSocket12IsReadyForRWEv
// Guard added: fds outside the bitmap report false instead of reading past it.
bool CAndroidSocket::IsReadyForRW() {
    if (socket_ < 0 || socket_ >= kFdBitmapBits) {
        return false;
    }
    return (ready_bits_[socket_ / 32] >> (socket_ % 32)) & 1u;
}

// 0x8408ac _ZN14CAndroidSocket13SendBroadcastEPKcii
// Verified against Hex-Rays: the broadcast sockaddr and sendto(...) with its result returned. Only the
// XP_DEBUG_OUT traces are dropped.
int CAndroidSocket::SendBroadcast(const char* data, int length, int port) {
    sockaddr_in addr = MakeInet(INADDR_BROADCAST, port);
    return static_cast<int>(
        ::sendto(ToNative(socket_), data, length, 0, reinterpret_cast<sockaddr*>(&addr), sizeof(addr)));
}

// 0x8409a0 _ZN14CAndroidSocket12SetBroadcastEv
// Partial: XP_DEBUG_OUT on failure dropped. Returns the setsockopt() result.
int CAndroidSocket::SetBroadcast() {
    int one = 1;
    return ::setsockopt(ToNative(socket_), SOL_SOCKET, SO_BROADCAST, reinterpret_cast<const char*>(&one), sizeof(one));
}

// 0x840a04 _ZN14CAndroidSocket6ListenEi
// Partial: "Listen failed!" log dropped. The original returns the log call's result on
// failure, which is not recovered; the listen() result (-1) is returned instead.
int CAndroidSocket::Listen(int backlog) {
    return ::listen(ToNative(socket_), backlog);
}

// 0x840a30 _ZN14CAndroidSocket13GetSocketPortEv
// Hex-Rays returns int, built from sa_data[0..1] in network order, which is ntohs(sin_port).
// The port fits in 16 bits, so std::uint16_t is used.
std::uint16_t CAndroidSocket::GetSocketPort() {
    sockaddr_in addr{};
    SockLen len = sizeof(addr);
    ::getsockname(ToNative(socket_), reinterpret_cast<sockaddr*>(&addr), &len);
    return ntohs(addr.sin_port);
}

// 0x840ab4 _ZN14CAndroidSocket13GetSocketAddrEv
// Returns the first IPv4 address of this machine's host name, or nullptr. The string
// comes from inet_ntoa and lives in a static buffer, as in the original.
const char* CAndroidSocket::GetSocketAddr() {
    char name[256];
    std::memset(name, 0, sizeof(name));
    if (::gethostname(name, sizeof(name)) != 0) {
        return nullptr;
    }
    hostent* host = ::gethostbyname(name);
    if (host == nullptr) {
        return nullptr;
    }
    in_addr addr{};
    std::memcpy(&addr, host->h_addr_list[0], sizeof(addr));
    return ::inet_ntoa(addr);
}

// 0x840b4c _ZN14CAndroidSocket16RecvFromUnkownIPEPciPS0_Pi
// Reconstructed. The XP_DEBUG_OUT logging is dropped; both calls are statements in the binary, so their
// result is discarded. On success *ip_out is a new[] copy of the sender address string (the caller
// deletes it) and *port_out is the sender port in host order. Returns the recvfrom() result.
int CAndroidSocket::RecvFromUnkownIP(char* buffer, int length, char** ip_out, int* port_out) {
    sockaddr_in from{};
    from.sin_family = AF_INET;
    SockLen from_len = sizeof(from);
    const auto got = ::recvfrom(ToNative(socket_), buffer, length, 0, reinterpret_cast<sockaddr*>(&from), &from_len);
    if (got > 0) {
        const std::string ip = ::inet_ntoa(from.sin_addr);
        char* copy = new char[ip.size() + 1];
        std::memcpy(copy, ip.c_str(), ip.size() + 1);
        *ip_out = copy;
        *port_out = ntohs(from.sin_port);
    }
    return static_cast<int>(got);
}

// 0x840c60 _ZN14CAndroidSocket11GetHostNameEPPc
// The buffer is zeroed first (the original leaves it uninitialised on failure).
void CAndroidSocket::GetHostName(char** out) {
    char name[256];
    std::memset(name, 0, sizeof(name));
    ::gethostname(name, sizeof(name) - 1);
    char* copy = new char[std::strlen(name) + 1];
    std::memcpy(copy, name, std::strlen(name) + 1);
    *out = copy;
}

// 0x840cc8 _ZN14CAndroidSocket8RecvFromEPci
// Verified against Hex-Rays: recvfrom(...) and its result. The sender address is only turned into text for the
// dropped trace, so discarding it changes nothing observable.
int CAndroidSocket::RecvFrom(char* buffer, int length) {
    sockaddr_in from{};
    from.sin_family = AF_INET;
    SockLen from_len = sizeof(from);
    return static_cast<int>(
        ::recvfrom(ToNative(socket_), buffer, length, 0, reinterpret_cast<sockaddr*>(&from), &from_len));
}

// 0x840de0 _ZN14CAndroidSocket6SendToEPKciS1_i
// Verified against Hex-Rays: a null host returns 0; otherwise the sockaddr is built and sendto(...) runs with
// its result returned. Only the XP_DEBUG_OUT trace is dropped.
int CAndroidSocket::SendTo(const char* data, int length, const char* host, int port) {
    if (host == nullptr) {
        return 0;
    }
    sockaddr_in addr = MakeInet(inet_addr(host), port);
    return static_cast<int>(
        ::sendto(ToNative(socket_), data, length, 0, reinterpret_cast<sockaddr*>(&addr), sizeof(addr)));
}

// 0x840ed0 _ZN14CAndroidSocket16CreateIcmpSocketEv
// Note: Winsock does not allow SOCK_DGRAM + IPPROTO_ICMP, so this returns false there.
bool CAndroidSocket::CreateIcmpSocket() {
    socket_ = OpenSocket(AF_INET, SOCK_DGRAM, IPPROTO_ICMP);
    const bool ok = socket_ >= 0;
    if (ok) {
        socketType_ = 2;
    }
    return ok;
}

// 0x840f04 _ZN14CAndroidSocket15CreateUdpSocketEv
bool CAndroidSocket::CreateUdpSocket() {
    socket_ = OpenSocket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
    const bool ok = socket_ >= 0;
    if (ok) {
        socketType_ = 2;
    }
    return ok;
}

// 0x840f38 _ZN14CAndroidSocket15CreateTcpSocketEv
void CAndroidSocket::CreateTcpSocket() {
    socket_ = OpenSocket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (socket_ >= 0) {
        socketType_ = 1;
    }
}

// 0x840f68 _ZN14CAndroidSocket12CreateSocketEv
// Reconstructed. The XP_DEBUG_OUT trace on failure is dropped; it is a statement in the binary, so the
// trace's result is discarded and this is a logging-only deviation.
bool CAndroidSocket::CreateSocket() {
    socket_ = OpenSocket(AF_INET, SOCK_STREAM, 0);
    if (socket_ >= 0) {
        return true;
    }
    state_ = kStatusError;
    return false;
}

// 0x840fc8 _ZN14CAndroidSocket4BindEPct
// Reconstructed from Hex-Rays. The inet_addr() result for `host` is discarded, as in the
// original, so the socket binds INADDR_ANY. SO_REUSEADDR is set first. If the bind fails,
// the port is incremented (16-bit wrap) until a bind succeeds; as in the original there is
// no exit if no port works. Returns port + the number of retries.
int CAndroidSocket::Bind(const char* host, std::uint16_t port) {
    (void)host;
    sockaddr_in addr = MakeInet(INADDR_ANY, port);
    int one = 1;
    ::setsockopt(ToNative(socket_), SOL_SOCKET, SO_REUSEADDR, reinterpret_cast<const char*>(&one), sizeof(one));
    int attempts = 0;
    if (::bind(ToNative(socket_), reinterpret_cast<sockaddr*>(&addr), sizeof(addr)) < 0) {
        std::uint16_t candidate = static_cast<std::uint16_t>(port + 1);
        do {
            addr.sin_port = htons(candidate);
            ++attempts;
            ++candidate;
        } while (::bind(ToNative(socket_), reinterpret_cast<sockaddr*>(&addr), sizeof(addr)) < 0);
    }
    return port + attempts;
}

// 0x8410d8 _ZN14CAndroidSocket4RecvEPci
// The original's XP_API_GET_TIME() result is unused and dropped.
int CAndroidSocket::Recv(char* buffer, int length) {
    return static_cast<int>(::recv(ToNative(socket_), buffer, length, 0));
}

// 0x8410f8 _ZN14CAndroidSocket4SendEPci
// Reconstructed. The XP_DEBUG_OUT trace is dropped; it is a statement in the binary (the result is
// discarded), so this is a logging-only deviation. Returns the send() result.
int CAndroidSocket::Send(const char* data, int length) {
    return static_cast<int>(::send(ToNative(socket_), data, length, 0));
}

// 0x8411e8 _ZN14CAndroidSocket6SelectEN15GLXPlayerSocket17XSocketSelectFlagE
// Polls only this socket with a zero timeout. The ready bit is the select() result
// for this fd (bit set before the call, cleared by select on timeout).
int CAndroidSocket::Select(XSocketSelectFlag flag) {
    if (socket_ < 0 || socket_ >= kFdBitmapBits) {
        return -1;
    }
    std::memset(ready_bits_, 0, sizeof(ready_bits_));
    ready_bits_[socket_ / 32] |= 1u << (socket_ % 32);

    timeval tv{};
    fd_set set;
    FD_ZERO(&set);
    FD_SET(ToNative(socket_), &set);
    const int nfds = socket_ + 1;
    int rc = -1;
    if (flag == kSelectRead) {
        rc = ::select(nfds, &set, nullptr, nullptr, &tv);
    } else if (flag == kSelectWrite) {
        rc = ::select(nfds, nullptr, &set, nullptr, &tv);
    } else {
        return -1;
    }
    if (rc >= 0) {
        const bool ready = FD_ISSET(ToNative(socket_), &set) != 0;
        if (ready) {
            ready_bits_[socket_ / 32] |= 1u << (socket_ % 32);
        } else {
            ready_bits_[socket_ / 32] &= ~(1u << (socket_ % 32));
        }
    }
    return rc;
}

// 0x8412b4 _ZN14CAndroidSocket11CloseSocketEv
// Reconstructed. The "CloseSocket() [%d]" debug line is dropped; it is a statement in the binary, so
// the trace's result is discarded and this is a logging-only deviation.
bool CAndroidSocket::CloseSocket() {
    if (socket_ >= 0) {
        CloseNative(socket_);
        socket_ = -1;
    }
    return true;
}

// 0x8412f0 _ZN14CAndroidSocket9ConnectToEPci
// Non-blocking connect to a dotted-quad address, driven one step per call. Returns 1 when
// the connection completes and 0 otherwise. The original has no timeout in this state.
// Reconstructed. The XP_DEBUG_OUT logging is dropped; both calls are statements in the binary, so their
// result is discarded.
int CAndroidSocket::ConnectTo(const char* host, int port) {
    if (nonBlockConnectState_ == kConnectIdle) {
        sockaddr_in addr = MakeInet(inet_addr(host), port);
        if (!SetNonBlocking()) {
            CloseSocket();
            nonBlockConnectState_ = kConnectFailed;
            state_ = kStatusError;
            return 0;
        }
        if (::connect(ToNative(socket_), reinterpret_cast<sockaddr*>(&addr), sizeof(addr)) < 0 &&
            LastSocketError() != kInProgressError) {
            CloseSocket();
            nonBlockConnectState_ = kConnectFailed;
            state_ = kStatusError;
            return 0;
        }
        nonBlockConnectState_ = kConnectInProgress;
        return 0;
    }
    if (nonBlockConnectState_ != kConnectInProgress) {
        return 0;
    }
    const int ready = Select(kSelectWrite);
    if (ready < 0) {
        CloseSocket();
        nonBlockConnectState_ = kConnectFailed;
        state_ = kStatusError;
        return 0;
    }
    if (ready == 0) {
        return 0;
    }
    int error = 0;
    if (ReadSocketError(socket_, error) && error == 0 && SetBlockingMode(socket_, false)) {
        nonBlockConnectState_ = kConnectDone;
        return 1;
    }
    CloseSocket();
    nonBlockConnectState_ = kConnectFailed;
    state_ = kStatusError;
    return 0;
}

// 0x84152c _ZN14CAndroidSocket7ConnectEv
// Uses the resolved hostEntry_ and port_ (set by ConnectByName or the base class). Returns 1 when
// the connection completes and 0 otherwise.
// Partial: hostEntry_ == nullptr is treated as a failure instead of a crash. Ledgered reconstructed: the
// guard is host-necessitated (the original memcpy's from the null hostent and faults).
int CAndroidSocket::Connect() {
    if (nonBlockConnectState_ == kConnectIdle) {
        if (hostEntry_ == nullptr || hostEntry_->h_addr_list[0] == nullptr) {
            CloseSocket();
            nonBlockConnectState_ = kConnectFailed;
            state_ = kStatusError;
            return 0;
        }
        sockaddr_in addr = MakeInet(0, port_);
        std::memcpy(&addr.sin_addr, hostEntry_->h_addr_list[0],
                    std::min<std::size_t>(sizeof(addr.sin_addr), static_cast<std::size_t>(hostEntry_->h_length)));
        if (!SetNonBlocking()) {
            CloseSocket();
            nonBlockConnectState_ = kConnectFailed;
            state_ = kStatusError;
            return 0;
        }
        if (::connect(ToNative(socket_), reinterpret_cast<sockaddr*>(&addr), sizeof(addr)) < 0 &&
            LastSocketError() != kInProgressError) {
            CloseSocket();
            nonBlockConnectState_ = kConnectFailed;
            state_ = kStatusError;
        } else {
            nonBlockConnectState_ = kConnectInProgress;
            connectTimeStart_ = NowMs();
        }
        return 0;
    }
    if (nonBlockConnectState_ == kConnectInProgress) {
        return FinishConnect();
    }
    return 0;
}

// Shared state-1 path of Connect() and ConnectByName(): wait for writability, then check
// SO_ERROR and restore blocking mode. Keeps waiting while the elapsed time is at most 30000 ms.
// Returns 1 when done, 0 otherwise.
int CAndroidSocket::FinishConnect() {
    const int ready = Select(kSelectWrite);
    if (ready < 0) {
        CloseSocket();
        nonBlockConnectState_ = kConnectFailed;
        state_ = kStatusError;
        return 0;
    }
    if (ready == 0) {
        if (NowMs() - connectTimeStart_ <= kConnectTimeoutMs) {
            return 0;
        }
    } else {
        int error = 0;
        if (ReadSocketError(socket_, error) && error == 0 && SetBlockingMode(socket_, false)) {
            nonBlockConnectState_ = kConnectDone;
            return 1;
        }
    }
    CloseSocket();
    nonBlockConnectState_ = kConnectFailed;
    state_ = kStatusError;
    return 0;
}

// 0x841790 _ZN14CAndroidSocket13ConnectByNameEPct
// The original never reads its port argument; the connect uses the port_ member. Returns 1
// when the connection completes and 0 otherwise. Reconstructed: the XP_DEBUG_OUT logging is dropped and
// those calls are statements in the binary (their result is discarded).
int CAndroidSocket::ConnectByName(char* name, std::uint16_t port) {
    (void)port;
    if (nonBlockConnectState_ == kConnectIdle) {
        hostEntry_ = GetHostByName(name);
        if (hostEntry_ == nullptr) {
            if (NowMs() - gethostbynameTimeStart_ > kLookupTimeoutMs) {
                CloseSocket();
                state_ = kStatusError;
                nonBlockConnectState_ = kConnectFailed;
                gethostbynameState_ = 0;
            }
            return 0;
        }
        sockaddr_in addr = MakeInet(0, port_);
        std::memcpy(&addr.sin_addr, hostEntry_->h_addr_list[0],
                    std::min<std::size_t>(sizeof(addr.sin_addr), static_cast<std::size_t>(hostEntry_->h_length)));
        if (!SetNonBlocking()) {
            CloseSocket();
            nonBlockConnectState_ = kConnectFailed;
            state_ = kStatusError;
            return 0;
        }
        if (::connect(ToNative(socket_), reinterpret_cast<sockaddr*>(&addr), sizeof(addr)) < 0 &&
            LastSocketError() != kInProgressError) {
            CloseSocket();
            nonBlockConnectState_ = kConnectFailed;
            state_ = kStatusError;
        } else {
            nonBlockConnectState_ = kConnectInProgress;
            connectTimeStart_ = NowMs();
        }
        return 0;
    }
    if (nonBlockConnectState_ == kConnectInProgress) {
        return FinishConnect();
    }
    return 0;
}

// 0x841ad0 _ZN14CAndroidSocket14SetNonBlockingEv
// On failure the socket is closed and state_ is set to the error value.
// Reconstructed. The XP_DEBUG_OUT logging is dropped; both calls are statements in the binary, so their
// result is discarded.
bool CAndroidSocket::SetNonBlocking() {
    if (SetBlockingMode(socket_, true)) {
        return true;
    }
    CloseSocket();
    state_ = kStatusError;
    return false;
}

// 0x841b98 _ZN14CAndroidSocket12GetLastErrorEv
int CAndroidSocket::GetLastError() {
    return LastSocketError();
}

// 0x841ca8 _ZN14CAndroidSocket13GetHostByNameEPc
// Partial: the body is a cache lookup, reconstructed from Hex-Rays. A non-empty cache
// returns nullptr while gethostbynameState_ is 1, otherwise it is searched by name (strcmp). Names
// longer than 1024 bytes are rejected. A miss calls gethostbyname(); the original stores the
// first address with STRNEW (a string copy of the raw bytes), which is not reproduced: the
// port stores the 4-byte address. Once the cache is full (4 entries) the last cached entry is
// returned in place of the new lookup, as in the original. A null slot there (Startup clears the
// slots but not the count) returns nullptr, where the original returns its null slot.
hostent* CAndroidSocket::GetHostByName(char* name) {
    if (name == nullptr || std::strlen(name) > kHostNameMax) {
        return nullptr;
    }
    if (g_host_count > 0) {
        if (gethostbynameState_ == 1) {
            return nullptr;
        }
        for (int i = 0; i < g_host_count; ++i) {
            HostCacheEntry* entry = g_host_cache[i].get();
            if (entry != nullptr && entry->view.h_name != nullptr && std::strcmp(name, entry->view.h_name) == 0) {
                return &entry->view;
            }
        }
    }
    hostent* found = ::gethostbyname(name);
    if (found == nullptr) {
        return nullptr;
    }
    if (g_host_count > static_cast<int>(kHostCacheSize) - 1) {
        HostCacheEntry* last = g_host_cache[g_host_count - 1].get();
        return last != nullptr ? &last->view : nullptr;
    }
    return &StoreHostCopy(name, found)->view;
}

// 0x841e4c _ZN14CAndroidSocket9GetHostIPEPc
// Static: the name arrives in r0 (Hex-Rays shows it as this, and the body passes it straight to
// gethostbyname). A cache hit returns the cache entry (the hostent view here). A miss returns the
// system hostent and stores a copy only while a cache slot is free.
// Partial: the "GetHostByName() Existed/Add" debug lines are dropped. The stored address is the
// first one only (4 bytes here, h_length bytes in the original).
hostent* CAndroidSocket::GetHostIP(char* name) {
    for (int i = 0; i < g_host_count; ++i) {
        HostCacheEntry* entry = g_host_cache[i].get();
        if (entry != nullptr && std::strcmp(name, entry->view.h_name) == 0) {
            return &entry->view;
        }
    }
    hostent* found = ::gethostbyname(name);
    if (found != nullptr && g_host_count < static_cast<int>(kHostCacheSize)) {
        StoreHostCopy(name, found);
    }
    return found;
}

// 0x841fbc _ZN14CAndroidSocket10GetLocalIPEPc
// POSIX: walks the SIOCGIFCONF interface list and copies the address of each interface that
// is up and is not 127.0.0.1 (the last match wins, as in the original). Returns 1 after the
// walk and 0 when the socket or the ioctl fails.
// Reconstructed; deviations (host-necessitated): the port closes its probe socket on the ioctl-failure
// path (the original leaks it), and on _WIN32 SIOCGIFCONF does not exist, so the host's gethostbyname()
// list is used instead.
int CAndroidSocket::GetLocalIP(char* out) {
#ifdef _WIN32
    char name[256];
    std::memset(name, 0, sizeof(name));
    if (::gethostname(name, sizeof(name)) != 0) {
        return 0;
    }
    hostent* host = ::gethostbyname(name);
    if (host == nullptr) {
        return 0;
    }
    for (char** p = host->h_addr_list; *p != nullptr; ++p) {
        in_addr addr{};
        std::memcpy(&addr, *p, sizeof(addr));
        const char* text = ::inet_ntoa(addr);
        if (std::strcmp(text, "127.0.0.1") != 0) {
            std::strcpy(out, text);
        }
    }
    return 1;
#else
    const int fd = ::socket(AF_INET, SOCK_DGRAM, 0);
    if (fd == -1) {
        return 0;
    }
    char buffer[4000];
    ifconf conf{};
    conf.ifc_len = static_cast<int>(sizeof(buffer));
    conf.ifc_buf = buffer;
    if (::ioctl(fd, SIOCGIFCONF, &conf) < 0) {
        ::close(fd);
        return 0;
    }
    char* cursor = buffer;
    char* end = buffer + conf.ifc_len;
    while (cursor < end) {
        ifreq* ifr = reinterpret_cast<ifreq*>(cursor);
        cursor += sizeof(ifreq);
        if (ifr->ifr_addr.sa_family != AF_INET) {
            continue;
        }
        const char* text = ::inet_ntoa(reinterpret_cast<sockaddr_in*>(&ifr->ifr_addr)->sin_addr);
        if (char* colon = std::strchr(ifr->ifr_name, ':')) {
            *colon = '\0';
        }
        ::ioctl(fd, SIOCGIFFLAGS, ifr);
        if ((ifr->ifr_flags & IFF_UP) != 0 && std::strcmp(text, "127.0.0.1") != 0) {
            std::strcpy(out, text);
        }
    }
    ::close(fd);
    return 1;
#endif
}

// 0x842360 _ZN14CAndroidSocket6AcceptEv
// Returns a GLXPlayerSocket* to a new 0xcf4-byte CAndroidSocket, as the original. The object is built
// in the original's order: accept(), inet_ntoa(), new CAndroidSocket(nullptr, 0, nullptr), then the
// base setters SetSocket, SetAcceptIP, SetAcceptPort (the sender port in host order, from the
// pseudocode's byte swap) and SetSocketType(1). As in the original, the object is returned even when
// accept() failed (its handle is then -1). Reconstructed; deviation (host-necessitated): the sockaddr is
// zeroed first, so a failed accept gives 0.0.0.0 and port 0 where the original reads unset stack bytes
// (a value with no defined reconstruction).
GLXPlayerSocket* CAndroidSocket::Accept() {
    sockaddr_in peer{};
    peer.sin_family = AF_INET;
    SockLen peer_len = sizeof(peer);
    const NativeHandle handle = ::accept(ToNative(socket_), reinterpret_cast<sockaddr*>(&peer), &peer_len);
    const char* ip = ::inet_ntoa(peer.sin_addr);
    const std::uint16_t port = ntohs(peer.sin_port);
    auto* accepted = new CAndroidSocket(nullptr, 0, nullptr);
    accepted->SetSocket(IsValidNative(handle) ? static_cast<int>(handle) : -1);
    accepted->SetAcceptIP(ip);
    accepted->SetAcceptPort(port);
    accepted->SetSocketType(1);  // TCP
    return accepted;
}
