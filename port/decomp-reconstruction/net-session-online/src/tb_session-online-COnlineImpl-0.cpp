// Track B batch e1-net-session-online-COnlineImpl-0: COnlineImpl::Initialize.
//
// The guard, the base call, the flag store and the clock stamp follow the Hex-Rays body in the
// original order. The gettimeofday() timezone argument in the pseudocode is the initialized byte
// read at the top of the function, which is always 0 at that point, so it is passed as no zone
// (GetTimeOfDay has no zone argument). The result is the base COnline::Initialize result, which
// is itself partial (see tb_session-online-COnline-0.cpp).
#include "net-session-online/c_online_impl.hpp"

// 0x824f40 _ZN11COnlineImpl10InitializeEv
std::int32_t COnlineImpl::Initialize() {
    // +0x04 initialized flag; already set means nothing to do.
    if (initialized_) {
        return 0;
    }
    const std::int32_t result = COnline::Initialize();
    initialized_ = true;
    // +0x40 last-check timeval (gettimeofday with no timezone).
    GetTimeOfDay(&lastCheck_);
    return result;
}
