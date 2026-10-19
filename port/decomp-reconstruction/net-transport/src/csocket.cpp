#include "net-transport/csocket.hpp"

#include <cstdlib>
#include <cstring>
#ifdef __ANDROID__
#include <android/log.h>
#endif

#ifndef _WIN32
#include <net/if.h>
#include <sys/ioctl.h>
#else
#endif
#include <cstdio>

using net_platform::NativeSocket;

namespace {

sockaddr_in MakeAddress(const in_addr& addr, std::uint16_t port) {
    sockaddr_in sa{};
    sa.sin_family = AF_INET;
    sa.sin_port = htons(port);
    sa.sin_addr = addr;
    return sa;
}

}  // namespace

// 0x827bb0 _ZN7CSocketC1Ev
// 0x827b5c _ZN7CSocketC2Ev
CSocket::CSocket() {
    net_platform::EnsureStarted();  // Winsock only (host-necessitated)
    handle_ = -1;
    valid_ = false;
    connected_ = false;
}

// 0x827f70 _ZN7CSocketD2Ev
// 0x827f3c _ZN7CSocketD1Ev
CSocket::~CSocket() {
    Close();
}

// 0x827c04 _ZN7CSocket11IsConnectedEv
// Writable with a zero timeout means connected (the original selects on the write set).
bool CSocket::IsConnected() const {
    timeval tv{};
    tv.tv_sec = 0;
    tv.tv_usec = 0;
    fd_set read_set;
    fd_set write_set;
    FD_ZERO(&read_set);
    FD_SET(static_cast<NativeSocket>(handle_), &read_set);
    FD_ZERO(&write_set);
    FD_SET(static_cast<NativeSocket>(handle_), &write_set);
    int ready = ::select(handle_ + 1, &read_set, &write_set, nullptr, &tv);
    if (ready < 1) {
        return false;
    }
    return FD_ISSET(static_cast<NativeSocket>(handle_), &write_set);
}

// 0x827cdc _ZN7CSocket13DataAvailableEi
bool CSocket::DataAvailable(int timeout_us) {
    fd_set read_set;
    FD_ZERO(&read_set);
    FD_SET(static_cast<NativeSocket>(handle_), &read_set);
    timeval tv{};
    tv.tv_sec = timeout_us / 1000000;
    tv.tv_usec = timeout_us % 1000000;
    int ready = ::select(handle_ + 1, &read_set, nullptr, nullptr, &tv);
    if (ready < 1) {
        return false;
    }
    return FD_ISSET(static_cast<NativeSocket>(handle_), &read_set);
}

// 0x827ee0 _ZN7CSocket5CloseEv
int CSocket::Close() {
    int result = 0;
    valid_ = false;
    listening_ = false;
    if (handle_ >= 0) {
        result = net_platform::CloseSocket(static_cast<NativeSocket>(handle_));
        if (result < 0) {
            GetSocketError();
            handle_ = -1;
            return result;
        }
    }
    handle_ = -1;
    return result;
}

// 0x827fa4 _ZN7CSocket12GetLocalPortEv
std::uint16_t CSocket::GetLocalPort() {
    sockaddr_in sa{};
    socklen_t len = sizeof(sa);
    if (::getsockname(static_cast<NativeSocket>(handle_), reinterpret_cast<sockaddr*>(&sa), &len) < 0) {
        GetSocketError();
        return 0;
    }
    return ntohs(sa.sin_port);
}

// 0x828038 _ZN7CSocket10WouldBlockEv
bool CSocket::WouldBlock() const {
    return net_platform::LastError() == net_platform::kErrWouldBlock;
}

// 0x828054 _ZN7CSocket14GetSocketErrorEv
int CSocket::GetSocketError() const {
    return net_platform::LastError();
}

// 0x828064 _ZN7CSocket14GetPeerAddressEv
// Hex-Rays: getpeername() address, or the address recorded by Accept on failure. The
// strerror_r and inet_ntoa results in the failure path are never read, so they are omitted.
std::uint32_t CSocket::GetPeerAddress() {
    sockaddr_in sa{};
    socklen_t len = sizeof(sa);
    if (::getpeername(static_cast<NativeSocket>(handle_), reinterpret_cast<sockaddr*>(&sa), &len) < 0) {
        GetSocketError();
        return peer_address_;
    }
    return static_cast<std::uint32_t>(sa.sin_addr.s_addr);
}

// 0x82810c _ZN7CSocket11GetPeerPortEv
// On failure the port recorded by Accept is returned.
std::uint16_t CSocket::GetPeerPort() {
    sockaddr_in sa{};
    socklen_t len = sizeof(sa);
    if (::getpeername(static_cast<NativeSocket>(handle_), reinterpret_cast<sockaddr*>(&sa), &len) < 0) {
        return peer_port_;
    }
    return ntohs(sa.sin_port);
}

