#include "net-session-online/xp_api.hpp"

#include <cstdlib>
#include <cstring>
#include <new>

#ifdef _WIN32
#include <string.h>
#else
#include <strings.h>
#endif

// 0x82a664 XP_DEBUG_INIT (bx lr)
void XP_DEBUG_INIT() {}

// 0x82a668 XP_DEBUG_FINALIZE (bx lr)
void XP_DEBUG_FINALIZE() {}

// 0x82b334 XP_API_STRSTR
char* XP_API_STRSTR(char* haystack, char* needle) { return std::strstr(haystack, needle); }

// 0x82b338 XP_API_STRCAT
char* XP_API_STRCAT(char* dest, char* src) { return std::strcat(dest, src); }

// 0x82b33c XP_API_STRNCPY
char* XP_API_STRNCPY(char* dest, char* src, std::size_t n) { return std::strncpy(dest, src, n); }

// 0x82b340 XP_API_STRCPY
char* XP_API_STRCPY(char* dest, char* src) { return std::strcpy(dest, src); }

// 0x82b344 XP_API_STRCASECMP
int XP_API_STRCASECMP(char* s1, char* s2) {
#ifdef _WIN32
    return _stricmp(s1, s2);
#else
    return ::strcasecmp(s1, s2);
#endif
}

// 0x82b348 XP_API_STRNCMP
int XP_API_STRNCMP(char* s1, char* s2, std::size_t n) { return std::strncmp(s1, s2, n); }

// 0x82b34c XP_API_STRCMP
int XP_API_STRCMP(char* s1, char* s2) { return std::strcmp(s1, s2); }

// 0x82b364 XP_API_MEMSET
void* XP_API_MEMSET(void* s, int c, std::size_t n) { return std::memset(s, c, n); }

// 0x82b320 XP_API_ATOI
int XP_API_ATOI(char* text) { return std::atoi(text); }

// 0x82b318 XP_API_ATOF
// The ARM sets r1 = 0 and tail-calls strtod, so the double result comes back unchanged.
double XP_API_ATOF(char* text) { return std::strtod(text, nullptr); }

// 0x82afac XP_API_STRLEN
std::size_t XP_API_STRLEN(char* s) { return std::strlen(s); }

// 0x82b350 XP_API_MEMCPY
// The ARM keeps dest in r4 across the memcpy call and returns it.
void* XP_API_MEMCPY(void* dest, void* src, std::size_t n) {
    std::memcpy(dest, src, n);
    return dest;
}

// 0x82b9f0 XP_API_MALLOC
void* XP_API_MALLOC(std::size_t size) { return std::malloc(size); }

// 0x82b9e4 XP_API_FREE
void XP_API_FREE(void* p) {
    if (p == nullptr) {
        return;
    }
    std::free(p);
}

// 0x82b9a0 XP_API_STRNEW
// The ARM allocates len + 1 bytes with operator new[] (_Znaj), zeroes them and copies
// len bytes from text.
char* XP_API_STRNEW(char* text) {
    const std::size_t len = XP_API_STRLEN(text);
    char* copy = new char[len + 1];
    std::memset(copy, 0, len + 1);
    std::memcpy(copy, text, len);
    return copy;
}

// 0x82b324 XP_API_STRCHR
char* XP_API_STRCHR(char* s, int c, int mode) {
    if (mode != 1) {
        return std::strrchr(s, c);
    }
    return std::strchr(s, c);
}

// 0x82b014 XP_API_STRTRIM
// The ARM keeps a flag that is set while the output is still at the start of the
// string. Spaces seen before the first other character are dropped, and everything
// after that is copied as it is. The terminator is written at the new length.
char* XP_API_STRTRIM(char* s) {
    const std::size_t len = XP_API_STRLEN(s);
    std::size_t out = 0;
    bool leading = true;
    for (std::size_t i = 0; i < len; ++i) {
        const char c = s[i];
        if (c == ' ' && leading) {
            continue;
        }
        leading = false;
        s[out++] = c;
    }
    s[out] = '\0';
    return s;
}

// 0x82acdc _Z21XP_API_GetNationalityPc (bx lr)
void XP_API_GetNationality(char* /*out*/) {}

