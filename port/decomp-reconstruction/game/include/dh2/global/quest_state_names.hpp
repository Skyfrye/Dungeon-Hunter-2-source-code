// Quest state names for the debug trace (batch g1-game-items-save-Quest-1defd1-0).
#pragma once

// 0x47f6c8 DBG_GetStateNameFromID(int). Returns the name of a v2QuestState value (0..13) from the string table
// s_DBGquestStateIDToName, and "unknown" for any other value. Its ledger row is in core-platform (queue.csv); the
// definition is not in the tree yet.
const char* DBG_GetStateNameFromID(int state);