// 0x8281a8 _ZN7CSocket11ReceiveFromER7in_addrRtPci
// Partial: the decompiled error path calls the error hook and returns the negative count.
std::int64_t CSocket::ReceiveFrom(in_addr& from, std::uint16_t& from_port, char* buf, int len) {
    if (!valid_) {
        return -1;
    }
    from.s_addr = 0;
    from_port = 0;
    sockaddr_in sa{};
    socklen_t slen = sizeof(sa);
    int got = static_cast<int>(::recvfrom(static_cast<NativeSocket>(handle_), buf, len, 0,
                                          reinterpret_cast<sockaddr*>(&sa), &slen));
    if (got < 0) {
        if (WouldBlock()) {
            return 0;
        }
        GetSocketError();
        return got;
    }
    if (got == 0) {
        from.s_addr = 0;
        from_port = 0;
    } else {
        from_port = ntohs(sa.sin_port);
        from = sa.sin_addr;
    }
    return got;
}

// 0x8282ac _ZN7CSocket7ReceiveEPci
// The original also increments a static counter (_ZL7printed) that nothing reads, so it is omitted.
std::int64_t CSocket::Receive(char* buf, int len) {
    if (!valid_ || !IsConnected()) {
        return -1;
    }
    connected_ = true;
    if (!DataAvailable(0)) {
        return 0;
    }
    int got = static_cast<int>(::recv(static_cast<NativeSocket>(handle_), buf, len, 0));
    if (got < 0) {
        if (WouldBlock()) {
            return 0;
        }
        GetSocketError();
    }
    return got;
}

// 0x828380 _ZN7CSocket6SendToERK7in_addrtPvi
// Returns the sendto() result (the decompile returns it).
std::int64_t CSocket::SendTo(const in_addr& to, std::uint16_t port, const void* data, int len) {
    if (!valid_) {
        return -1;
    }
    sockaddr_in sa = MakeAddress(to, port);
    int sent = static_cast<int>(::sendto(static_cast<NativeSocket>(handle_), static_cast<const char*>(data),
                                         len, 0, reinterpret_cast<const sockaddr*>(&sa), sizeof(sa)));
    if (sent < 0) {
        GetSocketError();
#ifdef DH2_HOST_RUNNER
        DH2_NET_LOG("[net] sendto failed, socket error %d (valid %d, port %u)\n",GetSocketError(), static_cast<int>(valid_), static_cast<unsigned>(port));
#endif
    }
    return sent;
}

// 0x82844c _ZN7CSocket4SendEPvi
std::int64_t CSocket::Send(const void* data, int len) {
    if (!valid_ || !IsConnected()) {
        return -1;
    }
    connected_ = true;
    int sent = static_cast<int>(::send(static_cast<NativeSocket>(handle_), static_cast<const char*>(data), len, 0));
    if (sent < 0) {
        GetSocketError();
    }
    return sent;
}

// 0x8284c8 _ZN7CSocket16SetSocketOptionsEj
// Bit 1: SO_REUSEADDR. Bit 0: SO_BROADCAST. Bit 2: TCP_NODELAY. As in the original, a
// failed REUSEADDR call ends the work; otherwise a failed broadcast call ends it before
// nodelay runs, and a failed nodelay call ends it. Returns the last setsockopt() result
// (0 when no call ran).
int CSocket::SetSocketOptions(unsigned int options) {
    int on = 1;
    int result = static_cast<int>(options & 2);
    if ((options & 2) != 0) {
        result = ::setsockopt(static_cast<NativeSocket>(handle_), SOL_SOCKET, SO_REUSEADDR,
                              reinterpret_cast<const char*>(&on), sizeof(on));
        if (result < 0) {
            GetSocketError();
            return result;
        }
    }
    if ((options & 1) != 0) {
        result = ::setsockopt(static_cast<NativeSocket>(handle_), SOL_SOCKET, SO_BROADCAST,
                              reinterpret_cast<const char*>(&on), sizeof(on));
        if (result < 0) {
            GetSocketError();
            return result;
        }
    }
    if ((options & 4) != 0) {
        result = ::setsockopt(static_cast<NativeSocket>(handle_), IPPROTO_TCP, TCP_NODELAY,
                              reinterpret_cast<const char*>(&on), sizeof(on));
        if (result < 0) {
            GetSocketError();
        }
    }
    return result;
}

