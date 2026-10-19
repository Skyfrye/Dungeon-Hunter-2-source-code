// CSocket: one BSD socket with its peer record. Reconstructed from
// libDungeonHunter2.so pseudocode; the platform calls go through socket_platform.hpp.
//
// Original layout (32-bit offsets):
//   +0x04 handle (-1 when closed)          (CSocketAbstract::handle_)
//   +0x08 valid flag: the socket is open   (CSocketAbstract::valid_)
//   +0x09 can-open flag: 1 until a socket is opened (OpenUDP/OpenTCP check it)
//   +0x0a connected flag                    (CSocketAbstract::connected_)
//   +0x0b listening flag, set by Listen
//   +0x0c peer address (in_addr), set by Accept
//   +0x10 peer port (raw network-order word), set by Accept
//
// Deviations: debug logging is not reproduced (strerror_r and inet_ntoa results that
// are never read, and the static print counter); the original's vtable-dispatched error
// hooks are direct calls here (CSocket is not subclassed in this tree).
#pragma once

#include <cstddef>
#include <cstdint>

#include "net-transport/socket_abstract.hpp"
#include "net-transport/socket_platform.hpp"

class CSocket : public CSocketAbstract {
public:
    CSocket();                                       // 0x827bb0 _ZN7CSocketC1Ev, 0x827b5c _ZN7CSocketC2Ev
    ~CSocket() override;                             // 0x827f70 _ZN7CSocketD2Ev, 0x827f3c _ZN7CSocketD1Ev
    CSocket(const CSocket&) = delete;
    CSocket& operator=(const CSocket&) = delete;

    bool IsConnected() const override;               // 0x827c04 _ZN7CSocket11IsConnectedEv
    // Waits up to timeout_us microseconds for readable data.
    bool DataAvailable(int timeout_us);              // 0x827cdc _ZN7CSocket13DataAvailableEi
    int Close();                                     // 0x827ee0 _ZN7CSocket5CloseEv
    std::uint16_t GetLocalPort();                    // 0x827fa4 _ZN7CSocket12GetLocalPortEv
    bool WouldBlock() const;                         // 0x828038 _ZN7CSocket10WouldBlockEv
    int GetSocketError() const;                      // 0x828054 _ZN7CSocket14GetSocketErrorEv
    std::uint32_t GetPeerAddress();                      // 0x828064 _ZN7CSocket14GetPeerAddressEv
    std::uint16_t GetPeerPort();                     // 0x82810c _ZN7CSocket11GetPeerPortEv
    // Returns bytes received, 0 when nothing is ready, or -1 when the socket is closed.
    std::int64_t ReceiveFrom(in_addr& from, std::uint16_t& from_port, char* buf, int len);  // 0x8281a8
    std::int64_t Receive(char* buf, int len);        // 0x8282ac _ZN7CSocket7ReceiveEPci
    std::int64_t SendTo(const in_addr& to, std::uint16_t port, const void* data, int len);  // 0x828380
    std::int64_t Send(const void* data, int len);    // 0x82844c _ZN7CSocket4SendEPvi
    int SetSocketOptions(unsigned int options) override;  // 0x8284c8 _ZN7CSocket16SetSocketOptionsEj, returns last setsockopt result
    // Accepts one pending connection: 0 when none is pending, -1 on error, else the new handle.
    int Accept(in_addr& from, std::uint16_t& from_port);   // 0x8285ec _ZN7CSocket6AcceptER7in_addrRt
    int Listen();                                    // 0x8286e4 _ZN7CSocket6ListenEv
    bool IsListening() const { return listening_; }  // accessor, not in the original
    // Creates a UDP socket bound to port (0 for any) with the given option bits. Returns 0 or -1.
    int OpenUDP(std::uint16_t port, unsigned int options);  // 0x8289bc _ZN7CSocket7OpenUDPEtj
    // Creates a TCP socket bound to port. Returns 0 or -1.
    int OpenTCP(std::uint16_t port, unsigned int options);  // 0x828868 _ZN7CSocket7OpenTCPEtj
    // First non-loopback IPv4 address of an up interface (network order), or 0.
    std::uint32_t GetLocalAddress();                 // 0x827da0 _ZN7CSocket15GetLocalAddressEv
    int Connect(const in_addr& peer, std::uint16_t port);  // 0x828738 _ZN7CSocket7ConnectERK7in_addrt

private:
    bool listening_ = false;                         // +0x0b
    std::uint32_t peer_address_ = 0;                     // +0x0c
    std::uint16_t peer_port_ = 0;                    // +0x10
};
