// Free helper for the quest reward traces (batch g1-game-items-save-pack6-e1e5d0-0, Reward_ConsumeLoot::
// DBG_TraceDetailedRewardInformation at 0x482f4c).
//
// Defined in game-items-save/src/g1-game-items-save-pack6-e1e5d0-0_names.cpp. That file includes
// pydata-accessors/member_names.hpp, whose Arrays::ItemTable (m_memberNames) clashes with the w7_arrays27.hpp
// Arrays::ItemTable (members, size) that the rest of the batch uses. So the batch source calls this helper instead.
#pragma once

// Arrays::ItemTable::m_memberNames[row] when 0 <= row < Arrays::ItemTable::size (ItemTableRowCount()), else "na".
// The original tests the row with a signed compare against the unsigned size, then loads the name from the table.
const char* ItemTableRowName(int row);