// 0x8285ec _ZN7CSocket6AcceptER7in_addrRt
// Returns 0 when no connection is pending, -1 when accept() fails, and the accepted
// handle otherwise. O_NONBLOCK is set on the listening handle. The peer port is stored
// as the raw network-order word, as the original does (the assembly uses LDRH/STRH with no
// byte swap), so it is not host order.
int CSocket::Accept(in_addr& from, std::uint16_t& from_port) {
    if (!DataAvailable(0)) {
        return 0;
    }
    sockaddr_in sa{};
    socklen_t len = sizeof(sa);
    int accepted = static_cast<int>(::accept(static_cast<NativeSocket>(handle_),
                                             reinterpret_cast<sockaddr*>(&sa), &len));
    if (accepted < 0) {
        GetSocketError();
        return -1;
    }
    net_platform::SetNonBlocking(static_cast<NativeSocket>(handle_));
    from = sa.sin_addr;
    from_port = sa.sin_port;
    peer_address_ = static_cast<std::uint32_t>(sa.sin_addr.s_addr);
    peer_port_ = from_port;
    return accepted;
}

// 0x8286e4 _ZN7CSocket6ListenEv
int CSocket::Listen() {
    if (listening_) {
        return 0;
    }
    if (::listen(static_cast<NativeSocket>(handle_), 10) != 0) {
        GetSocketError();
    }
    listening_ = true;
    return 0;
}

// 0x828738 _ZN7CSocket7ConnectERK7in_addrt
// Returns 0 when connected, already connected or would-block; 1 when the connect is in
// progress (the connected flag is set); -1 after a hard failure (the socket is closed).
int CSocket::Connect(const in_addr& peer, std::uint16_t port) {
    sockaddr_in sa = MakeAddress(peer, port);
    int result = ::connect(static_cast<NativeSocket>(handle_), reinterpret_cast<const sockaddr*>(&sa), sizeof(sa));
    if (result < 0 && !WouldBlock() && GetSocketError() != net_platform::kErrIsConnected) {
        if (GetSocketError() == net_platform::kErrInProgress) {
            connected_ = true;
            return 1;
        }
        GetSocketError();
        Close();
        return -1;
    }
    return 0;
}

// 0x8289bc _ZN7CSocket7OpenUDPEtj
// Order as in the original: socket, bind, nonblocking, options. A negative result from
// SetSocketOptions closes the socket and is returned.
int CSocket::OpenUDP(std::uint16_t port, unsigned int options) {
    if (!can_open_) {
        return -1;
    }
    handle_ = static_cast<int>(::socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP));
    if (handle_ < 0) {
        GetSocketError();
        return -1;
    }
    sockaddr_in sa{};
    sa.sin_family = AF_INET;
    sa.sin_port = htons(port);
    sa.sin_addr.s_addr = htonl(INADDR_ANY);
#ifdef DH2_HOST_RUNNER
    // Host runner only (not in the original): DH2_NET_SHARE_PORT=1 sets SO_REUSEADDR before the bind, so two game instances on one
    // machine can both listen on the broadcast port 6776 (Winsock delivers a broadcast to every socket that shares the port).
    if (std::getenv("DH2_NET_SHARE_PORT") != nullptr) {
        int shareOn = 1;
        ::setsockopt(static_cast<NativeSocket>(handle_), SOL_SOCKET, SO_REUSEADDR, reinterpret_cast<const char*>(&shareOn), sizeof(shareOn));
    }
#endif
    if (::bind(static_cast<NativeSocket>(handle_), reinterpret_cast<sockaddr*>(&sa), sizeof(sa)) < 0) {
        GetSocketError();
        Close();
        return -1;
    }
    net_platform::SetNonBlocking(static_cast<NativeSocket>(handle_));
    int result = SetSocketOptions(options);
    if (result < 0) {
        Close();
        return result;
    }
    valid_ = true;
    return 0;
}

// 0x828868 _ZN7CSocket7OpenTCPEtj
// Order as in the original: socket, nonblocking, options, bind. A negative result from
// SetSocketOptions closes the socket and is returned.
int CSocket::OpenTCP(std::uint16_t port, unsigned int options) {
    if (!can_open_) {
        return -1;
    }
    handle_ = static_cast<int>(::socket(AF_INET, SOCK_STREAM, IPPROTO_TCP));
    if (handle_ < 0) {
        GetSocketError();
        return -1;
    }
    net_platform::SetNonBlocking(static_cast<NativeSocket>(handle_));
    int result = SetSocketOptions(options);
    if (result < 0) {
        Close();
        return result;
    }
    sockaddr_in sa{};
    sa.sin_family = AF_INET;
    sa.sin_port = htons(port);
    sa.sin_addr.s_addr = htonl(INADDR_ANY);
    if (::bind(static_cast<NativeSocket>(handle_), reinterpret_cast<sockaddr*>(&sa), sizeof(sa)) < 0) {
        GetSocketError();
        Close();
        return -1;
    }
    valid_ = true;
    return 0;
}

