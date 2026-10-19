#include "core-platform/debug_out.hpp"
#include "core-platform/frame_prof.hpp"

#include <cstdarg>
#include <cstdio>

#if defined(__ANDROID__)
#include <android/log.h>
#include <unistd.h>
#endif

// 0x324114 _Z10_DEBUG_OUTPKcz
// The original calls vsprintf into a 1024-byte stack buffer; vsnprintf keeps the
// same buffer size without overrunning it.
#if defined(__ANDROID__) && !defined(DH2_BOOT_DEBUG)
// Track B deviation (frame hitches): every _DEBUG_OUT is a vsnprintf plus a stdout pipe write plus a logd write, and some of them fire per touch
// event or per frame ("Toucxhhhh"). A Release build stays silent unless <files>/dh2_debug.txt exists (checked once).
static bool debugOutEnabled() {
    static const bool on = ::access("/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files/dh2_debug.txt", F_OK) == 0;
    return on;
}
#endif

void _DEBUG_OUT(const char* format, ...) {
#if defined(__ANDROID__) && !defined(DH2_BOOT_DEBUG)
    if (!debugOutEnabled()) return;
#endif
    dh2prof::Scope prof(dh2prof::kLog);  // Track B frame profiler
    char buffer[1024];
    va_list args;
    va_start(args, format);
    std::vsnprintf(buffer, sizeof buffer, format, args);
    va_end(args);
    std::printf("%s", buffer);
    appDebugLog("_DEBUG_OUT", buffer);
}

// 0x533560 appDebugLog
// Verified against the listing: the body is exactly one call, __android_log_write(4, tag,
// text) (4 is ANDROID_LOG_INFO), with no tag or text handling of its own, and the Android
// build makes that call. Host deviations (named): the non-Android targets have no logcat, so
// they write to stderr in the same order; and the int result of the Android write is dropped
// (void here) because no caller reads it (_DEBUG_OUT and w7_global_04.cpp use the text only).
void appDebugLog(const char* tag, const char* text) {
#if defined(__ANDROID__)
    __android_log_write(ANDROID_LOG_INFO, tag, text);
#else
    std::fprintf(stderr, "%s: %s\n", tag, text);
#endif
}
