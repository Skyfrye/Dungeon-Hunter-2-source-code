// gameswf::format_utf_text as the DH2 binary has it (Gameloft addition; not in gameswf r1714).
//
// Body: vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-0.cpp (0x752a18).
// The UTF-8 encoding it calls is the vendored utf8::encode_unicode_character (base/utf8.h),
// which the binary has as gameswf::encode_unicode_character with the same behaviour.

#pragma once

namespace gameswf {

// Writes src to dst, changing the text in these ways:
//   - a byte equal to delim (compared as a signed char) is written as 0x11;
//   - a space followed by one of ! . : ; ? (byte - 33 in the set 0x46002001) is written as
//     U+00A0 (UTF-8: C2 A0);
//   - when flag is set, a U+0020 is written after each ! or ? (the mark stays set until one is
//     written).
// dst must have room for the output and its terminating NUL. The binary's r0 result is the
// pointer left by the last encode call and is not part of the function's result; the function
// is void.
void format_utf_text(const char* src, char* dst, int delim, bool flag);  // 0x752a18

}  // namespace gameswf
