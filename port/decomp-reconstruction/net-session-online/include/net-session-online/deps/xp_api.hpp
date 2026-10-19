// Stand-ins for the XP_API_* platform calls used by the lobby layer. Each one
// names the original call it replaces. The real implementations belong to the
// platform layer, which is outside this category.
#pragma once

#include <cstdio>

// 0x82b784 XP_DEBUG_OUT(fmt, ...): the debug trace. The body is src/xp_debug_out.cpp (the listing's 80 KB buffer,
// the %d and %s expansion and the log call); this header only declares it.
int XP_DEBUG_OUT(const char* format, ...);
