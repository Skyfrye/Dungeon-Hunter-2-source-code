// 0x82b784 XP_DEBUG_OUT (int XP_DEBUG_OUT(const char *, ...)), reconstructed against the ARM listing.
//
// The listing: the four register arguments are spilled, then a zeroed 0x14000-byte stack buffer is
// filled from the format. Walking the format: a byte other than '%' is copied; "%d" takes the next
// variadic word and writes its decimal text (XP_API_ITOA base 10); "%s" takes the next word as a char*
// and copies its strlen bytes, a null pointer adds nothing; any other "%x" writes the x and skips the
// '%' only (the next character is then read as ordinary text). The text is then passed to the log
// call __android_log_print(4 /* ANDROID_LOG_INFO */, "GLXPlayer", "%s", buffer), and the function
// returns that call's result.
//
// Deviations, all host-necessitated and named:
//   (1) __android_log_print has no host equivalent: the same tag and text go to appDebugLog
//       (core-platform/debug_out.hpp), which is the tree's logcat stand-in and returns void. The
//       returned value is the text length, the byte count a "%s" log call reports (the same
//       convention as _DBG_OUT in core-platform/src/w7_global_04.cpp).
//   (2) The original copies without a bound; this writes at most 0x13FFF bytes and keeps the last
//       byte of the buffer zero, so an overlong text is truncated instead of overrunning the stack.
//   (3) The variadic words are read with va_arg (int for %d, char* for %s) rather than from the
//       stack slots of the ARM calling convention; the values read are the same.
#include <cstdarg>
#include <cstddef>
#include <cstdio>
#include <cstring>

#include "core-platform/debug_out.hpp"
#include "net-session-online/xp_api.hpp"

namespace {

constexpr std::size_t kDebugOutBufferSize = 0x14000;

}  // namespace

int XP_DEBUG_OUT(const char* format, ...) {
    char buffer[kDebugOutBufferSize];
    std::memset(buffer, 0, sizeof buffer);
    const std::size_t limit = sizeof buffer - 1;  // the last byte stays zero (the terminator)
    std::size_t out = 0;

    auto append = [&](const char* text, std::size_t count) {
        for (std::size_t k = 0; k < count && out < limit; ++k) buffer[out++] = text[k];
    };

    std::va_list args;
    va_start(args, format);
    const std::size_t length = std::strlen(format);
    std::size_t i = 0;
    while (i < length) {
        if (format[i] != '%') {
            append(&format[i], 1);
            ++i;
            continue;
        }
        const char spec = format[i + 1];  // the terminator when the '%' is last (the listing reads it too)
        if (spec == 'd') {
            char digits[16];
            std::snprintf(digits, sizeof digits, "%d", va_arg(args, int));  // XP_API_ITOA(value, buf, 10)
            append(digits, std::strlen(digits));
            i += 2;
        } else if (spec == 's') {
            const char* text = va_arg(args, const char*);
            if (text != nullptr) append(text, std::strlen(text));
            i += 2;
        } else {
            i += 1;  // the '%' is dropped; the character after it is read as ordinary text
        }
    }
    va_end(args);

    appDebugLog("GLXPlayer", buffer);
    return static_cast<int>(std::strlen(buffer));
}
