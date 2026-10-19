#include "core-platform/sys_print.hpp"
#include "core-platform/frame_prof.hpp"

#include <cstdarg>
#include <cstdio>
#include <ctime>

namespace {
// Formats the message into a 1 KiB buffer (vsnprintf size 0x400 in the original).
void FormatMessage(char* buffer, unsigned size, const char* fmt, va_list args) {
    std::vsnprintf(buffer, size, fmt, args);
}

// Writes "[HH:MM:SS] " as the timestamp prefix (strftime size 0x1e in the listing).
void PrintTimestamp() {
    char stamp[32];
    std::time_t now = std::time(nullptr);
    const std::tm* tm = std::localtime(&now);
    std::strftime(stamp, 0x1e, "[%H:%M:%S] ", tm);
    sys::printNoFormat(stamp);
}
}  // namespace

namespace sys {

// 0x317848 _ZN3sys13printNoFormatEPKc
// The listing is a bare tail call, `b printf`: the text is the format string and the
// result is printf's count. Forwarded as-is (a thunk is never reimplemented; Track B
// decision 4), so a '%' in the text is read as a conversion, as in the original.
int printNoFormat(const char* text) {
    dh2prof::Scope prof(dh2prof::kLog);  // Track B frame profiler
    return std::printf(text);
}

// 0x31784c _ZN3sys5printEPKcz
// Formats into a 1 KiB buffer, writes the "[HH:MM:SS] " prefix, then the message through
// printNoFormat. Returns printNoFormat's count for the message.
int print(const char* fmt, ...) {
    char message[1024];
    va_list args;
    va_start(args, fmt);
    FormatMessage(message, sizeof message, fmt, args);
    va_end(args);
    PrintTimestamp();
    return printNoFormat(message);
}

// 0x317914 _ZN3sys7printlnEPKcz
// As print, then the newline. Returns printNoFormat's count for the newline (1).
int println(const char* fmt, ...) {
    char message[1024];
    va_list args;
    va_start(args, fmt);
    FormatMessage(message, sizeof message, fmt, args);
    va_end(args);
    PrintTimestamp();
    printNoFormat(message);
    return printNoFormat("\n");
}

}  // namespace sys
