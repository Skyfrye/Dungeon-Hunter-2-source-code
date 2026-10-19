// Stand-ins for the GLX online layer that GLXPlayerMPLobby depends on. Each
// one names the original symbol it replaces.
#pragma once

#include <cstdint>

// The background thread stopped by mpDisconnect. Original vtable slot 1 deletes it.
class ThreadHandle {
public:
    virtual ~ThreadHandle() = default;
};

inline void ThreadStop() {}

// XP_API_GET_TIME (0x82b138): the platform clock in milliseconds, declared in xp_api.hpp.
#include "net-session-online/xp_api.hpp"
