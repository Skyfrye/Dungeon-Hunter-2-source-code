#include "net-session-online/c_online_impl.hpp"

namespace {
// The sign-in event type, from the immediate in SignIn.
constexpr std::int32_t kSignInEvent = 0x500000;
}  // namespace

// 0x824ed4 _ZN11COnlineImpl15GetAbsoluteTimeEv
std::int64_t COnlineImpl::GetAbsoluteTime() const {
    Timeval now{};
    GetTimeOfDay(&now);
    return static_cast<std::int64_t>(now.tv_sec * 1000 + now.tv_usec / 1000);
}

// 0x824e60 _ZN11COnlineImpl13ElapsedTimeMsEl
bool COnlineImpl::ElapsedTimeMs(std::int32_t ms) {
    Timeval now{};
    GetTimeOfDay(&now);
    const std::int32_t elapsed = (now.tv_sec - lastCheck_.tv_sec) * 1000 +
                                 (now.tv_usec - lastCheck_.tv_usec) / 1000;
    const bool due = ms <= elapsed;
    if (due) {
        GetTimeOfDay(&lastCheck_);
    }
    return due;
}

// 0x824f20 _ZN11COnlineImpl6SignInEv
void COnlineImpl::SignIn() {
    eventQueue_.AddEvent(kSignInEvent, nullptr, 0);
}
