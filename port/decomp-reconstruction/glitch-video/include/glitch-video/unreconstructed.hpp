// A virtual slot of a canonical class whose body is not reconstructed yet still needs a definition, or the class's
// vtable (and so every constructor of it) would not link. The definition calls unreconstructed(), which stops the
// program with the slot's name and address: the port refuses to guess a body (TRACK-B decision 5). The ledger rows
// of these functions keep their earlier status (skipped or partial); this header changes none of them.
#pragma once

#include <cstdint>

namespace glitch::video::detail {

[[noreturn]] void unreconstructed(const char* function, uint32_t address);

}  // namespace glitch::video::detail
