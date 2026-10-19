// Host runner shim for <android/log.h> (the Windows build has no NDK): __android_log_print writes to stderr (the runner's game.log).
#pragma once
#include <cstdarg>
#include <cstdio>
#define ANDROID_LOG_DEBUG 3
#define ANDROID_LOG_INFO 4
#define ANDROID_LOG_WARN 5
#define ANDROID_LOG_ERROR 6
inline int __android_log_print(int prio, const char* tag, const char* fmt, ...) {
    std::va_list ap;
    va_start(ap, fmt);
    std::fprintf(stderr, "[%d/%s] ", prio, tag ? tag : "");
    std::vfprintf(stderr, fmt, ap);
    std::fputc(10, stderr);
    va_end(ap);
    return 0;
}
