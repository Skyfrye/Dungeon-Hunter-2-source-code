// lstr: a string comparator functor for ordered containers keyed by const char*. It has no data members,
// so the object is empty (size 1). The result is true when lhs sorts before rhs (strcmp < 0).
// Original return type is unsigned int holding the sign bit of strcmp, reported here as bool.
// Reconstructed from libDungeonHunter2.so pseudocode (operator() 0x3179ec).
#pragma once

struct lstr {
    bool operator()(const char* lhs, const char* rhs) const;           // 0x3179ec
};