// 0x827da0 _ZN7CSocket15GetLocalAddressEv
// Walks the SIOCGIFCONF list and returns the first up, non-loopback IPv4 address.
// Port deviation (MP2, reports/decomp-reconstruction/MULTIPLAYER.md fix 10): on POSIX a Wi-Fi / LAN interface (wlan*, swlan*, ap*, eth*, en*) is preferred over
// the first up one. A 2012 phone had only Wi-Fi up during a LAN game; a current phone keeps mobile data up next to it, and on some
// (Galaxy S942B: rmnet1 before wlan0) the cellular interface comes first, so the room advertised the cellular address and the
// joiner could see the room (the broadcast arrives over Wi-Fi) but never connect. Without such an interface the original rule applies.
// Winsock has no SIOCGIFCONF; its equivalent is WSAIoctl(SIO_GET_INTERFACE_LIST) over a datagram socket, which gives the same
// per-interface address and IFF_UP flag (the Windows build reads the list in the same order and applies the same tests).
// The original leaks its probe socket on the ioctl-failure and found paths; the port closes it on every path
// (a leaked descriptor is not behaviour anything reads).
std::uint32_t CSocket::GetLocalAddress() {
#ifndef _WIN32
    int fd = ::socket(AF_INET, SOCK_DGRAM, 0);
    if (fd < 0) {
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
    std::uint32_t found = 0;      // the original's answer: the first up, non-loopback address
    std::uint32_t foundLan = 0;   // the port's preference: the first up Wi-Fi / LAN interface
#ifdef __ANDROID__
    char lanName[IFNAMSIZ + 1] = {};
#endif
    for (char* p = buffer; p < buffer + conf.ifc_len; p += sizeof(ifreq)) {
        ifreq entry{};
        std::memcpy(&entry, p, sizeof(entry));
        if (entry.ifr_addr.sa_family != AF_INET) {
            continue;
        }
        // ifr_addr and ifr_flags share a union: keep the address before SIOCGIFFLAGS overwrites it
        const std::uint32_t address = static_cast<std::uint32_t>(reinterpret_cast<const sockaddr_in*>(&entry.ifr_addr)->sin_addr.s_addr);
        char* colon = std::strchr(entry.ifr_name, ':');
        if (colon != nullptr) {
            *colon = '\0';
        }
        if (::ioctl(fd, SIOCGIFFLAGS, &entry) < 0) {
            continue;
        }
        if ((entry.ifr_flags & IFF_UP) == 0 || address == htonl(INADDR_LOOPBACK)) {
            continue;
        }
        if (found == 0) {
            found = address;
        }
        const char* name = entry.ifr_name;
        if (std::strncmp(name, "wlan", 4) == 0 || std::strncmp(name, "swlan", 5) == 0 || std::strncmp(name, "ap", 2) == 0 ||
            std::strncmp(name, "eth", 3) == 0 || std::strncmp(name, "en", 2) == 0) {
            foundLan = address;
#ifdef __ANDROID__
            std::strncpy(lanName, name, sizeof(lanName) - 1);
#endif
            break;
        }
    }
    ::close(fd);
#ifdef __ANDROID__
    {
        // one logcat line whenever the answer changes (session reports keep tag DH2NET): which interface a LAN game advertises
        static std::uint32_t lastLogged = 0;
        const std::uint32_t chosen = foundLan != 0 ? foundLan : found;
        if (chosen != lastLogged) {
            lastLogged = chosen;
            in_addr a{};
            a.s_addr = chosen;
            __android_log_print(ANDROID_LOG_INFO, "DH2NET", "local address %s (%s; first up %s)", ::inet_ntoa(a), foundLan != 0 ? lanName : "no Wi-Fi/LAN interface",
                                found == chosen ? "same" : "other");
        }
    }
#endif
    return foundLan != 0 ? foundLan : found;
#else
    SOCKET probe = ::socket(AF_INET, SOCK_DGRAM, 0);
    if (probe == INVALID_SOCKET) {
        return 0;
    }
    INTERFACE_INFO list[32];
    DWORD returned = 0;
    if (::WSAIoctl(probe, SIO_GET_INTERFACE_LIST, nullptr, 0, list, sizeof(list), &returned, nullptr, nullptr) != 0) {
        ::closesocket(probe);
        return 0;
    }
    std::uint32_t found = 0;
    const DWORD count = returned / sizeof(INTERFACE_INFO);
    for (DWORD i = 0; i < count; ++i) {
        if (list[i].iiAddress.Address.sa_family != AF_INET) {
            continue;
        }
        if ((list[i].iiFlags & IFF_UP) != 0 && list[i].iiAddress.AddressIn.sin_addr.s_addr != htonl(INADDR_LOOPBACK)) {
            found = static_cast<std::uint32_t>(list[i].iiAddress.AddressIn.sin_addr.s_addr);
            break;
        }
    }
    ::closesocket(probe);
    return found;
#endif
}
