// Batch g1-game-items-save-PlayerSavegame-56ccee-4, level-state part: PlayerSavegame::_InitLevelStates (0x46954c).
// Kept apart from g1-game-items-save-PlayerSavegame-56ccee-4.cpp because it reads Arrays::LevelList and Arrays::WorldMap
// through pydata-accessors/w7_arrays_00.hpp, and that header's structs of those names clash with the member_names header
// the rest of the batch uses.
//
// The tables: Arrays::LevelList::members (72-byte rows) and Arrays::WorldMap::members (20-byte rows), with the counts
// Arrays::LevelList::size and Arrays::WorldMap::size. The WorldMap table pointer is read through its GOT slot in the
// original; that slot holds the address of Arrays::WorldMap::members (dynamic relocation R_ARM_RELATIVE with that
// symbol's address as addend).

#include "dh2/PlayerSavegame.hpp"

#include <cstdint>

#include "pydata-accessors/structs_records.hpp"  // Structs::LevelDeclaration, Structs::WldMapLocation
#include "pydata-accessors/w7_arrays_00.hpp"     // Arrays::LevelList, Arrays::WorldMap

// 0x46954c PlayerSavegame::_InitLevelStates(void)
// For each difficulty: the level-state array (m_levelStates, one word per LevelList row) and the world-map array
// (m_worldMapStates, one word per WorldMap row). An array that does not exist yet is allocated, and then filled with
// the row defaults: LevelDeclaration +0x28 (m_w10) for a level, WldMapLocation +0x08 (m_w2) for a location. An array that
// already exists is kept as it is.
void PlayerSavegame::_InitLevelStates() {
    for (int d = 0; d != 3; ++d) {
        if (m_levelStates[d] == nullptr) {
            const std::uint32_t levelCount = Arrays::LevelList::size;
            m_levelStates[d] = new std::int32_t[levelCount]();
            const auto* levels =
                static_cast<const Structs::LevelDeclaration*>(static_cast<const void*>(Arrays::LevelList::members));
            for (std::uint32_t k = 0; k < levelCount; ++k) {
                m_levelStates[d][k] = levels[k].LevelState;  // +0x28 of the row
            }
        }
        if (m_worldMapStates[d] == nullptr) {
            const std::uint32_t locationCount = Arrays::WorldMap::size;
            m_worldMapStates[d] = new std::int32_t[locationCount]();
            const auto* locations =
                static_cast<const Structs::WldMapLocation*>(static_cast<const void*>(Arrays::WorldMap::members));
            for (std::uint32_t k = 0; k < locationCount; ++k) {
                m_worldMapStates[d][k] = locations[k].State;  // +0x08 of the row
            }
        }
    }
}
