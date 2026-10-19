// glitch::core string helpers used by the io attribute code. The original returns
// glitch strings by value (sret); here they are std::string and std::wstring.
#pragma once

#include <string>

namespace glitch::core {

// 0x325f7c _ZN6glitch4core11int2stringwEi: decimal text of value, as a wide string.
std::wstring int2stringw(int value);

// 0x326070 _ZN6glitch4core11int2stringcEi: decimal text of value, as a narrow string.
std::string int2stringc(int value);

// 0x322bc8 _ZN6glitch4core14fast_atof_moveEPKcRf: parses an optional '-', the integer
// digits, and an optional '.' with decimal digits. An exponent ('e', optional '-') is
// only read after a decimal point, as in the original. Returns the first character
// not consumed; result is written with the sign applied.
const char* fast_atof_move(const char* text, float& result);

// 0x3262c8 _ZN6glitch4core15stringc2stringwEPKc: narrow to wide, sign-extending bytes.
// A null pointer gives the empty string.
std::wstring stringc2stringw(const char* text);

// 0x6e5c98 _ZN6glitch4core13float2stringcEf: text of the value in "%f" form (six decimals).
std::string float2stringc(float value);

// 0x542390 _ZN6glitch4core7wcsicmpEPKwS2_: length difference when the lengths differ;
// otherwise the number of positions where the characters differ. A pair counts as equal
// when one is the other minus 0x41 (as the listing compares), so this is not a full case
// fold. Returns 0 for equal strings.
int wcsicmp(const wchar_t* a, const wchar_t* b);

// 0x55bd58 _ZN6glitch4core16getUTF8charValueEPKc: code point of the UTF-8 sequence that is
// exactly the string (1 to 4 bytes); 0 for any other length.
int getUTF8charValue(const char* text);

// 0x55be04 _ZN6glitch4core17iterateUTF8StringERPKc: decodes the sequence at the position and
// moves the position past it (one byte for an invalid lead byte). Returns the code point.
// The pseudocode shows void; the listing returns getUTF8charValue's result in r0.
int iterateUTF8String(const char*& position);

// 0x58bad8 _ZN6glitch4core12randomStringEi: a string of the given length (none when <= 0)
// drawn from "0-9A-Za-z". Each character is lrand48() % 62 (see core_strings.cpp).
std::string randomString(int length);

// 0x326c58 _ZN6glitch4core15stringw2stringcEPKw: wide to narrow. A null pointer gives
// the empty string.
std::string stringw2stringc(const wchar_t* text);

// 0x37c164 _ZN6glitch4core10hashStringEPKc: hash of the bytes of text (signed char values, as the
// ARM code sign-extends them), seeded with 0, combined with the boost hash_combine step. Empty
// string gives 0. Definition in src/tb_core-io-glitch_core-0.cpp.
unsigned int hashString(const char* text);

}  // namespace glitch::core
