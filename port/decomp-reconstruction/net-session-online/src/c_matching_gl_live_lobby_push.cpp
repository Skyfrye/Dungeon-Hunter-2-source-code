#include "net-session-online/c_matching_gl_live_observers.hpp"
#include "net-session-online/c_sign_in.hpp"

// 0x82153c _ZN28CMatchingGLLiveLobbyObserver31OnMPProcessPushSameAccountLoginEP10DataPacket
// The original passes the observer to CSignIn::Get, but the getter takes no argument and the
// decompiled argument is not used. The event is queued on the sign-in event queue (+0x14 of
// CSignIn) with type 9, no payload. The packet is not read.
std::int32_t CMatchingGLLiveLobbyObserver::OnMPProcessPushSameAccountLogin(DataPacket* /*packet*/) {
    CSignIn::Get()->EventQueue().AddEvent(9, nullptr, 0);
    return 0;
}
