// Track B batch e1-glitch-scene-collada-gui-glitch_collada_detail-0: glitch::collada::detail.
// Declarations are in glitch-scene-collada-gui/tb/glitch_collada_detail.hpp.

#include "glitch-scene-collada-gui/tb/glitch_collada_detail.hpp"

#include <stdexcept>

namespace glitch::collada::detail {

namespace {

// Sets or clears bits in one row. Row `row` word `word` is table word 3*row + 1 + word.
void orRowWord(SCompatibilityTable& table, unsigned row, unsigned word, std::uint32_t mask) noexcept {
    table.words[compatibilityWordIndex(row, word)] |= mask;
}

}  // namespace

// 0x670a60 _ZN6glitch7collada6detail27constructCompatibilityTableEv
// Partial. Reconstructed: the table build (92 rows, each cleared and then given its own bit), the
// one-time zero fill (as a zero-initialised static), and the 38 OR-mask writes into the table words.
// Not reconstructed, so the row stays partial:
//   1. The last table word (index 276, byte +0x450) is the first word of glitch::ps::vHalf in the
//      original: the zero-fill loop stops at &glitch::ps::vHalf, and the mask at dword_9F7560 writes
//      that word. The host copy keeps the word inside SCompatibilityTable. glitch::ps::vHalf is not
//      declared in this category, so readers of vHalf in other code cannot see these bits yet.
//   2. The one-time guard (_cxa_guard_acquire/release) is replaced by static zero-initialisation. The
//      original is only called from a static initialiser, so no concurrent first call is expected.
// The original returns the table address as void*; here it is returned as SCompatibilityTable*.
SCompatibilityTable* constructCompatibilityTable() {
    static SCompatibilityTable table{};

    // Build the identity relation. For each row i, every bit j is cleared, then bit i is set.
    // In the original, the clear is `table[3i + (j>>5) + 1] &= ~(1 << (j & 31))`, and the set is
    // the same index for j = i.
    for (unsigned i = 0; i != kCompatibilityRowCount; ++i) {
        for (unsigned j = 0; j != kCompatibilityRowCount; ++j) {
            table.words[compatibilityWordForType(i, j)] &= ~(1u << (j & 31u));
        }
        table.words[compatibilityWordForType(i, i)] |= 1u << (i & 31u);
    }

    // Compatibility masks. Each line is one original `dword_<addr> |= <mask>`; the address is
    // (table base + offset). Row and word are the table layout above.
    orRowWord(table, 91, 2, 0x7800000u);  // dword_9F7560 (+0x450), glitch::ps::vHalf (see note 1)
    orRowWord(table, 23, 0, 0x3600000u);  // dword_9F7228 (+0x118)
    orRowWord(table, 25, 0, 0x1E00000u);  // dword_9F7240 (+0x130)
    orRowWord(table, 21, 0, 0x3C00000u);  // dword_9F7210 (+0x100)
    orRowWord(table, 81, 2, 0x3C0000u);   // dword_9F74E8 (+0x3D8)
    orRowWord(table, 77, 2, 0x1D000u);    // dword_9F74B8 (+0x3A8)
    orRowWord(table, 88, 2, 0xE800000u);  // dword_9F753C (+0x42C)
    orRowWord(table, 90, 2, 0xB800000u);  // dword_9F7554 (+0x444)
    orRowWord(table, 89, 2, 0xD800000u);  // dword_9F7548 (+0x438)
    orRowWord(table, 87, 2, 0xF000000u);  // dword_9F7530 (+0x420)
    orRowWord(table, 82, 2, 0x3A0000u);   // dword_9F74F4 (+0x3E4)
    orRowWord(table, 84, 2, 0x2E0000u);   // dword_9F750C (+0x3FC)
    orRowWord(table, 83, 2, 0x360000u);   // dword_9F7500 (+0x3F0)
    orRowWord(table, 85, 2, 0x1E0000u);   // dword_9F7518 (+0x408)
    orRowWord(table, 22, 0, 0x3A00000u);  // dword_9F721C (+0x10C)
    orRowWord(table, 24, 0, 0x2E00000u);  // dword_9F7234 (+0x124)
    orRowWord(table, 10, 0, 0x3800u);     // dword_9F718C (+0x07C)
    orRowWord(table, 13, 0, 0x1C00u);     // dword_9F71B0 (+0x0A0)
    orRowWord(table, 12, 0, 0x2C00u);     // dword_9F71A4 (+0x094)
    orRowWord(table, 1, 0, 0x1Cu);        // dword_9F7120 (+0x010)
    orRowWord(table, 2, 0, 0x1Au);        // dword_9F712C (+0x01C)
    orRowWord(table, 4, 0, 0xEu);         // dword_9F7144 (+0x034)
    orRowWord(table, 3, 0, 0x16u);        // dword_9F7138 (+0x028)
    orRowWord(table, 6, 0, 0x3A0u);       // dword_9F715C (+0x04C)
    orRowWord(table, 8, 0, 0x2E0u);       // dword_9F7174 (+0x064)
    orRowWord(table, 7, 0, 0x360u);       // dword_9F7168 (+0x058)
    orRowWord(table, 9, 0, 0x1E0u);       // dword_9F7180 (+0x070)
    orRowWord(table, 79, 2, 0x17000u);    // dword_9F74D0 (+0x3C0)
    orRowWord(table, 78, 2, 0x1B000u);    // dword_9F74C4 (+0x3B4)
    orRowWord(table, 80, 2, 0xF000u);     // dword_9F74DC (+0x3CC)
    orRowWord(table, 76, 2, 0x1E000u);    // dword_9F74AC (+0x39C)
    orRowWord(table, 72, 2, 0xE80u);      // dword_9F747C (+0x36C)
    orRowWord(table, 74, 2, 0xB80u);      // dword_9F7494 (+0x384)
    orRowWord(table, 73, 2, 0xD80u);      // dword_9F7488 (+0x378)
    orRowWord(table, 75, 2, 0x780u);      // dword_9F74A0 (+0x390)
    orRowWord(table, 71, 2, 0xF00u);      // dword_9F7470 (+0x360)
    orRowWord(table, 11, 0, 0x3400u);     // dword_9F7198 (+0x088)
    orRowWord(table, 5, 0, 0x3C0u);       // dword_9F7150 (+0x040)

    return &table;
}

bool channelTypeCompatible(std::uint32_t rowType, std::uint32_t type) {
    static const SCompatibilityTable* table = constructCompatibilityTable();
    if (type > 0x5b) {
        throw std::out_of_range("bitset");
    }
    return (table->words[compatibilityWordIndex(rowType, type >> 5)] & (1u << (type & 31u))) != 0;
}

}  // namespace glitch::collada::detail
