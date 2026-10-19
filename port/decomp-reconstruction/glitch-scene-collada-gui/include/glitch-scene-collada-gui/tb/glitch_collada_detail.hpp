// glitch::collada::detail, declared for Track B batch e1-glitch-scene-collada-gui-glitch_collada_detail-0.
// No other header in this category declares constructCompatibilityTable. The namespace itself is
// shared with collada_misc.hpp and layouts/collada_members.hpp; this header only adds the table
// accessor. Offsets are the original 32-bit layout, kept as comments only.
#pragma once

#include <cstdint>

namespace glitch::collada::detail {

// Channel-type compatibility table: one row per channel type (92 rows, the loop bound of the
// original). Row k holds a 92-bit set, bit j meaning "type k is compatible with type j". The
// original stores each row in three 32-bit words at table word index 3k+1, 3k+2 and 3k+3 (so
// word 0 of the table is never used). The 12-byte row stride is kept, the words are not
// addressed through raw offsets by callers: use compatibilityWord(), compatibilityBit() and
// the accessor below.
inline constexpr unsigned kCompatibilityRowCount = 92;
inline constexpr unsigned kCompatibilityWordCount = kCompatibilityRowCount * 3 + 1;  // 277

struct SCompatibilityTable {
    // Table word index 0..276 (byte offset 4 * index, from the table base at +0x000).
    // Word 276 (byte +0x450) is the first word of glitch::ps::vHalf in the original: the table
    // and that object are contiguous in .bss. The host copy keeps the word inside this array.
    std::uint32_t words[kCompatibilityWordCount] = {};
};

// Word index of row `row`, word `word` (0..2). Row k starts at 3k+1 in the original layout.
constexpr unsigned compatibilityWordIndex(unsigned row, unsigned word) noexcept {
    return 3 * row + 1 + word;
}

// Word index holding bit `type` of row `row`: (type >> 5) selects the word, (type & 31) the bit.
constexpr unsigned compatibilityWordForType(unsigned row, unsigned type) noexcept {
    return compatibilityWordIndex(row, type >> 5);
}

// 0x670a60 _ZN6glitch7collada6detail27constructCompatibilityTableEv
// Builds the table on every call and returns it. The original zero-fills the table once,
// behind a one-time guard; this host version uses a zero-initialised static instead.
SCompatibilityTable* constructCompatibilityTable();

// The test the animators and animation sets make: CompatibilityTable row `rowType`, bit `type` (a std::bitset, so a type above
// 0x5b is a std::out_of_range("bitset") error). Used by ISceneNodeAnimator::hasCompatibleTarget / setCompatibleTarget (0x6699c4,
// 0x669574) and CAnimationSet::addAnimation (0x6601fc).
bool channelTypeCompatible(std::uint32_t rowType, std::uint32_t type);

}  // namespace glitch::collada::detail
