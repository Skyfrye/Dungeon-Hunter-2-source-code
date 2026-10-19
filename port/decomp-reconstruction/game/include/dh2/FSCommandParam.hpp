// FSCommandParam: one token of an FSCommand argument string. It is a std::string that holds the text of the
// token, with no members of its own.
// Original 32-bit size 0x18 (24): the STLport std::string size. FSCommandParamTokenizer keeps its tokens in a
// vector with a 24-byte stride.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x415c98 / 0x415cb8, ~FSCommandParam 0x4159b4 / 0x415c54,
// GetString 0x4156b8, GetFloat 0x41577c, GetInt 0x4157b4).
#pragma once

#include <string>

class FSCommandParam : public std::string {
public:
    FSCommandParam(const char* value);                                  // 0x415c98 / 0x415cb8 copies the text into the std::string base
    ~FSCommandParam();                                                  // 0x4159b4 / 0x415c54 frees the std::string buffer when it is not inline

    int GetString(const char* name);                                    // 0x4156b8 returns 1 and does not read name
    bool GetFloat(float* value);                                        // 0x41577c strtod of the text into value; true when the value is not 0.0
    bool GetInt(int* value);                                            // 0x4157b4 atoi of the text into value; true when the value is not 0
};
