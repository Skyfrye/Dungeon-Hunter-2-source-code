// VarArgs: the argument list of StringManager::parseEx (a printf-like format with the markers d, k, p, f, g, h, i, m, s, n,
// t and v). A vector of 12-byte variants behind a vtable. Built on the stack by NativeGetParsedString (0x44de4c),
// NativeGetSkillDetails (0x445a10), MenuBase::FS_GetParsedString2 (0x424ef0) and ItemInstance::AddPower (0x3fbc60),
// which fill it from script values: the number goes to the float and the int, the string pointer to the third word.
// Original 32-bit size 0x10: +0x00 vptr (_ZTV7VarArgs 0x967740, off_967748: D1 0x3fab74, D0 0x3faba8), +0x04 the
// std::vector<Variant> (begin +0x04, end +0x08, capacity +0x0c). Variant is 12 bytes; vector growth is
// std::vector<VarArgs::Variant>::_M_insert_overflow_aux (0x43f414), the destructor 0x3fab18.
// Reconstructed from libDungeonHunter2.so pseudocode.
#pragma once

#include <vector>

class VarArgs {
public:
    struct Variant {
        float number = 0.0f;           // +0x00 the value as a float: 'd' (as is), 'k' (/1000), 'p' (*100), 'f', 'g', 'h', 'i', 'm' read it
        int integer = 0;               // +0x04 the value as an int (to_number truncated), filled by the builders; parseEx does not read it
        const char* text = nullptr;    // +0x08 the 's' marker appends this C string when it is not null
    };

    virtual ~VarArgs() = default;      // 0x3fab74 (D1), 0x3faba8 (D0): compiler-generated

    std::vector<Variant> m_variants;   // +0x04 (begin, end, capacity)
};
