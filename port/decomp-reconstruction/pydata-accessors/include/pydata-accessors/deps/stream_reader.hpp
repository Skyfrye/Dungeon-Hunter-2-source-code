#pragma once
// IStreamBase and StreamReader are defined once, in the game headers (dh2/IStreamBase.hpp and dh2/StreamReader.hpp);
// this header includes them so the pydata includes keep working. The readers decode through the virtual read slot
// (little-endian values, as in the original).
// CustomFree and MemoryHintState are core-platform's (core-platform/memory.hpp). The original's allocation
// operator new[](size, MemoryHintState) is declared in dh2/global/runtime_support.hpp and defined in game-app.
#include <cstddef>
#include <cstdint>
#include <cstdlib>
#include <cstring>

#include "core-platform/memory.hpp"
#include "dh2/global/runtime_support.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/StreamReader.hpp"

// No reader is re-declared here. dh2/StreamReader.hpp is the header that declares them (0x313a90, 0x317454,
// 0x317734, 0x31763c, ...); it is included above, so every pydata TU already sees the real signatures,
// including StreamReader::readString(IStreamBase*, char*, unsigned long long) (0x317734, declared at
// dh2/StreamReader.hpp:38) that PyDataConstants::reloadData calls. A second copy here would be a retyped
// signature that could drift from that one.

// Hint the pydata code passes to operator new[] for its string buffers, element tables and word arrays. The original
// passes 1 (in R1 at the operator new[] call).
inline constexpr MemoryHintState kPydataBufferHint = static_cast<MemoryHintState>(1);
