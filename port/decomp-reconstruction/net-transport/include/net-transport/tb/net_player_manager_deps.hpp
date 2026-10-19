// Shims for the calls CNetPlayerManager makes into code that is not declared in the tree yet.
// The NetStruct calls (Load, SetEnabled, Resend, the packet slots and the player virtuals) are the real
// ones now: CNetPlayerInfo and the manager's NetStructPlayerManager derive from NetStruct. What is left is
// COnline, owned by net-session-online. The functions that use a shim are ledgered as partial, and their
// notes name the shim.
#pragma once

namespace np_deps {

// GetOnline() and COnline::IsServer(). COnline is owned by net-session-online; this device is
// never the server in the stand-in.
struct OnlineStandIn {
    bool IsServer() const { return false; }
};
inline OnlineStandIn* GetOnline() {
    static OnlineStandIn online;
    return &online;
}

}  // namespace np_deps
