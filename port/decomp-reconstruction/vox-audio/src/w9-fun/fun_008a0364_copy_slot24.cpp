// Three-word copy into an object field at +0x24 (unnamed function, owning class not identified).
#include <cstdint>

// 0x890364 FUN_008a0364
// Partial: the pseudocode copies three 32-bit words from src into the object at
// +0x24, +0x28 and +0x2c. The owning class is not identified, so the caller passes
// that three-word field (object + 0x24) as slot24. The second parameter is the
// unused r1 value of the original signature.
void FUN_008a0364(std::uint32_t* slot24, std::uint32_t /*unused_r1*/, const std::uint32_t* src) {
    slot24[0] = src[0];  // +0x24
    slot24[1] = src[1];  // +0x28
    slot24[2] = src[2];  // +0x2c
}
