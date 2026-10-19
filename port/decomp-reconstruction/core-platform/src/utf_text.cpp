#include "core-platform/utf_text.hpp"

#include <cstring>
#include <new>

// 0x82a788 / 0x89c42c
// Standard UTF-8 encoding of each unit. The listing computes the same bits with
// pairs of bitwise complements; the output is the plain encoding.
int ConvertUnicodeToUTF8(char* out, const std::uint16_t* in, int count) {
    int written = 0;
    unsigned char* p = reinterpret_cast<unsigned char*>(out);
    for (int i = 0; i < count; ++i) {
        const unsigned c = in[i];
        if (c < 0x80) {
            *p++ = static_cast<unsigned char>(c);
            written += 1;
        } else if (c < 0x800) {
            *p++ = static_cast<unsigned char>(0xC0 | (c >> 6));
            *p++ = static_cast<unsigned char>(0x80 | (c & 0x3F));
            written += 2;
        } else {
            *p++ = static_cast<unsigned char>(0xE0 | (c >> 12));
            *p++ = static_cast<unsigned char>(0x80 | ((c >> 6) & 0x3F));
            *p++ = static_cast<unsigned char>(0x80 | (c & 0x3F));
            written += 3;
        }
    }
    *p = 0;
    return written;
}

// 0x82a868 / 0x89c514
// The original reads `count` input bytes (not NUL-terminated) and writes the
// terminator after the last unit. Output and input use the same index order.
int ConvertUTF8ToUnicode(std::uint16_t* out, const char* in, int count) {
    if (count < 1) {
        out[0] = 0;
        return 0;
    }
    const unsigned char* src = reinterpret_cast<const unsigned char*>(in);
    int written = 0;
    int i = 0;
    while (i < count) {
        const unsigned char b0 = src[i];
        if ((static_cast<int>(static_cast<signed char>(b0)) & 0xE0) == 0xE0) {
            // Three-byte form (also takes lead bytes 0xF0 and up, as the listing does).
            out[written++] = static_cast<std::uint16_t>((b0 << 12) | ((src[i + 1] & 0x3F) << 6) |
                                                       (src[i + 2] & 0x3F));
            i += 3;
        } else if ((b0 & 0xC0) == 0xC0) {
            out[written++] = static_cast<std::uint16_t>(((b0 & 0x1F) << 6) | (src[i + 1] & 0x3F));
            i += 2;
        } else {
            out[written++] = static_cast<std::uint16_t>(static_cast<int>(static_cast<signed char>(b0)));
            i += 1;
        }
    }
    out[written] = 0;
    return written;
}

// 0x82b6cc / 0x89d264
void TranslateUtf82Unicode(std::uint16_t** out, const char* in, int count, int allocate) {
    const std::size_t units = static_cast<std::size_t>(count) + 1;
    if (allocate != 0) {
        *out = new std::uint16_t[units];
    }
    std::memset(*out, 0, units * sizeof(std::uint16_t));
    ConvertUTF8ToUnicode(*out, in, count);
}

// 0x82b728 / 0x89d2c0
void TranslateUnicode2Utf8(char** out, const std::uint16_t* in, int count, int allocate) {
    const std::size_t bytes = static_cast<std::size_t>(count) * 3 + 1;
    if (allocate != 0) {
        *out = new char[bytes];
    }
    std::memset(*out, 0, bytes);
    ConvertUnicodeToUTF8(*out, in, count);
}

namespace {
// Shared body of UTF8ToUnicode_Old and UTF8ToUnicode_OldLC (their listings differ
// only in how they count output units). Transliterated from the Hex-Rays control
// flow, including the quirks: a lead byte with bit 7 clear is copied sign-extended;
// otherwise the run of set bits after the lead gives the sequence length, and
// (4 * lead) and (2 * ...) are taken as signed chars.
void DecodeLegacyUtf8(std::uint16_t* out, const char* in) {
    if (*in == '\0') {
        return;
    }
    const char* p = in;
    std::size_t k = 0;
    int lead = static_cast<unsigned char>(*p);
    for (;;) {
        if ((lead & 0x80) == 0) {
            out[k++] = static_cast<std::uint16_t>(static_cast<signed char>(lead));
            lead = static_cast<unsigned char>(*++p);
            if (*p == '\0') {
                return;
            }
            continue;
        }
        int v4 = static_cast<signed char>(4 * lead);
        int v5 = 1;
        int shift = 2;
        if (v4 < 0) {
            do {
                v4 = static_cast<signed char>(2 * v4);
                ++v5;
            } while (v4 < 0);
            if (v5 > 5) {
                // Not decoded: store the signed lead value and advance one byte.
                out[k++] = static_cast<std::uint16_t>(static_cast<signed char>(lead));
                lead = static_cast<unsigned char>(*++p);
                if (*p == '\0') {
                    return;
                }
                continue;
            }
            shift = v5 + 1;
        }
        std::uint16_t value = static_cast<std::uint16_t>(v4 >> shift);
        for (int j = 1; j <= v5; ++j) {
            value = static_cast<std::uint16_t>((static_cast<unsigned char>(p[j]) & 0x3F) | (value << 6));
        }
        out[k++] = value;
        p += 1 + v5;
        lead = static_cast<unsigned char>(*p);
        if (*p == '\0') {
            return;
        }
    }
}
}  // namespace

// 0x82a938 UTF8ToUnicode_Old
std::uint16_t* UTF8ToUnicode_Old(std::uint16_t* out, const char* in) {
    DecodeLegacyUtf8(out, in);
    return out;
}

// 0x89c5dc UTF8ToUnicode_OldLC
void UTF8ToUnicode_OldLC(std::uint16_t* out, const char* in) {
    DecodeLegacyUtf8(out, in);
}
