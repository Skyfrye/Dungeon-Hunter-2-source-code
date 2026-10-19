// Helper unit of the batch g1-game-items-save-Objective_GatherLoot-974c8b-0: the level read of Compile.
//
// dh2/Level.hpp declares IStreamBase a second time next to the pydata record headers, so this read is kept out of the
// main unit.

#include "dh2/Level.hpp"

// 0x47bae4 (Compile): the row's level list index is compared with Level::m_levelListIndex (+0x3c).
int LevelListIndexOfLevel(const Level* level) {
    return level->m_levelListIndex;
}
