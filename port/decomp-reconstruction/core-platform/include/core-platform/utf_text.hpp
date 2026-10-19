// UTF-8 / UTF-16 conversion used by the original text code. The glitch and the
// LC copies of each routine are the same code, so one implementation serves both.
#pragma once

#include <cstddef>
#include <cstdint>

// 0x82a788 / 0x89c42c ConvertUnicodeToUTF8(char*, unsigned short const*, int).
// Writes count UTF-16 units as UTF-8 (1, 2 or 3 bytes each), NUL-terminates, and
// returns the number of bytes written.
int ConvertUnicodeToUTF8(char* out, const std::uint16_t* in, int count);

// 0x82a868 / 0x89c514 ConvertUTF8ToUnicode(unsigned short*, char const*, int).
// Reads `count` input bytes. A lead byte >= 0xE0 takes three bytes, a lead byte in
// 0xC0..0xDF takes two, and anything else is one byte sign-extended as in the
// original. NUL-terminates and returns the number of 16-bit units written.
int ConvertUTF8ToUnicode(std::uint16_t* out, const char* in, int count);

// 0x82b6cc TranslateUtf82Unicode(unsigned short**, char*, int, int) and the LC copy
// 0x89d264. Zeroes a (count + 1) unit buffer, then converts. A nonzero `allocate`
// first replaces *out with a new array.
void TranslateUtf82Unicode(std::uint16_t** out, const char* in, int count, int allocate);

// 0x82b728 TranslateUnicode2Utf8(char**, unsigned short*, int, int) and the LC copy
// 0x89d2c0. Zeroes a (3 * count + 1) byte buffer, then converts.
void TranslateUnicode2Utf8(char** out, const std::uint16_t* in, int count, int allocate);

// 0x82a938 UTF8ToUnicode_Old(unsigned short*, char const*) and the LC copy
// 0x89c5dc UTF8ToUnicode_OldLC. The legacy decoder: ASCII bytes are copied, 2-,
// 3- and 4-byte sequences are decoded by their lead-bit count (the listing does
// not check continuation bytes), and any other lead stores the signed lead value.
// Results are truncated to 16 bits. Both write to `out` without a size limit.
std::uint16_t* UTF8ToUnicode_Old(std::uint16_t* out, const char* in);
void UTF8ToUnicode_OldLC(std::uint16_t* out, const char* in);
