#include "core-platform/slim_text.hpp"

namespace slim {

// 0x844190 slim::utf8toutf16
// Reconstructed with the original's decoding. The 2-byte form shifts the high
// part by 5 (as the pseudocode does), not the standard 6; kept for fidelity.
int utf8toutf16(const char* src, unsigned srcLen, std::uint32_t* dst, unsigned dstMax) {
    if (srcLen == 0) {
        return 0;
    }
    const unsigned char* p = reinterpret_cast<const unsigned char*>(src);
    int count = 0;
    do {
        count = count + 1;
        unsigned char b = *p;
        if (static_cast<signed char>(b) < 0) {
            if ((b & 0xe0) == 0xc0) {
                if (srcLen < 2) {
                    return count - 1;
                }
                dst[count - 1] = (b & 0x1fu) | ((p[1] & 0x3fu) << 5);
                p += 2;
                srcLen -= 2;
            } else {
                if ((b & 0xf0) != 0xe0 || srcLen < 3) {
                    return count - 1;
                }
                dst[count - 1] = (p[2] & 0x3fu) | ((static_cast<std::uint32_t>(b) << 28) >> 16) |
                                 ((p[1] & 0x3fu) << 6);
                p += 3;
                srcLen -= 3;
            }
        } else {
            dst[count - 1] = b;
            p += 1;
            srcLen -= 1;
        }
        if (dstMax == static_cast<unsigned>(count)) {
            return count;
        }
    } while (srcLen != 0);
    return count;
}

// 0x844270 _ZN4slim11utf16toutf8EPKwjPcj
// Encodes count code points into dst, at most dstMax bytes, and returns the bytes written
// (the listing's r0; Hex-Rays types it char*). Checked against the ARM listing: the byte
// stores use logical shifts, so the 2-byte form is 0xC0|(c>>6), 0x80|(c&0x3F), and the
// 3-byte form is 0xE0|((c>>12)&0x1F), then two 0x80 continuations. A code point above
// 0xFFFF is written as three bytes, as the listing does. A character that does not fit
// stops the output (the same comparisons as the listing).
unsigned utf16toutf8(const std::uint32_t* src, unsigned count, char* dst, unsigned dstMax) {
    unsigned out = 0;
    for (unsigned i = 0; i < count; ++i) {
        std::uint32_t c = src[i];
        if (c <= 0x7f) {
            if (out == dstMax) return out;
            dst[out++] = static_cast<char>(c);
        } else if (c <= 0x7ff) {
            if (dstMax < out + 2) return out;
            dst[out++] = static_cast<char>(0xc0 | (c >> 6));
            dst[out++] = static_cast<char>(0x80 | (c & 0x3f));
        } else {
            if (dstMax < out + 3) return out;
            dst[out++] = static_cast<char>(0xe0 | ((c >> 12) & 0x1f));
            dst[out++] = static_cast<char>(0x80 | ((c >> 6) & 0x3f));
            dst[out++] = static_cast<char>(0x80 | (c & 0x3f));
        }
    }
    return out;
}

// 0x844368 slim::detectUtf8(char const*, unsigned)
// Accepts ASCII and well-formed 2/3-byte sequences; the 4-byte branch checks
// the lead byte pattern and three continuation bytes.
bool detectUtf8(const char* src, unsigned len) {
    const unsigned char* p = reinterpret_cast<const unsigned char*>(src);
    while (len != 0) {
        unsigned b = *p;
        if (b < 0x80) {
            p += 1;
            len -= 1;
        } else if ((b & 0xf0) == 0xe0) {
            if (len < 3 || (p[1] & 0xc0) != 0x80 || (p[2] & 0xc0) != 0x80) return false;
            p += 3;
            len -= 3;
        } else if ((b & 0xe0) == 0xc0) {
            if (len < 2 || (p[1] & 0xc0) != 0x80) return false;
            p += 2;
            len -= 2;
        } else {
            if ((b & 0xf8) != 0xf0 || len < 4 || (p[1] & 0xc0) != 0x80 || (p[2] & 0xc0) != 0x80 ||
                (p[3] & 0xc0) != 0x80) {
                return false;
            }
            p += 4;
            len -= 4;
        }
    }
    return true;
}

}  // namespace slim