// ---- wave 7 ---------------------------------------------------------------------

#include <cstdio>
#include <ctime>
#include <utility>

namespace {

// Path prefix for XP_API_FILE_OPEN (the original's RES_PATH global). Its string is not
// recovered from the binary, so the port uses an empty prefix.
const char* const RES_PATH = "";

// The eight file slots of XP_API_FILE_OPEN (the original's l_file_list).
std::FILE* l_file_list[8] = {};

// The debug log handles (the original's fp_recv and fp_send).
std::FILE* fp_recv = nullptr;
std::FILE* fp_send = nullptr;

// drand48 state (48 bits). The original calls the libc generator; this is the same LCG,
// so the sequence matches glibc and the MinGW runtime does not need drand48.
std::uint64_t drand48State = 0x1234ABCD330EULL;

constexpr std::uint64_t kDrandMask = (1ULL << 48) - 1;

}  // namespace

// 0x82a66c XP_API_ITOA
// The ARM writes the digits least significant first, then reverses them in place.
// The sign goes in front and is not reversed. A zero value writes "0".
char* XP_API_ITOA(int value, char* out, int base) {
    static const char kDigits[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    if (value == 0) {
        out[0] = '0';
        out[1] = '\0';
        return out;
    }
    char* p = out;
    if (value < 0) {
        *p++ = '-';
        value = -value;
    }
    char* start = p;
    do {
        *p++ = kDigits[value % base];
        value /= base;
    } while (value != 0);
    *p = '\0';
    for (char* lo = start, *hi = p - 1; lo < hi; ++lo, --hi) {
        std::swap(*lo, *hi);
    }
    return out;
}

// 0x82a610 XP_API_STRCHRFIND
// The loop reads signed bytes. It stops at the end of the string or when count matches
// have been seen. The result is the position after the last match, or null when the
// count was not reached.
char* XP_API_STRCHRFIND(char* s, int target, int count) {
    std::size_t index = 0;
    int seen = 0;
    if (s[0] != '\0' && count > 0) {
        signed char cur = static_cast<signed char>(s[0]);
        do {
            ++index;
            if (static_cast<int>(cur) == target) {
                ++seen;
            }
            cur = static_cast<signed char>(s[index]);
        } while (cur != 0 && seen < count);
    }
    if (seen != count) {
        return nullptr;
    }
    return s + index;
}

// 0x82abd4 XP_API_PARSE_DATA
// Copies the characters of field index into out. The field ends at the end of the text
// or at the next field whose count goes negative. A delimiter adds one to the field count
// (it is counted down here, as in the original).
int XP_API_PARSE_DATA(char* text, char* out, int index, int delim) {
    *out = '\0';
    int sourceIndex = 0;
    int outIndex = 0;
    int firstOffset = -1;
    char c = text[0];
    for (;;) {
        if (c == '\0') {
            return firstOffset;
        }
        if (c == delim) {
            index = index - 1;
        } else if (index == 0) {
            out[outIndex] = c;
            if (firstOffset == -1) {
                firstOffset = sourceIndex;
            }
            out[outIndex + 1] = '\0';
            ++outIndex;
        } else if (index < 0) {
            return firstOffset;
        }
        ++sourceIndex;
        c = text[sourceIndex];
    }
}

// 0x82ace0 getValue
// The same walk as XP_API_PARSE_DATA. The original does not record the first offset,
// and it returns 0 on every path.
int getValue(char* text, char* out, int index, int delim) {
    *out = '\0';
    int sourceIndex = 0;
    int outIndex = 0;
    char c = text[0];
    for (;;) {
        if (c == '\0') {
            return 0;
        }
        if (c == delim) {
            index = index - 1;
        } else if (index == 0) {
            out[outIndex] = c;
            out[outIndex + 1] = '\0';
            ++outIndex;
        } else if (index < 0) {
            return 0;
        }
        ++sourceIndex;
        c = text[sourceIndex];
    }
}

// 0x82ad54 XP_API_TOLOWER
// Only the ASCII capitals change: a byte in 'A'..'Z' gets 0x20 added.
void XP_API_TOLOWER(const char* src, char* dst) {
    if (src == nullptr || dst == nullptr) {
        return;
    }
    std::size_t i = 0;
    while (src[i] != '\0') {
        const char c = src[i];
        const bool upper = static_cast<unsigned char>(c - 'A') < 26;
        dst[i] = upper ? static_cast<char>(c + ' ') : c;
        ++i;
    }
    dst[i] = '\0';
}

// 0x82adc0 XP_DEBUG_SAVE_RECVDATA_LOG
void XP_DEBUG_SAVE_RECVDATA_LOG(const char* data, int length) {
    std::fwrite(data, 1, static_cast<std::size_t>(length), fp_recv);
}

// 0x82ade8 XP_DEBUG_SAVE_SENDDATA_LOG
void XP_DEBUG_SAVE_SENDDATA_LOG(const char* data, int length) {
    std::fwrite(data, 1, static_cast<std::size_t>(length), fp_send);
}

// 0x82aeb0 XP_DEBUG_OPEN_RECVDATA_LOG
void XP_DEBUG_OPEN_RECVDATA_LOG() { fp_recv = std::fopen("log_recv.txt", "wt"); }

// 0x82aef0 XP_DEBUG_OPEN_SENDDATA_LOG
void XP_DEBUG_OPEN_SENDDATA_LOG() { fp_send = std::fopen("log_send.txt", "wt"); }

// 0x82ae3c XP_DEBUG_CLOSE_RECVDATA_LOG
void XP_DEBUG_CLOSE_RECVDATA_LOG() { std::fclose(fp_recv); }

// 0x82ae5c XP_DEBUG_CLOSE_SENDDATA_LOG
void XP_DEBUG_CLOSE_SENDDATA_LOG() { std::fclose(fp_send); }

// 0x82ae10 XP_API_FILE_WRITE
void XP_API_FILE_WRITE(const void* data, std::size_t size, std::size_t count, int handle) {
    std::fwrite(data, size, count, l_file_list[handle - 1]);
}

// 0x82b1e8 XP_API_FILE_READ
void XP_API_FILE_READ(void* data, std::size_t size, std::size_t count, int handle) {
    const std::size_t readCount = std::fread(data, size, count, l_file_list[handle - 1]);
    (void)readCount;
}

// 0x82ae7c XP_API_FILE_CLOSE
void XP_API_FILE_CLOSE(int handle) {
    std::fclose(l_file_list[handle - 1]);
    l_file_list[handle - 1] = nullptr;
}

// 0x82b178 XP_API_FILE_GET_LENGTH
// Measures the file with two seeks. The file is rewound afterwards.
int XP_API_FILE_GET_LENGTH(int handle) {
    std::FILE* f = l_file_list[handle - 1];
    std::fseek(f, 0, SEEK_SET);
    const long start = std::ftell(f);
    std::fseek(f, 0, SEEK_END);
    const long end = std::ftell(f);
    std::fseek(f, 0, SEEK_SET);
    return static_cast<int>(end - start);
}

// 0x82b214 XP_API_FILE_OPEN
// The name is joined to RES_PATH. The handle is the slot index plus one. The ARM listing
// writes two debug lines to the Android log, which are not reproduced here.
int XP_API_FILE_OPEN(const char* name, const char* mode) {
    char path[400];
    std::snprintf(path, sizeof(path), "%s%s", RES_PATH, name);
    for (int i = 0; i < 8; ++i) {
        if (l_file_list[i] == nullptr) {
            std::FILE* f = std::fopen(path, mode);
            if (f == nullptr) {
                return 0;
            }
            l_file_list[i] = f;
            return i + 1;
        }
    }
    return 0;
}

// 0x82af30 XP_API_IP_INT2STR
char* XP_API_IP_INT2STR(std::uint32_t ip, char* out) {
    std::sprintf(out, "%d.%d.%d.%d", static_cast<int>(ip & 0xff), static_cast<int>((ip >> 8) & 0xff),
                 static_cast<int>((ip >> 16) & 0xff), static_cast<int>(ip >> 24));
    return out;
}

// 0x82b368 XP_API_IP_STR2INT
// Each dotted part is read with XP_API_ATOI and its low byte goes into the next byte of the
// result. The fourth part ends the loop even when more dots follow. The part is copied into
// a 16-byte buffer. The original does not check the length, so a longer part is clamped to
// 15 characters here (deviation).
std::uint32_t XP_API_IP_STR2INT(char* text) {
    std::uint32_t value = 0;
    char* rest = text;
    int part = 0;
    char token[16];
    for (;;) {
        char* dot = XP_API_STRSTR(rest, const_cast<char*>("."));
        if (dot == nullptr) {
            break;
        }
        XP_API_MEMSET(token, 0, sizeof(token));
        std::size_t len = static_cast<std::size_t>(dot - rest);
        if (len > sizeof(token) - 1) {
            len = sizeof(token) - 1;
        }
        XP_API_MEMCPY(token, rest, len);
        const int v = XP_API_ATOI(token);
        value |= (static_cast<std::uint32_t>(v) & 0xff) << (part * 8);
        if (part + 1 == 4) {
            return value;
        }
        rest = dot + 1;
        ++part;
    }
    XP_API_MEMSET(token, 0, sizeof(token));
    XP_API_STRNCPY(token, rest, sizeof(token) - 1);
    const int v = XP_API_ATOI(token);
    value |= (static_cast<std::uint32_t>(v) & 0xff) << (part * 8);
    return value;
}

// 0x82af78 XP_API_FTOA
char* XP_API_FTOA(float value, char* out) {
    std::sprintf(out, "%f", static_cast<double>(value));
    return out;
}

// drand48 / lrand48 with the libc constants (a = 0x5DEECE66D, c = 0xB, 48-bit state).
static void Srand48(long seed) {
    drand48State = ((static_cast<std::uint64_t>(static_cast<std::uint32_t>(seed)) << 16) | 0x330EULL) & kDrandMask;
}

static long Lrand48() {
    drand48State = (0x5DEECE66DULL * drand48State + 0xBULL) & kDrandMask;
    return static_cast<long>(drand48State >> 17);
}

// 0x82afb0 XP_API_GET_RANDOM
// The pseudocode shows a strlen call on the non-null path. The ARM listing shows that this
// is the start of a loop over the string: the signed bytes are summed, and that sum is added
// to lrand48 at the end.
long XP_API_GET_RANDOM(char* text) {
    Srand48(static_cast<long>(std::time(nullptr)));
    std::int32_t sum = 0;
    if (text != nullptr) {
        const std::size_t len = XP_API_STRLEN(text);
        for (std::size_t i = 0; i < len; ++i) {
            sum += static_cast<signed char>(text[i]);
        }
    }
    const std::uint32_t total = static_cast<std::uint32_t>(Lrand48()) + static_cast<std::uint32_t>(sum);
    return static_cast<long>(static_cast<std::int32_t>(total));
}

// 0x82b634 XP_API_PARSE_DATA_NEW
// Partial: when the field is not found, the original copies from one byte before the text.
// This port leaves the new buffer empty instead.
int XP_API_PARSE_DATA_NEW(char* text, char** out, int index, int delim) {
    int sourceIndex = 0;
    int firstOffset = -1;
    char c = text[0];
    while (c != '\0') {
        if (c == delim) {
            index = index - 1;
        } else if (index == 0) {
            if (firstOffset == -1) {
                firstOffset = sourceIndex;
            }
        } else if (index < 0) {
            break;
        }
        ++sourceIndex;
        c = text[sourceIndex];
    }
    const std::size_t length = firstOffset == -1 ? 0 : static_cast<std::size_t>(sourceIndex - firstOffset);
    char* buffer = new char[length + 1];
    XP_API_MEMSET(buffer, 0, length + 1);
    if (length != 0) {
        XP_API_MEMCPY(buffer, text + firstOffset, length);
    }
    *out = buffer;
    return firstOffset;
}

// Test seams: the drand48 generator behind XP_API_GET_RANDOM.
void XP_API_Srand48ForTest(long seed) { Srand48(seed); }
long XP_API_Lrand48ForTest() { return Lrand48(); }
