// FSCommandParamTokenizer: splits the argument string of an FSCommand into FSCommandParam tokens and walks them
// with a cursor. Original 32-bit size 0x14 (20): the token vector (begin, end, end of storage), one pointer that
// the constructor sets to the first token, and the cursor index.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x416100 / 0x416130, ~FSCommandParamTokenizer 0x415b64 /
// 0x415b98, Tokenize 0x415e90, GetNumParams 0x4156c0, GetLastParam 0x416160, GetFirstParam 0x4161c8,
// GetParam 0x416230, GetPrevParam 0x41629c, GetNextParam 0x41631c).
#pragma once

#include <cstdint>
#include <vector>

#include "dh2/FSCommandParam.hpp"

class FSCommandParamTokenizer {
public:
    FSCommandParamTokenizer(const char* text);                          // 0x416100 / 0x416130 zeroes the vector and the cursor, runs Tokenize(text), then sets unk_00c to the first token
    ~FSCommandParamTokenizer();                                         // 0x415b64 / 0x415b98 erases the tokens, then releases the vector

    int GetNumParams();                                                 // 0x4156c0 number of tokens, 0 when there are none
    void Tokenize(const char* text);                                    // 0x415e90 appends one FSCommandParam per run of non-separator characters
    FSCommandParam GetLastParam();                                      // 0x416160 last token, or an empty token when there are none
    FSCommandParam GetFirstParam();                                     // 0x4161c8 first token, or an empty token when there are none
    FSCommandParam GetParam(uint32_t index);                            // 0x416230 token at index, or an empty token when index is out of range
    FSCommandParam GetPrevParam();                                      // 0x41629c moves the cursor back, not below 0, and returns the token there
    FSCommandParam GetNextParam();                                      // 0x41631c returns the token at the cursor and advances the cursor, stopping at the last token

    std::vector<FSCommandParam> m_params;                               // +0x00 .. +0x0b begin, end, end of storage (24-byte tokens)
    FSCommandParam* unk_00c;                                            // +0x0c first token, set by the ctor after Tokenize; no other reader in these functions
    uint32_t m_cursor;                                                  // +0x10 index of the token that GetNextParam and GetPrevParam use
};
