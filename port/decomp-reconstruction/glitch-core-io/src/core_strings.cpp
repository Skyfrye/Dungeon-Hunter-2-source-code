#include "glitch-core-io/core/strings.hpp"

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <cwchar>

namespace glitch::core {

// The original formats into a temporary from the process buffer heap (0x44 bytes
// for the wide form, 0x11 for the narrow), formats with a 16 character limit, copies
// the text into the result and releases the temporary. The temporary is not
// observable, so it is a local array here.

// 0x325f7c _ZN6glitch4core11int2stringwEi
std::wstring int2stringw(int value) {
    wchar_t text[0x11];
    std::swprintf(text, 0x10, L"%d", value);
    return std::wstring(text);
}

// 0x326070 _ZN6glitch4core11int2stringcEi
std::string int2stringc(int value) {
    char text[0x11];
    std::snprintf(text, 0x10, "%d", value);
    return std::string(text);
}

namespace {

// Decimal scale factors, indexed by the number of decimal digits: fast_atof_table[0..15] at
// 0x8be9a4. The 64 bytes there are float bit patterns: entry 0 is 0.0 and entries 1..15 are the
// nearest floats to 10^-1 .. 10^-15 (checked bit for bit against the database). Fractions with 16 or
// more digits read past the table in the original: the words that follow it in the file are the wide-character
// strings of the pool after it (L"bool", L"int", ... one character per word), so the same 112 words are
// reproduced below and read as floats; past those the value is taken as 0.
constexpr float kFastAtofTable[16] = {
    0.f,
    0.1f,
    0.01f,
    0.001f,
    0.0001f,
    0.00001f,
    0.000001f,
    0.0000001f,
    0.00000001f,
    0.000000001f,
    0.0000000001f,
    0.00000000001f,
    0.000000000001f,
    0.0000000000001f,
    0.00000000000001f,
    0.000000000000001f,
};

// The 112 words after the table (0x8be9e4 ..), which the original's out-of-range index reads as floats.
constexpr std::uint32_t kAfterTable[112] = {
    0x00000000, 0x00000062, 0x0000006f, 0x0000006f, 0x0000006c, 0x00000000, 0x00000000, 0x00000069, 0x0000006e,
    0x00000074, 0x00000000, 0x00000066, 0x0000006c, 0x0000006f, 0x00000061, 0x00000074, 0x00000000, 0x00000069,
    0x0000006e, 0x00000074, 0x0000006c, 0x00000069, 0x00000073, 0x00000074, 0x00000000, 0x00000066, 0x0000006c,
    0x0000006f, 0x00000061, 0x00000074, 0x0000006c, 0x00000069, 0x00000073, 0x00000074, 0x00000000, 0x00000063,
    0x0000006f, 0x0000006c, 0x0000006f, 0x00000072, 0x00000066, 0x00000000, 0x00000000, 0x00000063, 0x0000006f,
    0x0000006c, 0x0000006f, 0x00000072, 0x00000000, 0x00000076, 0x00000065, 0x00000063, 0x00000074, 0x0000006f,
    0x00000072, 0x00000032, 0x00000064, 0x00000000, 0x00000000, 0x00000076, 0x00000065, 0x00000063, 0x00000074,
    0x0000006f, 0x00000072, 0x00000033, 0x00000064, 0x00000000, 0x00000000, 0x00000076, 0x00000065, 0x00000063,
    0x00000074, 0x0000006f, 0x00000072, 0x00000034, 0x00000064, 0x00000000, 0x00000000, 0x00000073, 0x00000074,
    0x00000072, 0x00000069, 0x0000006e, 0x00000067, 0x00000000, 0x00000000, 0x00000066, 0x00000061, 0x0000006c,
    0x00000073, 0x00000065, 0x00000000, 0x00000074, 0x00000072, 0x00000075, 0x00000065, 0x00000000, 0x00000000,
    0x00000025, 0x00000064, 0x00000000, 0x00000000, 0x00000067, 0x00000072, 0x0000006f, 0x00000075, 0x00000070,
    0x00000000, 0x00000076, 0x00000061, 0x0000006c};

// fast_atof_table[index] as the original's unchecked load.
float fastAtofTableAt(std::size_t index) {
    if (index < 16) return kFastAtofTable[index];
    if (index < 16 + 112) {
        const std::uint32_t word = kAfterTable[index - 16];
        float value;
        std::memcpy(&value, &word, sizeof value);
        return value;
    }
    return 0.0f;
}

bool isDigit(char ch) { return ch >= '0' && ch <= '9'; }

}  // namespace

// 0x322bc8 _ZN6glitch4core14fast_atof_moveEPKcRf
const char* fast_atof_move(const char* text, float& result) {
    const char* c = text;
    const bool negative = *c == '-';
    if (negative) ++c;

    // Integer digits, accumulated with wrapping 32-bit arithmetic.
    unsigned whole = 0;
    if (isDigit(*c)) {
        do {
            whole = whole * 10u + static_cast<unsigned>(*c - '0');
            ++c;
        } while (isDigit(*c));
    }
    float value = static_cast<float>(whole);

    if (*c == '.') {
        const char* decimalStart = c + 1;
        const char* end = decimalStart;
        unsigned decimals = 0;
        while (isDigit(*end)) {
            decimals = decimals * 10u + static_cast<unsigned>(*end - '0');
            ++end;
        }
        const auto count = static_cast<std::size_t>(end - decimalStart);
        const float scale = fastAtofTableAt(count);
        value = value + static_cast<float>(decimals) * scale;
        c = end;

        if (*c == 'e') {
            ++c;
            const bool exponentNegative = *c == '-';
            if (exponentNegative) ++c;
            unsigned exponent = 0;
            while (isDigit(*c)) {
                exponent = exponent * 10u + static_cast<unsigned>(*c - '0');
                ++c;
            }
            const float signedExponent = exponentNegative ? -static_cast<float>(exponent) : static_cast<float>(exponent);
            value = value * std::pow(10.f, signedExponent);
        }
    }

    result = negative ? -value : value;
    return c;
}

// 0x3262c8 _ZN6glitch4core15stringc2stringwEPKc
// Each byte is sign-extended (the ARM uses ldrsb), so bytes at or above 0x80 widen to
// negative wide characters.
std::wstring stringc2stringw(const char* text) {
    if (text == nullptr) return std::wstring();
    std::wstring out;
    for (const char* c = text; *c != '\0'; ++c) {
        out.push_back(static_cast<wchar_t>(static_cast<signed char>(*c)));
    }
    return out;
}

// 0x326c58 _ZN6glitch4core15stringw2stringcEPKw
// Null gives the empty string. Each wide character is narrowed to its low byte, as the
// templated range copy at 0x3209f8 does (STRB of the loaded word in the IDA listing).
std::string stringw2stringc(const wchar_t* text) {
    if (text == nullptr) return std::string();
    std::string out;
    for (const wchar_t* c = text; *c != L'\0'; ++c) {
        out.push_back(static_cast<char>(*c));
    }
    return out;
}

// 0x6e5c98 _ZN6glitch4core13float2stringcEf
// The original formats into a temporary from the process buffer heap (0x21 bytes); the
// temporary is not observable, so a local buffer is used.
std::string float2stringc(float value) {
    char text[0x20];
    std::snprintf(text, sizeof text, "%f", static_cast<double>(value));
    return std::string(text);
}

// 0x542390 _ZN6glitch4core7wcsicmpEPKwS2_
int wcsicmp(const wchar_t* a, const wchar_t* b) {
    const std::size_t lenA = std::wcslen(a);
    const std::size_t lenB = std::wcslen(b);
    int result = static_cast<int>(lenA) - static_cast<int>(lenB);
    if (result == 0 && lenA != 0) {
        for (std::size_t i = 0; i < lenA; ++i) {
            const int x = static_cast<int>(a[i]);
            const int y = static_cast<int>(b[i]);
            if (x != y && y != x - 0x41 && x != y - 0x41) ++result;
        }
    }
    return result;
}

// 0x55bd58 _ZN6glitch4core16getUTF8charValueEPKc
int getUTF8charValue(const char* text) {
    const auto b = [text](std::size_t i) { return static_cast<unsigned char>(text[i]); };
    switch (std::strlen(text)) {
        case 1:
            return b(0) & 0x7f;
        case 2:
            return ((b(0) & 0x1f) << 6) | (b(1) & 0x3f);
        case 3:
            return ((b(0) & 0x0f) << 12) | ((b(1) & 0x3f) << 6) | (b(2) & 0x3f);
        case 4:
            return ((b(0) & 0x07) << 18) | ((b(1) & 0x3f) << 12) | ((b(2) & 0x3f) << 6) | (b(3) & 0x3f);
        default:
            return 0;
    }
}

// 0x55be04 _ZN6glitch4core17iterateUTF8StringERPKc
int iterateUTF8String(const char*& position) {
    const auto lead = static_cast<unsigned char>(*position);
    char buffer[5] = {0, 0, 0, 0, 0};
    if ((lead & 0x80) == 0) {
        // One byte: the value is the byte itself.
        buffer[0] = static_cast<char>(lead);
        position += 1;
    } else if ((lead & 0xe0) == 0xc0) {
        buffer[0] = static_cast<char>(lead);
        buffer[1] = position[1];
        position += 2;
    } else if ((lead & 0xf0) == 0xe0) {
        buffer[0] = static_cast<char>(lead);
        buffer[1] = position[1];
        buffer[2] = position[2];
        position += 3;
    } else if ((lead & 0xf8) == 0xf0) {
        std::memcpy(buffer, position, 4);
        position += 4;
    } else {
        // Not a lead byte: skipped, and it decodes as an empty string (0).
        position += 1;
    }
    return getUTF8charValue(buffer);
}

// 0x58bad8 _ZN6glitch4core12randomStringEi
// lrand48 is not taken from the C library: the drand48 step (x = a*x + c mod 2^48, a = 0x5DEECE66D,
// c = 0xB) is run from the default state of the C library (0x1234ABCD330E), and lrand48 returns the
// top 31 bits. A seed set by the game through srand48 is therefore not reflected.
namespace {
std::uint32_t lrand48Emulated() {
    static std::uint64_t state = 0x1234ABCD330Eull;
    state = (0x5DEECE66Dull * state + 0xBull) & ((1ull << 48) - 1);
    return static_cast<std::uint32_t>(state >> 17);
}
}  // namespace

std::string randomString(int length) {
    static const char alphabet[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    std::string out;
    for (int i = 0; i < length; ++i) {
        out.push_back(alphabet[lrand48Emulated() % 62]);
    }
    return out;
}

}  // namespace glitch::core
