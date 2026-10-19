// Small free helpers from the original string and number utilities.
#pragma once

#include <string>

#include "glitch-core-io/core/allocator.hpp"

// 0x317a04 strrstr: last occurrence of needle in haystack.
const char* strrstr(const char* haystack, const char* needle);

// 0x69f54c util_number_is_power_2
bool util_number_is_power_2(unsigned value);

// Lowercases the ASCII capitals in data[from..to] inclusive. A `to` of -1 or
// one past the end means the last character. Shared by the ToLowerCase overloads.
void LowerCaseRange(char* data, int size, int from, int to);

// 0x34e024 _Z11ToLowerCaseRSsii
void ToLowerCase(std::string& s, int from, int to);

// 0x34e090 _Z11ToLowerCaseRSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEEii: ToLowerCase over the glitch
// string (SAllocator-backed stringc). The same range rule as the std::string overload.
void ToLowerCase(glitch::core::stringc& s, int from, int to);
