// The online-game flag read, *(GetOnline() + 5) (COnline::isOnlineGame_), for the callers that read it without keeping the COnline
// pointer. In its own unit so a test can supply a different one. Declared in dh2/global/net_singletons.hpp.
#include "dh2/global/net_singletons.hpp"

#include "net-session-online/c_online.hpp"

bool GetOnlineGameFlag() {
    return GetOnline()->IsOnlineGame();
}
