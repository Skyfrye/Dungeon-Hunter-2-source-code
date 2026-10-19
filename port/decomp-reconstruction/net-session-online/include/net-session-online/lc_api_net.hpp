// LC_API_* helpers of the LCX (lobby) network code that core-platform's lc_api.hpp does not
// declare. They are defined in src/glx_84ae28.cpp.
#pragma once

#include <cstdint>

// 0x89cf04 LC_API_IP_STR2INT: a dotted IPv4 string to the packed value (first part in the
// low byte). Parsing stops after the fourth part. Partial: each part is clamped to 15 bytes.
std::uint32_t LC_API_IP_STR2INT(char* ip);

// 0x89d1d0 LC_API_PARSE_DATA_NEW: copies field `pos` (fields split on `separator`) into a
// new buffer stored in *dst and returns the index of the field's first character. Partial,
// see the cpp for the last-field length and the not-found case.
int LC_API_PARSE_DATA_NEW(const char* src, char** dst, int pos, char separator);

// 0x89d31c LC_API_STRNEW: a new[] copy of the string, terminated. Null gives null here.
char* LC_API_STRNEW(const char* text);
