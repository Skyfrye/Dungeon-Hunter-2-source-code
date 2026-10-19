// Helper for batch g1-game-items-save-pack6-e1e5d0-0: the ItemTable name lookup of the reward traces.
// Declared in dh2/global/reward_trace.hpp. Kept out of the batch source because member_names.hpp (the Arrays::ItemTable
// name table) cannot share a translation unit with the w7_arrays27.hpp declaration of Arrays::ItemTable.

#include "dh2/global/reward_trace.hpp"

#include <cstdint>

#include "dh2/global/player_manager_unpack_inventory.hpp"
#include "pydata-accessors/member_names.hpp"

// Read by Reward_ConsumeLoot::DBG_TraceDetailedRewardInformation (0x482f4c) for both the Loot and the Qty lines.
// Original: row >= 0 and row < Arrays::ItemTable::size, then Arrays::ItemTable::m_memberNames[row]; "na" otherwise.
const char* ItemTableRowName(int row) {
    if (row < 0 || static_cast<std::uint32_t>(row) >= ItemTableRowCount()) {
        return "na";
    }
    return Arrays::ItemTable::m_memberNames.names[row];
}
