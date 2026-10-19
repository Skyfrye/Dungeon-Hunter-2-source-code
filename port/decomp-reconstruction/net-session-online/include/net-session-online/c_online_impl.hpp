// COnlineImpl: the platform implementation of COnline. Its sign-in is always true and
// its network is always connected (the online service is gone), and it keeps the clock
// used for elapsed-time checks. The init, update and terminate paths are queued.
//
// Layout (original 32-bit offsets, kept as comments). The flag at +0x04 and the event queue at +0x08 are
// COnline's (initialized_, eventQueue_, see c_online.hpp); COnlineImpl uses them and adds only:
//   +0x40 last-check timeval (sec at +0x40, usec at +0x44)
#pragma once

#include <cstdint>
#include <string>

#include "net-session-online/c_event_queue_base.hpp"
#include "net-session-online/c_online.hpp"
#include "net-session-online/deps/time_of_day.hpp"

class COnlineImpl : public COnline {
public:
    // 0x824e50 _ZN11COnlineImpl10IsSignedInEv: returns 1.
    std::int32_t IsSignedIn() const { return 1; }
    // 0x824e58 _ZN11COnlineImpl18IsNetworkConnectedEv: returns 1.
    std::int32_t IsNetworkConnected() const { return 1; }
    // 0x824ed4 _ZN11COnlineImpl15GetAbsoluteTimeEv
    // Milliseconds since the epoch. The sum is 32-bit, as in the original, and widened.
    std::int64_t GetAbsoluteTime() const;
    // 0x824e60 _ZN11COnlineImpl13ElapsedTimeMsEl
    // True when at least 'ms' have passed since the last check. A true result restarts the
    // clock. The argument is a long in the mangled name and 32 bits on ARM.
    bool ElapsedTimeMs(std::int32_t ms);
    // 0x824f20 _ZN11COnlineImpl6SignInEv: adds the sign-in event (0x500000) to the queue.
    void SignIn();
    // 0x824f40 _ZN11COnlineImpl10InitializeEv: runs COnline::Initialize once and stamps the
    // clock. Returns 0 when already initialized, else the base result.
    std::int32_t Initialize();
    // 0x825068 _ZN11COnlineImpl13GetPlayerNameEv: the local host name from the transport manager when it is
    // initialized (vtable +0x20, GetLocalhostname), else "PLAYER".
    std::string GetPlayerName() const;

    // Test seam. Not in the original. (EventsForTest is COnline's.)
    void SetLastCheckForTest(const Timeval& when) { lastCheck_ = when; }

    Timeval lastCheck_{0, 0};           // +0x40
};
