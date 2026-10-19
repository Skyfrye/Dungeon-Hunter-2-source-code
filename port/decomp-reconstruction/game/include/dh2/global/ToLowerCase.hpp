// ToLowerCase(char*, int, int) (<global>). Lowercases the ASCII capitals in str[from..to] inclusive. A `to` of -1
// or one past the end means the last character. Returns strlen(str), and 0 when str is null.
// The std::string and glitch-string overloads are in core-platform/util.hpp. Defined in
// game-app/src/g1-game-app-global-f216b6-2.cpp.
#pragma once

#include <cstddef>

std::size_t ToLowerCase(char* str, int from, int to);  // 0x34e414
