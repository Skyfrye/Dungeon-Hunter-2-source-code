// glitch::memory::E_MEMORY_HINT: the allocation hint of glitch::core::SAllocator<T, hint> (every instance in the
// binary spells it as (glitch::memory::E_MEMORY_HINT)0), of GlitchAlloc(size, hint) and of the tagged
// operator new/delete overloads in core-platform/memory.hpp. Canonical header of the engine unification wave
// (u1-core); core-platform's deps/glitch_core.hpp holds a stand-in of the same enum that memory.hpp includes.
//
// Evidence: all 298 GlitchAlloc calls in the Hex-Rays export pass hint 0, and the mangled names of the SAllocator
// instances carry the value 0 only. The other enumerators (if any exist) are not recoverable. The hint of the 2-argument
// operator new(size, int) seen with values 0, 1, 2, 4 and 8 is a different type (MemoryHintState, core-platform).
#pragma once

namespace glitch::memory {

enum E_MEMORY_HINT : int {
    EMH_UNRECOVERED = 0,  // the only value seen in the binary
};

}  // namespace glitch::memory
