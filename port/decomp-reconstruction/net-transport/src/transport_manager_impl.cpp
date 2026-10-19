// CTransportManagerImpl: GetHostname, the local host name, the receiver thread and sleep.
// Reconstructed from libDungeonHunter2.so pseudocode.
#include "net-transport/transport_manager_impl.hpp"

#include <chrono>
#include <cstring>
#include <new>

#include "net-transport/socket_platform.hpp"

#ifdef _WIN32
#include <winsock2.h>
#else
#include <netdb.h>
#include <sys/socket.h>
#include <unistd.h>
#endif

namespace {
// Receiver loop pause between passes (10 microseconds in the original argument list).
constexpr unsigned int kReceiverPauseUs = 10;
}  // namespace

// 0x8250dc _ZN22CTransportManagerImplD2Ev
// 0x8252fc (D0, deleting) is compiler-generated and skipped.
// Deviation: a receiver thread still running is asked to stop and then joined; the original
// does not join here, and a joinable std::thread would terminate the process when destroyed.
CTransportManagerImpl::~CTransportManagerImpl() {
    if (receiver_thread_.joinable()) {
        terminating_ = true;
        receiver_thread_.join();
    }
}

// 0x825110 _ZN22CTransportManagerImpl11GetHostnameER10CNetworkId
// The address is the high word of address1 when the id's bit 0 (address1) is set, else of
// address0 (the original reads the raw words at +0x0c and +0x04, and the flags at +0x18).
// GetAddress0/1 copy the stored words whether or not the presence bit is set, as the raw reads do.
std::string CTransportManagerImpl::GetHostname(CNetworkId& id) {
    std::uint16_t lo = 0;
    std::uint32_t hi = 0;
    if ((id.Flags() & 1u) != 0) {
        id.GetAddress1(lo, hi);
    } else {
        id.GetAddress0(lo, hi);
    }
    std::uint32_t address = hi;
    hostent* host = gethostbyaddr(reinterpret_cast<const char*>(&address), 4, AF_INET);
    return host != nullptr ? std::string(host->h_name) : std::string();
}

// 0x825178 _ZN22CTransportManagerImpl16GetLocalhostnameEv
// Returns the machine host name, or an empty string when gethostname fails.
std::string CTransportManagerImpl::GetLocalhostname() {
    char name[1024];
    std::memset(name, 0, sizeof(name));
    if (gethostname(name, sizeof(name)) != 0) {
        return std::string();
    }
    return std::string(name);
}

// 0x82521c _ZN22CTransportManagerImpl19StopReceiverThreadEv
// Joins the receiver thread. The original does not set the terminating flag here; the caller
// must set it first (TerminateInternal does), or the join waits for the loop to end.
// Returns -1 when no thread is running (pthread_join failure in the original).
int CTransportManagerImpl::StopReceiverThread() {
    if (!receiver_thread_.joinable()) {
        return -1;
    }
    receiver_thread_.join();
    return 0;
}

// 0x825240 _ZN22CTransportManagerImpl5SleepEj
// usleep() returns 0 on success; the port always returns 0.
int CTransportManagerImpl::Sleep(unsigned int microseconds) {
    std::this_thread::sleep_for(std::chrono::microseconds(microseconds));
    return 0;
}

// 0x825248 _ZN22CTransportManagerImpl20StartReceiverThreadEv
// The original creates a joinable pthread unconditionally (pthread_create over the id at this + 0x108,
// attr detachstate 0), passing this as the thread argument (the port passes this through the lambda). A second
// start overwrites the stored id, so the first thread keeps running and can no longer be joined: the held
// std::thread is detached first (an assignment over a joinable std::thread would terminate) and the new one stored.
int CTransportManagerImpl::StartReceiverThread() {
    if (receiver_thread_.joinable()) {
        receiver_thread_.detach();
    }
    try {
        receiver_thread_ = std::thread([this] { ReceiverThread(this); });
    } catch (...) {
        return -1;
    }
    return 0;
}

// 0x8252b4 _ZN22CTransportManagerImpl21ReceiverThreadInternalEv
// Runs one receive pass and a short pause until the terminating flag is set. The flag is
// checked first, so a manager that is already terminating does nothing.
int CTransportManagerImpl::ReceiverThreadInternal() {
    if (terminating_) {
        return 0;
    }
    do {
        ReceiverThreadExecute();
        Sleep(kReceiverPauseUs);
    } while (!terminating_);
    return 0;
}

// 0x8252ec _ZN22CTransportManagerImpl14ReceiverThreadEPv
// Thread entry point; the argument is not used. Returns 0 as the original does.
int CTransportManagerImpl::ReceiverThread(void* argument) {
    (void)argument;
    ReceiverThreadInternal();
    return 0;
}
