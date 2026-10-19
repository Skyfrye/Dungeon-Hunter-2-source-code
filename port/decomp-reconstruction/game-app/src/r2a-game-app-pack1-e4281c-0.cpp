// Batch r2a-game-app-pack1-e4281c-0 (game-app). This file holds the two bodies of the batch that had no definition
// anywhere before the redo pass. The other rows are completed in place in their existing source files, and the
// ledger rows point there (game-app/ledger.d/r2a-game-app-pack1-e4281c-0.csv).
//
//   0x3b3824 POVillager::~POVillager()          reconstructed (empty body, see below)
//   0x40dd7c PlayerLightTweaker::GetIdsFromName reconstructed
//
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "dh2/PlayerLightTweaker.hpp"
#include "dh2/POVillager.hpp"

// Engine assert level (ELF gAssertLevel, defined by the globals batch).
extern int gAssertLevel;

namespace {

// Source path of PlayerLightTweaker.cpp as the original's assert message prints it.
constexpr const char* kPlayerLightTweakerSource =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Lights\\PlayerLightTweaker.cpp";

}  // namespace

// 0x3b3824 POVillager::~POVillager()  (D1, complete-object destructor)
// The original stores the POCharacter vtable (off_968F50 is _ZTV11POCharacter+8, not POVillager's own table) and then
// calls PhysicalObject's base destructor (asm: BL PhysicalObject D2, with POCharacter's destructor inlined). The store
// of POVillager's own vtable pointer is dead, because each base destructor overwrites the pointer, so the original
// keeps only the last store. POVillager adds no members, so an empty body runs the same two base destructors in the
// same order.
POVillager::~POVillager() {}

// 0x40dd7c PlayerLightTweaker::GetIdsFromName(char const*)
// Maps a name ending in "[n]" to a light index. The original reads the digit at name[strlen], the NUL terminator,
// and not at name[strlen - 2] (asm: LDRSB R4,[R4,R0] with R0 = strlen). For a C string that digit is 0, so the value
// is 0 - '0' = 0xffffffd0. That is above 4, so a bracketed name falls through to the assert path and returns
// 0xffffffd0. Any other name returns -1 after the same assert. This body reproduces that as-is.
// The original reads name[len - 3] and name[len - 1] without a length check. This body tests len >= 3 first, so a
// name shorter than three characters takes the -1 path and never reads before the string. The original's result for
// such a name is the same -1 path, unless the bytes before the string happen to match.
// The body reads no member of the object, so the result does not depend on the receiver.
unsigned int PlayerLightTweaker::GetIdsFromName(const char* name) {
    const std::size_t length = std::strlen(name);
    unsigned int id = static_cast<unsigned int>(-1);
    if (length >= 3 && name[length - 3] == '[' && name[length - 1] == ']') {
        // The digit is read at name[length], the NUL terminator (see above).
        id = static_cast<unsigned int>(static_cast<int>(name[length]) - '0');
        if (id <= 4u) {
            return id;
        }
    }

    // The assert runs for every name that did not return above. The original's level-2 path stores through address 0
    // to crash; the tree's convention (IStreamBase, gc_singleton) is std::abort() there.
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "id > -1 && id < MAX_NUM_TWEAKABLE_LIGHTS",
                     kPlayerLightTweakerSource, 121);
    }
    return id;
}
